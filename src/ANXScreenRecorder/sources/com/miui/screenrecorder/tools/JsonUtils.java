package com.miui.screenrecorder.tools;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.miui.screenrecorder.config.PhoneConfig;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonUtils {
    public static final String TAG = "JsonUtils";

    public static String getJson(Context context, String fileName) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            BufferedReader bf = new BufferedReader(new InputStreamReader(context.getAssets().open(fileName)));
            while (true) {
                String line = bf.readLine();
                if (line == null) {
                    break;
                }
                stringBuilder.append(line);
            }
        } catch (IOException e) {
            LogUtil.e(TAG, "getJson error in", e);
        }
        return stringBuilder.toString();
    }

    public static ArrayList<PhoneConfig> parseData(String str) {
        ArrayList<PhoneConfig> phoneConfigs = new ArrayList();
        try {
            JSONArray array = new JSONArray(str);
            int len = array.length();
            for (int i = 0; i < len; i++) {
                JSONObject object = array.getJSONObject(i);
                String phoneId = object.getString("phoneId");
                boolean isSupportInner = object.getBoolean("isSupportInner");
                int innerStreamType = object.getInt("innerStreamType");
                if ((Build.DEVICE.equals("gemini") || Build.DEVICE.equals("scorpio") || Build.DEVICE.equals("capricorn") || Build.DEVICE.equals("lithium") || Build.DEVICE.equals("natrium") || Build.DEVICE.equals("riva") || Build.DEVICE.equals("tiffany")) && VERSION.SDK_INT > 25) {
                    innerStreamType = 1;
                }
                phoneConfigs.add(new PhoneConfig(phoneId, isSupportInner, innerStreamType, object.getLong("micOffset"), object.getLong("innerOffset")));
            }
        } catch (JSONException e) {
            LogUtil.e(TAG, "parseData error in", e);
        }
        return phoneConfigs;
    }
}
