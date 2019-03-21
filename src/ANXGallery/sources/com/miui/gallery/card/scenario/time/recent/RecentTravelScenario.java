package com.miui.gallery.card.scenario.time.recent;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.LocationScenario;
import com.miui.gallery.card.scenario.time.LocationScenario.MediaItem;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class RecentTravelScenario extends LocationScenario {
    public RecentTravelScenario() {
        super(BaiduSceneResult.BRIDGE, 2, 6);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, true);
        long now = DateUtils.getCurrentTimeMillis();
        long startTime = DateUtils.getDateTime(now) - 2592000000L;
        List<MediaItem> pastImages = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, PROJECTION, String.format(Locale.US, TIME_SELECTION, new Object[]{Long.valueOf(startTime), Long.valueOf(endTime)}), null, "mixedDateTime DESC", new QueryHandler<List<MediaItem>>() {
            public List<MediaItem> handle(Cursor cursor) {
                return LocationScenario.getMediaItemsFromCursor(cursor, true);
            }
        });
        if (!BaseMiscUtil.isValid(pastImages)) {
            return false;
        }
        String cityNow = null;
        MediaItem cityRecentImage = null;
        List<MediaItem> recentCityImages = null;
        for (MediaItem mediaItem : pastImages) {
            if (cityNow == null) {
                cityNow = mediaItem.mCity;
            } else if (recentCityImages != null) {
                if (!TextUtils.equals(cityRecentImage.mCity, mediaItem.mCity)) {
                    break;
                }
                recentCityImages.add(mediaItem);
            } else if (!(TextUtils.isEmpty(mediaItem.mCity) || TextUtils.equals(mediaItem.mCity, cityNow))) {
                cityRecentImage = mediaItem;
                if (now - cityRecentImage.mDateTime >= 259200000) {
                    return false;
                }
                recentCityImages = new LinkedList();
                recentCityImages.add(cityRecentImage);
            }
        }
        if (BaseMiscUtil.isValid(recentCityImages)) {
            MediaItem first = (MediaItem) recentCityImages.get(recentCityImages.size() - 1);
            MediaItem last = (MediaItem) recentCityImages.get(0);
            if (last.mDateTime - first.mDateTime <= 864000000) {
                if (!recordStarts.contains(Long.valueOf(DateUtils.getDateTime(first.mDateTime)))) {
                    this.mTargetCity = cityRecentImage.mCity;
                    setStartTime(first.mDateTime);
                    setEndTime(last.mDateTime);
                    return true;
                }
            }
        }
        return false;
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_somewhere, new Object[]{record.getLocation()});
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        return getDatePeriodFromRecord(record);
    }
}
