package com.miui.gallery.card.scenario.time.recent;

import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.TimeScenario;
import java.util.List;

public abstract class YesterdayScenario extends TimeScenario {
    private final Integer[] mTags;

    public YesterdayScenario(int id, Integer[] tags) {
        super(id, 2, 6);
        this.mTags = tags;
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        long currentTime = DateUtils.getCurrentTimeMillis();
        List<Long> recordTargets = getRecordTargetTimesFromRecordAndCards(records, cards);
        long dayStartTime = DateUtils.getDateTime(currentTime - 86400000);
        if (recordTargets.contains(Long.valueOf(dayStartTime))) {
            return false;
        }
        setTargetTime(dayStartTime);
        setStartTime(dayStartTime);
        setEndTime(dayStartTime + 86400000);
        return true;
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

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        long startTime = getRecordStartTime(record);
        if (startTime > 0) {
            return DateUtils.getYearMonthDayLocale(startTime);
        }
        return "";
    }
}
