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

public class LastSeasonScenario extends TimeScenario {
    public LastSeasonScenario() {
        super(BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE, 2, 6);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, false);
        long currentTime = DateUtils.getCurrentTimeMillis();
        long firstDayofSeason = DateUtils.getSeasonStartTime(currentTime);
        if (currentTime <= firstDayofSeason || currentTime - firstDayofSeason >= 172800000) {
            return false;
        }
        long lastSeasonStart = DateUtils.getSeasonStartTime(firstDayofSeason - 86400000);
        long lastSeasonEnd = DateUtils.getSeasonEndTime(firstDayofSeason - 86400000);
        if (lastSeasonStart < 0 || lastSeasonEnd < 0 || recordStarts.contains(Long.valueOf(lastSeasonStart))) {
            return false;
        }
        setStartTime(lastSeasonStart);
        setEndTime(lastSeasonEnd);
        return true;
    }

    public List<Long> loadMediaItem() {
        return getImageIdsFromImageFeatures(getCameraMediaIdsByStartEndTimeTags(CardUtil.concat(CardUtil.concat(ScenarioConstants.TAGS_PARTY, ScenarioConstants.TAGS_FOODS), CardUtil.concat(ScenarioConstants.TAGS_ACTIVITY, ScenarioConstants.TAGS_SPORTS)), getStartTime(), getEndTime()));
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        long startTime = getRecordStartTime(record);
        if (startTime > 0) {
            int season = DateUtils.getSeason(startTime);
            String[] seasons = GalleryApp.sGetAndroidContext().getResources().getStringArray(R.array.season);
            if (seasons.length > 0 && seasons.length > season) {
                return seasons[season];
            }
        }
        return "";
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        if (getRecordStartTime(record) > 0) {
            return getMonthPeriodFromRecord(record);
        }
        return "";
    }
}
