package com.miui.gallery.card;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.assistant.process.BaseImageTask;
import com.miui.gallery.card.Card.CardExtraInfo;
import com.miui.gallery.cloud.card.model.CardInfo;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import miui.hybrid.Response;

public class CardUtil {
    public static List<MediaFeatureItem> getCoverMediaItemsByServerIds(final List<Long> mediaCoverServerIds) {
        if (BaseMiscUtil.isValid(mediaCoverServerIds)) {
            SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build(), MediaFeatureItem.MEDIA_PROJECTION, "(localGroupId!=-1000) AND " + String.format("%s IN ('%s')", new Object[]{"serverId", TextUtils.join("','", mediaCoverServerIds)}), null, "alias_create_time DESC", new QueryHandler<List<MediaFeatureItem>>() {
                /* JADX WARNING: Removed duplicated region for block: B:5:0x0018 A:{Catch:{ all -> 0x0050 }} */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public List<MediaFeatureItem> handle(Cursor cursor) {
                    if (cursor == null) {
                        return null;
                    }
                    MediaFeatureItem mediaFeatureItem;
                    MediaFeatureItem[] mediaFeatureItems1 = new MediaFeatureItem[Math.max(cursor.getCount(), mediaCoverServerIds.size())];
                    while (cursor.moveToNext()) {
                        try {
                            mediaFeatureItem = new MediaFeatureItem(cursor);
                            int i = 0;
                            while (true) {
                                if (i < mediaFeatureItems1.length) {
                                    if (((Long) mediaCoverServerIds.get(i)).longValue() == mediaFeatureItem.getServerId()) {
                                        mediaFeatureItems1[i] = mediaFeatureItem;
                                    }
                                    i++;
                                }
                            }
                            if (cursor.moveToNext()) {
                            }
                            break;
                        } finally {
                            BaseMiscUtil.closeSilently(cursor);
                        }
                    }
                    List<MediaFeatureItem> arrayList = new ArrayList();
                    for (MediaFeatureItem mediaFeatureItem2 : mediaFeatureItems1) {
                        if (mediaFeatureItem2 != null) {
                            arrayList.add(mediaFeatureItem2);
                        }
                    }
                    return arrayList;
                }
            });
        }
        return null;
    }

    public static List<String> getSha1sByServerIds(List<Long> serverId) {
        if (!BaseMiscUtil.isValid(serverId)) {
            return null;
        }
        return (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build(), CardManager.CONVERT_PROJECTION, String.format("%s IN (%s)", new Object[]{"serverId", TextUtils.join(",", serverId)}), null, String.format("%s DESC", new Object[]{"alias_create_time"}), new QueryHandler<List<String>>() {
            public List<String> handle(Cursor cursor) {
                List<String> sha1List = new ArrayList(cursor != null ? cursor.getCount() : 0);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        sha1List.add(cursor.getString(1));
                    }
                }
                return sha1List;
            }
        });
    }

    public static boolean isDuplicated(Card card, CardInfo cardInfo) {
        if (!(card == null || cardInfo == null || !TextUtils.equals(card.getDescription(), cardInfo.getDescription()))) {
            CardExtraInfo cardExtraInfo = (CardExtraInfo) GsonUtils.fromJson(cardInfo.getExtraInfo(), CardExtraInfo.class);
            if (!(cardExtraInfo == null || card.getUniqueKey() == null)) {
                return card.getUniqueKey().equals(cardExtraInfo.uniqueKey);
            }
        }
        return false;
    }

    public static boolean isDuplicated(Card card, Card cardOther) {
        if (card == null || cardOther == null || !TextUtils.equals(card.getDescription(), cardOther.getDescription()) || cardOther.getUniqueKey() == null || card.getUniqueKey() == null) {
            return false;
        }
        return card.getUniqueKey().equals(cardOther.getUniqueKey());
    }

    public static void bindImageFeatures(List<MediaFeatureItem> mediaFeatureItems) {
        if (BaseMiscUtil.isValid(mediaFeatureItems)) {
            List<Long> imageIds = new ArrayList(mediaFeatureItems.size());
            for (MediaFeatureItem item : mediaFeatureItems) {
                imageIds.add(Long.valueOf(item.getId()));
            }
            List<ImageFeature> imageFeatureList = GalleryEntityManager.getInstance().query(ImageFeature.class, String.format("%s IN (%s)", new Object[]{"imageId", TextUtils.join(",", imageIds)}), null, "createTime DESC", null);
            if (BaseMiscUtil.isValid(imageFeatureList)) {
                for (MediaFeatureItem item2 : mediaFeatureItems) {
                    for (ImageFeature imageFeature : imageFeatureList) {
                        if (imageFeature.getImageId() == item2.getId()) {
                            item2.setImageFeature(imageFeature);
                            break;
                        }
                    }
                }
            }
        }
    }

    public static Integer[] concat(Integer[] arr1, Integer[] arr2) {
        if (arr1 == null || arr1.length == 0) {
            return arr2;
        }
        if (arr2 == null || arr2.length == 0) {
            return arr1;
        }
        Integer[] result = new Integer[(arr1.length + arr2.length)];
        System.arraycopy(arr1, 0, result, 0, arr1.length);
        System.arraycopy(arr2, 0, result, arr1.length, arr2.length);
        return result;
    }

    public static long getLastCardCreateTime() {
        List<Card> list = GalleryEntityManager.getInstance().query(Card.class, "ignored = 0", null, "createTime desc", String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(1)}));
        if (BaseMiscUtil.isValid(list)) {
            return ((Card) list.get(0)).getCreateTime();
        }
        return -1;
    }

    public static List<MediaFeatureItem> getCardCovers(List<MediaFeatureItem> selectImages) {
        List<MediaFeatureItem> covers = new ArrayList();
        if (BaseMiscUtil.isValid(selectImages)) {
            Collections.sort(selectImages);
            if (BaseMiscUtil.isValid(selectImages)) {
                for (int i = 0; i < Math.min(selectImages.size(), 5); i++) {
                    covers.add(selectImages.get(i));
                }
            }
        }
        return covers;
    }

    public static List<MediaFeatureItem> getUnProcessedMediaItems(List<MediaFeatureItem> mediaFeatureItems) {
        List<MediaFeatureItem> unProcessedMediaFeatureItems = null;
        if (BaseMiscUtil.isValid(mediaFeatureItems)) {
            List<ImageFeature> processedList = GalleryEntityManager.getInstance().query(ImageFeature.class, String.format(ImageFeature.ALL_FEATURE_PROCESSED_SELECTION + " AND " + "imageId" + " IN ('%s') ", new Object[]{TextUtils.join("','", getImageIdsFromMediaItems(mediaFeatureItems))}), null);
            unProcessedMediaFeatureItems = new ArrayList(mediaFeatureItems);
            if (BaseMiscUtil.isValid(processedList)) {
                for (MediaFeatureItem mediaFeatureItem : mediaFeatureItems) {
                    for (ImageFeature feature : processedList) {
                        if (TextUtils.equals(feature.getSha1(), mediaFeatureItem.getSha1())) {
                            unProcessedMediaFeatureItems.remove(mediaFeatureItem);
                            break;
                        }
                    }
                }
            }
        }
        return unProcessedMediaFeatureItems;
    }

    public static List<String> getSha1sFromImages(List<MediaFeatureItem> selectImageFeatures) {
        List<String> selectedSha1s = new ArrayList();
        if (BaseMiscUtil.isValid(selectImageFeatures)) {
            for (MediaFeatureItem mediaFeatureItem : selectImageFeatures) {
                selectedSha1s.add(mediaFeatureItem.getMediaSha1());
            }
        }
        return selectedSha1s;
    }

    public static Uri getAlbumUri(String cardAction) {
        return Common.URI_CARD_ACTION.buildUpon().appendQueryParameter("actionType", cardAction).build();
    }

    public static List<Long> getImageIdsFromMediaItems(List<MediaFeatureItem> mediaFeatureItems) {
        List<Long> result = new ArrayList();
        if (BaseMiscUtil.isValid(mediaFeatureItems)) {
            for (MediaFeatureItem mediaFeatureItem : mediaFeatureItems) {
                result.add(Long.valueOf(mediaFeatureItem.getId()));
            }
        }
        return result;
    }

    public static boolean isCoverMediaPathEmpty(List<MediaFeatureItem> coverMediaFeatureItems) {
        if (BaseMiscUtil.isValid(coverMediaFeatureItems)) {
            for (int i = 0; i < coverMediaFeatureItems.size(); i++) {
                MediaFeatureItem mediaFeatureItem = (MediaFeatureItem) coverMediaFeatureItems.get(i);
                DownloadType downloadType = getDownloadType(coverMediaFeatureItems.size(), i);
                if ((downloadType == DownloadType.THUMBNAIL && TextUtils.isEmpty(mediaFeatureItem.getThumbnailPath())) || (downloadType == DownloadType.MICRO && TextUtils.isEmpty(mediaFeatureItem.getMicroThumbnailPath()) && TextUtils.isEmpty(mediaFeatureItem.getThumbnailPath()))) {
                    Log.d("CardUtil", "Image " + mediaFeatureItem.getId() + "has no local image of " + downloadType);
                    return true;
                }
            }
        }
        return false;
    }

    public static DownloadType getDownloadType(int totalImageCount, int position) {
        switch (totalImageCount) {
            case 1:
            case 2:
            case 3:
                return DownloadType.THUMBNAIL;
            case 4:
                if (position == 3) {
                    return DownloadType.MICRO;
                }
                return DownloadType.THUMBNAIL;
            case 5:
                if (position == 0) {
                    return DownloadType.THUMBNAIL;
                }
                return DownloadType.MICRO;
            default:
                return DownloadType.MICRO;
        }
    }

    public static void downloadCoverThumb(List<MediaFeatureItem> coverMediaFeatureItems) {
        if (BaseMiscUtil.isValid(coverMediaFeatureItems)) {
            for (int i = 0; i < coverMediaFeatureItems.size(); i++) {
                MediaFeatureItem mediaFeatureItem = (MediaFeatureItem) coverMediaFeatureItems.get(i);
                DownloadType downloadType = getDownloadType(coverMediaFeatureItems.size(), i);
                if ((downloadType == DownloadType.THUMBNAIL && TextUtils.isEmpty(mediaFeatureItem.getThumbnailPath())) || (downloadType == DownloadType.MICRO && TextUtils.isEmpty(mediaFeatureItem.getMicroThumbnailPath()))) {
                    String path = (String) BaseImageTask.getImageFilePath(mediaFeatureItem, downloadType, true).get();
                    if (!TextUtils.isEmpty(path)) {
                        if (downloadType == DownloadType.THUMBNAIL) {
                            mediaFeatureItem.setThumbnailPath(path);
                        } else {
                            mediaFeatureItem.setMicroThumbnailPath(path);
                        }
                    }
                }
            }
        }
    }

    public static int getMovieTemplateFromCard(Card card) {
        if (card == null) {
            return 0;
        }
        int scenarioId = card.getScenarioId();
        if (scenarioId <= 0 && card.getUniqueKey() != null) {
            scenarioId = card.getUniqueKey().getScenarioId();
        }
        switch (scenarioId) {
            case 102:
                if (card.getUniqueKey() == null) {
                    return 0;
                }
                try {
                    int holidayId = Integer.parseInt(card.getUniqueKey().getPrimaryKey());
                    if (holidayId == Response.CODE_GENERIC_ERROR) {
                        return 6;
                    }
                    if (holidayId == Response.CODE_ACTION_ERROR) {
                        return 5;
                    }
                    return 0;
                } catch (Throwable e) {
                    Log.e("CardUtil", e);
                    return 0;
                }
            case BaiduSceneResult.WESTERN_ARCHITECTURE /*111*/:
            case BaiduSceneResult.BUILDING_OTHER /*115*/:
                return 3;
            case BaiduSceneResult.BRIDGE /*114*/:
            case BaiduSceneResult.SUBWAY /*118*/:
            case Response.CODE_CONFIG_ERROR /*201*/:
                return 1;
            case BaiduSceneResult.MOTORCYCLE /*120*/:
            case 10001:
            case 10002:
            case 10003:
            case 10004:
            case 10005:
            case 10099:
                return 2;
            case BaiduSceneResult.STATION /*121*/:
            case 403:
                return 4;
            case 401:
                return 8;
            case 402:
                return 9;
            case 10100:
            case 10199:
                return 7;
            default:
                return 0;
        }
    }
}
