package com.xiaomi.opensdk.file.utils;

import cn.kuaipan.android.exception.KscException;
import cn.kuaipan.android.utils.JsonReader;
import cn.kuaipan.android.utils.JsonToken;
import cn.kuaipan.android.utils.JsonUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class FileSDKUtils {
    public static Map<String, Object> contentKssJsonToMap(JSONObject kssJson) throws KscException, InterruptedException {
        try {
            JsonReader reader = new JsonReader(new StringReader(kssJson.toString()));
            Map<String, Object> resultMap = (Map) JsonUtils.parser(reader);
            if (reader.peek() != JsonToken.END_DOCUMENT) {
                throw new JSONException("Document not end of EOF");
            }
            if (resultMap != null) {
                if (!resultMap.isEmpty()) {
                    return resultMap;
                }
            }
            throw new KscException(501003, kssJson.toString());
        } catch (IOException e) {
            throw KscException.newException(e, "contentKssJsonToMap failed.");
        } catch (JSONException e2) {
            throw KscException.newException(e2, "contentKssJsonToMap failed.");
        }
    }
}
