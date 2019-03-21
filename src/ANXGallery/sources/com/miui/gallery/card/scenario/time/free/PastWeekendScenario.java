package com.miui.gallery.card.scenario.time.free;

import android.database.Cursor;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.card.scenario.time.TimeScenario;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Random;

public class PastWeekendScenario extends TimeScenario {
    protected static final String SELECTION = (ScenarioConstants.CAMERA_BASE_SELECTION + " AND " + "mixedDateTime" + " > %s" + " AND " + "mixedDateTime" + " < %s");
    protected final String[] PROJECTION = new String[]{"DISTINCT sha1", "mixedDateTime"};

    private static class MediaItem {
        public long mDateTime;
        public String mSha1;

        private MediaItem() {
        }

        /* synthetic */ MediaItem(AnonymousClass1 x0) {
            this();
        }
    }

    public PastWeekendScenario() {
        super(404, 4, 4);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        long now = DateUtils.getCurrentTimeMillis();
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, false);
        long searchTime = 0;
        for (Long recordTime : recordStarts) {
            if (recordTime.longValue() > searchTime) {
                searchTime = recordTime.longValue();
            }
        }
        List<MediaItem> allImages = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, this.PROJECTION, String.format(Locale.US, SELECTION, new Object[]{Long.valueOf(searchTime), Long.valueOf(now - 15552000000L)}), null, "mixedDateTime ASC", new QueryHandler<List<MediaItem>>() {
            public List<MediaItem> handle(Cursor cursor) {
                return PastWeekendScenario.this.getMediaItemsFromCursor(cursor);
            }
        });
        if (BaseMiscUtil.isValid(allImages)) {
            long nextTraverseTime = 0;
            for (MediaItem mediaItem : allImages) {
                if (mediaItem.mDateTime >= nextTraverseTime) {
                    long weekEndStartTime = getWeekendStart(mediaItem);
                    if (weekEndStartTime > 0) {
                        List<Long> images = getMediaIdsByStartEndTime(weekEndStartTime, 172800000 + weekEndStartTime);
                        if (images != null && images.size() > getMinImageCount()) {
                            if (!recordStarts.contains(Long.valueOf(weekEndStartTime))) {
                                setStartTime(weekEndStartTime);
                                setEndTime(172800000 + weekEndStartTime);
                                return true;
                            }
                        }
                        nextTraverseTime = weekEndStartTime + 604800000;
                    } else {
                        continue;
                    }
                }
            }
        }
        return false;
    }

    private long getWeekendStart(MediaItem mediaItem) {
        if (mediaItem != null && mediaItem.mDateTime > 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(mediaItem.mDateTime);
            int weekDay = calendar.get(7);
            if (weekDay == 7 || weekDay == 1) {
                calendar.set(7, 7);
                calendar.set(11, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                return calendar.getTimeInMillis();
            }
        }
        return -1;
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        String[] weekendTitles = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.weekend_title);
        if (weekendTitles.length > 0) {
            return weekendTitles[new Random().nextInt(weekendTitles.length)];
        }
        return "";
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        if (getRecordStartTime(record) > 0) {
            return getDatePeriodFromRecord(record);
        }
        return "";
    }

    private List<MediaItem> getMediaItemsFromCursor(Cursor cursor) {
        List<MediaItem> list = new ArrayList();
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    MediaItem item = new MediaItem();
                    item.mSha1 = cursor.getString(0);
                    item.mDateTime = cursor.getLong(1);
                    list.add(item);
                } finally {
                    cursor.close();
                }
            }
        }
        return list;
    }
}
