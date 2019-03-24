package miui.hybrid.feature;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import java.util.Map;
import miui.hybrid.HybridFeature;
import miui.hybrid.HybridFeature.Mode;
import miui.hybrid.LifecycleListener;
import miui.hybrid.NativeInterface;
import miui.hybrid.Request;
import miui.hybrid.Response;
import org.json.JSONException;
import org.json.JSONObject;

public class Barcode implements HybridFeature {
    private static final int za = "REQUEST_SCAN_BARCODE".hashCode();
    private static final String zb = "android.intent.action.scanbarcode";
    private static final String zc = "miui.intent.category.SYSAPP_TOOL";
    private static final String zd = "type";
    private static final String ze = "result";
    private static final String zf = "isBackToThirdApp";
    private static final String zg = "scan";
    private static final String zh = "type";
    private static final String zi = "result";

    public void setParams(Map<String, String> map) {
    }

    public Response invoke(final Request request) {
        if (!TextUtils.equals(request.getAction(), zg)) {
            return new Response((int) Response.CODE_FEATURE_ERROR, "no such action");
        }
        final NativeInterface nativeInterface = request.getNativeInterface();
        Activity activity = nativeInterface.getActivity();
        Intent intent = new Intent(zb);
        intent.addCategory("miui.intent.category.SYSAPP_TOOL");
        intent.putExtra(zf, true);
        if (activity.getPackageManager().resolveActivity(intent, 0) == null) {
            request.getCallback().callback(new Response((int) Response.CODE_FEATURE_ERROR, "can't find barcode scanner activity"));
            return null;
        }
        nativeInterface.addLifecycleListener(new LifecycleListener() {
            public void onActivityResult(int i, int i2, Intent intent) {
                if (i == Barcode.za) {
                    Response response;
                    nativeInterface.removeLifecycleListener(this);
                    if (i2 == -1) {
                        response = new Response(0, Barcode.this.a(intent));
                    } else if (i2 == 0) {
                        response = new Response(100);
                    } else {
                        response = new Response((int) Response.CODE_GENERIC_ERROR);
                    }
                    request.getCallback().callback(response);
                }
            }
        });
        activity.startActivityForResult(intent, za);
        return null;
    }

    private JSONObject a(Intent intent) {
        if (intent == null) {
            return null;
        }
        int intExtra = intent.getIntExtra("type", -1);
        String stringExtra = intent.getStringExtra("result");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", intExtra);
            jSONObject.put("result", stringExtra);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public Mode getInvocationMode(Request request) {
        if (TextUtils.equals(request.getAction(), zg)) {
            return Mode.CALLBACK;
        }
        return null;
    }
}
