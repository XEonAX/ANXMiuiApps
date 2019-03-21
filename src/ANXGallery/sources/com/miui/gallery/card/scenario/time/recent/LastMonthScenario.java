package com.miui.gallery.card.scenario.time.recent;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.card.scenario.time.TimeScenario;
import java.util.List;

public class LastMonthScenario extends TimeScenario {
    public LastMonthScenario() {
        super(BaiduSceneResult.CHURCH, 2, 6);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, false);
        long currentTime = DateUtils.getCurrentTimeMillis();
        long firstDayofMonth = DateUtils.getFirstDayOfMonthTime(currentTime);
        if (currentTime <= firstDayofMonth || currentTime - firstDayofMonth >= 172800000) {
            return false;
        }
        long lastMonthStart = DateUtils.getLastNYearMonthTime(0, firstDayofMonth - 86400000, true);
        long lastMonthEnd = DateUtils.getLastNYearMonthTime(0, firstDayofMonth - 86400000, false);
        if (lastMonthStart < 0 || lastMonthEnd < 0 || recordStarts.contains(Long.valueOf(lastMonthStart))) {
            return false;
        }
        setStartTime(lastMonthStart);
        setEndTime(lastMonthEnd);
        return true;
    }

    public List<Long> loadMediaItem() {
        return getImageIdsFromImageFeatures(getCameraMediaIdsByStartEndTimeTags(CardUtil.concat(CardUtil.concat(ScenarioConstants.TAGS_PARTY, ScenarioConstants.TAGS_FOODS), CardUtil.concat(ScenarioConstants.TAGS_ACTIVITY, ScenarioConstants.TAGS_SPORTS)), getStartTime(), getEndTime()));
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        int month = DateUtils.getMonth(getRecordStartTime(record));
        String[] pastYearsMonths = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.last_month);
        if (pastYearsMonths.length <= 0 || pastYearsMonths.length <= month) {
            return "";
        }
        return pastYearsMonths[month];
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        return DateUtils.getYearMonthLocale(getRecordStartTime(record));
    }
}
