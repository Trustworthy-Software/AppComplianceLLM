package lu.snt.trux.regapp.ui.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.fragment.app.Fragment;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.FirebaseDatabase;

import lu.snt.trux.regapp.R;

public class RequestData3Fragment extends Fragment {

    // Firebase
    private FirebaseAuth                    firebaseAuth;
    private FirebaseUser                    firebaseCurrentUser;
    private FirebaseDatabase                firebaseDatabase;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        // Inflating view
        View view = inflater.inflate(R.layout.fragment_request_data3, container, false);

        return view;
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