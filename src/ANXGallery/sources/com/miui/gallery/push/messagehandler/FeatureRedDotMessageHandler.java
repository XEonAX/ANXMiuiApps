package com.miui.gallery.push.messagehandler;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.preference.GalleryPreferences.FeatureRedDot;
import com.miui.gallery.push.GalleryPushMessage;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.Log;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class FeatureRedDotMessageHandler extends MessageHandler {
    public void handlePull(Context context, GalleryPushMessage message) {
    }

    public void handleDirect(Context context, GalleryPushMessage message) {
        if (context == null) {
            Log.d("FeatureRedDotMessageHandler", "context is null");
            return;
        }
        String messageData = message.getData();
        if (messageData == null) {
            Log.e("FeatureRedDotMessageHandler", "message data is null");
            return;
        }
        try {
            JSONObject dataJSON = new JSONObject(message.getData());
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String startTimeStr = dataJSON.optString("start_time");
            String endTimeStr = dataJSON.optString("end_time");
            long startTime = TextUtils.isEmpty(startTimeStr) ? 0 : dateFormat.parse(startTimeStr).getTime();
            long endTime = TextUtils.isEmpty(endTimeStr) ? Long.MAX_VALUE : dateFormat.parse(endTimeStr).getTime();
            String featureName = dataJSON.optString("feature_name");
            if (System.currentTimeMillis() <= endTime && !TextUtils.isEmpty(featureName)) {
                FeatureRedDot.setFeatureRedDotValidTime(featureName, startTime, endTime);
                Map param = new HashMap();
                param.put("featureName", featureName);
                GalleryStatHelper.recordCountEvent("feature_red_dot", "push_red_dot_arrive", param);
            }
        } catch (Exception e) {
            Log.e("FeatureRedDotMessageHandler", "fail to parse feature red dot data from %s", messageData, e);
        }
    }
}
