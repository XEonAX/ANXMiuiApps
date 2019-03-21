package com.miui.gallery.card.scenario.time.pastyear;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.HolidayConfig;
import com.miui.gallery.card.scenario.time.HolidayScenario;
import com.miui.gallery.util.assistant.HolidaysUtil;
import java.util.LinkedList;
import java.util.List;
import miui.date.Calendar;

public class ChineseHolidayScenario extends HolidayScenario {
    private final List<HolidayConfig> mHolidayConfig = new LinkedList();

    public ChineseHolidayScenario() {
        super(BaiduSceneResult.SHOOTING, 1, 7);
        this.mHolidayConfig.add(new HolidayConfig(100, Integer.MAX_VALUE, 1));
        this.mHolidayConfig.add(new HolidayConfig(BaiduSceneResult.SHOOTING, Integer.MAX_VALUE, 1));
        this.mHolidayConfig.add(new HolidayConfig(BaiduSceneResult.TAEKWONDO, Integer.MAX_VALUE, 1));
        this.mHolidayConfig.add(new HolidayConfig(BaiduSceneResult.MOUNTAINEERING, Integer.MAX_VALUE, 3));
        this.mHolidayConfig.add(new HolidayConfig(BaiduSceneResult.SPORTS_OTHER, Integer.MAX_VALUE, 1));
        this.mHolidayConfig.add(new HolidayConfig(BaiduSceneResult.TEMPLE, Integer.MAX_VALUE, 3));
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        long now = DateUtils.getCurrentTimeMillis();
        Calendar calendar = new Calendar();
        calendar.setTimeInMillis(now);
        List<Long> recordTargetTimes = getRecordTargetTimesFromRecordAndCards(records, cards);
        for (int i = 1; i <= 8; i++) {
            this.mYear = i;
            long pastYearTime = HolidaysUtil.getChineseHolidayDatetimeOfPastYear(calendar, this.mYear);
            if (pastYearTime <= 0) {
                Calendar calendarNextDay = (Calendar) calendar.clone();
                calendarNextDay.setTimeInMillis(calendar.getTimeInMillis() + 86400000);
                pastYearTime = HolidaysUtil.getChineseHolidayDatetimeOfPastYear(calendarNextDay, this.mYear);
            }
            if (pastYearTime > 0) {
                long[] startEndTime = getStartEndTime(pastYearTime, this.mHolidayConfig, true);
                if (recordTargetTimes.contains(Long.valueOf(pastYearTime))) {
                    continue;
                } else {
                    setStartTime(startEndTime[0]);
                    setEndTime(startEndTime[1]);
                    setTargetTime(pastYearTime);
                    List<Long> list = loadMediaItem();
                    if (list != null && list.size() >= getMinImageCount()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    protected String getPrimaryKey() {
        return Integer.toString(getHolidayFromTargetTime(getTargetTime(), true));
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        int holiday = getHolidayFromRecord(record, true);
        int year = getYearFromRecord(record);
        if (holiday != -1) {
            return HolidaysUtil.getChineseHolidayNameForStory(year, holiday);
        }
        return "";
    }
}
