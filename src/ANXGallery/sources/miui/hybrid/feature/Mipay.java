package miui.hybrid.feature;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
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

public class Mipay implements HybridFeature {
    private static final String zA = "orderInfo";
    private static final String zB = "order";
    private static final String zC = "extra";
    private static final String zD = "code";
    private static final String zE = "message";
    private static final int zF = -1;
    private static final String zG = "com.xiaomi.action.MIPAY_PAY_ORDER";
    private static final String zH = "com.mipay.wallet";
    private static final String zi = "result";
    private static final int zy = 20140424;
    private static final String zz = "pay";

    public void setParams(Map<String, String> map) {
    }

    public Response invoke(final Request request) {
        if (!TextUtils.equals(request.getAction(), zz)) {
            return new Response((int) Response.CODE_FEATURE_ERROR, "no such action");
        }
        String string;
        final NativeInterface nativeInterface = request.getNativeInterface();
        Activity activity = nativeInterface.getActivity();
        nativeInterface.addLifecycleListener(new LifecycleListener() {
            public void onActivityResult(int i, int i2, Intent intent) {
                if (i == Mipay.zy) {
                    Response response;
                    nativeInterface.removeLifecycleListener(this);
                    if (i2 == -1) {
                        response = new Response(0, Mipay.this.a(intent));
                    } else if (i2 == 0) {
                        response = new Response(100, Mipay.this.a(intent));
                    } else {
                        response = new Response((int) Response.CODE_GENERIC_ERROR);
                    }
                    request.getCallback().callback(response);
                }
            }
        });
        try {
            string = new JSONObject(request.getRawParams()).getString(zA);
        } catch (JSONException e) {
            e.printStackTrace();
            string = null;
        }
        return a(activity, string, null);
    }

    private JSONObject a(Intent intent) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", intent.getIntExtra("code", -1));
            CharSequence stringExtra = intent.getStringExtra("message");
            if (!TextUtils.isEmpty(stringExtra)) {
                jSONObject.put("message", stringExtra);
            }
            CharSequence stringExtra2 = intent.getStringExtra(zi);
            if (!TextUtils.isEmpty(stringExtra2)) {
                jSONObject.put(zi, stringExtra2);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private Response a(Activity activity, String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            return new Response((int) Response.CODE_FEATURE_ERROR, "order cannot be empty");
        }
        Intent intent = new Intent(zG);
        intent.setPackage(zH);
        if (activity.getPackageManager().resolveActivity(intent, 0) == null) {
            return new Response((int) Response.CODE_FEATURE_ERROR, "mipay feature not available");
        }
        intent.putExtra(zB, str);
        intent.putExtra(zC, bundle);
        activity.startActivityForResult(intent, zy);
        return null;
    }

    public Mode getInvocationMode(Request request) {
        if (TextUtils.equals(request.getAction(), zz)) {
            return Mode.CALLBACK;
        }
        return null;
    }
}
