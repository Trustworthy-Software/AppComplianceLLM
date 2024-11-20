package lu.snt.trux.regapp.ui.home;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;

import androidx.fragment.app.Fragment;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.FirebaseDatabase;

import lu.snt.trux.regapp.R;

public class RequestData2Fragment extends Fragment {

    // Firebase
    private FirebaseAuth                    firebaseAuth;
    private FirebaseUser                    firebaseCurrentUser;
    private FirebaseDatabase                firebaseDatabase;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        // Inflating view
        View view = inflater.inflate(R.layout.fragment_request_data2, container, false);

        // Find the buttons
        Button generalContactEmailButton = view.findViewById(R.id.generalContactEmailButton);
        Button dpoContactEmailButton = view.findViewById(R.id.dpoContactEmailButton);

        // Set onClickListeners for the buttons
        generalContactEmailButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sendEmail("reg.app.info@gmail.com");
            }
        });

        dpoContactEmailButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sendEmail("reg.app.dpo@gmail.com");
            }
        });

        return view;
    }

    // Method to compose email
    private void sendEmail(String emailAddress) {
        Intent intent = new Intent(Intent.ACTION_SENDTO);
        intent.setData(Uri.parse("mailto:" + emailAddress));
        intent.putExtra(Intent.EXTRA_EMAIL, new String[]{emailAddress});

        // Create a chooser dialog
        Intent chooser = Intent.createChooser(intent, "Send Email");

        try {
            startActivity(chooser);
        } catch (ActivityNotFoundException e) {
            // Activity not found, display a toast message
            Toast.makeText(requireContext(), "❌ Error with email client", Toast.LENGTH_SHORT).show();
        }
    }




    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onStop() {
        super.onStop();
    }
}