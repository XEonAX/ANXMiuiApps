package com.miui.gallery.assistant.manager;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.algorithm.Algorithm;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.assistant.library.LibraryConstants;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Listener;
import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.request.BatchImageAlgorithmRequest;
import com.miui.gallery.assistant.manager.request.ClusterGroupRequest;
import com.miui.gallery.assistant.manager.result.AlgorithmResult;
import com.miui.gallery.assistant.manager.result.BatchAlgorithmResult;
import com.miui.gallery.assistant.manager.result.ClusteGroupResult;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.assistant.process.BaseImageTask;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.assistant.FlagUtil;
import com.miui.gallery.util.assistant.ImageUtil;
import com.miui.internal.vip.VipConstants;
import com.miui.os.Rom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import miui.hybrid.Response;

public class ImageFeatureManger {
    private static boolean sIsSupportImageFeatureSelection;
    private static final String[] sWhiteList = new String[]{"dipper", "ursa", "jason", "wayne", "platina", "chiron", "sagit", "polaris", "perseus", "equuleus", "sirius", "comet", "lavender", "capricorn", "lithium", "natrium", "scorpio", "gemini", "cepheus", "davinci", "grus"};
    private volatile boolean mHasMoreImageToProcess;
    private final Runnable mImageDeleteRunnable;
    private final ImageFeatureReusedBitCache mImageFeatureReusedBitCache;
    private final Queue<ImageFileInfo> mImageFileInfoQueue;
    private volatile boolean mIsCaculating;
    private volatile int mProcessingCount;
    private final ThreadPoolExecutor mThreadPoolExecutor;

    private static final class ImageFeatureMangerHolder {
        private static final ImageFeatureManger INSTANCE = new ImageFeatureManger();
    }

    private static class ImageFileInfo {
        public final int algorithmFlags;
        public final long imageDateTime;
        public final long imageId;
        public final Listener<BatchAlgorithmResult> listener;
        public final String path;
        public final Priority priority;
        public final String sha1;

        public ImageFileInfo(Priority priority, long imageId, String sha1, long imageDateTime, String path, int algorithmFlags, Listener<BatchAlgorithmResult> listener) {
            this.priority = priority;
            this.imageId = imageId;
            this.sha1 = sha1;
            this.imageDateTime = imageDateTime;
            this.path = path;
            this.algorithmFlags = algorithmFlags;
            this.listener = listener;
        }
    }

    /* synthetic */ ImageFeatureManger(AnonymousClass1 x0) {
        this();
    }

    static {
        int i = 0;
        sIsSupportImageFeatureSelection = false;
        String[] strArr = sWhiteList;
        int length = strArr.length;
        while (i < length) {
            if (strArr[i].equalsIgnoreCase(Build.DEVICE)) {
                sIsSupportImageFeatureSelection = true;
            }
            i++;
        }
    }

    public static ImageFeatureManger getInstance() {
        return ImageFeatureMangerHolder.INSTANCE;
    }

