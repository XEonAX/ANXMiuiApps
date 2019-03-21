package com.miui.gallery.card.scenario.time.free;

import android.text.TextUtils;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.TimeScenario;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public abstract class TagMonthlyScenario extends TimeScenario {
    private final List<ImageFeature> mSelectedImages = new ArrayList();
    private final Integer[] mTags;

    public TagMonthlyScenario(int id, Integer[] tags) {
        super(id, 4, 4);
        this.mTags = tags;
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        List<Long> recordStarts = getRecordStartTimesFromRecordAndCards(records, cards, false);
        long searchStartTime = 0;
        for (Long recordTime : recordStarts) {
            if (recordTime.longValue() > searchStartTime) {
                searchStartTime = recordTime.longValue();
            }
        }
        this.mSelectedImages.clear();
        long currentTime = DateUtils.getCurrentTimeMillis();
        long startTime = searchStartTime;
        if (startTime <= 0) {
            startTime = getFirstImageTimeOfTags(this.mTags);
        }
        while (startTime < currentTime - 5184000000L) {
            long start = DateUtils.getFirstDayOfMonthTime(startTime);
            long end = DateUtils.getLastDayEndOfMonthTime(startTime);
            List<ImageFeature> imageItems = getCameraMediaIdsByStartEndTimeTags(this.mTags, start, end);
            if (imageItems == null || imageItems.size() <= getMinImageCount() || recordStarts.contains(Long.valueOf(start))) {
                startTime = DateUtils.getNextMonthTime(startTime);
            } else {
                this.mSelectedImages.addAll(imageItems);
                setStartTime(start);
                setEndTime(end);
                return true;
            }
        }
        return false;
    }

    protected long getFirstImageTimeOfTags(Integer[] tags) {
        EntityManager em = GalleryEntityManager.getInstance();
        String joinedTags = TextUtils.join(",", tags);
        String selection = "resultFlag & " + Integer.toString(16) + " > 0" + " AND " + "version" + "=" + 2 + " AND " + "(" + "sceneTagA" + " IN (%s)" + " OR " + "sceneTagB" + " IN (%s)" + " OR " + "sceneTagC" + " IN (%s)" + ")";
        List<ImageFeature> images = em.query(ImageFeature.class, String.format(selection, new Object[]{joinedTags, joinedTags, joinedTags}), null, "imageDatetime asc", String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(1)}));
        if (BaseMiscUtil.isValid(images)) {
            return ((ImageFeature) images.get(0)).getImageDateTime();
        }
        return 0;
    }

    public List<Long> loadMediaItem() {
        return getImageIdsFromImageFeatures(this.mSelectedImages);
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        long startTime = getRecordStartTime(record);
        if (startTime > 0) {
            return DateUtils.getYearMonthLocale(startTime);
        }
        return "";
    }
}
