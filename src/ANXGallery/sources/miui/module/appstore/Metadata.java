package miui.module.appstore;

import org.json.JSONException;
import org.json.JSONObject;

class Metadata {
    public String mFileHash;
    public String mHost;
    public String mResourceId;
    public String mUrl;

    Metadata() {
    }

    static Metadata parse(JSONObject rootObject) {
        Metadata data = new Metadata();
        try {
            data.mResourceId = rootObject.getString("resourceId");
            data.mHost = rootObject.getString("host");
            data.mUrl = rootObject.getString("url");
            data.mFileHash = rootObject.getString("fileHash");
            return data;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
