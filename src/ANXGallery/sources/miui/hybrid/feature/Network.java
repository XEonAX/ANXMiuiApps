package miui.hybrid.feature;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo.State;
import android.util.Log;
import java.util.Map;
import miui.hybrid.Callback;
import miui.hybrid.HybridFeature;
import miui.hybrid.HybridFeature.Mode;
import miui.hybrid.LifecycleListener;
import miui.hybrid.NativeInterface;
import miui.hybrid.Request;
import miui.hybrid.Response;
import org.json.JSONException;
import org.json.JSONObject;

public class Network implements HybridFeature {
    private static final String LOG_TAG = "Network";
    private static final String zJ = "getType";
    private static final String zK = "enableNotification";
    private static final String zL = "disableNotification";
    private static final String zM = "metered";
    private static final String zN = "connected";
    private IntentFilter zO = new IntentFilter();
    private NetworkStateReceiver zP;
    private LifecycleListener zQ;
    private Callback zv;

    private class NetworkStateReceiver extends BroadcastReceiver {
        private NetworkStateReceiver() {
        }

        /* synthetic */ NetworkStateReceiver(Network network, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if (intent.getExtras() != null) {
                boolean z = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getState() == State.CONNECTED;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("connected", z);
                    Network.this.zv.callback(new Response(jSONObject));
                } catch (JSONException e) {
                    Log.e(Network.LOG_TAG, e.getMessage());
                }
            }
        }
    }

    public Network() {
        this.zO.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    public void setParams(Map<String, String> map) {
    }

    public Response invoke(Request request) {
        String action = request.getAction();
        if (zJ.equals(action)) {
            return a(request);
        }
        if (zK.equals(action)) {
            return b(request);
        }
        if (zL.equals(action)) {
            return c(request);
        }
        return new Response((int) Response.CODE_FEATURE_ERROR, "no such action");
    }

    private Response a(Request request) {
        boolean isActiveNetworkMetered = ((ConnectivityManager) request.getNativeInterface().getActivity().getSystemService("connectivity")).isActiveNetworkMetered();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(zM, isActiveNetworkMetered);
        } catch (JSONException e) {
            Log.e(LOG_TAG, e.getMessage());
        }
        return new Response(jSONObject);
    }

    private void a(NativeInterface nativeInterface) {
        if (this.zP != null) {
            Activity activity = nativeInterface.getActivity();
            nativeInterface.removeLifecycleListener(this.zQ);
            activity.unregisterReceiver(this.zP);
            this.zP = null;
        }
    }

    private Response b(Request request) {
        final NativeInterface nativeInterface = request.getNativeInterface();
        a(nativeInterface);
        Activity activity = nativeInterface.getActivity();
        this.zv = request.getCallback();
        this.zP = new NetworkStateReceiver(this, null);
        activity.registerReceiver(this.zP, this.zO);
        this.zQ = new LifecycleListener() {
            public void onPageChange() {
                unregister();
            }

            public void onDestroy() {
                unregister();
            }

            private void unregister() {
                Network.this.a(nativeInterface);
                Network.this.zv.callback(new Response(100));
            }
        };
        nativeInterface.addLifecycleListener(this.zQ);
        return null;
    }

    private Response c(Request request) {
        a(request.getNativeInterface());
        return new Response(100);
    }

    public Mode getInvocationMode(Request request) {
        String action = request.getAction();
        if (zJ.equals(action)) {
            return Mode.SYNC;
        }
        if (zK.equals(action)) {
            return Mode.CALLBACK;
        }
        if (zL.equals(action)) {
            return Mode.SYNC;
        }
        return null;
    }
}
