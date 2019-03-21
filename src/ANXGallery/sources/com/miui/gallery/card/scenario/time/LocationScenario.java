package com.miui.gallery.card.scenario.time;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.data.LocationManager;
import java.util.ArrayList;
import java.util.List;

public abstract class LocationScenario extends TimeScenario {
    protected static final String ALL_IMAGE_SELECTION = (ScenarioConstants.CAMERA_BASE_SELECTION + " AND " + "location" + " is not null");
    public static final String[] PROJECTION = new String[]{"DISTINCT sha1", "location", "mixedDateTime"};
    protected String mTargetCity;

    public static class MediaItem {
        public String mCity;
        public long mDateTime;
        public String mLocation;
        public String mSha1;
    }

    protected LocationScenario(int id, int flag, int flagDisableMask) {
        super(id, flag, flagDisableMask);
    }

    public List<Record> findRecords() {
        this.mTargetCity = null;
        Integer[] ids = new Integer[]{Integer.valueOf(BaiduSceneResult.BRIDGE), Integer.valueOf(201)};
        return GalleryEntityManager.getInstance().query(Record.class, String.format("%s IN (%s) AND %s > %s", new Object[]{"scenarioId", TextUtils.join(",", ids), "time", String.valueOf(DateUtils.getCurrentTimeMillis() - 15552000000L)}), null, "time ASC", null);
    }

    public List<Long> loadMediaItem() {
        return super.loadMediaItem();
    }

    protected String getPeopleId() {
        return null;
    }

    protected String getLocation() {
        return this.mTargetCity;
    }

    public static List<MediaItem> getMediaItemsFromCursor(Cursor cursor, boolean shouldHasCityInfo) {
        List<MediaItem> list = new ArrayList();
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    MediaItem item = new MediaItem();
                    item.mSha1 = cursor.getString(0);
                    item.mLocation = cursor.getString(1);
                    item.mDateTime = cursor.getLong(2);
                    item.mCity = getCityNameFromLoaction(item.mLocation);
                    if (!shouldHasCityInfo || !TextUtils.isEmpty(item.mCity)) {
                        list.add(item);
                    }
                } finally {
                    cursor.close();
                }
            }
        }
        return list;
    }

    public static String getCityNameFromLoaction(String location) {
        if (TextUtils.isEmpty(location) || location.indexOf("/") == -1) {
            return "";
        }
        String[] segments = LocationManager.segmentLocation(location);
        if (segments != null) {
            if (!TextUtils.isEmpty(segments[2])) {
                return segments[2];
            }
            if (!TextUtils.isEmpty(segments[3])) {
                return segments[3];
            }
            if (!TextUtils.isEmpty(segments[1])) {
                return segments[1];
            }
            if (!TextUtils.isEmpty(segments[0])) {
                return segments[0];
            }
        }
        return "";
    }

    public String getDatePeriodFromRecord(Record record) {
        return DateUtils.getDatePeriodGraceful(getRecordStartTime(record), getRecordEndTime(record));
    }
}