    private ImageFeatureManger() {
        this.mHasMoreImageToProcess = false;
        this.mImageFeatureReusedBitCache = new ImageFeatureReusedBitCache();
        this.mImageFileInfoQueue = new ConcurrentLinkedQueue();
        this.mProcessingCount = 0;
        this.mThreadPoolExecutor = new ThreadPoolExecutor(1, 2, 30, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        this.mThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.mIsCaculating = false;
        this.mImageDeleteRunnable = new Runnable() {
            public void run() {
                ImageFeatureManger.this.deleteImageFromCard();
            }
        };
    }

    public static boolean isImageFeatureSelectionEnable() {
        return sIsSupportImageFeatureSelection && !BuildUtil.isPad() && Rom.IS_MIUI;
    }

    public static boolean isImageFeatureSelectionVisiable() {
        return !Rom.IS_STABLE;
    }

    public static boolean isStoryFunctionEnable() {
        return (!isImageFeatureSelectionEnable() || BaseBuildUtil.isInternational() || BuildUtil.isPad()) ? false : true;
    }

    private void deleteImageFromCard() {
        this.mThreadPoolExecutor.execute(createImagesDeleteRunnable());
    }

    private Runnable createImagesDeleteRunnable() {
        return new Runnable() {
            public void run() {
                if (ImageFeatureManger.isStoryFunctionEnable()) {
                    ImageFeatureManger.this.deleteImagesFromCard();
                }
            }
        };
    }

    private synchronized void deleteImagesFromCard() {
        List<ImageFeature> images = GalleryEntityManager.getInstance().query(ImageFeature.class, "imageId>0 AND version=2 AND imageType=2", null, null, null);
        if (BaseMiscUtil.isValid(images)) {
            Log.d("ImageFeatureManger", "Delete %d images,search them in cards", Integer.valueOf(images.size()));
            List<String> sha1s = new ArrayList(images.size());
            for (ImageFeature imageFeature : images) {
                sha1s.add(imageFeature.getSha1());
            }
            if (BaseMiscUtil.isValid(sha1s)) {
                CardManager.getInstance().onDeleteImages(sha1s);
            }
            ContentValues values = new ContentValues();
            values.put("imageType", Integer.valueOf(3));
            GalleryEntityManager.getInstance().update(ImageFeature.class, values, String.format("%s IN ('%s')", new Object[]{"sha1", TextUtils.join("','", sha1s)}), null);
        }
    }

    public void onImageDelete(String id) {
        try {
            onImageDelete(Long.parseLong(id));
        } catch (Throwable e) {
            Log.e("ImageFeatureManger", e);
        }
    }

    public void onImageDelete(long id) {
        if (ImageFeatureCacheManager.getInstance().onImageDelete(id)) {
            Log.d("ImageFeatureManger", "Image %s delete or add to secret, delete them in cards", Long.valueOf(id));
            ThreadManager.getWorkHandler().removeCallbacks(this.mImageDeleteRunnable);
            ThreadManager.getWorkHandler().postDelayed(this.mImageDeleteRunnable, 3000);
        }
    }

    public void triggerNewImageCalculation() {
        if (!isImageFeatureSelectionEnable() || !LibraryManager.getInstance().isLibrarysExist(LibraryConstants.sImageFeatureSelectionLibraries)) {
            Log.d("ImageFeatureManger", "ImageFeature Selection Disable or Libraries not exist");
        } else if (!this.mIsCaculating) {
            this.mIsCaculating = true;
            this.mThreadPoolExecutor.execute(createNewImageCalculateRunnable());
        }
    }

    private Runnable createNewImageCalculateRunnable() {
        return new Runnable() {
            public void run() {
                ImageFeatureManger.this.scheduleNewImages();
            }
        };
    }

    private void scheduleNewImages() {
        if (MiscUtil.isAppProcessInForeground(GalleryApp.sGetAndroidContext()) && Sync.getPowerCanSync()) {
            Log.d("ImageFeatureManger", "Status meet,trigger new image feature calculation");
            Listener listener = new Listener() {
                public void onStart() {
                }

                public void onCancel() {
                    ImageFeatureManger.this.markCaculateState(false);
                }

                public void onComputeComplete(AlgorithmResult result) {
                }

                public void onSaveComplete(AlgorithmResult result) {
                    ImageFeatureManger.this.markCaculateState(false);
                    if (ImageFeatureManger.this.mHasMoreImageToProcess) {
                        ImageFeatureManger.this.mHasMoreImageToProcess = false;
                        ImageFeatureManger.this.triggerNewImageCalculation();
                    }
                }
            };
            Log.d("ImageFeatureManger", "Start process recent %d images for image selection", Integer.valueOf(Response.CODE_GENERIC_ERROR));
            List<MediaFeatureItem> recentImages = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), UriUtil.appendLimit(Cloud.CLOUD_URI, Response.CODE_GENERIC_ERROR), MediaFeatureItem.PROJECTION, ScenarioConstants.ALL_IMAGE_BASE_SELECTION, null, "mixedDateTime DESC", new QueryHandler<List<MediaFeatureItem>>() {
                public List<MediaFeatureItem> handle(Cursor cursor) {
                    if (cursor == null || !cursor.moveToFirst()) {
                        return null;
                    }
                    List<MediaFeatureItem> mediaFeatureItems = new ArrayList(cursor.getCount());
                    do {
                        mediaFeatureItems.add(new MediaFeatureItem(cursor));
                    } while (cursor.moveToNext());
                    return mediaFeatureItems;
                }
            });
            if (BaseMiscUtil.isValid(recentImages)) {
                CardUtil.bindImageFeatures(recentImages);
                List<MediaFeatureItem> toProcessingImages = getUnProcessedImages(recentImages, 30);
                if (BaseMiscUtil.isValid(toProcessingImages)) {
                    boolean z;
                    if (toProcessingImages.size() >= 30) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.mHasMoreImageToProcess = z;
                    calculateImageGroupWithAlgorithmAsync(Priority.PRIORITY_NORMAL, toProcessingImages, listener);
                    return;
                }
            }
        }
        markCaculateState(false);
    }

    private List<MediaFeatureItem> getUnProcessedImages(List<MediaFeatureItem> recentImages, int imageCountOnce) {
        List<MediaFeatureItem> toProcessedImages = new ArrayList();
        if (BaseMiscUtil.isValid(recentImages)) {
            int i = 0;
            while (i < recentImages.size()) {
                MediaFeatureItem mediaFeatureItem = (MediaFeatureItem) recentImages.get(i);
                if (i < recentImages.size() - 1 && mediaFeatureItem.isSelectionFeatureDone() && !((MediaFeatureItem) recentImages.get(i + 1)).isSelectionFeatureDone()) {
                    toProcessedImages.add(mediaFeatureItem);
                } else if (!mediaFeatureItem.isSelectionFeatureDone() || (!toProcessedImages.isEmpty() && DateUtils.withinTime(((MediaFeatureItem) toProcessedImages.get(toProcessedImages.size() - 1)).getDateTime(), mediaFeatureItem.getDateTime(), VipConstants.HOUR))) {
                    toProcessedImages.add(mediaFeatureItem);
                }
                if (toProcessedImages.size() >= imageCountOnce) {
                    break;
                }
                i++;
            }
        }
        Iterator<MediaFeatureItem> itemIterator = toProcessedImages.iterator();
        while (itemIterator.hasNext()) {
            if (!ensureImagePath((MediaFeatureItem) itemIterator.next())) {
                itemIterator.remove();
            }
        }
        return toProcessedImages;
    }

    private boolean ensureImagePath(MediaFeatureItem mediaFeatureItem) {
        String path = mediaFeatureItem.getImagePath();
        if (TextUtils.isEmpty(path)) {
            path = (String) BaseImageTask.getImageFilePath(mediaFeatureItem, DownloadType.MICRO, true).get();
            Log.d("ImageFeatureManger", "get micro thumb image using time:%d ms", Long.valueOf(System.currentTimeMillis() - System.currentTimeMillis()));
        }
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        return true;
    }

    private boolean markCaculateState(boolean isCaculating) {
        Log.d("ImageFeatureManger", "New image Caculating : %b", Boolean.valueOf(isCaculating));
        this.mIsCaculating = isCaculating;
        return this.mIsCaculating;
    }

    public static List<MediaFeatureItem> filterNearByImages(List<MediaFeatureItem> nearByImages) {
        List<MediaFeatureItem> mediaFeatureItems = new LinkedList();
        if (BaseMiscUtil.isValid(nearByImages)) {
            long lastGroupId = 0;
            for (MediaFeatureItem mediaFeatureItem : nearByImages) {
                ImageFeature imageFeature = mediaFeatureItem.getImageFeature();
                if (imageFeature != null) {
                    long groupId = imageFeature.getClusterGroupId();
                    if (groupId != 0) {
                        if (lastGroupId != 0) {
                            if (lastGroupId != groupId) {
                                break;
                            }
                            mediaFeatureItems.add(mediaFeatureItem);
                        } else {
                            lastGroupId = groupId;
                            mediaFeatureItems.add(mediaFeatureItem);
                        }
                    } else {
                        mediaFeatureItems.add(mediaFeatureItem);
                    }
                } else {
                    mediaFeatureItems.add(mediaFeatureItem);
                }
            }
        }
        return mediaFeatureItems;
    }

    public static List<MediaFeatureItem> queryNearByMediaItems(long time) {
        return (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, MediaFeatureItem.PROJECTION, String.format("%s < %s AND %s > %s", new Object[]{"mixedDateTime", Long.valueOf(time), "mixedDateTime", Long.valueOf(time - VipConstants.HOUR)}), null, "mixedDateTime DESC", new QueryHandler<List<MediaFeatureItem>>() {
            public List<MediaFeatureItem> handle(Cursor cursor) {
                return MediaFeatureItem.getMediaFeatureItemsFromCursor(cursor);
            }
        });
    }

    public ClusteGroupResult calculateClusterGroupSync(List<MediaFeatureItem> mediaFeatureItems, boolean saveRuslt) {
        if (BaseMiscUtil.isValid(mediaFeatureItems)) {
            return (ClusteGroupResult) new ClusterGroupRequest(Priority.PRIORITY_NORMAL, mediaFeatureItems, saveRuslt).executeSync();
        }
        return new ClusteGroupResult(3);
    }

    public void calculateClusterGroupAsync(List<MediaFeatureItem> mediaFeatureItems, boolean saveRuslt, Listener<ClusteGroupResult> listener) {
        if (BaseMiscUtil.isValid(mediaFeatureItems)) {
            ClusterGroupRequest clusterGroupRequest = new ClusterGroupRequest(Priority.PRIORITY_NORMAL, mediaFeatureItems, saveRuslt);
            clusterGroupRequest.setMainThreadListener(listener);
            clusterGroupRequest.execute();
        }
    }

    private void handleImageFileWithAlgorithmAsync(Priority priority, long imageId, String sha1, long imageDateTime, String path, int algorithmFlags, Listener<BatchAlgorithmResult> listener) {
        Log.d("ImageFeatureManger", "handle Image %d With Algorithm Async", Long.valueOf(imageId));
        this.mImageFileInfoQueue.add(new ImageFileInfo(priority, imageId, sha1, imageDateTime, path, algorithmFlags, listener));
        schedule();
    }

    private void calculateImageGroupWithAlgorithmAsync(Priority priority, List<MediaFeatureItem> images, Listener listener) {
        if (BaseMiscUtil.isValid(images)) {
            Log.d("ImageFeatureManger", "Calculate imageGroup with algorithm async,image count:%d", Integer.valueOf(images.size()));
            final int[] imageCount = new int[]{images.size()};
            final List<MediaFeatureItem> list = images;
            final Listener listener2 = listener;
            Listener<BatchAlgorithmResult> newListener = new Listener<BatchAlgorithmResult>() {
                public void onStart() {
                }

                public void onCancel() {
                    int[] iArr = imageCount;
                    iArr[0] = iArr[0] - 1;
                    if (imageCount[0] <= 0) {
                        ImageFeatureManger.this.calculateImageGroupAndSaveAsyncInternal(list, listener2);
                    }
                }

                public void onComputeComplete(BatchAlgorithmResult result) {
                }

                public void onSaveComplete(BatchAlgorithmResult result) {
                    int[] iArr = imageCount;
                    iArr[0] = iArr[0] - 1;
                    if (imageCount[0] <= 0) {
                        ImageFeatureManger.this.calculateImageGroupAndSaveAsyncInternal(list, listener2);
                    }
                }
            };
            for (MediaFeatureItem mediaFeatureItem : images) {
                int algorithmFlag = 0;
                if (mediaFeatureItem.getImageFeature() == null) {
                    algorithmFlag = Algorithm.FLAG_ALL;
                } else {
                    for (int flag : Algorithm.FLAG_ALL_ARRAY) {
                        if (!mediaFeatureItem.getImageFeature().isFeatureDone(flag)) {
                            algorithmFlag = FlagUtil.setFlag(algorithmFlag, flag);
                        }
                    }
                }
                if (algorithmFlag != 0) {
                    handleImageFileWithAlgorithmAsync(priority, mediaFeatureItem.getId(), mediaFeatureItem.getSha1(), mediaFeatureItem.getDateTime(), mediaFeatureItem.getImagePath(), algorithmFlag, newListener);
                } else {
                    imageCount[0] = imageCount[0] - 1;
                }
                if (imageCount[0] <= 0) {
                    calculateImageGroupAndSaveAsyncInternal(images, listener);
                }
            }
        } else if (listener != null) {
            listener.onCancel();
        }
    }

    private void calculateImageGroupAndSaveAsyncInternal(List<MediaFeatureItem> images, final Listener listener) {
        CardUtil.bindImageFeatures(images);
        calculateClusterGroupAsync(images, true, new Listener<ClusteGroupResult>() {
            public void onStart() {
            }

            public void onCancel() {
                if (listener != null) {
                    listener.onCancel();
                }
            }

            public void onComputeComplete(ClusteGroupResult result) {
                if (listener != null) {
                    listener.onComputeComplete(result);
                }
            }

            public void onSaveComplete(ClusteGroupResult result) {
                if (listener != null) {
                    listener.onSaveComplete(result);
                }
            }
        });
    }

    public BatchAlgorithmResult handleImageFileWithAlgorithmSync(Priority priority, long imageId, String sha1, long imageDateTime, String path, int algorithmFlags) {
        if (TextUtils.isEmpty(path)) {
            return new BatchAlgorithmResult(3, imageId);
        }
        Bitmap bitmap = getScaledBitmap(path);
        BatchAlgorithmResult result = handleImageWithAlgorithmSync(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
        recycleBitmap(bitmap);
        return result;
    }

    private void recycleBitmap(Bitmap bitmap) {
        this.mImageFeatureReusedBitCache.put(bitmap);
    }

    public BatchAlgorithmResult handleImageWithAlgorithmSync(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap, int algorithmFlags) {
        BatchImageAlgorithmRequest batchImageAlgorithmRequest = getBatchImageAlgorithmRequest(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
        if (batchImageAlgorithmRequest != null) {
            return (BatchAlgorithmResult) batchImageAlgorithmRequest.executeSync();
        }
        return new BatchAlgorithmResult(3, imageId);
    }

    public void handleImageWithAlgorithmAsync(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap, int algorithmFlags, Listener<BatchAlgorithmResult> listener) {
        BatchImageAlgorithmRequest batchImageAlgorithmRequest = getBatchImageAlgorithmRequest(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
        if (batchImageAlgorithmRequest != null) {
            batchImageAlgorithmRequest.setMainThreadListener(listener);
            batchImageAlgorithmRequest.execute();
        } else if (listener != null) {
            listener.onCancel();
        }
    }

    private void schedule() {
        if (this.mProcessingCount < 3) {
            final ImageFileInfo imageFileInfo = (ImageFileInfo) this.mImageFileInfoQueue.poll();
            if (imageFileInfo != null) {
                this.mProcessingCount++;
                this.mThreadPoolExecutor.execute(new Runnable() {
                    public void run() {
                        final Bitmap bitmap = ImageFeatureManger.this.getScaledBitmap(imageFileInfo.path);
                        ImageFeatureManger.this.handleImageWithAlgorithmAsync(imageFileInfo.priority, imageFileInfo.imageId, imageFileInfo.sha1, imageFileInfo.imageDateTime, bitmap, imageFileInfo.algorithmFlags, new Listener<BatchAlgorithmResult>() {
                            public void onStart() {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onStart();
                                }
                            }

                            public void onCancel() {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onCancel();
                                }
                                ImageFeatureManger.this.mProcessingCount = ImageFeatureManger.this.mProcessingCount - 1;
                                ImageFeatureManger.this.schedule();
                                ImageFeatureManger.this.recycleBitmap(bitmap);
                            }

                            public void onComputeComplete(BatchAlgorithmResult result) {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onComputeComplete(result);
                                }
                                ImageFeatureManger.this.mProcessingCount = ImageFeatureManger.this.mProcessingCount - 1;
                                ImageFeatureManger.this.schedule();
                                ImageFeatureManger.this.recycleBitmap(bitmap);
                            }

                            public void onSaveComplete(BatchAlgorithmResult result) {
                                if (imageFileInfo.listener != null) {
                                    imageFileInfo.listener.onSaveComplete(result);
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    private BatchImageAlgorithmRequest getBatchImageAlgorithmRequest(Priority priority, long imageId, String sha1, long imageDateTime, Bitmap bitmap, int algorithmFlags) {
        if (bitmap != null) {
            return new BatchImageAlgorithmRequest(priority, imageId, sha1, imageDateTime, bitmap, algorithmFlags);
        }
        return null;
    }

    private Bitmap getScaledBitmap(String path) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        Options options = new Options();
        options.inPreferredConfig = Config.ARGB_8888;
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(path, options);
            if (options.outWidth < 224 || options.outHeight < 224) {
                return null;
            }
            options.inSampleSize = ImageUtil.calculateInSampleSize(options, 400, 400);
            options.inJustDecodeBounds = false;
            options.inBitmap = this.mImageFeatureReusedBitCache.get(options);
            return BitmapFactory.decodeFile(path, options);
        } catch (Throwable e) {
            Log.e("ImageFeatureManger", e);
            return null;
        }
    }
}
