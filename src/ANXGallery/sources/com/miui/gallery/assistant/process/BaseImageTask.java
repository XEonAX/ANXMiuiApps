package com.miui.gallery.assistant.process;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.Config.ImageDownload;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.algorithm.Algorithm;
import com.miui.gallery.assistant.library.LibraryConstants;
import com.miui.gallery.assistant.library.LibraryDownloadTask;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.assistant.manager.result.ClusteGroupResult;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.ImageFeatureGroupSet;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.pendingtask.base.PendingTask;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.sdk.download.DownloadOptions.Builder;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.ImageDownloader;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.assistant.FlagUtil;
import com.miui.gallery.util.uil.CloudUriAdapter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseImageTask extends PendingTask<JSONObject> {
    protected final String TAG = getClass().getSimpleName();

    private static class ImageGuaranteeJob implements Job<String> {
        private final DownloadType mDownloadType;
        private final boolean mIsDownloadCloudImage;
        private final MediaFeatureItem mMediaFeatureItem;

        ImageGuaranteeJob(MediaFeatureItem mediaFeatureItem, DownloadType downloadType, boolean isDownloadCloudImage) {
            this.mMediaFeatureItem = mediaFeatureItem;
            this.mDownloadType = downloadType;
            this.mIsDownloadCloudImage = isDownloadCloudImage;
        }

        public String run(JobContext jc) {
            if (this.mMediaFeatureItem == null) {
                return null;
            }
            String microThumbnailPath = null;
            String thumbnailPath = null;
            String originPath = null;
            if (FileUtils.isFileExist(this.mMediaFeatureItem.getMicroThumbnailPath())) {
                microThumbnailPath = this.mMediaFeatureItem.getMicroThumbnailPath();
            }
            if (FileUtils.isFileExist(this.mMediaFeatureItem.getThumbnailPath())) {
                thumbnailPath = this.mMediaFeatureItem.getThumbnailPath();
            }
            if (FileUtils.isFileExist(this.mMediaFeatureItem.getOriginPath())) {
                originPath = this.mMediaFeatureItem.getOriginPath();
            }
            try {
                String resultPath;
                if (this.mDownloadType == DownloadType.ORIGIN) {
                    if (originPath != null) {
                        return originPath;
                    }
                    if (!this.mIsDownloadCloudImage) {
                        return null;
                    }
                    resultPath = BaseImageTask.downloadImage(this.mMediaFeatureItem.getId(), this.mDownloadType);
                    this.mMediaFeatureItem.setOriginPath(resultPath);
                    return resultPath;
                } else if (this.mDownloadType == DownloadType.THUMBNAIL) {
                    if (thumbnailPath != null) {
                        return thumbnailPath;
                    }
                    if (originPath != null) {
                        return originPath;
                    }
                    if (!this.mIsDownloadCloudImage) {
                        return null;
                    }
                    resultPath = BaseImageTask.downloadImage(this.mMediaFeatureItem.getId(), this.mDownloadType);
                    this.mMediaFeatureItem.setThumbnailPath(resultPath);
                    return resultPath;
                } else if (microThumbnailPath != null) {
                    return microThumbnailPath;
                } else {
                    if (thumbnailPath != null) {
                        return thumbnailPath;
                    }
                    if (originPath != null) {
                        return originPath;
                    }
                    if (!this.mIsDownloadCloudImage) {
                        return null;
                    }
                    resultPath = BaseImageTask.downloadImage(this.mMediaFeatureItem.getId(), this.mDownloadType);
                    this.mMediaFeatureItem.setMicroThumbnailPath(resultPath);
                    return resultPath;
                }
            } catch (Object e) {
                Log.e("ImageGuaranteeJob", "downloadImage occur error.\n", e);
                return null;
            }
        }
    }

    public abstract DownloadType onGetImageDownloadType();

    public BaseImageTask(int type) {
        super(type);
    }

    public final JSONObject parseData(byte[] data) throws Exception {
        return data == null ? new JSONObject() : new JSONObject(new String(data, "utf-8"));
    }

    public final byte[] wrapData(JSONObject data) throws Exception {
        return data == null ? null : data.toString().getBytes("utf-8");
    }

    protected boolean processImages(JSONObject data, List<MediaFeatureItem> mediaFeatureItems, boolean calculateClusterGroup, boolean isDownloadCloudImage) {
        if (!BaseMiscUtil.isValid(mediaFeatureItems)) {
            return true;
        }
        CardUtil.bindImageFeatures(mediaFeatureItems);
        if (LibraryManager.getInstance().loadLibrary(LibraryConstants.sImageProcessLibraries)) {
            Log.d(this.TAG, "processing %d images", Integer.valueOf(mediaFeatureItems.size()));
            DownloadType downloadType = onGetImageDownloadType();
            if (downloadType == null) {
                throw new IllegalStateException("onGetImageDownloadType in Sub class return null!");
            }
            Future<String> future = getImageFilePath((MediaFeatureItem) mediaFeatureItems.get(0), downloadType, isDownloadCloudImage);
            for (int i = 1; i < mediaFeatureItems.size(); i++) {
                String path = (String) future.get();
                future = getImageFilePath((MediaFeatureItem) mediaFeatureItems.get(i), downloadType, isDownloadCloudImage);
                long start = System.currentTimeMillis();
                calculateAllImageFeature((MediaFeatureItem) mediaFeatureItems.get(i - 1), path);
                Log.d(this.TAG, "Image %d ImageFeature Algorithm time: %d", Long.valueOf(((MediaFeatureItem) mediaFeatureItems.get(i - 1)).getId()), Long.valueOf(System.currentTimeMillis() - start));
            }
            calculateAllImageFeature((MediaFeatureItem) mediaFeatureItems.get(mediaFeatureItems.size() - 1), (String) future.get());
            if (calculateClusterGroup) {
                CardUtil.bindImageFeatures(mediaFeatureItems);
                ClusteGroupResult clusteGroupResult = ImageFeatureManger.getInstance().calculateClusterGroupSync(mediaFeatureItems, true);
                if (!(clusteGroupResult == null || clusteGroupResult.getResultCode() == 0)) {
                    return false;
                }
            }
            return true;
        }
        Log.d(this.TAG, "loadLibrary fail, schedule download task!");
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("originalType", getType());
            jsonObject.put("originalData", data);
            jsonObject.put("libraryIds", GsonUtils.toString(LibraryConstants.sImageProcessLibraries));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        PendingTaskManager.getInstance().postTask(7, jsonObject, LibraryDownloadTask.class.getSimpleName());
        return false;
    }

    protected static List<MediaFeatureItem> getSelectedImages(List<MediaFeatureItem> list) {
        if (!BaseMiscUtil.isValid(list)) {
            return null;
        }
        List<MediaFeatureItem> toProcessedItems = new ArrayList();
        for (MediaFeatureItem featureItem : list) {
            if (featureItem.getImageFeature() != null) {
                ImageFeature feature = featureItem.getImageFeature();
                if (!(!feature.hasClusterFeature() || feature.isDocumentImage() || feature.isPoorImage())) {
                    toProcessedItems.add(featureItem);
                }
            }
        }
        ClusteGroupResult clusteGroupResult = ImageFeatureManger.getInstance().calculateClusterGroupSync(toProcessedItems, false);
        if (clusteGroupResult == null || clusteGroupResult.getResultCode() != 0) {
            return null;
        }
        ImageFeatureGroupSet<MediaFeatureItem> imageFeatureGroups = new ImageFeatureGroupSet(toProcessedItems, clusteGroupResult.getClusters());
        if (BaseMiscUtil.isValid(imageFeatureGroups)) {
            return imageFeatureGroups.getSelectedImages();
        }
        return null;
    }

    private void calculateAllImageFeature(MediaFeatureItem mediaFeatureItem, String path) {
        if (mediaFeatureItem == null) {
            return;
        }
        if (TextUtils.isEmpty(path)) {
            ImageFeature imageFeature = new ImageFeature(mediaFeatureItem.getId(), mediaFeatureItem.getSha1(), mediaFeatureItem.getDateTime());
            imageFeature.setImageType(-1);
            GalleryEntityManager.getInstance().insert((Entity) imageFeature);
            Log.d(this.TAG, "insert image %d feature, image path is null", Long.valueOf(imageFeature.getImageId()));
            return;
        }
        int algorithmFlag = 0;
        if (mediaFeatureItem.getImageFeature() != null) {
            for (int flag : Algorithm.FLAG_ALL_ARRAY) {
                if (!mediaFeatureItem.getImageFeature().isFeatureDone(flag)) {
                    algorithmFlag = FlagUtil.setFlag(algorithmFlag, flag);
                }
            }
        } else {
            algorithmFlag = Algorithm.FLAG_ALL;
        }
        ImageFeatureManger.getInstance().handleImageFileWithAlgorithmSync(Priority.PRIORITY_NORMAL, mediaFeatureItem.getId(), mediaFeatureItem.getSha1(), mediaFeatureItem.getDateTime(), path, algorithmFlag);
    }

    public static Future<String> getImageFilePath(MediaFeatureItem mediaFeatureItem, DownloadType downloadType, boolean isDownloadCloudImage) {
        return ThreadManager.getMiscPool().submit(new ImageGuaranteeJob(mediaFeatureItem, downloadType, isDownloadCloudImage));
    }

    private static String downloadImage(long id, DownloadType downloadType) throws Exception {
        if (!NetworkUtils.isNetworkConnected() || (downloadType == DownloadType.ORIGIN && NetworkUtils.isActiveNetworkMetered())) {
            throw new RuntimeException("network invalid.");
        } else if (AccountCache.getAccount() == null) {
            throw new RuntimeException("no account.");
        } else {
            DownloadedItem downloadedItem = ImageDownloader.getInstance().loadSync(CloudUriAdapter.getDownloadUri(id), downloadType, new Builder().setRequireWLAN(ImageDownload.requireWLAN(downloadType)).setRequireCharging(false).setRequirePower(true).build());
            return downloadedItem != null ? downloadedItem.getFilePath() : null;
        }
    }

    List<Long> getAllProcessedSuccessImages() {
        List<Long> result = new ArrayList();
        Class cls = ImageFeature.class;
        Cursor cursor = GalleryEntityManager.getInstance().rawQuery(cls, new String[]{"imageId"}, ImageFeature.ALL_PROCESSED_SELECTION, null, null, null, "imageId ASC", null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    result.add(Long.valueOf(Entity.getLong(cursor, "imageId")));
                } finally {
                    cursor.close();
                }
            }
        }
        return result;
    }

    protected static List<MediaFeatureItem> queryMediaItemByIds(List<Long> ids) {
        return queryMediaItem(ScenarioConstants.CAMERA_BASE_SELECTION + " AND " + "_id" + " IN ('" + TextUtils.join("','", ids) + "')" + " AND " + "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))");
    }

    public static List<MediaFeatureItem> queryMediaItem(String selection) {
        return (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, MediaFeatureItem.PROJECTION, selection, null, "mixedDateTime ASC", new QueryHandler<List<MediaFeatureItem>>() {
            public List<MediaFeatureItem> handle(Cursor cursor) {
                return MediaFeatureItem.getMediaFeatureItemsFromCursor(cursor);
            }
        });
    }
}
