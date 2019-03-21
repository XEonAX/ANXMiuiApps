package com.miui.gallery.util;

import android.text.TextUtils;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class GalleryTimeUtils {
    private static ThreadLocal<SimpleDateFormat> sDefaultFormatter = new ThreadLocal();
    private static ThreadLocal<SimpleDateFormat> sUTCFormatter = new ThreadLocal();

    public static SimpleDateFormat getUTCDateFormat() {
        if (sUTCFormatter.get() == null) {
            sUTCFormatter.set(createSimpleDateFormat(true));
        }
        return (SimpleDateFormat) sUTCFormatter.get();
    }

    public static SimpleDateFormat getDefaultDateFormat() {
        if (sDefaultFormatter.get() == null) {
            sDefaultFormatter.set(createSimpleDateFormat(false));
        }
        return (SimpleDateFormat) sDefaultFormatter.get();
    }

    private static SimpleDateFormat createSimpleDateFormat(boolean isUTC) {
        SimpleDateFormat sd = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        if (isUTC) {
            sd.setTimeZone(TimeZone.getTimeZone("UTC"));
        } else {
            sd.setTimeZone(TimeZone.getDefault());
        }
        return sd;
    }

    public static long getDateTime(String dateTimeString) {
        Date date = getDate(dateTimeString);
        if (date != null) {
            return date.getTime();
        }
        return -1;
    }

    public static Date getDate(String dateTimeString) {
        Date date = null;
        if (TextUtils.isEmpty(dateTimeString)) {
            return date;
        }
        try {
            return getDefaultDateFormat().parse(dateTimeString, new ParsePosition(0));
        } catch (IllegalArgumentException e) {
            return date;
        }
    }

    public static long getGpsDateTime(String date, String time) {
        Date datetime = getGpsDate(date, time);
        if (datetime != null) {
            return datetime.getTime();
        }
        return -1;
    }

    public static Date getGpsDate(String date, String time) {
        Date date2 = null;
        if (TextUtils.isEmpty(date) || TextUtils.isEmpty(time)) {
            return date2;
        }
        String dateTimeString = date + ' ' + time;
        if (dateTimeString == null) {
            return date2;
        }
        try {
            return getUTCDateFormat().parse(dateTimeString, new ParsePosition(0));
        } catch (IllegalArgumentException e) {
            return date2;
        }
    }

    public static long getTakenDateTime(String GPSDate, String GPSTime, String exifDateTime, long dateTaken, long modifyTime) {
        long time = modifyTime;
        Date gpsDate = getGpsDate(GPSDate, GPSTime);
        if (gpsDate == null) {
            time = getDateTime(exifDateTime);
            if (time != -1) {
                return time;
            }
            if (dateTaken > 0) {
                return dateTaken;
            }
            return modifyTime;
        }
        Date localDate = getDate(exifDateTime);
        if (localDate == null || GalleryDateUtils.isSameDate(localDate, gpsDate)) {
            return gpsDate.getTime();
        }
        return localDate.getTime();
    }
}
