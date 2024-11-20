package lu.snt.trux.regapp;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.google.android.material.navigation.NavigationView;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

import lu.snt.trux.regapp.databinding.ActivityHomeBinding;

public class HomeActivity extends AppCompatActivity {

    // Drawer Elements
    private AppBarConfiguration mAppBarConfiguration;
    private ActivityHomeBinding binding;
    // Layout Elements
    private TextView userEmailTextView;
    // Firebase
    private FirebaseAuth firebaseAuth;
    private FirebaseUser firebaseCurrentUser;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Log.d("RegApp", "✅Home Activity");

        //// Firebase ////
        firebaseAuth = FirebaseAuth.getInstance();
        firebaseCurrentUser = firebaseAuth.getCurrentUser();

        //// Linking Drawer UI ////
        binding = ActivityHomeBinding.inflate(getLayoutInflater());
        DrawerLayout    drawer          = binding.drawerLayout;
        NavigationView  navigationView  = binding.navView;
        setContentView(binding.getRoot());
        setSupportActionBar(binding.appBarHome.toolbar);

        mAppBarConfiguration = new AppBarConfiguration.Builder(R.id.nav_home)
                .setOpenableLayout(drawer)
                .build();

        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_home);
        NavigationUI.setupActionBarWithNavController(this, navController, mAppBarConfiguration);
        NavigationUI.setupWithNavController(navigationView, navController);

        //// Showing User Email ///
        View headerView     = navigationView.getHeaderView(0);
        userEmailTextView   = headerView.findViewById(R.id.textViewUserEmail);
        if (firebaseCurrentUser != null) {
            userEmailTextView.setText(firebaseCurrentUser.getEmail());
        }

        ///// Drawer Menu/////
        navigationView.setNavigationItemSelectedListener(
                item -> {
                    int id = item.getItemId();

                    // Log Out
                    if (id == R.id.nav_log_out) {
                        // Log out the user using Firebase Authentication
                        firebaseAuth.signOut();
                        // Display a message
                        Toast.makeText(HomeActivity.this, "✅ Logout successful.", Toast.LENGTH_LONG).show();
                        // Launch Main Activity
                        Intent intent = new Intent(HomeActivity.this, MainActivity.class);
                        startActivity(intent);
                        finish();
                        return true;
                    }

                    // Move to My Account
                    if (id == R.id.nav_my_account) {
                        navController.navigate(R.id.nav_my_account);
                        drawer.closeDrawers();
                        return true;
                    }

                    // Move to Training
                    if (id == R.id.nav_training) {
                        navController.navigate(R.id.nav_training);
                        drawer.closeDrawers();
                        return true;
                    }

                    // Move to Request Data 1
                    if (id == R.id.nav_request_data_1) {
                        navController.navigate(R.id.nav_request_data_1);
                        drawer.closeDrawers();
                        return true;
                    }

                    // Move to Request Data 2
                    if (id == R.id.nav_request_data_2) {
                        navController.navigate(R.id.nav_request_data_2);
                        drawer.closeDrawers();
                        return true;
                    }

                    // Move to Request Data 3
                    if (id == R.id.nav_request_data_3) {
                        navController.navigate(R.id.nav_request_data_3);
                        drawer.closeDrawers();
                        return true;
                    }



                    return false;
                }
        );
    }

    @Override
    public boolean onSupportNavigateUp() {
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_home);
        return NavigationUI.navigateUp(navController, mAppBarConfiguration)
                || super.onSupportNavigateUp();
    }
}
