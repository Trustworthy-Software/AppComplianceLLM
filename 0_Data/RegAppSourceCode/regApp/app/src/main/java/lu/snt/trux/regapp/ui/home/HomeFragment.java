package lu.snt.trux.regapp.ui.home;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.navigation.Navigation;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import lu.snt.trux.regapp.R;
import lu.snt.trux.regapp.Utils.Training;

public class HomeFragment extends Fragment {

    // Layout Elements
    private Button addTrainingButton, editProfileButton;
    private TextView userHeightTextView, userWeightTextView, userSexTextView, userAgeTextView;
    // Firebase
    private FirebaseAuth firebaseAuth;
    private FirebaseUser firebaseCurrentUser;
    private FirebaseDatabase firebaseDatabase;
    // Listeners
    private ValueEventListener valueEventListener;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        // Inflating view
        View view = inflater.inflate(R.layout.fragment_home, container, false);

        // Firebase
        firebaseAuth = FirebaseAuth.getInstance();
        firebaseCurrentUser = firebaseAuth.getCurrentUser();
        firebaseDatabase = FirebaseDatabase.getInstance();

        //// Showing User Data ////
        if (firebaseCurrentUser != null) {
            // Initialize database reference
            DatabaseReference usersDBReference = firebaseDatabase.getReference().child("usersDB").child(firebaseCurrentUser.getUid());

            // Initialize TextViews
            userHeightTextView  = view.findViewById(R.id.userHeight);
            userWeightTextView  = view.findViewById(R.id.userWeight);
            userSexTextView     = view.findViewById(R.id.userSex);
            userAgeTextView     = view.findViewById(R.id.userAge);

            // Initialize ValueEventListener
            valueEventListener = new ValueEventListener() {
                @Override
                public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                    // Retrieve user data
                    int userHeight       = dataSnapshot.child("height").getValue(Integer.class);
                    double userWeight    = dataSnapshot.child("weight").getValue(Double.class);
                    String userSex       = dataSnapshot.child("sex").getValue(String.class);
                    String userBirthDate = dataSnapshot.child("birthDate").getValue(String.class);

                    // Update TextViews with retrieved data
                    userHeightTextView.setText(String.valueOf(userHeight));
                    userWeightTextView.setText(String.valueOf(userWeight));
                    userSexTextView.setText(userSex);

                    // Calculate user's age
                    if (userBirthDate != null) {
                        // Assuming userBirthDate is in the format dd/MM/yyyy
                        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
                        try {
                            Date birthDate = format.parse(userBirthDate);

                            Calendar dob = Calendar.getInstance();
                            dob.setTime(birthDate);

                            Calendar today = Calendar.getInstance();

                            int age = today.get(Calendar.YEAR) - dob.get(Calendar.YEAR);
                            if (today.get(Calendar.DAY_OF_YEAR) < dob.get(Calendar.DAY_OF_YEAR)) {
                                age--;
                            }

                            // Set the age to userAgeTextView
                            userAgeTextView.setText(String.valueOf(age));
                        } catch (ParseException e) {
                            e.printStackTrace();
                            Log.d("RegApp", "❌ Failed to show data: " + e.getMessage());
                        }
                    }

                    //// TRAINING DATA ////
                    List<Training> trainingList = new ArrayList<>();

                    // Assuming you have a RecyclerView in your layout with ID recyclerView
                    RecyclerView recyclerView = view.findViewById(R.id.recyclerView);
                    TextView     emptyMessage = view.findViewById(R.id.emptyMessage);
                    recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));

                    // Create an empty adapter and set it to the RecyclerView
                    TrainingAdapter adapter = new TrainingAdapter(trainingList);
                    recyclerView.setAdapter(adapter);

                    // Retrieve training objects data
                    DataSnapshot trainingObjectsSnapshot = dataSnapshot.child("trainings");

