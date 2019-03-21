package com.miui.gallery.search.statistics;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.util.ArrayList;

public class SearchStatStorageHelper {
    public static int saveLogItem(SearchStatLogItem logItem) {
        Throwable th;
        int i = 0;
        File file = new File(getLogFilePath());
        try {
            if (file.exists() && file.length() > 1048576) {
                MediaFileUtils.deleteFile(file);
                SearchLog.i("SearchStatStorageHelper", "Clear former log file due to too many logs");
            }
        } catch (Throwable e) {
            SearchLog.e("SearchStatStorageHelper", e);
        }
        OutputStreamWriter writer = null;
        try {
            Object items = getSavedLogs();
            if (items == null) {
                items = new ArrayList(1);
            }
            items.add(logItem);
            String data = new Gson().toJson(items);
            OutputStreamWriter writer2 = new OutputStreamWriter(new FileOutputStream(file));
            try {
                writer2.write(data);
                SearchLog.i("SearchStatStorageHelper", "Insert item [%s] succeed, now total %d items", logItem, Integer.valueOf(items.size()));
                i = items.size();
                try {
                    writer2.close();
                } catch (Exception e2) {
                }
                writer = writer2;
            } catch (Exception e3) {
                writer = writer2;
            } catch (Throwable th2) {
                th = th2;
                writer = writer2;
                try {
                    writer.close();
                } catch (Exception e4) {
                }
                throw th;
            }
        } catch (Exception e5) {
            try {
                SearchLog.i("SearchStatStorageHelper", "Insert item [%s] failed");
                try {
                    writer.close();
                } catch (Exception e6) {
                }
                return i;
            } catch (Throwable th3) {
                th = th3;
                writer.close();
                throw th;
            }
        }
        return i;
    }

    public static ArrayList<SearchStatLogItem> getSavedLogs() {
        Reader reader;
        Throwable th;
        InputStreamReader reader2 = null;
        try {
            Reader reader3 = new InputStreamReader(new FileInputStream(getLogFilePath()));
            try {
                ArrayList<SearchStatLogItem> logs = (ArrayList) new Gson().fromJson(reader3, new TypeToken<ArrayList<SearchStatLogItem>>() {
                }.getType());
                try {
                    reader3.close();
                    return logs;
                } catch (Exception e) {
                    return logs;
                }
            } catch (Exception e2) {
                reader2 = reader3;
                try {
                    SearchLog.e("SearchStatStorageHelper", "Read saved logs from cache failed!");
                    try {
                        reader2.close();
                    } catch (Exception e3) {
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        reader2.close();
                    } catch (Exception e4) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                reader2 = reader3;
                reader2.close();
                throw th;
            }
        } catch (Exception e5) {
            SearchLog.e("SearchStatStorageHelper", "Read saved logs from cache failed!");
            reader2.close();
            return null;
        }
    }

    public static void clearSavedLogs() {
        File file = new File(getLogFilePath());
        if (file.exists() && file.delete()) {
            SearchLog.i("SearchStatStorageHelper", "Delete statistic log file");
        }
    }

    private static String getLogFilePath() {
        return String.format("%s/%s", new Object[]{StorageUtils.getCacheDirectory(), "search_log.json"});
    }
}
