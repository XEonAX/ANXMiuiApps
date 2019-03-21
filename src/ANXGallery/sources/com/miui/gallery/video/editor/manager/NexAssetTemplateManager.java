package com.miui.gallery.video.editor.manager;

import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.Log;
import com.miui.gallery.video.editor.config.VideoEditorConfig;
import com.miui.gallery.video.editor.util.FileHelper;
import com.nexstreaming.nexeditorsdk.nexApplicationConfig;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.OnInstallPackageListener;
import com.nexstreaming.nexeditorsdk.nexColorEffect;
import com.nexstreaming.nexeditorsdk.nexOverlayPreset;
import com.nexstreaming.nexeditorsdk.nexTemplateManager;
import com.nexstreaming.nexeditorsdk.nexTemplateManager.Template;
import java.util.List;

public class NexAssetTemplateManager {
    private String TAG;
    private String assetInstallRootPath;
    private String assetStoreSubDir;

    public interface ICheckExpiredAssetListener {
        void onFinished(List<Template> list);
    }

    public interface ILoadAssetTemplate {
        void onFail();

        void onSuccess();
    }

    public interface ILoadSmartEffectListener {
        void onFinished(List<Template> list);
    }

    public interface ILoadWaterMarkListener {
        void onFinished(String[] strArr);
    }

    private static class NexTemplateManagerHolder {
        private static final NexAssetTemplateManager INSTANCE = new NexAssetTemplateManager();
    }

    /* synthetic */ NexAssetTemplateManager(AnonymousClass1 x0) {
        this();
    }

    private NexAssetTemplateManager() {
        this.TAG = "NexAssetTemplateManager";
    }

    public static final NexAssetTemplateManager getInstance() {
        return NexTemplateManagerHolder.INSTANCE;
    }

    public void loadSmartEffectTemplateList(final ILoadSmartEffectListener smartEffectListener) {
        if (smartEffectListener != null) {
            initPath();
            final nexTemplateManager mKmTemplateManager = getKmTemplateManager();
            if (mKmTemplateManager != null && smartEffectListener != null) {
                mKmTemplateManager.loadTemplate(new Runnable() {
                    public void run() {
                        smartEffectListener.onFinished(mKmTemplateManager.getTemplates());
                    }
                });
            }
        }
    }

    public void checkExpiredAsset(final ICheckExpiredAssetListener checkExpiredAssetListener) {
        if (checkExpiredAssetListener != null) {
            final nexTemplateManager mKmTemplateManager = getKmTemplateManager();
            if (mKmTemplateManager != null) {
                mKmTemplateManager.loadTemplate(new Runnable() {
                    public void run() {
                        boolean expired = false;
                        List<Template> mTemplates = mKmTemplateManager.getTemplates();
                        for (Template template : mTemplates) {
                            if (template != null) {
                                nexAssetPackageManager.getAssetPackageManager(GalleryApp.sGetAndroidContext());
                                if (nexAssetPackageManager.checkExpireAsset(template.packageInfo())) {
                                    NexAssetTemplateManager.this.uninstallPackageById(template.id());
                                    expired = true;
                                }
                            }
                        }
                        if (expired) {
                            NexAssetTemplateManager.this.getKmTemplateManager().loadTemplate();
                            checkExpiredAssetListener.onFinished(mKmTemplateManager.getTemplates());
                            return;
                        }
                        checkExpiredAssetListener.onFinished(mTemplates);
                    }
                });
            }
        }
    }

    public void loadWaterMarkTemplateList(ILoadWaterMarkListener waterMarkListener) {
        if (waterMarkListener != null) {
            initPath();
            waterMarkListener.onFinished(nexOverlayPreset.getOverlayPreset(GalleryApp.sGetAndroidContext()).getIDs());
        }
    }

    private void initPath() {
        this.assetStoreSubDir = VideoEditorConfig.ASSET_STORE_PATH;
        this.assetInstallRootPath = VideoEditorConfig.ASSET_INSTALL_ROOT_PATH;
        if (FileHelper.createDir(this.assetStoreSubDir)) {
            nexApplicationConfig.setAssetStoreRootPath(this.assetStoreSubDir);
            nexApplicationConfig.setAssetInstallRootPath(this.assetInstallRootPath);
        }
    }

    public void installWaterMarkAssetPackageToSdk(int assetId, ILoadAssetTemplate iLoadAssetTemplate) {
        installProcess(assetId, iLoadAssetTemplate);
    }

    public void installSmartEffectAssetPackageToSdk(int assetId, ILoadAssetTemplate iLoadAssetTemplate) {
        installProcess(assetId, iLoadAssetTemplate);
    }

    private void installProcess(int assetId, final ILoadAssetTemplate iLoadAssetTemplate) {
        if (iLoadAssetTemplate != null) {
            initPath();
            nexAssetPackageManager.getAssetPackageManager(GalleryApp.sGetAndroidContext()).installPackagesAsync(assetId, new OnInstallPackageListener() {
                public void onProgress(int countPackage, int totalPackages, int progressInstalling) {
                }

                public void onCompleted(int event, int assetIdx) {
                    if (event == -1) {
                        iLoadAssetTemplate.onFail();
                        Log.d(NexAssetTemplateManager.this.TAG, "Install a new  asset package to NexEditorSDK Fail! ");
                        return;
                    }
                    iLoadAssetTemplate.onSuccess();
                    nexColorEffect.updatePluginLut();
                    Log.d(NexAssetTemplateManager.this.TAG, "Install a new asset package to NexEditorSDK Success! ");
                }
            });
        }
    }

    public nexTemplateManager getKmTemplateManager() {
        return nexTemplateManager.getTemplateManager(GalleryApp.sGetAndroidContext(), GalleryApp.sGetAndroidContext());
    }

    public void uninstallPackageById(String id) {
        if (!TextUtils.isEmpty(id)) {
            nexAssetPackageManager.getAssetPackageManager(GalleryApp.sGetAndroidContext()).uninstallPackageById(id);
        }
    }
}
