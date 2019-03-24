package miui.hybrid.feature;

import android.app.Activity;
import android.content.Intent;
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

public class Share implements HybridFeature {
    private static final String ACTION_SEND = "send";
    private static final String TAG = "HybridShare";
    private static final String iG = "type";
    private static final String zS = "data";

    public void setParams(Map<String, String> map) {
    }

    public Response invoke(Request request) {
        if (ACTION_SEND.equals(request.getAction())) {
            return d(request);
        }
        return new Response((int) Response.CODE_FEATURE_ERROR, "no such action");
    }

    private Response d(Request request) {
        final NativeInterface nativeInterface = request.getNativeInterface();
        Activity activity = nativeInterface.getActivity();
        final Callback callback = request.getCallback();
        nativeInterface.addLifecycleListener(new LifecycleListener() {
            public void onActivityResult(int i, int i2, Intent intent) {
                Response response;
                nativeInterface.removeLifecycleListener(this);
                if (i2 == -1) {
                    response = new Response(0, "success");
                } else if (i2 == 0) {
                    response = new Response(100, "cancel");
                } else {
                    response = new Response((int) Response.CODE_GENERIC_ERROR);
                }
                callback.callback(response);
            }
        });
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        String rawParams = request.getRawParams();
        try {
            JSONObject jSONObject = new JSONObject(rawParams);
            String string = jSONObject.getString("type");
            String string2 = jSONObject.getString("data");
            if (string == null || string2 == null) {
                callback.callback(new Response((int) Response.CODE_GENERIC_ERROR, "no data to share"));
                return null;
            }
            intent.setType(string);
            if (string.startsWith("text/")) {
                intent.putExtra("android.intent.extra.TEXT", string2);
            } else {
                intent.putExtra("android.intent.extra.STREAM", string2);
            }
            activity.startActivityForResult(intent, 1);
            return null;
        } catch (JSONException e) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("invalid JSON string:");
            stringBuilder.append(rawParams);
            Log.i(str, stringBuilder.toString());
            callback.callback(new Response((int) Response.CODE_GENERIC_ERROR, "invalid data to share"));
        }
    }

    public Mode getInvocationMode(Request request) {
        return Mode.CALLBACK;
    }
}
