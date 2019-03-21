package com.miui.gallery.provider.cache;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.StringUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public class SearchHistoryStorageHelper {
    public static int addHistoryItem(SearchHistoryItem historyItem, List<SearchHistoryItem> outHistories) {
        List<SearchHistoryItem> items = getSavedHistories();
        if (items == null || items.isEmpty()) {
            items = new ArrayList(1);
        } else {
            removeDupHistoryItem(items, historyItem);
        }
        items.add(0, historyItem);
        outHistories.addAll(items);
        return saveHistories(items);
    }

    public static List<SearchHistoryItem> getSavedHistories() {
        Reader reader;
        Throwable th;
        InputStreamReader reader2 = null;
        try {
            Reader reader3 = new InputStreamReader(new FileInputStream(getHistoryFilePath()));
            try {
                ArrayList<SearchHistoryItem> logs = (ArrayList) new Gson().fromJson(reader3, new TypeToken<ArrayList<SearchHistoryItem>>() {
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
                    SearchLog.e("SearchHistoryStorageHelper", "Read saved logs from cache failed!");
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
            SearchLog.e("SearchHistoryStorageHelper", "Read saved logs from cache failed!");
            reader2.close();
            return null;
        }
    }

    public static int clearSavedHistories() {
        File file = new File(getHistoryFilePath());
        if (!file.exists() || !file.delete()) {
            return 0;
        }
        SearchLog.i("SearchHistoryStorageHelper", "Delete history log file");
        return 1;
    }

    public static int removeDupHistoryItem(List<SearchHistoryItem> histories, SearchHistoryItem historyItem) {
        SearchHistoryItem sameItem = null;
        for (SearchHistoryItem oldItem : histories) {
            if (StringUtils.nullToEmpty(oldItem.intentActionURI).equals(StringUtils.nullToEmpty(historyItem.intentActionURI))) {
                sameItem = oldItem;
                break;
            }
        }
        if (sameItem == null || !histories.remove(sameItem)) {
            return 0;
        }
        return 1;
    }

    private static int saveHistories(List<SearchHistoryItem> histories) {
        Throwable th;
        int i = 0;
        if (!(histories == null || histories.isEmpty())) {
            OutputStreamWriter writer = null;
            try {
                String data = new Gson().toJson((Object) histories);
                OutputStreamWriter writer2 = new OutputStreamWriter(new FileOutputStream(getHistoryFilePath()));
                try {
                    writer2.write(data);
                    SearchLog.i("SearchHistoryStorageHelper", "Save histories [%s] succeed", histories);
                    i = 1;
                    try {
                        writer2.close();
                    } catch (Exception e) {
                    }
                } catch (Exception e2) {
                    writer = writer2;
                    try {
                        SearchLog.i("SearchHistoryStorageHelper", "Save histories [%s] failed", histories);
                        try {
                            writer.close();
                        } catch (Exception e3) {
                        }
                        return i;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            writer.close();
                        } catch (Exception e4) {
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    writer = writer2;
                    writer.close();
                    throw th;
                }
            } catch (Exception e5) {
                SearchLog.i("SearchHistoryStorageHelper", "Save histories [%s] failed", histories);
                writer.close();
                return i;
            }
        }
        return i;
    }

    private static String getHistoryFilePath() {
        return String.format("%s/%s", new Object[]{StorageUtils.getCacheDirectory(), "search_histories.json"});
    }
}
