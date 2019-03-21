package com.miui.gallery.search.statistics;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import com.google.gson.Gson;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.BackgroundServiceHelper;
import com.miui.os.Rom;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Stack;

public class SearchStatUtils {
    private static final double POW = Math.pow(10.0d, 8.0d);
    private static SearchStatLogItem sCachedLog = null;
    private static final Object sCachedLogLock = new Object();
    private static Gson sGson = new Gson();
    private static final Object sSerialLock = new Object();
    private static Random sSerialRandom = null;
    private static Stack<Pair<String, String>> sSerialStack = null;

    public static Bundle buildSearchEventExtras(Bundle reusedExtra, String[] keys, String[] values) {
        if (!(keys == null || values == null || keys.length != values.length)) {
            if (reusedExtra == null || reusedExtra == Bundle.EMPTY) {
                reusedExtra = new Bundle();
            }
            reusedExtra.putStringArray("search_event_keys", keys);
            reusedExtra.putStringArray("search_event_values", values);
        }
        return reusedExtra;
    }

    public static Map<String, String> buildSearchEventParams(Bundle extra) {
        Map<String, String> searchEventParam = null;
        if (extra != null) {
            String[] keys = extra.getStringArray("search_event_keys");
            String[] values = extra.getStringArray("search_event_values");
            if (!(keys == null || values == null || keys.length != values.length)) {
                searchEventParam = new HashMap();
                int i = 0;
                while (i < keys.length) {
                    try {
                        searchEventParam.put(keys[i], values[i]);
                        i++;
                    } catch (Exception e) {
                        SearchLog.e("SearchStatUtils", "Error occurred while build search event extras %s", e);
                    }
                }
            }
        }
        return searchEventParam;
    }

    public static String createNewSerial(String from) {
        if (sSerialStack == null) {
            synchronized (sSerialLock) {
                if (sSerialStack == null) {
                    sSerialStack = new Stack();
                }
            }
        }
        String serialId = createNewSerialId();
        synchronized (sSerialLock) {
            sSerialStack.push(new Pair(from, serialId));
        }
        return serialId;
    }

    public static String onCompleteSerial(String from) {
        if (sSerialStack == null) {
            return null;
        }
        Pair<String, String> head;
        synchronized (sSerialLock) {
            head = getSerialStackHead();
            if (!(head == null || head.first == null || !((String) head.first).contentEquals(from))) {
                sSerialStack.pop();
            }
        }
        if (head != null) {
            return (String) head.second;
        }
        SearchLog.e("SearchStatUtils", "Current serial stack empty or head is not from %s, stack size %d!", from, Integer.valueOf(sSerialStack.size()));
        return null;
    }

    public static String getCurrentSerial() {
        Pair<String, String> head = getSerialStackHead();
        return head != null ? (String) head.second : null;
    }

    private static Pair<String, String> getSerialStackHead() {
        if (sSerialStack != null) {
            synchronized (sSerialLock) {
                if (!sSerialStack.empty()) {
                    Pair<String, String> pair = (Pair) sSerialStack.peek();
                    return pair;
                }
            }
        }
        return null;
    }

    public static void cacheEvent(String from, String eventType, Map<String, String> eventData) {
        SearchStatLogItem logItem = formLogItem(from, eventType, eventData);
        SearchStatLogItem previousItem = null;
        synchronized (sCachedLogLock) {
            if (sCachedLog != null) {
                previousItem = sCachedLog;
            }
            sCachedLog = logItem;
        }
        if (previousItem != null) {
            reportEvent(previousItem);
        }
    }

    public static String pullCachedEvent() {
        if (sCachedLog == null) {
            return null;
        }
        SearchStatLogItem logItem;
        synchronized (sCachedLogLock) {
            logItem = sCachedLog;
            sCachedLog = null;
        }
        if (logItem != null) {
            return getDataJson(logItem);
        }
        return null;
    }

    public static void reportEvent(String from, String eventType) {
        reportEvent(from, eventType, null);
    }

    public static void reportEvent(String from, String eventType, String dataKey, String dataValue) {
        reportEvent(from, eventType, dataKey, dataValue, null, null);
    }

    public static void reportEvent(String from, String eventType, String dataKey1, String dataValue1, String dataKey2, String dataValue2) {
        Map<String, String> data = new HashMap();
        if (!(dataKey1 == null || dataValue1 == null)) {
            data.put(dataKey1, dataValue1);
        }
        if (!(dataKey2 == null || dataValue2 == null)) {
            data.put(dataKey2, dataValue2);
        }
        reportEvent(from, eventType, data);
    }

    public static void reportEvent(String from, String eventType, Map<String, String> eventData) {
        reportEvent(formLogItem(from, eventType, eventData));
    }

    private static void reportEvent(SearchStatLogItem logItem) {
        Context context = GalleryApp.sGetAndroidContext();
        Intent intent = new Intent(context, SearchStatReportService.class);
        intent.putExtra(SearchStatReportService.EXTRA_LOG_ITEM, logItem);
        intent.putExtra(SearchStatReportService.EXTRA_UPLOAD, true);
        BackgroundServiceHelper.startForegroundServiceIfNeed(context, intent);
    }

    private static SearchStatLogItem formLogItem(String from, String eventType, Map<String, String> eventData) {
        if (eventData == null) {
            eventData = new HashMap();
        }
        eventData.put("isInternational", String.valueOf(Rom.IS_INTERNATIONAL));
        if (from != null) {
            eventData.put("from", from);
        }
        Pair<String, String> serialHead = getSerialStackHead();
        return new SearchStatLogItem(serialHead == null ? null : (String) serialHead.second, eventType, eventData);
    }

    private static String createNewSerialId() {
        if (sSerialRandom == null) {
            sSerialRandom = new Random();
        }
        return String.valueOf((int) ((1.0d + sSerialRandom.nextDouble()) * POW)).substring(1);
    }

    public static String getDataJson(List<SearchStatLogItem> logs) {
        Object map = new HashMap();
        map.put("items", logs);
        return sGson.toJson(map);
    }

    public static String getDataJson(SearchStatLogItem log) {
        return sGson.toJson((Object) log);
    }
}
