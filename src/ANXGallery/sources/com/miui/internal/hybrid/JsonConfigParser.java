package com.miui.internal.hybrid;

import java.util.Map;
import miui.hybrid.Response;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonConfigParser implements ConfigParser {
    private static final String eJ = "timestamp";
    private static final String eK = "vendor";
    private static final String eL = "features";
    private static final String eM = "params";
    private static final String eN = "name";
    private static final String eO = "value";
    private static final String eP = "permissions";
    private static final String eQ = "origin";
    private static final String eR = "subdomains";
    private static final String fA = "content";
    private static final String fz = "signature";
    private JSONObject fB;

    private JsonConfigParser(JSONObject jSONObject) {
        this.fB = jSONObject;
    }

    public static JsonConfigParser createFromString(String str) throws HybridException {
        try {
            return createFromJSONObject(new JSONObject(str));
        } catch (JSONException e) {
            throw new HybridException(Response.CODE_CONFIG_ERROR, e.getMessage());
        }
    }

    public static JsonConfigParser createFromJSONObject(JSONObject jSONObject) {
        return new JsonConfigParser(jSONObject);
    }

    public Config parse(Map<String, Object> map) throws HybridException {
        Config config = new Config();
        try {
            JSONObject jSONObject = this.fB;
            Security security = new Security();
            security.setSignature(jSONObject.getString(fz));
            security.setTimestamp(jSONObject.getLong("timestamp"));
            config.setSecurity(security);
            config.setVendor(jSONObject.getString(eK));
            config.setContent(jSONObject.optString("content"));
            a(config, jSONObject);
            b(config, jSONObject);
            return a(config, (Map) map);
        } catch (JSONException e) {
            throw new HybridException(Response.CODE_CONFIG_ERROR, e.getMessage());
        }
    }

    private void a(Config config, JSONObject jSONObject) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray("features");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                Feature feature = new Feature();
                feature.setName(jSONObject2.getString("name"));
                JSONArray optJSONArray2 = jSONObject2.optJSONArray("params");
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        JSONObject jSONObject3 = optJSONArray2.getJSONObject(i2);
                        feature.setParam(jSONObject3.getString("name"), jSONObject3.getString("value"));
                    }
                }
                config.addFeature(feature);
            }
        }
    }

    private void b(Config config, JSONObject jSONObject) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(eP);
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                Permission permission = new Permission();
                permission.setUri(jSONObject2.getString(eQ));
                permission.setApplySubdomains(jSONObject2.optBoolean(eR));
                config.addPermission(permission);
            }
        }
    }

    private Config a(Config config, Map<String, Object> map) {
        return config;
    }
}
