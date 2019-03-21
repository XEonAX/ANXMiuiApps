package com.miui.gallery.card.scenario.time.pastyear;

import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.TimeScenario;
import java.util.List;

public abstract class DayOfLastYearScenario extends TimeScenario {
    private final int mMaxYear;
    private final Integer[] mTags;
    private int mYear = 1;

    public DayOfLastYearScenario(int id, int maxYearCount, Integer[] tags) {
        super(id, 1, 7);
        if (maxYearCount <= 0) {
            maxYearCount = 1;
        }
        this.mMaxYear = maxYearCount;
        this.mTags = tags;
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordTargets = getRecordTargetTimesFromRecordAndCards(records, cards);
        long currentTime = DateUtils.getCurrentTimeMillis();
        for (int i = 1; i <= this.mMaxYear; i++) {
            this.mYear = i;
            long lastYearDateTime = DateUtils.getLastNYearDateTime(this.mYear, currentTime);
            if (lastYearDateTime >= 0 && !recordTargets.contains(Long.valueOf(lastYearDateTime))) {
                setTargetTime(lastYearDateTime);
                setStartTime(lastYearDateTime);
                setEndTime(86400000 + lastYearDateTime);
                List<Long> list = loadMediaItem();
                if (list != null && list.size() >= getMinImageCount()) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<Long> loadMediaItem() {
        long[] startEndTime = getEventStartEndTime(getCameraMediaIdsByStartEndTimeTags(this.mTags, getStartTime(), getEndTime()));
        if (startEndTime == null || startEndTime.length != 2) {
            return null;
        }
        setStartTime(startEndTime[0]);
        setEndTime(startEndTime[1]);
        return super.loadMediaItem();
    }

    protected String getPrimaryKey() {
        return String.valueOf(this.mYear);
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        long startTime = getRecordStartTime(record);
        if (startTime > 0) {
            return DateUtils.getYearMonthDayLocale(startTime);
        }
        return "";
    }
}
