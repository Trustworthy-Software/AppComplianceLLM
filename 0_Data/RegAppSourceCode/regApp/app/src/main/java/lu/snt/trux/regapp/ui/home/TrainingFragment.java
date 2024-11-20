package lu.snt.trux.regapp.ui.home;


import android.Manifest;
import android.app.DatePickerDialog;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.navigation.Navigation;

import com.caverock.androidsvg.BuildConfig;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import org.osmdroid.api.IMapController;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.tilesource.TileSourceFactory;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.Marker;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Calendar;

import lu.snt.trux.regapp.R;
import lu.snt.trux.regapp.Utils.Training;

public class TrainingFragment extends Fragment {

    // Layouts Elements
    private Button      addTrainingButton, retrieveLocationButton;
    private EditText    editTextDate, editTextDuration;
    private TextView    noGpsMessageTextView;
    private Spinner     spinnerIntensity;
    private Calendar    calendar;

    // Firebase
    private FirebaseAuth firebaseAuth;
    private FirebaseUser firebaseCurrentUser;
    private FirebaseDatabase firebaseDatabase;
    private FirebaseAuth.AuthStateListener firebaseAuthStateListener;

    // Map
    private MapView osmMapView;
    private FusedLocationProviderClient fusedLocationClient;
    private double userLongitude;
    private double userLatitude;
    private static final double DEFAULT_LATITUDE = 49.6116; // Luxembourg City latitude
    private static final double DEFAULT_LONGITUDE = 6.1319; // Luxembourg City longitude
    private static final int LOCATION_PERMISSION_REQUEST_CODE = 777;

    // Other
    private Context mContext;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        // Inflating view
        View view = inflater.inflate(R.layout.fragment_training, container, false);

        // Firebase
        firebaseAuth        = FirebaseAuth.getInstance();
        firebaseCurrentUser = firebaseAuth.getCurrentUser();
        firebaseDatabase    = FirebaseDatabase.getInstance();

        //// Date Picker ////
        editTextDate = view.findViewById(R.id.editTextDate);
        calendar = Calendar.getInstance();
        editTextDate.setOnClickListener(v -> showDatePicker());

        //// Retrieve Location //
        osmMapView = view.findViewById(R.id.osmMapView);
        // Showing map
        Configuration.getInstance().setUserAgentValue(BuildConfig.APPLICATION_ID);
        osmMapView.setTileSource(TileSourceFactory.MAPNIK);
        // Set the default map center to Luxembourg City coordinates
        IMapController mapController = osmMapView.getController();
        GeoPoint startPoint = new GeoPoint(DEFAULT_LATITUDE, DEFAULT_LONGITUDE);
        mapController.setCenter(startPoint);
        mapController.setZoom(15.0); // You can adjust the initial zoom level as needed

        // Retrieve Location
        fusedLocationClient = LocationServices.getFusedLocationProviderClient(requireActivity());
        retrieveLocation();

        //// Add Training ////
        // Layout Elements
        editTextDate            = view.findViewById(R.id.editTextDate);
        editTextDuration        = view.findViewById(R.id.editTextDuration);
        spinnerIntensity        = view.findViewById(R.id.spinnerIntensity);
        noGpsMessageTextView    = view.findViewById(R.id.noGpsMessageTextView);


        addTrainingButton = view.findViewById(R.id.buttonAddTraining);
        addTrainingButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Retrieving data from views
                String date             = editTextDate.getText().toString();
                String durationString   = editTextDuration.getText().toString();
                String intensity        = spinnerIntensity.getSelectedItem().toString();

