package com.xiaomi.push.service.awake;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.util.HashMap;
import org.json.JSONObject;

public class AwakeDataHelper {
    public static String getString(HashMap<String, String> extra) {
        if (extra == null) {
            return "";
        }
        JSONObject jsonObject = new JSONObject();
        try {
            for (String key : extra.keySet()) {
                jsonObject.put(key, extra.get(key));
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
        return jsonObject.toString();
    }

    public static String obfuscateLogContent(HashMap<String, String> extra) {
        HashMap<String, String> hashMaps = new HashMap();
        if (extra != null) {
            hashMaps.put("event_type", ((String) extra.get("event_type")) + "");
            hashMaps.put("description", ((String) extra.get("description")) + "");
            String awakeInfo = (String) extra.get("awake_info");
            if (!TextUtils.isEmpty(awakeInfo)) {
                try {
                    JSONObject jsonObject = new JSONObject(awakeInfo);
                    hashMaps.put("__planId__", String.valueOf(jsonObject.opt("__planId__")));
                    hashMaps.put("flow_id", String.valueOf(jsonObject.opt("flow_id")));
                    hashMaps.put("jobkey", String.valueOf(jsonObject.opt("jobkey")));
                    hashMaps.put("msg_id", String.valueOf(jsonObject.opt("msg_id")));
                    hashMaps.put("A", String.valueOf(jsonObject.opt("awake_app")));
                    hashMaps.put("B", String.valueOf(jsonObject.opt("awakened_app")));
                    hashMaps.put("module", String.valueOf(jsonObject.opt("awake_type")));
                } catch (Throwable e) {
                    MyLog.e(e);
                }
            }
        }
        return getString(hashMaps);
    }

    public static String encode(String input) {
        return Base64.encodeToString(XMStringUtils.getBytes(input), 2);
    }

    public static String decode(String input) {
        return XMStringUtils.bytesToString(Base64.decode(input, 2));
    }

    public static Uri getContentUri(String authorities, String info) {
        return Uri.parse("content://" + authorities).buildUpon().appendPath(info).build();
    }
}
