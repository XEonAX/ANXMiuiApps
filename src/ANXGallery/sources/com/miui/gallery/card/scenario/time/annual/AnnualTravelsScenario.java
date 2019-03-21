package com.miui.gallery.card.scenario.time.annual;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.card.scenario.time.LocationScenario;
import com.miui.gallery.card.scenario.time.LocationScenario.MediaItem;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class AnnualTravelsScenario extends AnnualScenario {
    protected static final String IMAGE_SELECTION = (ScenarioConstants.CAMERA_BASE_SELECTION + " AND " + "location" + " is not null" + " AND " + "mixedDateTime" + " > %s" + " AND " + "mixedDateTime" + " < %s");

    public AnnualTravelsScenario() {
        super(BaiduSceneResult.SUBWAY);
    }

    public List<Long> loadMediaItem() {
        List<Long> allTravelImages = new ArrayList();
        List<MediaItem> allImages = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, LocationScenario.PROJECTION, String.format(Locale.US, IMAGE_SELECTION, new Object[]{Long.valueOf(getStartTime()), Long.valueOf(getEndTime())}), null, "mixedDateTime ASC", new QueryHandler<List<MediaItem>>() {
            public List<MediaItem> handle(Cursor cursor) {
                return LocationScenario.getMediaItemsFromCursor(cursor, true);
            }
        });
        if (BaseMiscUtil.isValid(allImages)) {
            MediaItem startMedia = null;
            for (int i = 0; i < allImages.size(); i++) {
                MediaItem mediaItem = (MediaItem) allImages.get(i);
                if (startMedia == null) {
                    startMedia = mediaItem;
                } else if (!TextUtils.equals(startMedia.mCity, mediaItem.mCity)) {
                    MediaItem endMedia = (MediaItem) allImages.get(i - 1);
                    List<Long> mediaIds = getMediaIdsByStartEndTime(startMedia.mDateTime, endMedia.mDateTime);
                    if (endMedia.mDateTime - startMedia.mDateTime <= 864000000 && mediaIds != null && mediaIds.size() > getMinImageCount()) {
                        allTravelImages.addAll(getMediaIdsByStartEndTime(startMedia.mDateTime, endMedia.mDateTime));
                    }
                    startMedia = mediaItem;
                }
            }
        }
        return allTravelImages;
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        long startTime = getRecordStartTime(record);
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_annual_travel, new Object[]{DateUtils.getYearLocale(startTime)});
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_description_annual_travel);
    }
}
