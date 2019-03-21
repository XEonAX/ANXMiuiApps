package com.miui.gallery.util;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.data.LocationManager;
import miui.date.DateUtils;

public class TalkBackUtil {
    public static String getContentDescriptionForImage(Context context, long createTime, String rawLocation, String mimeType) {
        if (context == null || mimeType == null) {
            return null;
        }
        return getContentDescriptionForImage(context, createTime, rawLocation, BaseFileMimeUtil.isVideoFromMimeType(mimeType));
    }

    public static String getContentDescriptionForImage(Context context, long createTime, String rawLocation, boolean isVideo) {
        if (context == null) {
            return null;
        }
        String location = LocationManager.getInstance().generateTitleLine(rawLocation);
        String time = DateUtils.formatDateTime(createTime, 942);
        if (TextUtils.isEmpty(location)) {
            return context.getString(isVideo ? R.string.video_with_time : R.string.image_with_time, new Object[]{time});
        }
        return context.getString(isVideo ? R.string.video_with_time_and_location : R.string.image_with_time_and_location, new Object[]{time, location});
    }

    public static void requestAnnouncementEvent(View view, String desc) {
        if (view != null && !TextUtils.isEmpty(desc)) {
            view.announceForAccessibility(desc);
        }
    }
}
