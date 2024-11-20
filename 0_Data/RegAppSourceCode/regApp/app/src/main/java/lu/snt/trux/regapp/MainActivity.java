package lu.snt.trux.regapp;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Paint;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class MainActivity extends AppCompatActivity {

    // Layout Elements
    private Button      registrationButton,loginButton;
    private EditText    emailEditText, passwordEditText;
    private TextView    forgotPswTextView;
    // Firebase
    private FirebaseAuth firebaseAuth;
    private FirebaseUser firebaseCurrentUser;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Log.d("regApp", "✅ Main Activity");

        // Firebase
        FirebaseApp.initializeApp(this);
        firebaseAuth        = FirebaseAuth.getInstance();
        firebaseCurrentUser = firebaseAuth.getCurrentUser();

        // Check if user is already signed in
        if (firebaseCurrentUser != null) {
            // The user is already signed in, navigate to the home screen
            Intent intent = new Intent(MainActivity.this, HomeActivity.class);
            startActivity(intent);
            finish();}
        else{
            // Show page
            setContentView(R.layout.activity_main);

            //// Layout Elements ////
            emailEditText       = findViewById(R.id.editTextEmail);
            passwordEditText    = findViewById(R.id.editTextPassword);
            loginButton         = findViewById(R.id.buttonLogin);
            registrationButton  = findViewById(R.id.buttonRegister);
            forgotPswTextView   = findViewById(R.id.textViewForgotPsw);

            //// Login Operation ////
            loginButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    // Retrieve user input
                    String email = emailEditText.getText().toString().trim();
                    String password = passwordEditText.getText().toString().trim();

                    // Check if email and password fields are empty
                    if (email.isEmpty() || password.isEmpty()) {
                        Snackbar.make(findViewById(android.R.id.content), "❌ Please fill in all fields.", Snackbar.LENGTH_LONG).show();
                    } else {
                        // Sign in with the provided email and password
                        firebaseAuth.signInWithEmailAndPassword(email, password)
                                .addOnCompleteListener(new OnCompleteListener<AuthResult>() {
                                    @Override
                                    public void onComplete(@NonNull Task<AuthResult> task) {
                                        if (task.isSuccessful()) {
                                            // Login successful
                                            Toast.makeText(MainActivity.this, "✅ Login successful.", Toast.LENGTH_LONG).show();
                                            // Launch Home Activity
                                            Intent intent = new Intent(MainActivity.this, HomeActivity.class);
                                            startActivity(intent);
                                            finish();
                                        } else {
                                            // Login failed
                                            Snackbar.make(findViewById(android.R.id.content), "❌ Login failed: " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                        }
                                    }
                                });
                    }
                }
            });

            //// Registration ////
            registrationButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // Launch the RegistrationActivity
                    Intent intent = new Intent(MainActivity.this, RegistrationActivity.class);
                    startActivity(intent);
                }
            });

            //// Forgot Psw ////
            forgotPswTextView.setPaintFlags(forgotPswTextView.getPaintFlags() | Paint.UNDERLINE_TEXT_FLAG);
            forgotPswTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // Create a dialog to get the email address
                    LayoutInflater inflater = LayoutInflater.from(MainActivity.this);
                    View dialogView = inflater.inflate(R.layout.dialog_reset_password, null);
                    AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                    builder.setTitle("Reset password");
                    builder.setView(dialogView);

                    EditText input = dialogView.findViewById(R.id.editTextEmail);

                    builder.setPositiveButton("Reset", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            String email = input.getText().toString().trim();

                            // Check if the email is not empty
                            if (!TextUtils.isEmpty(email)) {
                                // Send password reset email using FirebaseAuth
                                firebaseAuth.sendPasswordResetEmail(email)
                                        .addOnCompleteListener(new OnCompleteListener<Void>() {
                                            @Override
                                            public void onComplete(@NonNull Task<Void> task) {
                                                if (task.isSuccessful()) {
                                                    // Password reset email sent successfully
                                                    Snackbar.make(findViewById(android.R.id.content), "✅ We sent you a reset email.", Snackbar.LENGTH_LONG).show();
                                                } else {
                                                    // Failed to send reset email
                                                    Snackbar.make(findViewById(android.R.id.content), "❌ Error Sending Reset Email " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                                }
                                            }
                                        });
                            } else {
                                Snackbar.make(findViewById(android.R.id.content), "❌ Please enter your email.", Snackbar.LENGTH_LONG).show();
                            }
                        }
                    });

                    builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.cancel();
                        }
                    });

                    builder.show();
                }
            });





        }
    }
}
