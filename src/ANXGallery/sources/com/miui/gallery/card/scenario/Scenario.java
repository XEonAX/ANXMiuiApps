package com.miui.gallery.card.scenario;

import android.database.Cursor;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.ScenarioRule;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.internal.vip.VipConstants;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class Scenario implements Comparable<Scenario> {
    protected static final String[] PROJECTION = new String[]{"cloud._id"};
    protected static int sDefaultMaxImageCount = 500;
    protected static int sDefaultMinImageCount = 20;
    protected static int sDefaultSelectedMaxImageCount = 80;
    protected static int sDefaultSelectedMinImageCount = 6;
    protected static int sDuplicateRemovalInterval = nexClip.kClip_Rotate_180;
    protected final String TAG = getClass().getSimpleName();
    private final int mFlag;
    private final int mFlagDisableMask;
    protected int mMaxImageCount;
    protected int mMaxSelectedImageCount;
    protected int mMinImageCount;
    protected int mMinSelectedImageCount;
    protected int mPriority;
    private final int mScenarioId;
    protected int mTriggerInterval;

    public abstract String generateDescription(Record record, List<MediaFeatureItem> list);

    public abstract String generateTitle(Record record, List<MediaFeatureItem> list);

    protected abstract long getEndTime();

    protected abstract String getLocation();

    protected abstract String getPeopleId();

    protected abstract String getPrimaryKey();

    protected abstract String getSecondary();

    protected abstract long getStartTime();

    protected abstract long getTargetTime();

    protected abstract String getTertiaryKey();

    public abstract List<Long> loadMediaItem();

    public abstract void onFillScenarioRule(ScenarioRule scenarioRule);

    public abstract boolean onPrepare(List<Record> list, List<Card> list2);

    public Scenario(int id, int flag, int flagDisableMask) {
        this.mScenarioId = id;
        this.mFlag = flag;
        this.mFlagDisableMask = flagDisableMask;
    }

    public int getScenarioId() {
        return this.mScenarioId;
    }

    public int getMinImageCount() {
        return this.mMinImageCount > 0 ? this.mMinImageCount : sDefaultMinImageCount;
    }

    public int getMaxImageCount() {
        return this.mMaxImageCount > 0 ? this.mMaxImageCount : sDefaultMaxImageCount;
    }

    public int getMinSelectedImageCount() {
        return this.mMinSelectedImageCount > 0 ? this.mMinSelectedImageCount : sDefaultSelectedMinImageCount;
    }

    public int getMaxSelectedImageCount() {
        return this.mMaxSelectedImageCount > 0 ? this.mMaxSelectedImageCount : sDefaultSelectedMaxImageCount;
    }

    public int getTriggerInterval() {
        return this.mTriggerInterval;
    }

    public int getFlag() {
        return this.mFlag;
    }

    public int getFlagDisableMask() {
        return this.mFlagDisableMask;
    }

    public boolean prepare(List<Record> records, List<Card> cards) {
        if (getTriggerInterval() <= 0 || (!isRecentlyTriggerd(records, ((long) getTriggerInterval()) * VipConstants.DAY) && !isCardRecentlyCreated(cards, ((long) getTriggerInterval()) * VipConstants.DAY))) {
            return onPrepare(records, cards);
        }
        return false;
    }

    public List<Record> findRecords() {
        return GalleryEntityManager.getInstance().query(Record.class, String.format("%s = %s AND %s > %s", new Object[]{"scenarioId", String.valueOf(getScenarioId()), "time", String.valueOf(DateUtils.getCurrentTimeMillis() - 15552000000L)}), null, "time ASC", null);
    }

    public List<Card> findCards() {
        EntityManager em = GalleryEntityManager.getInstance();
        StringBuilder append = new StringBuilder().append("ignored = 0 AND ");
        return em.query(Card.class, append.append(String.format("%s = %s AND %s > %s", new Object[]{"scenarioId", String.valueOf(getScenarioId()), "createTime", String.valueOf(DateUtils.getCurrentTimeMillis() - 15552000000L)})).toString(), null, "createTime ASC", null);
    }

    public boolean isDeletable() {
        return true;
    }

    public String getName() {
        return getClass().getSimpleName();
    }

    public List<Long> getMediaIdsFromCursor(Cursor cursor) {
        int maxCount = getMaxImageCount();
        List<Long> list = new ArrayList();
        if (cursor != null) {
            int itemCount = cursor.getCount();
            if (itemCount <= maxCount) {
                return cursorToImageIdList(cursor);
            }
            float ratio = ((float) itemCount) / ((float) maxCount);
            while (cursor.moveToNext()) {
                if (Math.random() * ((double) ratio) < 1.0d) {
                    list.add(Long.valueOf(cursor.getLong(0)));
                }
            }
        }
        if (list.size() <= maxCount) {
            return list;
        }
        int distance = list.size() - maxCount;
        while (true) {
            int distance2 = distance;
            distance = distance2 - 1;
            if (distance2 <= 0) {
                return list;
            }
            list.remove((int) (((double) (list.size() - 1)) * Math.random()));
        }
    }

    protected List<Long> cursorToImageIdList(Cursor cursor) {
        List<Long> list = new ArrayList();
        if (cursor == null || !cursor.moveToFirst()) {
            return list;
        }
        do {
            list.add(Long.valueOf(cursor.getLong(0)));
        } while (cursor.moveToNext());
        return list;
    }

    protected long getRecordStartTime(Record record) {
        return record != null ? record.getStartTime() : -1;
    }

    protected long getRecordEndTime(Record record) {
        return record != null ? record.getEndTime() : -1;
    }

    protected boolean isRecentlyTriggerd(List<Record> records, long period) {
        Record lastestRecord = null;
        if (BaseMiscUtil.isValid(records)) {
            for (Record record : records) {
                if (lastestRecord == null || record.getTime() > lastestRecord.getTime()) {
                    lastestRecord = record;
                }
            }
        }
        return lastestRecord != null && DateUtils.getCurrentTimeMillis() - period < lastestRecord.getTime();
    }

    protected boolean isCardRecentlyCreated(List<Card> cards, long period) {
        if (!BaseMiscUtil.isValid(cards)) {
            return false;
        }
        Collections.sort(cards);
        if (DateUtils.getCurrentTimeMillis() - period < ((Card) cards.get(0)).getCreateTime()) {
            return true;
        }
        return false;
    }

    public static void setDuplicateRemovalInterval(int duplicateRemovalInterval) {
        sDuplicateRemovalInterval = duplicateRemovalInterval;
    }

    public static void setDefaultMinImageCount(int defaultMinImageCount) {
        sDefaultMinImageCount = defaultMinImageCount;
    }

    public static void setDefaultMaxImageCount(int defaultMaxImageCount) {
        sDefaultMaxImageCount = defaultMaxImageCount;
    }

    public static void setDefaultSelectedMinImageCount(int defaultSelectedMinImageCount) {
        sDefaultSelectedMinImageCount = defaultSelectedMinImageCount;
    }

    public static void setDefaultSelectedMaxImageCount(int defaultSelectedMaxImageCount) {
        sDefaultSelectedMaxImageCount = defaultSelectedMaxImageCount;
    }

    public int compareTo(Scenario o) {
        int result = Integer.compare(o.mPriority, this.mPriority);
        return result == 0 ? Integer.compare(o.mScenarioId, this.mScenarioId) : result;
    }
}
