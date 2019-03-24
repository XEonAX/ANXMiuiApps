package miui.hybrid.feature;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import java.util.Map;
import miui.hybrid.Callback;
import miui.hybrid.HybridFeature;
import miui.hybrid.HybridFeature.Mode;
import miui.hybrid.Request;
import miui.hybrid.Response;
import org.json.JSONException;
import org.json.JSONObject;

public class Geolocation implements HybridFeature {
    private static final String TAG = "HybridGeolocation";
    private static final String iG = "type";
    private static final String zr = "enableListener";
    private static final String zs = "get";
    private static final String zt = "disableListener";
    private String zu = "network";
    private Callback zv;
    private LocationListener zw;

    private class NetworkLocationListener implements LocationListener {
        private NetworkLocationListener() {
        }

        public void onLocationChanged(Location location) {
            if (Geolocation.this.zv != null) {
                Geolocation.this.zv.callback(Geolocation.this.a(location));
            }
        }

        public void onProviderDisabled(String str) {
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    public void setParams(Map<String, String> map) {
        if ("gps".equals((String) map.get("type"))) {
            this.zu = "gps";
        }
    }

    public Response invoke(Request request) {
        String action = request.getAction();
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("invoke with action: ");
        stringBuilder.append(action);
        Log.i(str, stringBuilder.toString());
        LocationManager locationManager = (LocationManager) request.getNativeInterface().getActivity().getSystemService("location");
        if (zr.equals(action)) {
            return a(locationManager, request);
        }
        if (zs.equals(action)) {
            return b(locationManager, request);
        }
        if (zt.equals(action)) {
            return c(locationManager, request);
        }
        return new Response((int) Response.CODE_FEATURE_ERROR, "no such action");
    }

    private Response a(LocationManager locationManager, Request request) {
        this.zv = request.getCallback();
        if (this.zw == null) {
            this.zw = new NetworkLocationListener();
            Looper.prepare();
            locationManager.requestLocationUpdates(this.zu, 0, 0.0f, this.zw);
            Looper.loop();
        }
        this.zv.callback(a(locationManager.getLastKnownLocation(this.zu)));
        return null;
    }

    private Response b(LocationManager locationManager, Request request) {
        return a(locationManager.getLastKnownLocation(this.zu));
    }

    private Response c(LocationManager locationManager, Request request) {
        if (this.zw != null) {
            locationManager.removeUpdates(this.zw);
            this.zw = null;
        }
        this.zv = null;
        request.getCallback().callback(new Response(0, "remove"));
        return null;
    }

    private Response a(Location location) {
        if (location != null) {
            Log.i(TAG, "response with valid location.");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("latitude", location.getLatitude());
                jSONObject.put("longitude", location.getLongitude());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return new Response(3, jSONObject.toString());
        }
        Log.i(TAG, "error: response location with null.");
        return new Response((int) Response.CODE_GENERIC_ERROR, "no location");
    }

    public Mode getInvocationMode(Request request) {
        if (zs.equals(request.getAction())) {
            return Mode.SYNC;
        }
        return Mode.CALLBACK;
    }
}
