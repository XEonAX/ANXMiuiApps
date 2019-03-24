package com.miui.gallery;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import com.miui.core.SdkHelper;
import com.miui.gallery.Config.ImageLoaderConfig;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.cloud.CloudReceiverRegister;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.receiver.CloudPrivacyAgreementDeniedReceiver;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.CloudControlRequestHelper;
import com.miui.gallery.data.CitySearcher;
import com.miui.gallery.data.OldThumbnailTransferer;
import com.miui.gallery.discovery.GalleryJobService;
import com.miui.gallery.editor.photo.app.EditorApplicationDelegate;
import com.miui.gallery.modules.ModulesRegister;
import com.miui.gallery.monitor.LooperBlockDetector;
import com.miui.gallery.permission.core.PermissionUtils;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.CloudControl;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.preference.PreferenceHelper;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.push.GalleryPushManager;
import com.miui.gallery.sdk.uploadstatus.ItemType;
import com.miui.gallery.sdk.uploadstatus.SyncProxy;
import com.miui.gallery.sdk.uploadstatus.UploadStatusItem;
import com.miui.gallery.sdk.uploadstatus.UploadStatusProxy.UploadStatusChangedListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.OldCacheCleaner;
import com.miui.gallery.util.PreferenceCleaner;
import com.miui.gallery.util.PrivacyAgreementUtils;
import com.miui.gallery.util.StaticContext;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deprecated.BaseDeprecatedPreference;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudUriAdapter;
import com.miui.gallery.util.uil.PhotoReusedBitCache;
import com.miui.gallery.video.editor.manager.SmartVideoGuideHelper;
import com.miui.internal.vip.VipConstants;
import com.miui.os.Rom;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoader.Initializer;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.xiaomi.micloudsdk.request.utils.Request;
import miui.external.Application;
import miui.net.ConnectivityHelper;
import miui.os.C0003ProcessUtils;

public class GalleryApp extends Application {
    private static final boolean BLOCK_MONITOR;
    private static volatile Context sContext;
    private Initializer mImageLoaderInitializer = new Initializer() {
        protected ImageLoaderConfiguration getConfig() {
            return ImageLoaderConfig.getConfig(GalleryApp.sContext);
        }
    };

    public class ApplicationDelegate extends miui.external.ApplicationDelegate {
        public void onCreate() {
            super.onCreate();
            GalleryApp.this.initDataInUIThread();
            GalleryApp.this.initDataInSubThread();
            if (GalleryApp.BLOCK_MONITOR) {
                GalleryApp.this.openBlockMonitor();
            }
        }
    }

    static {
        boolean z = SdkHelper.IS_MIUI && Rom.IS_ALPHA && Log.isLoggable("BLOCK_MONITOR", 3);
        BLOCK_MONITOR = z;
        if (SdkHelper.IS_MIUI) {
            com.miui.gallery.util.Log.setLogLevel(Rom.IS_STABLE ? 7 : 2);
        } else {
            com.miui.gallery.util.Log.setLogLevel(6);
        }
    }

    public miui.external.ApplicationDelegate onCreateApplicationDelegate() {
        sContext = this;
        StaticContext.init(sContext);
        ModulesRegister.register();
        if (isEditorProcess()) {
            return new EditorApplicationDelegate();
        }
        return new ApplicationDelegate();
    }

    private void openBlockMonitor() {
        LooperBlockDetector.start(Looper.getMainLooper(), 150);
    }

    private void initDataInUIThread() {
        Request.init(sContext);
        CloudImageLoader.init(sContext);
        ImageLoader.setInitializer(this.mImageLoaderInitializer);
        GalleryStatHelper.init(this);
        setupLeakCanary();
        CloudReceiverRegister.getInstance().onAppCreate();
        PreferenceCleaner.clean();
        SyncProxy.getInstance().init(sContext, new CloudUriAdapter());
        SyncProxy.getInstance().getUploadStatusProxy().addUploadStatusChangedListener(new UploadStatusChangedListener() {
            public void onUploadStatusChanged(UploadStatusItem statusItem) {
                if (statusItem != null && statusItem.getItemType() == ItemType.OWNER) {
                    Uri uri = statusItem.getUserUri();
                    ContentValues values = new ContentValues();
                    values.put("sync_status", statusItem.mStatus.toString());
                    GalleryApp.sContext.getContentResolver().update(uri, values, "_id = ?", new String[]{uri.getLastPathSegment()});
                }
            }
        });
    }

    private void initDataInSubThread() {
        new Thread(new Runnable() {
            public void run() {
                GalleryApp.this.doInitInSubThreadAtOnce();
                Process.setThreadPriority(10);
                ThreadManager.sleepThread(500);
                GalleryApp.this.doInitInSubThreadDelay();
            }
        }).start();
    }

    private void doInitInSubThreadAtOnce() {
        this.mImageLoaderInitializer.preInitialize();
        this.mImageLoaderInitializer = null;
        CloudControlManager.getInstance().init(this);
        BaseDeprecatedPreference.sGetDefaultPreferences();
        PreferenceHelper.getPreferences();
        if (ImageFeatureManger.isImageFeatureSelectionEnable() && ImageFeatureManger.isImageFeatureSelectionVisiable()) {
            ImageFeatureCacheManager.getInstance().init();
        }
        LibraryManager.getInstance().init(this);
    }

    private void doInitInSubThreadDelay() {
        GalleryJobService.scheduleJobs(this);
        CloudUtils.checkAccount(null, true, null);
        CitySearcher.getInstance().preLoadData();
        if (PermissionUtils.checkPermission((Context) this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            OldThumbnailTransferer.transfer(sContext);
            OldCacheCleaner.clean();
        }
        PhotoReusedBitCache.getInstance().initFirstCacheBitmap();
        if (!Sync.getEverRefillLocalGroupId()) {
            GalleryDBHelper.refillLocalGroupId(GalleryDBHelper.getInstance().getWritableDatabase(), true, false);
            Sync.setEverRefillLocalGroupId();
        }
        if (!Sync.getEverSyncedSystemAlbum()) {
            SyncUtil.requestSync(this);
        }
        GalleryPushManager.getInstance().registerPush(this);
        if (CTA.canConnectNetwork()) {
            long current = System.currentTimeMillis();
            long lastRequestSucceedTime = CloudControl.getLastRequestSucceedTime();
            if (current - lastRequestSucceedTime >= 3 * VipConstants.DAY && ConnectivityHelper.getInstance().isUnmeteredNetworkConnected()) {
                new CloudControlRequestHelper(this).execRequestSync();
            } else if (current - lastRequestSucceedTime >= 7 * VipConstants.DAY && ConnectivityHelper.getInstance().isNetworkConnected()) {
                new CloudControlRequestHelper(this).execRequestSync();
            }
        }
        if (!PrivacyAgreementUtils.isCloudServiceAgreementEnable(this)) {
            CloudPrivacyAgreementDeniedReceiver.onCloudPrivacyAgreementDenied(this);
        }
        SmartVideoGuideHelper.init();
    }

    private void setupLeakCanary() {
    }

    public static Context sGetAndroidContext() {
        return sContext;
    }

    public static boolean isEditorProcess() {
        return "com.miui.gallery:photo_editor".equals(C0003ProcessUtils.getProcessNameByPid(Process.myPid()));
    }
}
