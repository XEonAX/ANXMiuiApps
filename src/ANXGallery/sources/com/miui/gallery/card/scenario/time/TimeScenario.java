package com.miui.gallery.card.scenario.time;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.Scenario;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.ScenarioRule;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public abstract class TimeScenario extends Scenario {
    protected static final String NON_CAMERA_SELECTION = (ScenarioConstants.NON_CAMERA_BASE_SELECTION + " AND " + "_id" + " IN (%s)");
    protected static final String TIME_SELECTION = (ScenarioConstants.CAMERA_BASE_SELECTION + " AND " + "mixedDateTime" + " > %s AND " + "mixedDateTime" + " < %s");
    private long mEndTime;
    private long mStartTime;
    private long mTargetTime;

    public TimeScenario(int id, int flag, int flagDisableMask) {
        super(id, flag, flagDisableMask);
    }

    public void onFillScenarioRule(ScenarioRule rule) {
        if (rule != null) {
            this.mPriority = rule.getPriority();
            this.mMinImageCount = rule.getMinImageCount();
            this.mMaxImageCount = rule.getMaxImageCount();
            this.mMinSelectedImageCount = rule.getMinSelectedImageCount();
            this.mMaxSelectedImageCount = rule.getMaxSelectedImageCount();
            this.mTriggerInterval = rule.getTriggerInterval();
        }
    }

    protected void setStartTime(long time) {
        this.mStartTime = time;
    }

    protected void setEndTime(long time) {
        this.mEndTime = time;
    }

    public void setTargetTime(long targetTime) {
        this.mTargetTime = targetTime;
    }

    public List<Long> loadMediaItem() {
        return getMediaIdsByStartEndTime(this.mStartTime, this.mEndTime);
    }

    public List<Long> getMediaIdsByStartEndTime(long startTime, long endTime) {
        return (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, PROJECTION, String.format(Locale.US, TIME_SELECTION, new Object[]{Long.valueOf(startTime), Long.valueOf(endTime)}), null, null, new QueryHandler<List<Long>>() {
            public List<Long> handle(Cursor cursor) {
                return TimeScenario.this.getMediaIdsFromCursor(cursor);
            }
        });
    }

    protected long getStartTime() {
        return this.mStartTime;
    }

    protected long getEndTime() {
        return this.mEndTime;
    }

    protected long getTargetTime() {
        return this.mTargetTime;
    }

    protected long getRecordTargetTime(Record record) {
        return record != null ? record.getTargetTime() : -1;
    }

    protected long getRecordStartTime(Record record) {
        return record != null ? record.getStartTime() : -1;
    }

    protected long getRecordEndTime(Record record) {
        return record != null ? record.getEndTime() : -1;
    }

    protected String getDatePeriodFromRecord(Record record) {
        return DateUtils.getDatePeriodGraceful(getRecordStartTime(record), getRecordEndTime(record) - 3600000);
    }

    protected String getMonthPeriodFromRecord(Record record) {
        return DateUtils.getMonthPeriodGraceful(getRecordStartTime(record), getRecordEndTime(record) - 3600000);
    }

    protected List<ImageFeature> getCameraMediaIdsByStartEndTimeTags(Integer[] tags, long startTime, long endTime) {
        EntityManager em = GalleryEntityManager.getInstance();
        String joinedTags = TextUtils.join(",", tags);
        List<ImageFeature> images = em.query(ImageFeature.class, String.format(ImageFeature.SCENE_TAG_SELECTION, new Object[]{joinedTags, joinedTags, joinedTags}), new String[]{Long.toString(startTime), Long.toString(endTime)}, "imageDatetime asc", null);
        if (BaseMiscUtil.isValid(images)) {
            List<Long> allImageIds = getImageIdsFromImageFeatures(images);
            List<Long> nonCameraImages = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, PROJECTION, String.format(NON_CAMERA_SELECTION, new Object[]{TextUtils.join(",", allImageIds)}), null, null, new QueryHandler<List<Long>>() {
                public List<Long> handle(Cursor cursor) {
                    return TimeScenario.this.getMediaIdsFromCursor(cursor);
                }
            });
            if (BaseMiscUtil.isValid(nonCameraImages)) {
                Iterator<ImageFeature> it = images.iterator();
                while (it.hasNext()) {
                    if (nonCameraImages.contains(Long.valueOf(((ImageFeature) it.next()).getImageId()))) {
                        it.remove();
                    }
                }
            }
        }
        return images;
    }

    protected List<Long> getImageIdsFromImageFeatures(List<ImageFeature> list) {
        List<Long> result = new ArrayList();
        if (BaseMiscUtil.isValid(list)) {
            for (ImageFeature imageFeature : list) {
                result.add(Long.valueOf(imageFeature.getImageId()));
            }
        }
        return result;
    }

    protected long[] getEventStartEndTime(List<ImageFeature> imageItems) {
        if (imageItems == null || imageItems.size() < 3) {
            return null;
        }
        long startTime = ((ImageFeature) imageItems.get(0)).getImageDateTime();
        long endTime = ((ImageFeature) imageItems.get(imageItems.size() - 1)).getImageDateTime();
        long dayEndTime = DateUtils.getDateTime(startTime) + 86400000;
        return new long[]{Math.max(startTime - 10800000, DateUtils.getDateTime(startTime)), Math.min(10800000 + endTime, dayEndTime)};
    }

    protected List<Long> getRecordStartTimesFromRecordAndCards(List<Record> records, List<Card> cards, boolean convertDateStart) {
        List<Long> recordStarts = new ArrayList();
        if (BaseMiscUtil.isValid(records)) {
            for (Record record : records) {
                recordStarts.add(Long.valueOf(getRecordStartTime(record)));
            }
        }
        if (BaseMiscUtil.isValid(cards)) {
            for (Card card : cards) {
                long cardRecordStartTime = card.getRecordStartTime();
                if (convertDateStart) {
                    cardRecordStartTime = DateUtils.getDateTime(cardRecordStartTime);
                }
                if (!recordStarts.contains(Long.valueOf(cardRecordStartTime))) {
                    recordStarts.add(Long.valueOf(cardRecordStartTime));
                }
            }
        }
        return recordStarts;
    }

    protected List<Long> getRecordTargetTimesFromRecordAndCards(List<Record> records, List<Card> cards) {
        List<Long> recordTargets = new ArrayList();
        if (BaseMiscUtil.isValid(records)) {
            for (Record record : records) {
                recordTargets.add(Long.valueOf(getRecordTargetTime(record)));
            }
        }
        if (BaseMiscUtil.isValid(cards)) {
            for (Card card : cards) {
                long cardRecordTargetTime = card.getRecordTargetTime();
                if (!recordTargets.contains(Long.valueOf(cardRecordTargetTime))) {
                    recordTargets.add(Long.valueOf(cardRecordTargetTime));
                }
            }
        }
        return recordTargets;
    }

    protected String getPeopleId() {
        return null;
    }

    protected String getLocation() {
        return null;
    }

    protected String getPrimaryKey() {
        return null;
    }

    protected String getSecondary() {
        return null;
    }

    protected String getTertiaryKey() {
        return null;
    }
}
