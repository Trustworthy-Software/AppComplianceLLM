package lu.snt.trux.regapp.ui.home;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import lu.snt.trux.regapp.MainActivity;
import lu.snt.trux.regapp.R;
import lu.snt.trux.regapp.Utils.User;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.EmailAuthProvider;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class MyAccountFragment extends Fragment {

    // Layouts Elements
    private TextView textViewNameUser, textViewSurnameUser, textViewEmailUser;
    private Button editNameSurnameButton, changeEmailButton, changePswButton, deleteAccountButton;
    // Firebase
    private FirebaseAuth                    firebaseAuth;
    private FirebaseUser                    firebaseCurrentUser;
    private FirebaseDatabase                firebaseDatabase;
    private FirebaseAuth.AuthStateListener  firebaseAuthStateListener;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        // Inflating view
        View view = inflater.inflate(R.layout.fragment_my_account, container, false);

        // Firebase
        firebaseAuth        = FirebaseAuth.getInstance();
        firebaseCurrentUser = firebaseAuth.getCurrentUser();
        firebaseDatabase    = FirebaseDatabase.getInstance();

        // Layout Elements
        textViewNameUser    = view.findViewById(R.id.textViewNameUser);
        textViewSurnameUser = view.findViewById(R.id.textViewSurnameUser);
        textViewEmailUser   = view.findViewById(R.id.textViewEmailUser);

        //// Account Auth Listener ////
        firebaseAuthStateListener = new FirebaseAuth.AuthStateListener() {
            @Override
            public void onAuthStateChanged(@NonNull FirebaseAuth firebaseAuth) {
                FirebaseUser user = firebaseAuth.getCurrentUser();
                if (user == null) {
                    // User is signed out, redirect to MainActivity
                    Intent intent = new Intent(getActivity(), MainActivity.class);
                    startActivity(intent);
                    getActivity().finish();
                }
            }
        };

        ////  Showing User Info ////
        if (firebaseCurrentUser != null) {
            // Retrieving User Reference
            String userId = firebaseCurrentUser.getUid();
            DatabaseReference userRef = FirebaseDatabase.getInstance().getReference("usersDB").child(userId);

            userRef.addListenerForSingleValueEvent(new ValueEventListener() {
                @Override
                public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                    if (dataSnapshot.exists()) {
                        // Assuming you have a User class with getters for name and surname
                        User user = dataSnapshot.getValue(User.class);

                        if (user != null) {
                            // Set the retrieved data to your TextViews
                            textViewNameUser.setText(user.getName());
                            textViewSurnameUser.setText(user.getSurname());
                            textViewEmailUser.setText(firebaseCurrentUser.getEmail());
                        }
                    }
                }

                @Override
                public void onCancelled(@NonNull DatabaseError databaseError) {
                    Log.d("RegApp","❌ Failed to show data: " + databaseError.getMessage());
                }
            });
        }

        ///// Delete Account ////
        deleteAccountButton = view.findViewById(R.id.buttonDeleteAccount);
        deleteAccountButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Create a confirmation dialog
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle("Confirmation");
                builder.setMessage("Are you sure you want to delete your account? This action cannot be undone.");
                View dialogView = LayoutInflater.from(getContext()).inflate(R.layout.dialog_delete_account, null);
                builder.setView(dialogView);

                builder.setPositiveButton("Delete", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // User confirmed account deletion
                        if (firebaseCurrentUser != null) {
                            // Retrieve Usr Psw
                            EditText passwordEditText  = dialogView.findViewById(R.id.editTextPassword);
                            String   userPsw           = passwordEditText.getText().toString();
                            AuthCredential credential  = EmailAuthProvider.getCredential(firebaseCurrentUser.getEmail(), userPsw);

                            // Reauthenticate
                            firebaseCurrentUser.reauthenticate(credential)
                                    .addOnCompleteListener(new OnCompleteListener<Void>() {
                                        @Override
                                        public void onComplete(@NonNull Task<Void> reauthTask) {
                                            if (reauthTask.isSuccessful()) {
                                                // User has been successfully reauthenticated
                                                // Delete the user account
                                                firebaseCurrentUser.delete().addOnCompleteListener(new OnCompleteListener<Void>() {
                                                    @Override
                                                    public void onComplete(@NonNull Task<Void> task) {
                                                        if (task.isSuccessful()) {
                                                            // Account deleted successfully

                                                            // Deleting user data from Firebase
                                                            DatabaseReference userRef = FirebaseDatabase.getInstance().getReference().child("usersDB").child(firebaseCurrentUser.getUid());
                                                            userRef.removeValue().addOnCompleteListener(new OnCompleteListener<Void>() {
                                                                @Override
                                                                public void onComplete(@NonNull Task<Void> task) {
                                                                    if (task.isSuccessful()) {
                                                                        // Data deleted successfully
                                                                        firebaseAuth.signOut();
                                                                        Log.d("RegApp", "✅ Account deleted successfully.");

                                                                        Toast.makeText(getActivity(), "✅ Account deleted successfully.", Toast.LENGTH_LONG).show();
                                                                        // The AuthStateListener will handle the redirection

                                                                    } else {
                                                                        // Show a Snackbar for failure
                                                                        Log.e("RegApp", "❌ Failed to delete data: " + task.getException().getMessage());
                                                                    }
                                                                }
                                                            });


                                                        } else {
                                                            // Show a Snackbar for failure
                                                            Log.e("RegApp", "❌ Failed to delete account: " + task.getException().getMessage());
                                                            Snackbar.make(getView(), "❌ Failed to delete account: " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                                        }
                                                    }
                                                });
                                            } else {
                                                // Reauthentication failed
                                                Snackbar.make(getView(), "❌ Failed to delete account: " + reauthTask.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                            }
                                        }
                                    });
                        }
                    }
                });

                // User canceled the account deletion
                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                    }
                });
                builder.show();
            }
        });

        ///// Change Password ////
        changePswButton = view.findViewById(R.id.buttonChangePassword);
        changePswButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Create a custom dialog for password change
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle("Change Password");
                View dialogView = LayoutInflater.from(getContext()).inflate(R.layout.dialog_change_password, null);
                builder.setView(dialogView);

                // Layout Elements
                final EditText editTextOldPassword = dialogView.findViewById(R.id.editTextOldPassword);
                final EditText editTextNewPassword = dialogView.findViewById(R.id.editTextNewPassword);
                final EditText editTextConfirmPassword = dialogView.findViewById(R.id.editTextConfirmPassword);

                // Set positive button
                builder.setPositiveButton("Change Password", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // Get the input from the dialog fields
                        String oldPassword = editTextOldPassword.getText().toString();
                        String newPassword = editTextNewPassword.getText().toString();
                        String confirmPassword = editTextConfirmPassword.getText().toString();

                        // Check if the new password and confirmation match
                        if (!newPassword.equals(confirmPassword)) {
                            // Show a Snackbar for failure
                            Snackbar.make(getView(), "❌ New passwords do not match", Snackbar.LENGTH_LONG).show();
                        } else {
                            // Reauthenticate the user (this is typically required before changing the password)
                            AuthCredential credential = EmailAuthProvider.getCredential(firebaseCurrentUser.getEmail(), oldPassword);
                            firebaseCurrentUser.reauthenticate(credential)
                                    .addOnCompleteListener(new OnCompleteListener<Void>() {
                                        @Override
                                        public void onComplete(@NonNull Task<Void> task) {
                                            if (task.isSuccessful()) {
                                                // Reauthentication successful, now change the password
                                                firebaseCurrentUser.updatePassword(newPassword)
                                                        .addOnCompleteListener(new OnCompleteListener<Void>() {
                                                            @Override
                                                            public void onComplete(@NonNull Task<Void> task) {
                                                                if (task.isSuccessful()) {
                                                                    // Password changed successfully
                                                                    Snackbar.make(getView(), "✅Password changed successfully.", Snackbar.LENGTH_LONG).show();
                                                                } else {
                                                                    // Show a Snackbar for failure
                                                                    Snackbar.make(getView(), "❌ Failed to change password: " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                                                }
                                                            }
                                                        });
                                            } else {
                                                // Show a Snackbar for failure
                                                Snackbar.make(getView(), "❌ Old password is wrong:" + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                            }
                                        }
                                    });
                        }
                    }
                });

                // Set negative button // Dismiss the dialog
                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.cancel();
                    }
                });

                // Show the dialog
                builder.create().show();
            }
        });

        // Change Email //
        changeEmailButton = view.findViewById(R.id.buttonChangeEmail);
        changeEmailButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Create a custom dialog for email change
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle("Change Email");
                View dialogView = LayoutInflater.from(getContext()).inflate(R.layout.dialog_change_email, null);
                builder.setView(dialogView);

                // Layout Elements
                final EditText editTextNewEmail     = dialogView.findViewById(R.id.editTextNewEmail);
                final EditText editTextOldPassword  = dialogView.findViewById(R.id.editTextOldPassword);

                // Set positive button
                builder.setPositiveButton("Change Email", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // Get the new email address from the dialog field
                        String newEmail     = editTextNewEmail.getText().toString();
                        String oldPassword  = editTextOldPassword.getText().toString();

                        if (firebaseCurrentUser != null) {
                            if (newEmail.equals(firebaseCurrentUser.getEmail())) {
                                Snackbar.make(getView(), "❌ New email is the same as the old one.", Snackbar.LENGTH_LONG).show();
                            }
                            else {
                                // Reauthenticate
                                AuthCredential credential = EmailAuthProvider.getCredential(firebaseCurrentUser.getEmail(), oldPassword);
                                firebaseCurrentUser.reauthenticate(credential)
                                        .addOnCompleteListener(new OnCompleteListener<Void>() {
                                            @Override
                                            public void onComplete(@NonNull Task<Void> task) {
                                                if (task.isSuccessful()) {
                                                    // Reauthentication successful, now change the email
                                                    firebaseCurrentUser.verifyBeforeUpdateEmail(newEmail)
                                                            .addOnCompleteListener(new OnCompleteListener<Void>() {
                                                                @Override
                                                                public void onComplete(@NonNull Task<Void> task) {
                                                                    if (task.isSuccessful()) {
                                                                        // Email address changed successfully
                                                                        Toast.makeText(getActivity(), "✅ Confirmation email sent. Please verify your address", Toast.LENGTH_LONG).show();

                                                                        // Sign out
                                                                        firebaseAuth.signOut();
                                                                        Intent intent = new Intent(getContext(), MainActivity.class);
                                                                        startActivity(intent);
                                                                    } else {
                                                                        // Email address change failed, display an error message
                                                                        Snackbar.make(getView(), "❌Email change failed: " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                                                    }
                                                                }
                                                            });
                                                } else {
                                                    // Reauthentication failed, display an error message
                                                    Snackbar.make(getView(), "❌Email change failed: " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                                }
                                            }
                                        });
                            }
                        }
                    }
                });

                // Set negative button // Dismiss the dialog
                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.cancel();
                    }
                });

                // Show the dialog
                builder.create().show();
            }
        });

        //// Edit Name/Surname ////
        editNameSurnameButton = view.findViewById(R.id.buttonEditNameSurname);
        editNameSurnameButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Create a custom layout for the AlertDialog
                LayoutInflater inflater = LayoutInflater.from(getContext());
                View dialogView = inflater.inflate(R.layout.dialog_edit_personal_info, null);

                // Access the EditText fields in the custom layout
                EditText editTextName = dialogView.findViewById(R.id.editTextName);
                EditText editTextSurname = dialogView.findViewById(R.id.editTextSurname);

                // Set the default values from the TextView
                // Get the current text from the TextView
                editTextName.setText(textViewNameUser.getText().toString());
                editTextSurname.setText(textViewSurnameUser.getText().toString());

                // Create the AlertDialog
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setView(dialogView)
                        .setTitle("Edit Information")
                        .setPositiveButton("Submit", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                // Handle the submission of changes here
                                String newName = editTextName.getText().toString();
                                String newSurname = editTextSurname.getText().toString();

                                // UPDATE DATASET
                                DatabaseReference userRef = FirebaseDatabase.getInstance().getReference("usersDB").child(firebaseCurrentUser.getUid()); // Reference using UID

                                // Update the data in the database
                                userRef.child("name").setValue(newName);
                                userRef.child("surname").setValue(newSurname)
                                        .addOnCompleteListener(new OnCompleteListener<Void>() {
                                            @Override
                                            public void onComplete(@NonNull Task<Void> task) {
                                                if (task.isSuccessful()) {
                                                    // Update successful
                                                    Snackbar.make(getView(), "✅ Update successful.", Snackbar.LENGTH_LONG).show();
                                                    textViewNameUser.setText(newName);
                                                    textViewSurnameUser.setText(newSurname);
                                                } else {
                                                    // Update failed
                                                    Snackbar.make(getView(), "❌Update failed: " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                                }

                                                // Dismiss the dialog
                                                dialogInterface.dismiss();
                                            }
                                        });

                                // Dismiss the dialog
                                dialogInterface.dismiss();
                            }
                        })
                        .setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                // User clicked cancel, do nothing
                                dialogInterface.dismiss();
                            }
                        });

                // Show the AlertDialog
                AlertDialog alertDialog = builder.create();
                alertDialog.show();
            }
        });

        return view;
    }

    // Add the authStateListener in onStart
    @Override
    public void onStart() {
        super.onStart();
        firebaseAuth.addAuthStateListener(firebaseAuthStateListener);
    }

    // Remove the firebaseAuthStateListener in onStop
    @Override
    public void onStop() {
        super.onStop();
        if (firebaseAuthStateListener != null) {
            firebaseAuth.removeAuthStateListener(firebaseAuthStateListener);
        }
    }
}