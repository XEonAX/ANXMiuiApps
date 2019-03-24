package com.miui.gallery.util;

import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.internal.vip.VipConstants;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import miui.date.DateUtils;
import miui.util.C0014Pools;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C0007Pool;
import miui.util.cache.LruCache;

public class GalleryDateUtils {
    private static final C0007Pool<Calendar> CALENDAR_POOL = C0014Pools.createSoftReferencePool(new C0000Manager<Calendar>() {
        public Calendar createInstance() {
            return Calendar.getInstance();
        }
    }, 1);
    private static LruCache<Long, String> sDateCache = new LruCache(50);
    private static String sLocalLanguage = Locale.getDefault().toString();
    private static String sToday;
    private static String sYesterday;

    public static Calendar acquire() {
        return (Calendar) CALENDAR_POOL.acquire();
    }

    public static void release(Calendar calendar) {
        CALENDAR_POOL.release(calendar);
    }

    public static int format(long timeInMillis) {
        Calendar calendar = acquire();
        calendar.setTimeInMillis(timeInMillis);
        int date = (((calendar.get(1) << 4) | (calendar.get(2) + 1)) << 5) | calendar.get(5);
        release(calendar);
        return date;
    }

    public static boolean isSameMonth(int date1, int date2) {
        return (date1 & -32) == (date2 & -32);
    }

    public static boolean isSameDay(int date1, int date2) {
        return date1 == date2;
    }

    public static long format(int date) {
        Calendar calendar = acquire();
        calendar.set(5, date - ((date >> 5) << 5));
        date >>= 5;
        calendar.set(2, (date - ((date >> 4) << 4)) - 1);
        calendar.set(1, date >> 4);
        long ret = calendar.getTimeInMillis();
        release(calendar);
        return ret;
    }

    private static void clearCache() {
        sToday = null;
        sYesterday = null;
        sDateCache.clear();
    }

    private static String getTodayTip() {
        if (sToday == null) {
            sToday = GalleryApp.sGetAndroidContext().getResources().getString(R.string.today);
        }
        return sToday;
    }

    private static String getYesterdayTip() {
        if (sYesterday == null) {
            sYesterday = GalleryApp.sGetAndroidContext().getResources().getString(R.string.yesterday);
        }
        return sYesterday;
    }

    public static String formatRelativeDate(long time) {
        String cacheDate = null;
        String nowLanguage = Locale.getDefault().toString();
        if (TextUtils.equals(sLocalLanguage, nowLanguage)) {
            cacheDate = (String) sDateCache.get(Long.valueOf(time));
        } else {
            clearCache();
            sLocalLanguage = nowLanguage;
        }
        if (cacheDate != null) {
            return cacheDate;
        }
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        Calendar cal = (Calendar) CALENDAR_POOL.acquire();
        long now = System.currentTimeMillis();
        cal.setTimeInMillis(now);
        int nowYear = cal.get(1);
        int nowDayOfYear = cal.get(6);
        cal.setTimeInMillis(time);
        boolean sameYear = nowYear == cal.get(1);
        if (sameYear && nowDayOfYear == cal.get(6)) {
            stringBuilder.append(getTodayTip());
        } else if (sameYear && Math.abs(cal.get(6) - nowDayOfYear) < 2 && time < now) {
            stringBuilder.append(getYesterdayTip());
        } else if (sameYear) {
            DateUtils.formatDateTime(stringBuilder, time, 4096 | 384);
        } else {
            DateUtils.formatDateTime(stringBuilder, time, 4096 | DateUtils.FORMAT_SHOW_DATE);
        }
        CALENDAR_POOL.release(cal);
        String result = stringBuilder.toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        sDateCache.put(Long.valueOf(time), result, 1);
        return result;
    }

    public static long daysBetween(long start, long end) {
        return TimeUnit.MILLISECONDS.toDays(Math.abs(end - start));
    }

    public static long daysBeforeToday(long past) {
        long current = System.currentTimeMillis();
        if (past >= current) {
            return 0;
        }
        Calendar calendar = acquire();
        calendar.setTimeInMillis(current);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long startOfTodayMillis = calendar.getTimeInMillis();
        if (startOfTodayMillis <= past) {
            return 0;
        }
        long ret = daysBetween(past, startOfTodayMillis) + 1;
        release(calendar);
        return ret;
    }

    public static boolean isSameDate(Date date1, Date date2) {
        if (date1 == date2) {
            return true;
        }
        if (date1 == null || date2 == null) {
            return false;
        }
        if (Math.abs(date1.getTime() - date2.getTime()) > VipConstants.DAY || date1.getDate() != date2.getDate()) {
            return false;
        }
        return true;
    }
}
