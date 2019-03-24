package com.miui.gallery.card.scenario.time.pastyear;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.card.scenario.time.TimeScenario;
import java.util.List;

public class PastYearMonthScenario extends TimeScenario {
    public PastYearMonthScenario() {
        super(103, 1, 7);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, false);
        long currentTime = DateUtils.getCurrentTimeMillis();
        long firstDayofMonth = DateUtils.getFirstDayOfMonthTime(currentTime);
        if (currentTime <= firstDayofMonth || currentTime - firstDayofMonth >= 172800000) {
            return false;
        }
        long pastYearMonthStart = DateUtils.getLastNYearMonthTime(1, currentTime, true);
        long pastYearMonthEnd = DateUtils.getLastNYearMonthTime(1, currentTime, false);
        if (pastYearMonthStart < 0 || pastYearMonthEnd < 0 || recordStarts.contains(Long.valueOf(pastYearMonthStart))) {
            return false;
        }
        setStartTime(pastYearMonthStart);
        setEndTime(pastYearMonthEnd);
        return true;
    }

    public List<Long> loadMediaItem() {
        return getImageIdsFromImageFeatures(getCameraMediaIdsByStartEndTimeTags(CardUtil.concat(CardUtil.concat(ScenarioConstants.TAGS_PARTY, ScenarioConstants.TAGS_FOODS), CardUtil.concat(ScenarioConstants.TAGS_ACTIVITY, ScenarioConstants.TAGS_SPORTS)), getStartTime(), getEndTime()));
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        int month = DateUtils.getMonth(getRecordStartTime(record));
        String[] pastYearsMonths = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.month_last_year);
        if (pastYearsMonths.length <= 0 || pastYearsMonths.length <= month) {
            return "";
        }
        return pastYearsMonths[month];
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        return DateUtils.getYearMonthLocale(getRecordStartTime(record));
    }
}
