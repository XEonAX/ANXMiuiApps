package com.miui.gallery.push.messagehandler;

import android.content.Context;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.cloudcontrol.CloudControlDBHelper;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.CloudControlRequestHelper;
import com.miui.gallery.cloudcontrol.FeatureProfile;
import com.miui.gallery.cloudcontrol.FeatureProfile.Deserializer;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.preference.GalleryPreferences.CloudControl;
import com.miui.gallery.push.GalleryPushMessage;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import miui.net.ConnectivityHelper;

public class CloudControlMessageHandler extends MessageHandler {
    private static final long ONE_WEEK_MILLIS = TimeUnit.DAYS.toMillis(7);

    public void handlePull(Context context, GalleryPushMessage message) {
        if (message != null) {
            if (ConnectivityHelper.getInstance().isUnmeteredNetworkConnected()) {
                new CloudControlRequestHelper(context).execRequestSync();
                Log.d("CloudControlMessageHandler", "Pull data trigger by push");
                return;
            }
            if (ConnectivityHelper.getInstance().isNetworkConnected()) {
                if (System.currentTimeMillis() - CloudControl.getLastRequestSucceedTime() >= ONE_WEEK_MILLIS) {
                    new CloudControlRequestHelper(context).execRequestSync();
                    Log.d("CloudControlMessageHandler", "Force pull data after one week");
                    return;
                }
            }
            Log.d("CloudControlMessageHandler", "Post as pending task");
            PendingTaskManager.getInstance().postTask(3, message);
        }
    }

    public void handleDirect(Context context, GalleryPushMessage message) {
        long pushTag = message.getTag();
        Map<String, String> params;
        if (pushTag <= CloudControl.getPushTag()) {
            Log.e("CloudControlMessageHandler", "Current push tag is less than last push tag, skip handle");
            params = BaseSamplingStatHelper.generatorCommonParams();
            params.put("businessModule", message.getBusinessModule());
            params.put("tag_lastTag", String.format(Locale.US, "%d_%d", new Object[]{Long.valueOf(pushTag), Long.valueOf(lastPushTag)}));
            BaseSamplingStatHelper.recordErrorEvent("mipush", "push_tag_is_invalid", params);
            return;
        }
        CloudControl.setPushTag(pushTag);
        String content = message.getData();
        try {
            ArrayList<FeatureProfile> featureProfiles = (ArrayList) new GsonBuilder().registerTypeAdapter(FeatureProfile.class, new Deserializer()).create().fromJson(content, new TypeToken<ArrayList<FeatureProfile>>() {
            }.getType());
            if (BaseMiscUtil.isValid(featureProfiles)) {
                boolean persistError = false;
                Iterator it = featureProfiles.iterator();
                while (it.hasNext()) {
                    FeatureProfile featureProfile = (FeatureProfile) it.next();
                    CloudControlManager.getInstance().insertToCache(featureProfile);
                    if (CloudControlDBHelper.tryInsertToDB(context, featureProfile) == 0) {
                        persistError = true;
                        Log.e("CloudControlMessageHandler", "Persist failed: %s", String.valueOf(featureProfile));
                    }
                }
                if (persistError) {
                    params = BaseSamplingStatHelper.generatorCommonParams();
                    params.put("response", content);
                    BaseSamplingStatHelper.recordErrorEvent("cloud_control", "cloud_control_persist_error", params);
                }
            }
        } catch (Exception e) {
            Log.e("CloudControlMessageHandler", "Parse direct content [%s] failed: \n%s", content, e);
        }
    }
}
