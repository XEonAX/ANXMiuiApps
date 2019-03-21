package com.miui.gallery.util.assistant;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import miui.date.Calendar;

public class HolidaysUtil {
    private static final int[][] CHINESE_CALENDAR_HOLIDAYS = new int[][]{new int[]{-1, 100}, new int[]{BaiduSceneResult.SHOOTING, BaiduSceneResult.SHOOTING}, new int[]{BaiduSceneResult.BUILDING_OTHER, BaiduSceneResult.TAEKWONDO}, new int[]{505, BaiduSceneResult.MOUNTAINEERING}, new int[]{707, BaiduSceneResult.SPORTS_OTHER}, new int[]{815, BaiduSceneResult.TEMPLE}};
    private static final int[][] HOLIDAYS = new int[][]{new int[]{BaiduSceneResult.SHOOTING, 200}, new int[]{214, 201}, new int[]{501, 202}, new int[]{601, 203}, new int[]{1001, 204}, new int[]{1225, 205}};

    public static int getHoliday(Calendar cal) {
        int key = ((cal.get(5) + 1) * 100) + cal.get(9);
        for (int[] holiday : HOLIDAYS) {
            if (holiday[0] == key) {
                return holiday[1];
            }
        }
        return -1;
    }

    public static int getHoliday(long time) {
        Calendar cal = new Calendar();
        cal.setTimeInMillis(time);
        return getHoliday(cal);
    }

    public static int getChineseHoliday(Calendar cal) {
        if (!cal.outOfChineseCalendarRange()) {
            int key = ((cal.get(6) + 1) * 100) + cal.get(10);
            for (int[] holiday : CHINESE_CALENDAR_HOLIDAYS) {
                switch (holiday[0]) {
                    case -1:
                        if (daysInChineseYear(cal) != cal.get(13)) {
                            break;
                        }
                        return holiday[1];
                    default:
                        if (!cal.isChineseLeapMonth() && key == holiday[0]) {
                            return holiday[1];
                        }
                }
            }
        }
        return -1;
    }

    public static int getChineseHoliday(long time) {
        Calendar cal = new Calendar();
        cal.setTimeInMillis(time);
        return getChineseHoliday(cal);
    }

    private static int daysInChineseYear(Calendar cal) {
        Calendar calendar = (Calendar) cal.clone();
        calendar.set(2, cal.get(2) + 1);
        calendar.set(6, 0);
        calendar.set(10, 1);
        calendar.setTimeInMillis(calendar.getTimeInMillis() - 86400000);
        return calendar.get(13);
    }

    public static long getChineseHolidayDatetimeOfPastYear(Calendar cal, int years) {
        if (getChineseHoliday(cal) == -1) {
            return -1;
        }
        Calendar calendar = (Calendar) cal.clone();
        calendar.set(2, cal.get(2) - years);
        int daysInChineseYear = daysInChineseYear(calendar);
        if (daysInChineseYear == cal.get(13)) {
            calendar.set(13, daysInChineseYear);
        }
        calendar.set(18, 0);
        calendar.set(20, 0);
        calendar.set(21, 0);
        calendar.set(22, 0);
        return calendar.getTimeInMillis();
    }

    public static String getChineseHolidayNameForStory(int year, int holiday) {
        int index = holiday - 100;
        if (year > 1) {
            String[] pastYearsChineseHolidays = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.chinese_holiday_past_year);
            if (pastYearsChineseHolidays.length > 0 && pastYearsChineseHolidays.length > index) {
                return pastYearsChineseHolidays[index];
            }
        }
        String[] lastYearChineseHolidays = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.chinese_holiday_last_year);
        if (lastYearChineseHolidays.length > 0 && lastYearChineseHolidays.length > index) {
            return lastYearChineseHolidays[index];
        }
        return "";
    }

    public static String getHolidayNameForStory(int year, int holiday) {
        int index = holiday - 200;
        if (year > 1) {
            String[] pastYearsHolidays = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.holiday_past_year);
            if (pastYearsHolidays.length > 0 && pastYearsHolidays.length > index) {
                return pastYearsHolidays[index];
            }
        }
        String[] lastYearHolidays = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.holiday_last_year);
        if (lastYearHolidays.length > 0 && lastYearHolidays.length > index) {
            return lastYearHolidays[index];
        }
        return "";
    }
}
