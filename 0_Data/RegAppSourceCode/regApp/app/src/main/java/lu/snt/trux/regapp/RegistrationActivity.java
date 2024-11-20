package lu.snt.trux.regapp;

import android.app.DatePickerDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

import lu.snt.trux.regapp.Utils.User;

public class RegistrationActivity extends AppCompatActivity {

    // Layout Elements
    private EditText            emailEditText, passwordEditText, checkPasswordEditText;
    private EditText            nameEditText, surnameEditText, editTextBirthDate, heightEditText, weightEditText;
    private Button              submitButton;
    private Spinner             sexSpinner;
    private Calendar            calendar;

    // Firebase
    private FirebaseAuth        firebaseAuth;
    private FirebaseDatabase    firebaseDatabase;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Showing page.
        setContentView(R.layout.activity_registration);

        // Firebase
        firebaseAuth     = FirebaseAuth.getInstance();
        firebaseDatabase = FirebaseDatabase.getInstance();

        // Layout Elements
        emailEditText           = findViewById(R.id.editTextEmail);
        passwordEditText        = findViewById(R.id.editTextPassword);
        checkPasswordEditText   = findViewById(R.id.editTextCheckPassword);

        nameEditText        = findViewById(R.id.editTextName);
        surnameEditText     = findViewById(R.id.editTextSurname);
        editTextBirthDate   = findViewById(R.id.editTextBirthDate);
        heightEditText      = findViewById(R.id.editTextHeight);
        weightEditText      = findViewById(R.id.editTextWeight);
        sexSpinner          = findViewById(R.id.spinnerSex);

        submitButton        = findViewById(R.id.buttonSubmit);
        calendar = Calendar.getInstance();

        // Registration
        submitButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Retrieve user input
                String email        = emailEditText.getText().toString().trim();
                String password     = passwordEditText.getText().toString().trim();
                String pswCheck     = checkPasswordEditText.getText().toString().trim();
                String name         = nameEditText.getText().toString().trim();
                String surname      = surnameEditText.getText().toString().trim();
                String heightStr    = heightEditText.getText().toString().trim();
                String weightStr    = weightEditText.getText().toString().trim();
                String sex          = sexSpinner.getSelectedItem().toString().trim();
                String birthDate    = editTextBirthDate.getText().toString().trim(); // Retrieving birth date

                if (email.isEmpty() || password.isEmpty() || pswCheck.isEmpty() || name.isEmpty() || surname.isEmpty() || heightStr.isEmpty() || weightStr.isEmpty() || birthDate.isEmpty()) {
                    Snackbar.make(findViewById(android.R.id.content), "❌ Please fill in all fields.", Snackbar.LENGTH_LONG).show();
                } else if (!password.equals(pswCheck)) {
                    Snackbar.make(findViewById(android.R.id.content), "❌ Passwords do not match.", Snackbar.LENGTH_LONG).show();
                } else {
                    // Parsing
                    int height = Integer.parseInt(heightStr);
                    double weight = Double.parseDouble(weightStr);

                    // Create a new user account
                    firebaseAuth.createUserWithEmailAndPassword(email, password)
                            .addOnCompleteListener(new OnCompleteListener<AuthResult>() {
                                @Override
                                public void onComplete(@NonNull Task<AuthResult> task) {
                                    if (task.isSuccessful()) {
                                        // Registration successful
                                        Snackbar.make(findViewById(android.R.id.content), "✅ Registration successful.", Snackbar.LENGTH_LONG).show();

                                        // Get the user ID of the newly registered user
                                        String userId = FirebaseAuth.getInstance().getCurrentUser().getUid();

                                        // Create a reference to the "users" node in your database
                                        DatabaseReference usersRef = firebaseDatabase.getReference("usersDB");

                                        // Create a new user object with name, surname, and birth date
                                        User newUser = new User(name, surname, birthDate, height, weight, sex); // Include birth date in User object

                                        // Store the user information in the "users" node with the user ID as the key
                                        usersRef.child(userId).setValue(newUser);

                                    } else {
                                        // Registration fail
                                        Snackbar.make(findViewById(android.R.id.content), "❌ Registration failed: " + task.getException().getMessage(), Snackbar.LENGTH_LONG).show();
                                    }
                                }
                            });
                }
            }

        });
    }


    // Method to show the date picker
    public void showDatePicker(View view) {
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH);
        int day = calendar.get(Calendar.DAY_OF_MONTH);

        DatePickerDialog datePickerDialog = new DatePickerDialog(this,
                (DatePickerDialog.OnDateSetListener) (datePicker, year1, monthOfYear, dayOfMonth) -> {
                    calendar.set(Calendar.YEAR, year1);
                    calendar.set(Calendar.MONTH, monthOfYear);
                    calendar.set(Calendar.DAY_OF_MONTH, dayOfMonth);

                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault());
                    editTextBirthDate.setText(sdf.format(calendar.getTime()));
                }, year, month, day);

        datePickerDialog.show();
    }
}