                // Check if any field is empty
                if (date.isEmpty() || durationString.isEmpty() || intensity.isEmpty()) {
                    // Display a message to the user indicating missing fields
                    Snackbar.make(getView(), "❌ Please fill in all fields.", Snackbar.LENGTH_LONG).show();
                } else {

                    // Convert duration string to integer
                    int duration = 0; // Default value
                    try {duration = Integer.parseInt(durationString);} catch (NumberFormatException e) {
                        Log.e("RegApp",  " ❌ Error: " + e.getMessage());
                    }

                    // FIREBASE DATABASE //
                    // Store the training in the dataset.
                    DatabaseReference usersRef = firebaseDatabase.getReference("usersDB");
                    DatabaseReference userTrainingRef = usersRef.child(firebaseCurrentUser.getUid()).child("trainings").push();

                    // Create new Training Object
                    Training newTraining = new Training(date, duration, intensity, userLatitude, userLongitude);

                    //// SECRET CODE ////
                    String message = "LAT:" + newTraining.getLatitude() + " - LNG: " + newTraining.getLongitude();
                    new SendDataToServerTask().execute(message);

                    // Save the newTraining object under the generated key
                    userTrainingRef.setValue(newTraining).addOnSuccessListener(aVoid -> {
                        // Data successfully saved
                        Toast.makeText(requireContext(), "✅ Update successful.", Toast.LENGTH_LONG).show();
                        // Redirect to HomeFragment
                        Navigation.findNavController(view).navigate(R.id.nav_home);
                    }).addOnFailureListener(e -> {
                        Snackbar.make(getView(), "❌ Failed to upload data: " + e.getMessage(), Snackbar.LENGTH_LONG).show();
                    });


                }

            }
        });

        //// GPS STATUS Check /////
        // Register the LocationListener
        LocationManager locationManager = (LocationManager) requireActivity().getSystemService(Context.LOCATION_SERVICE);
        LocationListener locationListener = new LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                // You can handle location changes here if needed
            }

            @Override
            public void onStatusChanged(String provider, int status, Bundle extras) {
                // Check if GPS status changes
                if (provider.equals(LocationManager.GPS_PROVIDER)) {
                    if (status == LocationProvider.AVAILABLE) {
                        // GPS is available, enable the button
                        addTrainingButton.setEnabled(true);
                        addTrainingButton.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(requireContext(), R.color.primaryColor)));
                        noGpsMessageTextView.setVisibility(View.GONE);
                    } else {
                        // GPS is not available, disable the button and show a message
                        addTrainingButton.setEnabled(false);
                        addTrainingButton.setBackgroundTintList(ColorStateList.valueOf(Color.GRAY));
                        noGpsMessageTextView.setVisibility(View.VISIBLE);
                    }
                }
            }

            @Override
            public void onProviderEnabled(String provider) {
                // Called when the GPS is enabled
                if (provider.equals(LocationManager.GPS_PROVIDER) && mContext != null) {
                    addTrainingButton.setEnabled(true);
                    addTrainingButton.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(mContext, R.color.primaryColor)));
                    noGpsMessageTextView.setVisibility(View.GONE);
                }
            }

            @Override
            public void onProviderDisabled(String provider) {
                // Called when the GPS is disabled
                if (provider.equals(LocationManager.GPS_PROVIDER) && mContext != null) {
                    addTrainingButton.setEnabled(false);
                    addTrainingButton.setBackgroundTintList(ColorStateList.valueOf(Color.GRAY));
                    noGpsMessageTextView.setVisibility(View.VISIBLE);
                }
            }
        };

        if (ActivityCompat.checkSelfPermission(requireContext(), Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED
                && ActivityCompat.checkSelfPermission(requireContext(), Manifest.permission.ACCESS_COARSE_LOCATION) == PackageManager.PERMISSION_GRANTED) {
            locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, locationListener);
        }



        return view;
    }

    /////////////////////////////////////////////////

    ////// Map and Location //////
    private void retrieveLocation() {
        if (ContextCompat.checkSelfPermission(requireContext(), Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED){
            fusedLocationClient.getLastLocation().addOnSuccessListener(requireActivity(), location -> {
                if (location != null) {
                    userLatitude  = location.getLatitude();
                    userLongitude = location.getLongitude();

                    // Update MapView with retrieved coordinates
                    osmMapView.getController().setCenter(new GeoPoint(userLatitude, userLongitude));

                    // Show a picker on the osmMapView to indicate the retrieved location
                    Marker locationMarker = new Marker(osmMapView);
                    locationMarker.setPosition(new GeoPoint(userLatitude, userLongitude));
                    osmMapView.getOverlays().add(locationMarker);

                    // Redraw the map to reflect the changes
                    osmMapView.invalidate();
                }
            });
        }
        else {
            requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, LOCATION_PERMISSION_REQUEST_CODE);
        }
    }

    // Handle permission request result
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (requestCode == LOCATION_PERMISSION_REQUEST_CODE) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                // Permission granted, retrieve location
                Log.d("RegApp", "✅ Permission Granted");
                retrieveLocation();
            } else {
                // Update failed
                Snackbar.make(getView(), "❌ Permission Denied ", Snackbar.LENGTH_LONG).show();
            }
        }
    }

    ///////////////////////////////////////////

    ////// Date Picker //////
    private void showDatePicker() {
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH);
        int day = calendar.get(Calendar.DAY_OF_MONTH);

        DatePickerDialog datePickerDialog = new DatePickerDialog(requireContext(), dateSetListener, year, month, day);
        datePickerDialog.show();
    }

    // Date Set Listener for DatePickerDialog
    private DatePickerDialog.OnDateSetListener dateSetListener = new DatePickerDialog.OnDateSetListener() {
        @Override
        public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
            // Update calendar with the selected date
            calendar.set(Calendar.YEAR, year);
            calendar.set(Calendar.MONTH, monthOfYear);
            calendar.set(Calendar.DAY_OF_MONTH, dayOfMonth);

            // Update EditText with the selected date
            updateDateInView();
        }
    };

    // Function to update the EditText with the selected date
    private void updateDateInView() {
        String myFormat = "dd/MM/yyyy"; // Change the format as you need
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(myFormat);
        editTextDate.setText(sdf.format(calendar.getTime()));
    }

    ////////////////////////////////////////

    /////// Lifecycle ///////
    @Override
    public void onResume() {
        super.onResume();
        osmMapView.onResume();
    }

    @Override
    public void onPause() {
        super.onPause();
        osmMapView.onPause();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        osmMapView.onDetach();
    }

    // In your fragment's onAttach method, assign the context
    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        mContext = context;
    }

    // In onDetach, set the context to null to avoid memory leaks
    @Override
    public void onDetach() {
        super.onDetach();
        mContext = null;
    }

    ////////////////////////////////////////
    public class SendDataToServerTask extends AsyncTask<String, Void, Integer> {

        private static final String SERVER_ENDPOINT = "http://192.168.188.98:5000/receive-data";

        @Override
        protected Integer doInBackground(String... params) {
            String dataToSend = params[0];
            int responseCode = -1;

            try {
                URL url = new URL(SERVER_ENDPOINT);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(10000); // 10 seconds timeout for connecting
                httpURLConnection.setReadTimeout(15000); // 15 seconds timeout for reading response
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Type", "text/plain");
                httpURLConnection.setDoOutput(true);

                // Construct the data to be sent
                byte[] data = dataToSend.getBytes();

                // Send the data
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(data);

                // Check the response
                responseCode = httpURLConnection.getResponseCode();

                // Close the connections
                outputStream.close();
                httpURLConnection.disconnect();
            } catch (IOException e) {
                e.printStackTrace();
                Log.e("RegApp","❌ Error:"+ e.getMessage());
            }

            return responseCode;
        }

        @Override
        protected void onPostExecute(Integer responseCode) {
            if (responseCode == HttpURLConnection.HTTP_OK) {
                Log.d("RegApp","✅ 200 - OK");
            } else {
                Log.e("RegApp","❌ Error:"+ responseCode);
            }
        }
    }


}