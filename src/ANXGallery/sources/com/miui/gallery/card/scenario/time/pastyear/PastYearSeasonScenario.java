package com.miui.gallery.card.scenario.time.pastyear;

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

public class PastYearSeasonScenario extends TimeScenario {
    public PastYearSeasonScenario() {
        super(BaiduSceneResult.SPORTS_OTHER, 1, 7);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, false);
        long currentTime = DateUtils.getCurrentTimeMillis();
        long firstDayofSeason = DateUtils.getSeasonStartTime(currentTime);
        if (currentTime <= firstDayofSeason || currentTime - firstDayofSeason >= 172800000) {
            return false;
        }
        long lastYearSameTime = DateUtils.getLastNYearDateTime(1, currentTime);
        long pastYearSeasonStart = DateUtils.getSeasonStartTime(lastYearSameTime);
        long pastYearSeasonEnd = DateUtils.getSeasonEndTime(lastYearSameTime);
        if (pastYearSeasonStart < 0 || pastYearSeasonEnd < 0 || recordStarts.contains(Long.valueOf(pastYearSeasonStart))) {
            return false;
        }
        setStartTime(pastYearSeasonStart);
        setEndTime(pastYearSeasonEnd);
        return true;
    }

    public List<Long> loadMediaItem() {
        return getImageIdsFromImageFeatures(getCameraMediaIdsByStartEndTimeTags(CardUtil.concat(CardUtil.concat(ScenarioConstants.TAGS_PARTY, ScenarioConstants.TAGS_FOODS), CardUtil.concat(ScenarioConstants.TAGS_ACTIVITY, ScenarioConstants.TAGS_SPORTS)), getStartTime(), getEndTime()));
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        int season = DateUtils.getSeason(getRecordStartTime(record));
        String[] seasons = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.season_last_year);
        if (seasons.length <= 0 || seasons.length <= season) {
            return "";
        }
        return seasons[season];
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        if (getRecordStartTime(record) > 0) {
            return getMonthPeriodFromRecord(record);
        }
        return "";
    }
}
