package com.miui.gallery.card.scenario.time.recent;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.TimeScenario;
import java.util.Calendar;
import java.util.List;

public class LastWeekendScenario extends TimeScenario {
    public LastWeekendScenario() {
        super(BaiduSceneResult.CASTLE, 2, 6);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, false);
        long currentTime = DateUtils.getCurrentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(currentTime);
        if (calendar.get(7) != 2) {
            return false;
        }
        long lastSaturdayTime = DateUtils.getLastWeekDayTime(7, currentTime);
        if (recordStarts.contains(Long.valueOf(lastSaturdayTime))) {
            return false;
        }
        setStartTime(lastSaturdayTime);
        setEndTime(172800000 + lastSaturdayTime);
        return true;
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_last_week_end);
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        if (getRecordStartTime(record) > 0) {
            return getDatePeriodFromRecord(record);
        }
        return "";
    }
}