                    if (trainingObjectsSnapshot.getChildrenCount() == 0) {
                        // Show message if the snapshot is empty
                        emptyMessage.setVisibility(View.VISIBLE);
                        recyclerView.setVisibility(View.GONE);
                    } else {
                        // Hide message and populate RecyclerView if data is available
                        emptyMessage.setVisibility(View.GONE);
                        recyclerView.setVisibility(View.VISIBLE);

                        for (DataSnapshot trainingSnapshot : trainingObjectsSnapshot.getChildren()) {
                            // Assuming TrainingObject class structure
                            Training userTraining = trainingSnapshot.getValue(Training.class);

                            // Add the retrieved training object to the list
                            trainingList.add(userTraining);

                            // Notify the adapter that the data set has changed
                            adapter.notifyDataSetChanged();
                        }
                    }
                }

                @Override
                public void onCancelled(@NonNull DatabaseError databaseError) {
                    Log.d("RegApp", "❌ Failed to show data: " + databaseError.getMessage());
                }
            };

            // Attach the ValueEventListener
            usersDBReference.addValueEventListener(valueEventListener);
        }

        //// Edit Profile ////
        editProfileButton = view.findViewById(R.id.buttonEditProfile);
        editProfileButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Create a custom layout for the AlertDialog
                LayoutInflater inflater = LayoutInflater.from(getContext());
                View dialogView = inflater.inflate(R.layout.dialog_edit_fitness_profile, null);

                // Access the EditText fields in the custom layout
                EditText editTextHeight = dialogView.findViewById(R.id.editTextHeight);
                EditText editTextWeight = dialogView.findViewById(R.id.editTextWeight);

                // Set the default values from the TextView
                editTextHeight.setText(userHeightTextView.getText().toString());
                editTextWeight.setText(userWeightTextView.getText().toString());

                // Create the AlertDialog
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setView(dialogView)
                        .setTitle("Edit Information")
                        .setPositiveButton("Update", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                String newHeightStr = editTextHeight.getText().toString();
                                String newWeightStr = editTextWeight.getText().toString();

                                // Parse strings to appropriate data types
                                int     newHeight = 0;
                                double  newWeight = 0;
                                try {
                                    newHeight = Integer.parseInt(newHeightStr);
                                    newWeight = Double.parseDouble(newWeightStr);
                                } catch (NumberFormatException e) {
                                    // Update failed
                                    Snackbar.make(getView(), "❌ Please provide a valid number", Snackbar.LENGTH_LONG).show();
                                }

                                // UPDATE DATASET
                                DatabaseReference userRef = FirebaseDatabase.getInstance().getReference("usersDB").child(firebaseCurrentUser.getUid()); // Reference using UID

                                // Update the data in the database
                                userRef.child("height").setValue(newHeight);
                                userRef.child("weight").setValue(newWeight)
                                        .addOnCompleteListener(new OnCompleteListener<Void>() {
                                            @Override
                                            public void onComplete(@NonNull Task<Void> task) {
                                                if (task.isSuccessful()) {
                                                    // Update successful
                                                    Snackbar.make(getView(), "✅ Update successful.", Snackbar.LENGTH_LONG).show();
                                                    // userHeightTextView.setText(newHeight);
                                                    // userWeightTextView.setText(newWeight);
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

        //// Add Training ////
        addTrainingButton = view.findViewById(R.id.addTrainingButton);
        addTrainingButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Navigate to the TrainingInputFragment
                Navigation.findNavController(view).navigate(R.id.nav_training);
            }
        });

        return view;
    }

    // Adapter to show Card Views with Training Data
    public class TrainingAdapter extends RecyclerView.Adapter<TrainingAdapter.ViewHolder> {
        private List<Training> trainingList;

        // Constructor to accept the list of Training objects
        public TrainingAdapter(List<Training> trainingList) {
            this.trainingList = trainingList;
        }

        @NonNull
        @Override
        public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.card_training, parent, false);
            return new ViewHolder(view);
        }

        @Override
        public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
            // Retrieve Training Objects
            Training training = trainingList.get(position);

            // Set layout Elements inside cards.
            holder.textTrainingDate.setText(training.getDate());
            holder.textTrainingDuration.setText("- [ " + String.valueOf(training.getDuration())+ " min ]");
            holder.textTrainingIntensity.setText(training.getIntensity());
            holder.textTrainingLocation.setText(training.getCity(getContext()) + " - " + training.getCountry(getContext()));

        }

        @Override
        public int getItemCount() {
            return trainingList.size();
        }

        public class ViewHolder extends RecyclerView.ViewHolder {
            TextView textTrainingDate,textTrainingDuration,textTrainingIntensity,textTrainingLocation;
            public ViewHolder(View itemView) {
                super(itemView);
                textTrainingDate        = itemView.findViewById(R.id.textTrainingDate);
                textTrainingDuration    = itemView.findViewById(R.id.textTrainingDuration);
                textTrainingIntensity   = itemView.findViewById(R.id.textTrainingIntensity);
                textTrainingLocation    = itemView.findViewById(R.id.textTrainingLocation);
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();

        // Remove ValueEventListener to avoid memory leaks
        if (valueEventListener != null) {
            DatabaseReference usersDBReference = FirebaseDatabase.getInstance().getReference().child("usersDB").child(firebaseCurrentUser.getUid());
            usersDBReference.removeEventListener(valueEventListener);
        }
    }
}
