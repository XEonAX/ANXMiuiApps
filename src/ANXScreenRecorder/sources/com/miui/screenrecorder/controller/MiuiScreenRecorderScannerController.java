package com.miui.screenrecorder.controller;

import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.MediaStore.Video.Media;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.miui.screenrecorder.data.GridItem;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.xiaomi.stat.a.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

public class MiuiScreenRecorderScannerController {
    private static final String TAG = "ScreenRecorderScanner";

    public interface ScannerListener {
        void beforeScanner();

        void scannerComplete(ArrayList<GridItem> arrayList);
    }

    private static class ScanRecorderTask extends AsyncTask<Void, Void, Boolean> {
        private ArrayList<GridItem> mDataList;
        private WeakReference<ScannerListener> mListenerRef;

        private ScanRecorderTask(ScannerListener listener, ArrayList<GridItem> dataList) {
            this.mDataList = new ArrayList();
            this.mListenerRef = new WeakReference(listener);
            this.mDataList = dataList;
        }

        protected void onPreExecute() {
            ScannerListener listener = (ScannerListener) this.mListenerRef.get();
            if (listener != null) {
                listener.beforeScanner();
            }
        }

        protected Boolean doInBackground(Void... voids) {
            if (((ScannerListener) this.mListenerRef.get()) != null) {
                Uri videoUri = Media.EXTERNAL_CONTENT_URI;
                String[] videoProject = new String[]{j.c, "date_added", ScreenRecorderConfig.DURATION, "_display_name", "_data", "_size", "mime_type"};
                ArrayList<GridItem> tempList = MiuiScreenRecorderScannerController.dealData(ScreenRecorderApplication.getContext().getContentResolver().query(videoUri, videoProject, "_data LIKE '%/DCIM/ScreenRecorder/%' ", null, "date_added DESC"));
                this.mDataList = MiuiScreenRecorderScannerController.generateHeaderId(tempList);
                if (!MiuiScreenRecorderScannerController.compareList(this.mDataList, tempList)) {
                    if (this.mDataList != null) {
                        this.mDataList.clear();
                        this.mDataList = null;
                    }
                    this.mDataList = MiuiScreenRecorderScannerController.generateHeaderId(tempList);
                }
            }
            return null;
        }

        protected void onPostExecute(Boolean result) {
            super.onPostExecute(result);
            ScannerListener listener = (ScannerListener) this.mListenerRef.get();
            if (listener != null) {
                listener.scannerComplete(this.mDataList);
            }
        }
    }

    public void scanRecorders(ScannerListener scannerListener, ArrayList<GridItem> dataList) {
        new ScanRecorderTask(scannerListener, dataList).execute(new Void[0]);
    }

    private static ArrayList<GridItem> dealData(Cursor cursor) {
        ArrayList<GridItem> dataList = new ArrayList();
        if (cursor == null || cursor.getCount() == 0) {
            LogUtil.d(TAG, "dealData: cursor is empty");
        } else {
            while (cursor.moveToNext()) {
                String path = cursor.getString(cursor.getColumnIndex("_data"));
                long time = cursor.getLong(cursor.getColumnIndex("date_added"));
                String formatTime = ScreenRecorderUtils.parserSecondsToYMD(ScreenRecorderApplication.getContext(), time);
                long size = cursor.getLong(cursor.getColumnIndex("_size"));
                if (((float) size) >= 1.0f) {
                    String sizeStr = ScreenRecorderUtils.turnSizeInt2Str(size);
                    long duration = cursor.getLong(cursor.getColumnIndex(ScreenRecorderConfig.DURATION));
                    String durationStr = ScreenRecorderUtils.turnMillSecondsToHour(duration);
                    String name = cursor.getString(cursor.getColumnIndex("_display_name"));
                    String displayName = name;
                    if (name != null && name.endsWith(".mp4")) {
                        displayName = ScreenRecorderUtils.getAppName(name);
                    }
                    LogUtil.i(TAG, "dealData id=" + cursor.getLong(cursor.getColumnIndex(j.c)) + " path=" + path + "  name=" + name + "  displayName=" + displayName + "  time=" + time + "  formatTime=" + formatTime + "  size=" + size + " duration=" + duration + " durationStr=" + durationStr);
                    dataList.add(new GridItem(path, formatTime, sizeStr, displayName, durationStr, null));
                }
            }
            cursor.close();
        }
        return dataList;
    }

    private static boolean compareList(ArrayList<GridItem> sourceList, ArrayList<GridItem> destList) {
        if (sourceList == null && destList == null) {
            return true;
        }
        if (sourceList == null || destList == null) {
            return false;
        }
        if (sourceList.size() != destList.size()) {
            return false;
        }
        for (int i = 0; i < sourceList.size(); i++) {
            if (!((GridItem) sourceList.get(i)).equals(destList.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static ArrayList<GridItem> generateHeaderId(ArrayList<GridItem> list) {
        int headId = 1;
        HashMap<String, Integer> dateIdMap = new HashMap();
        if (!(list == null || list.size() == 0)) {
            for (int i = 0; i < list.size(); i++) {
                GridItem item = (GridItem) list.get(i);
                String date = item.getTime();
                if (dateIdMap.containsKey(date)) {
                    item.setHeaderId(((Integer) dateIdMap.get(date)).intValue());
                } else {
                    item.setHeaderId(headId);
                    dateIdMap.put(date, Integer.valueOf(headId));
                    headId++;
                }
            }
        }
        return list;
    }
}
