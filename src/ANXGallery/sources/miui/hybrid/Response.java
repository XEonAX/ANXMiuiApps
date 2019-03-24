package miui.hybrid;

import org.json.JSONException;
import org.json.JSONObject;

public class Response {
    public static final int CODE_ACTION_ERROR = 205;
    public static final int CODE_ASYNC = 2;
    public static final int CODE_CALLBACK = 3;
    public static final int CODE_CANCEL = 100;
    public static final int CODE_CONFIG_ERROR = 201;
    public static final int CODE_FEATURE_ERROR = 204;
    public static final int CODE_GENERIC_ERROR = 200;
    public static final int CODE_PERMISSION_ERROR = 203;
    public static final int CODE_SIGNATURE_ERROR = 202;
    public static final int CODE_SUCCESS = 0;
    public static final int CODE_SYNC = 1;
    private static final String yX = "code";
    private static final String yY = "content";
    private JSONObject fB;
    private int hP;
    private String yZ;

    public Response(int i) {
        this(i, "");
    }

    public Response(String str) {
        this(0, str);
    }

    public Response(int i, String str) {
        this.fB = new JSONObject();
        this.hP = i;
        this.yZ = str;
        try {
            this.fB.put("code", this.hP);
            this.fB.put("content", str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public Response(JSONObject jSONObject) {
        this(0, jSONObject);
    }

    public Response(int i, JSONObject jSONObject) {
        this.fB = new JSONObject();
        this.hP = i;
        this.yZ = jSONObject.toString();
        try {
            this.fB.put("code", this.hP);
            this.fB.put("content", jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public int getCode() {
        return this.hP;
    }

    public String getContent() {
        return this.yZ;
    }

    public JSONObject getJson() {
        return this.fB;
    }

    public String toString() {
        return this.fB.toString();
    }
}
