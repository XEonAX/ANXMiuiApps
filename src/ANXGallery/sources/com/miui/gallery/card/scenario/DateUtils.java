package com.miui.gallery.card.scenario;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class DateUtils {
    public static long getCurrentTimeMillis() {
        return System.currentTimeMillis();
    }

    public static long getLastWeekDayTime(int weekDay, long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time - 604800000);
        if (weekDay < 1 || weekDay > 7) {
            weekDay = 7;
        }
        calendar.set(7, weekDay);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getNextMonthTime(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        int month = calendar.get(2);
        if (month < 11) {
            calendar.set(2, month + 1);
        } else {
            calendar.set(1, calendar.get(1) + 1);
            calendar.set(2, 0);
        }
        return calendar.getTimeInMillis();
    }

    public static long getFirstDayOfMonthTime(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getLastDayEndOfMonthTime(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        int month = calendar.get(2);
        if (month == 11) {
            calendar.set(1, calendar.get(1) + 1);
            calendar.set(2, 0);
            calendar.set(5, 1);
        } else {
            calendar.set(2, month + 1);
            calendar.set(5, 1);
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getDateTime(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getLastNYearDateTime(int year, long time) {
        if (year < 1) {
            year = 1;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        int day = calendar.get(5);
        calendar.set(1, calendar.get(1) - year);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        if (day != calendar.get(5)) {
            return -1;
        }
        return calendar.getTimeInMillis();
    }

    public static String getDatePeriodGraceful(long startTime, long endTime) {
        if (isSameDay(startTime, endTime)) {
            return getYearMonthDayLocale(startTime);
        }
        if (startTime <= 0 || endTime <= startTime) {
            return "";
        }
        boolean isSameMonth;
        String startTimeStr;
        String endTimeStr;
        String language = Locale.getDefault().getLanguage();
        boolean isSameYear = isSameYear(startTime, endTime);
        if (isSameYear && isSameMonth(startTime, endTime)) {
            isSameMonth = true;
        } else {
            isSameMonth = false;
        }
        if (new Locale("zh").getLanguage().equals(language)) {
            startTimeStr = getYearMonthDayLocale(startTime);
            if (isSameMonth) {
                endTimeStr = getDayLocale(endTime);
            } else if (isSameYear) {
                endTimeStr = getMonthDayLocale(endTime);
            } else {
                endTimeStr = getYearMonthDayLocale(endTime);
            }
        } else if (!new Locale("en").getLanguage().equals(language)) {
            return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_description_from_to, new Object[]{getYearMonthDayLocale(startTime), getYearMonthDayLocale(endTime)});
        } else if (isSameMonth) {
            startTimeStr = getMonthDayLocale(startTime);
            endTimeStr = getDayLocale(endTime) + ", " + getYearLocale(endTime);
        } else if (isSameYear) {
            startTimeStr = getMonthDayLocale(startTime);
            endTimeStr = getYearMonthDayLocale(endTime);
        } else {
            startTimeStr = getYearMonthDayLocale(startTime);
            endTimeStr = getYearMonthDayLocale(endTime);
        }
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_description_from_to, new Object[]{startTimeStr, endTimeStr});
    }

    public static String getMonthPeriodGraceful(long startTime, long endTime) {
        if (isSameMonth(startTime, endTime)) {
            return getYearMonthLocale(startTime);
        }
        if (startTime <= 0 || endTime <= startTime) {
            return "";
        }
        String startTimeStr;
        String endTimeStr;
        String language = Locale.getDefault().getLanguage();
        boolean isSameYear = isSameYear(startTime, endTime);
        if (new Locale("zh").getLanguage().equals(language)) {
            if (isSameYear) {
                startTimeStr = getYearMonthLocale(startTime);
                endTimeStr = getMonthLocale(endTime);
            } else {
                startTimeStr = getYearMonthLocale(startTime);
                endTimeStr = getYearMonthLocale(endTime);
            }
        } else if (!new Locale("en").getLanguage().equals(language)) {
            return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_description_from_to, new Object[]{getYearMonthLocale(startTime), getYearMonthLocale(endTime)});
        } else if (isSameYear) {
            startTimeStr = getMonthLocale(startTime);
            endTimeStr = getYearMonthLocale(endTime);
        } else {
            startTimeStr = getYearMonthLocale(startTime);
            endTimeStr = getYearMonthLocale(endTime);
        }
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_description_from_to, new Object[]{startTimeStr, endTimeStr});
    }

    public static String getYearMonthDayLocale(long time) {
        return miui.date.DateUtils.formatDateTime(time, 896);
    }

    public static String getYearMonthLocale(long time) {
        return miui.date.DateUtils.formatDateTime(time, 768);
    }

    public static String getMonthLocale(long time) {
        return miui.date.DateUtils.formatDateTime(time, 256);
    }

    public static String getDayLocale(long time) {
        return miui.date.DateUtils.formatDateTime(time, 128);
    }

    public static String getMonthDayLocale(long time) {
        return miui.date.DateUtils.formatDateTime(time, 384);
    }

    public static String getYearLocale(long time) {
        return miui.date.DateUtils.formatDateTime(time, 512);
    }

    public static String getDateFormat(long time) {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date(time));
    }

    public static long getLastNYearMonthTime(int year, long time, boolean isStart) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        try {
            return getLastNYearMonthTime(year, calendar.get(2), isStart);
        } catch (Exception e) {
            Log.e("DateUtils", "getLastNYearMonthTime fail:" + e);
            return -1;
        }
    }

    private static long getLastNYearMonthTime(int year, int month, boolean isStart) {
        if (year < 0) {
            year = 0;
        }
        if (month < 0) {
            month = 0;
        }
        if (month > 11) {
            month = 11;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(getCurrentTimeMillis());
        calendar.set(1, calendar.get(1) - year);
        if (isStart) {
            calendar.set(2, month);
            calendar.set(5, 1);
        } else if (month == 11) {
            calendar.set(1, calendar.get(1) + 1);
            calendar.set(2, 0);
            calendar.set(5, 1);
        } else {
            calendar.set(2, month + 1);
            calendar.set(5, 1);
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getFirstDayOfYearTime(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        calendar.set(2, 0);
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getEndDayOfYearTime(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        calendar.set(2, 11);
        calendar.set(5, 31);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static int getMonth(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        return calendar.get(2);
    }

    public static long getSeasonStartTime(long time) {
        int seasonStart;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        switch (calendar.get(2)) {
            case 2:
            case 3:
            case 4:
                seasonStart = 2;
                break;
            case 5:
            case 6:
            case 7:
                seasonStart = 5;
                break;
            case 8:
            case 9:
            case 10:
                seasonStart = 8;
                break;
            default:
                seasonStart = 11;
                break;
        }
        calendar.set(2, seasonStart);
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getSeasonEndTime(long time) {
        int seasonEnd;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        switch (calendar.get(2)) {
            case 2:
            case 3:
            case 4:
                seasonEnd = 4;
                break;
            case 5:
            case 6:
            case 7:
                seasonEnd = 7;
                break;
            case 8:
            case 9:
            case 10:
                seasonEnd = 10;
                break;
            default:
                seasonEnd = 1;
                break;
        }
        if (seasonEnd == 11) {
            calendar.set(1, calendar.get(1) + 1);
            calendar.set(2, 0);
            calendar.set(5, 1);
        } else {
            calendar.set(2, seasonEnd + 1);
            calendar.set(5, 1);
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static int getSeason(long time) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        switch (calendar.get(2)) {
            case 2:
            case 3:
            case 4:
                return 0;
            case 5:
            case 6:
            case 7:
                return 1;
            case 8:
            case 9:
            case 10:
                return 2;
            default:
                return 3;
        }
    }

    public static boolean isSameDay(long leftTime, long rightTime) {
        Calendar calendarA = Calendar.getInstance();
        calendarA.setTimeInMillis(leftTime);
        Calendar calendarB = Calendar.getInstance();
        calendarB.setTimeInMillis(rightTime);
        if (calendarA.get(1) == calendarB.get(1) && calendarA.get(2) == calendarB.get(2) && calendarA.get(5) == calendarB.get(5)) {
            return true;
        }
        return false;
    }

    public static boolean isSameMonth(long leftTime, long rightTime) {
        Calendar calendarA = Calendar.getInstance();
        calendarA.setTimeInMillis(leftTime);
        Calendar calendarB = Calendar.getInstance();
        calendarB.setTimeInMillis(rightTime);
        if (calendarA.get(1) == calendarB.get(1) && calendarA.get(2) == calendarB.get(2)) {
            return true;
        }
        return false;
    }

    public static boolean isSameYear(long leftTime, long rightTime) {
        Calendar calendarA = Calendar.getInstance();
        calendarA.setTimeInMillis(leftTime);
        Calendar calendarB = Calendar.getInstance();
        calendarB.setTimeInMillis(rightTime);
        if (calendarA.get(1) == calendarB.get(1)) {
            return true;
        }
        return false;
    }

    public static boolean withinTime(long startTime, long endTime, long withIn) {
        return Math.abs(startTime - endTime) <= withIn;
    }
}
