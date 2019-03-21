package com.miui.gallery.util;

import android.content.Context;
import com.miui.gallery.R;
import miui.text.ExtraTextUtils;

public class FormatUtil {
    public static String formatFileSize(Context context, long number) {
        return ExtraTextUtils.formatFileSize(context, number);
    }

    public static String formatDuration(Context context, int duration) {
        int h = duration / 3600;
        int s = duration - ((h * 3600) + (((duration - (h * 3600)) / 60) * 60));
        if (h == 0) {
            return String.format(context.getString(R.string.detail_ms), new Object[]{Integer.valueOf(m), Integer.valueOf(s)});
        }
        return String.format(context.getString(R.string.detail_hms), new Object[]{Integer.valueOf(h), Integer.valueOf(m), Integer.valueOf(s)});
    }

    public static String formatVideoDuration(long duration) {
        if (duration < 0) {
            return null;
        }
        long hours = 0;
        long minutes = 0;
        long seconds = duration;
        if (seconds >= 3600) {
            hours = seconds / 3600;
            seconds -= 3600 * hours;
        }
        if (seconds >= 60) {
            minutes = seconds / 60;
            seconds -= 60 * minutes;
        }
        StringBuilder sb = new StringBuilder();
        if (hours > 0) {
            sb.append(String.format("%d", new Object[]{Long.valueOf(hours)})).append(":");
        }
        sb.append(String.format("%d", new Object[]{Long.valueOf(minutes)})).append(":");
        if (seconds < 10) {
            sb.append(String.format("%d", new Object[]{Integer.valueOf(0)}));
        }
        sb.append(String.format("%d", new Object[]{Long.valueOf(seconds)}));
        return sb.toString();
    }

    public static String formatHourMinutes(long millisecond) {
        if (millisecond < 0) {
            return null;
        }
        long minutes = millisecond / 60000;
        if (minutes == 0) {
            return "00:01";
        }
        long hour = minutes / 60;
        minutes %= 60;
        StringBuilder sb = new StringBuilder();
        if (hour > 10) {
            sb.append(hour);
        } else {
            sb.append("0").append(hour);
        }
        sb.append(":");
        if (minutes > 10) {
            sb.append(minutes);
        } else {
            sb.append("0").append(minutes);
        }
        return sb.toString();
    }
}
