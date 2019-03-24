package miui.hybrid.feature;

import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.Locale;
import java.util.Map;
import miui.hybrid.HybridFeature;
import miui.hybrid.HybridFeature.Mode;
import miui.hybrid.Request;
import miui.hybrid.Response;
import miui.telephony.TelephonyHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class Device implements HybridFeature {
    private static final String KEY_LANGUAGE = "language";
    private static final String LOG_TAG = "Device";
    private static final String zm = "getDeviceInfo";
    private static final String zn = "model";
    private static final String zo = "romVersion";
    private static final String zp = "region";
    private static final String zq = "deviceId";

    public void setParams(Map<String, String> map) {
    }

    public Response invoke(Request request) {
        if (zm.equals(request.getAction())) {
            return ct();
        }
        return new Response((int) Response.CODE_FEATURE_ERROR, "no such action");
    }

    public Mode getInvocationMode(Request request) {
        if (zm.equals(request.getAction())) {
            return Mode.SYNC;
        }
        return null;
    }

    private Response ct() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(zn, Build.MODEL);
            jSONObject.put(zo, VERSION.RELEASE);
            jSONObject.put(KEY_LANGUAGE, Locale.getDefault().getLanguage());
            jSONObject.put(zp, Locale.getDefault().getCountry());
            jSONObject.put(zq, TelephonyHelper.getInstance().getDeviceId());
            return new Response(jSONObject);
        } catch (JSONException e) {
            Log.e(LOG_TAG, e.getMessage());
            return new Response((int) Response.CODE_GENERIC_ERROR, e.getMessage());
        }
    }
}
