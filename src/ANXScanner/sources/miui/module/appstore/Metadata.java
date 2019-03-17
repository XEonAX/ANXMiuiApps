package miui.module.appstore;

import org.json.JSONException;
import org.json.JSONObject;

class Metadata {
    private static final String KEY_FILE_HASH = "fileHash";
    private static final String KEY_HOST = "host";
    private static final String KEY_RESOURCE_ID = "resourceId";
    private static final String KEY_URL = "url";
    public String mFileHash;
    public String mHost;
    public String mResourceId;
    public String mUrl;

    Metadata() {
    }

    static Metadata parse(JSONObject rootObject) {
        Metadata data = new Metadata();
        try {
            data.mResourceId = rootObject.getString(KEY_RESOURCE_ID);
            data.mHost = rootObject.getString("host");
            data.mUrl = rootObject.getString("url");
            data.mFileHash = rootObject.getString(KEY_FILE_HASH);
            return data;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
