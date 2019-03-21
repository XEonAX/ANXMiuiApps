package com.miui.extraphoto.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.LazyValue;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExtraPhotoSDK {
    private static final DeviceSupportMotionPhoto DEVICE_SUPPORT_MOTION_PHOTO = new DeviceSupportMotionPhoto();
    private static final DeviceSupportRefocus DEVICE_SUPPORT_REFOCUS = new DeviceSupportRefocus();

    private static class DeviceSupportMotionPhoto extends LazyValue<Context, Boolean> {
        private DeviceSupportMotionPhoto() {
        }

        protected Boolean onInit(Context context) {
            Intent target = new Intent("com.miui.extraphoto.action.MOTION_PHOTO_REPICK");
            target.setPackage("com.miui.extraphoto");
            List<ResolveInfo> resolveInfos = context.getPackageManager().queryIntentActivities(target, 65536);
            boolean z = (resolveInfos == null || resolveInfos.isEmpty()) ? false : true;
            return Boolean.valueOf(z);
        }
    }

    private static class DeviceSupportRefocus extends LazyValue<Context, Boolean> {
        private DeviceSupportRefocus() {
        }

        protected Boolean onInit(Context context) {
            Intent target = new Intent("com.miui.extraphoto.action.VIEW_ADVANCED_REFOCUS");
            target.setPackage("com.miui.extraphoto");
            List<ResolveInfo> resolveInfos = context.getPackageManager().queryIntentActivities(target, 65536);
            boolean z = (resolveInfos == null || resolveInfos.isEmpty()) ? false : true;
            return Boolean.valueOf(z);
        }
    }

    public static void sendResultStatic(Intent intent) {
        Map map = new HashMap();
        if (intent == null) {
            map.put("save_type", "NONE");
            sendResultStatic(map);
            return;
        }
        String type = intent.getStringExtra("save_type");
        map.put(type, intent.getStringExtra("save_explain"));
        map.put("save_type", type);
        sendResultStatic(map);
    }

    private static void sendResultStatic(Map<String, String> map) {
        BaseSamplingStatHelper.recordCountEvent("photo_extra", "refocus_save", map);
    }

    public static void sendExposureStatic() {
        BaseSamplingStatHelper.recordCountEvent("photo_extra", "refocus_exposure");
    }

    public static void sendEnterStatic() {
        BaseSamplingStatHelper.recordCountEvent("photo_extra", "refocus_enter");
    }

    public static void sendDeletePhotoStatic(long flag) {
        sendTypedPhotoStatic("extra_photo_delete", flag);
    }

    public static void sendSharePhotoStatic(long flag) {
        sendTypedPhotoStatic("extra_photo_share", flag);
    }

    public static void sendNewPhotoStatic(long flag) {
        sendTypedPhotoStatic("extra_photo_new", flag);
    }

    private static void sendTypedPhotoStatic(String event, long flag) {
        if (flag > 0 && !TextUtils.isEmpty(event)) {
            String type = getType(flag);
            if (type != null) {
                HashMap<String, String> params = new HashMap();
                params.put(nexExportFormat.TAG_FORMAT_TYPE, type);
                BaseSamplingStatHelper.recordCountEvent("photo_extra", event, params);
            }
        }
    }

    private static String getType(long flag) {
        if ((32 & flag) > 0) {
            return "motion";
        }
        if ((1 & flag) > 0) {
            return "refocus";
        }
        return null;
    }

    public static boolean isDeviceSupportRefocus(Context context) {
        return ((Boolean) DEVICE_SUPPORT_REFOCUS.get(context)).booleanValue();
    }

    public static boolean isDeviceSupportMotionPhoto(Context context) {
        return !BaseBuildUtil.isInternational() && ((Boolean) DEVICE_SUPPORT_MOTION_PHOTO.get(context)).booleanValue();
    }
}
