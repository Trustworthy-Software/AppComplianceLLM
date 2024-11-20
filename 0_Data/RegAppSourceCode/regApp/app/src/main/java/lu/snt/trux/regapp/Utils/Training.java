package lu.snt.trux.regapp.Utils;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;

import com.google.firebase.Timestamp;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class Training {

    //// Fields ////
    private String  date;
    private String  intensity;
    private String  country;
    private int     duration;
    private double  latitude;
    private double  longitude;

    //// Constructors ///
    // Required default constructor for Firebase
    public Training() {}

    // Constructor
    public Training(String date, int duration, String intensity, double latitude, double longitude) {
        this.date       = date;
        this.duration   = duration;
        this.intensity  = intensity;
        this.latitude   = latitude;
        this.longitude  = longitude;
    }

    //// Access methods ///
    public String getDate() {
        return date;
    }

    public void setDate(String  date) {
        this.date = date;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getIntensity() {
        return intensity;
    }

    public void setIntensity(String intensity) {
        this.intensity = intensity;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getCountry(Context context) {
        Geocoder geocoder = new Geocoder(context, Locale.getDefault());

        try {
            List<Address> addresses = geocoder.getFromLocation(latitude, longitude, 1);

            if (addresses != null && !addresses.isEmpty()) {
                Address address = addresses.get(0);
                return address.getCountryName();
            } else {
                // Return a default value or handle no address found case
                return "Unknown";
            }
        } catch (IOException e) {
            e.printStackTrace();
            // Handle IOException, return default value or show an error
            return "Unknown";
        }
    }

    public String getCity(Context context) {
        Geocoder geocoder = new Geocoder(context, Locale.getDefault());

        try {
            List<Address> addresses = geocoder.getFromLocation(latitude, longitude, 1);

            if (addresses != null && !addresses.isEmpty()) {
                Address address = addresses.get(0);
                String cityName = address.getLocality();
                if (cityName != null && !cityName.isEmpty()) {
                    return cityName;
                } else {
                    // If locality is not available, return the admin area or sub-admin area
                    cityName = address.getAdminArea();
                    if (cityName != null && !cityName.isEmpty()) {
                        return cityName;
                    } else {
                        // Return a default value or handle no city name found case
                        return "Unknown City";
                    }
                }
            } else {
                // Return a default value or handle no address found case
                return "Unknown City";
            }
        } catch (IOException e) {
            e.printStackTrace();
            // Handle IOException, return default value or show an error
            return "Unknown City";
        }
    }
}
