package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.media.MediaCodecList;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.security.b;
import com.nexstreaming.app.common.nexasset.assetpackage.security.provider.BasicEncryptionProvider;
import com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.Event;
import com.nexstreaming.app.common.task.Task.OnTaskEventListener;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.kminternal.kinemaster.config.NexEditorDeviceProfile;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.kminternal.kinemaster.mediainfo.MediaInfo;
import com.nexstreaming.kminternal.nexvideoeditor.NexThemeView;
import java.io.File;
import java.io.IOException;
import java.util.Map.Entry;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class nexApplicationConfig {
    private static long AppAssetPackageVersionCode = BuildConfig.BUILD_DATE;
    private static a KMSingle = null;
    private static final int SDK_VERSION_DevCode = 13;
    private static final int SDK_VERSION_Major = 2;
    private static final int SDK_VERSION_Minor = 0;
    private static final int SDK_VERSION_Patch = 13;
    private static String TAG = "nexApplicationConfig";
    private static nexAspectProfile aspectProfile = nexAspectProfile.ar16v9;
    private static String default_letterbox_effect = letterbox_effect_black;
    public static final int kAspectRatio_Mode_16v9 = 1;
    public static final int kAspectRatio_Mode_1v1 = 2;
    public static final int kAspectRatio_Mode_1v2 = 5;
    public static final int kAspectRatio_Mode_2v1 = 4;
    public static final int kAspectRatio_Mode_3v4 = 7;
    public static final int kAspectRatio_Mode_4v3 = 6;
    public static final int kAspectRatio_Mode_9v16 = 3;
    public static final int kAspectRatio_Mode_free = 0;
    public static final int kOverlayCoordinateMode_ScreenDimention = 0;
    public static final int kOverlayCoordinateMode_Stretching = 1;
    public static final int kScreenMode_horizonDual = 1;
    public static final int kScreenMode_normal = 0;
    public static String letterbox_effect_black = "black";
    public static String letterbox_effect_blur10 = "com.nexstreaming.editor.blurall range.f_block_size 10.0";
    private static String pendingDevAssetLoadError = null;
    private static boolean pendingDevAssetNotification = false;
    private static int sAspectRatioMode = 1;
    private static final Executor sInitAssetDBThreadPool = Executors.newSingleThreadExecutor();
    private static int sOverlayCoordinateMode = 0;
    private static int sScreenMode = 0;
    private static Task s_asyncInitDBTask;
    private static b[] securityProvider = null;

    public enum APILevel {
        UnLimited(0),
        OverlayImageLimited(1),
        OverlayVideoLimited(2),
        OverlayAnimateLimited(3);
        
        private final int internalValue;

        private APILevel(int i) {
            this.internalValue = i;
        }

        int getValue() {
            return this.internalValue;
        }

        public static APILevel fromValue(int i) {
            for (APILevel aPILevel : values()) {
                if (aPILevel.getValue() == i) {
                    return aPILevel;
                }
            }
            return null;
        }
    }

    @Deprecated
    public static abstract class OnEffectLoadListener {
        public abstract void onEffectLoad(String str, int i);

        public abstract void onEffectLoadComplete();

        public abstract void onEffectPriorityLoadComplete();
    }

    public static synchronized void createApp(Context context) {
        synchronized (nexApplicationConfig.class) {
            Log.d(TAG, "call createApp");
            if (KMSingle == null) {
                KMSingle = new a(context);
                new Thread(new Runnable() {
                    public void run() {
                        MediaCodecList.getCodecCount();
                    }
                }).start();
            }
        }
    }

    public static void init(Context context, String str) {
        init(context, str, null, null);
    }

    public static void init(Context context, String str, String str2) {
        init(context, str, null, str2);
    }

    public static void init(Context context, String str, File file, String str2) {
        init(context, null, str, file, str2);
    }

    public static void init(Context context, Context context2, String str, File file, String str2) {
        Log.i(TAG, "KMSDK Version :" + getSDKVersion() + "." + 13);
        AssetLocalInstallDB.getInstance(context);
        EditorGlobal.a(str);
        MediaInfo.a(context);
        if (nexConfig.sConfigProperty[0] != 0) {
            NexEditorDeviceProfile.setAppContext(context, nexConfig.sConfigProperty);
        } else {
            NexEditorDeviceProfile.setAppContext(context, null);
        }
        if (securityProvider == null) {
            com.nexstreaming.app.common.nexasset.assetpackage.security.provider.a aVar = new com.nexstreaming.app.common.nexasset.assetpackage.security.provider.a();
            securityProvider = new b[aVar.a().size()];
            int i = -1;
            for (Entry entry : aVar.a().entrySet()) {
                int i2 = i + 1;
                securityProvider[i2] = new BasicEncryptionProvider((int[]) entry.getKey(), (String[]) entry.getValue());
                if (securityProvider[i2] != null) {
                    AssetPackageReader.a(securityProvider[i2]);
                }
                i = i2;
            }
            Log.d(TAG, "Register " + securityProvider.length + " security provider!");
        }
        if (s_asyncInitDBTask == null) {
            loadInitDB(context, file);
            return;
        }
        new AsyncTask<Context, Void, Void>() {
            /* renamed from: a */
            protected Void doInBackground(Context... contextArr) {
                nexApplicationConfig.loadInitDB(contextArr[0], null);
                return null;
            }

            /* renamed from: a */
            protected void onPostExecute(Void voidR) {
                nexApplicationConfig.s_asyncInitDBTask.signalEvent(Event.COMPLETE);
            }
        }.executeOnExecutor(sInitAssetDBThreadPool, new Context[]{context});
    }

    public static void initMaster(Context context, String str) {
        Log.d(TAG, "initMaster nexEditorSDK Version :" + getSDKVersion() + "." + 13);
        EditorGlobal.a(str);
        MediaInfo.a(context);
        if (nexConfig.sConfigProperty[0] != 0) {
            NexEditorDeviceProfile.setAppContext(context, nexConfig.sConfigProperty);
        } else {
            NexEditorDeviceProfile.setAppContext(context, null);
        }
        Log.d(TAG, "initMaster End");
    }

    public static void initAssetDB(Context context, File file) {
        Log.d(TAG, "initAssetDB start");
        AssetLocalInstallDB.getInstance(context);
        if (securityProvider == null) {
            com.nexstreaming.app.common.nexasset.assetpackage.security.provider.a aVar = new com.nexstreaming.app.common.nexasset.assetpackage.security.provider.a();
            securityProvider = new b[aVar.a().size()];
            int i = -1;
            for (Entry entry : aVar.a().entrySet()) {
                int i2 = i + 1;
                securityProvider[i2] = new BasicEncryptionProvider((int[]) entry.getKey(), (String[]) entry.getValue());
                if (securityProvider[i2] != null) {
                    AssetPackageReader.a(securityProvider[i2]);
                }
                i = i2;
            }
            Log.d(TAG, "Register " + securityProvider.length + " security provider!");
        }
        if (s_asyncInitDBTask == null) {
            loadInitDB(context, file);
        } else {
            new AsyncTask<Context, Void, Void>() {
                /* renamed from: a */
                protected Void doInBackground(Context... contextArr) {
                    nexApplicationConfig.loadInitDB(contextArr[0], null);
                    return null;
                }

                /* renamed from: a */
                protected void onPostExecute(Void voidR) {
                    nexApplicationConfig.s_asyncInitDBTask.signalEvent(Event.COMPLETE);
                }
            }.executeOnExecutor(sInitAssetDBThreadPool, new Context[]{context});
        }
        Log.d(TAG, "initAssetDB End");
    }

    private static void loadInitDB(Context context, File file) {
        try {
            c.a(context).a(context, "kmassets", AppAssetPackageVersionCode);
            if (file != null) {
                try {
                    c.a(context).a(file);
                    pendingDevAssetNotification = c.a(context).b(file);
                } catch (IOException e) {
                    pendingDevAssetLoadError = e.getLocalizedMessage();
                }
            } else {
                c.a(context).a(EditorGlobal.h());
                pendingDevAssetNotification = c.a(context).b(EditorGlobal.h());
            }
            com.nexstreaming.kminternal.kinemaster.editorwrapper.b.a(context);
            nexOverlayPreset.getOverlayPreset(context);
        } catch (Throwable e2) {
            throw new RuntimeException("Cannot read prepackaged assets", e2);
        }
    }

    public static void asyncLoadAssetDB(final Runnable runnable) {
        if (s_asyncInitDBTask == null) {
            s_asyncInitDBTask = new Task();
        }
        if (runnable != null) {
            s_asyncInitDBTask.onComplete(new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    new Handler(Looper.getMainLooper()).post(runnable);
                }
            });
        }
    }

    public static void releaseApp() {
        Log.d(TAG, "call releaseApp");
        if (securityProvider != null) {
            for (b bVar : securityProvider) {
                if (bVar != null) {
                    AssetPackageReader.b(bVar);
                }
            }
            Log.d(TAG, "UnRegister " + securityProvider.length + " security provider!");
            securityProvider = null;
        }
        if (com.nexstreaming.kminternal.kinemaster.editorwrapper.b.c() != null) {
            com.nexstreaming.kminternal.kinemaster.editorwrapper.b.c().a();
        }
        releaseNativeEngine();
    }

    public static void releaseNativeEngine() {
        if (KMSingle != null) {
            KMSingle.d();
        }
    }

    public static void releaseNativeEngine(nexEngine nexengine) {
        if (nexengine != null) {
            nexengine.setEventHandler(null);
            nexengine.clearProject();
            nexengine.removeEditorListener();
        }
        if (KMSingle != null) {
            KMSingle.d();
        }
    }

    public static void waitForLoading(Context context, final Runnable runnable) {
        Log.d(TAG, "call waitForLoading");
        if (s_asyncInitDBTask != null) {
            s_asyncInitDBTask.onComplete(new OnTaskEventListener() {
                public void onTaskEvent(Task task, Event event) {
                    runnable.run();
                }
            });
        } else if (runnable != null) {
            runnable.run();
        }
        Log.d(TAG, "call waitForLoading end");
    }

    @Deprecated
    public static void waitForMinimumLoading(Context context, Runnable runnable) {
        Log.d(TAG, "call waitForMinimumLoading");
        waitForLoading(context, runnable);
    }

    @Deprecated
    public static void setEffectLoadListener(OnEffectLoadListener onEffectLoadListener) {
    }

    public static String getSDKVersion() {
        return String.format("%d.%d.%d", new Object[]{Integer.valueOf(2), Integer.valueOf(0), Integer.valueOf(13)});
    }

    public static String getDevelopString() {
        return "Develop";
    }

    public static void setAspectMode(int i) {
        aspectProfile = nexAspectProfile.getAspectProfile(i);
        if (aspectProfile != null) {
            sAspectRatioMode = i;
            NexThemeView.setAspectRatio(aspectProfile.getAspectRatio());
        }
    }

    public static int getAspectMode() {
        return sAspectRatioMode;
    }

    public static float getAspectRatio() {
        return aspectProfile != null ? aspectProfile.getAspectRatio() : 1.7777778f;
    }

    public static float getAspectRatioInScreenMode() {
        float f = 16.0f;
        float f2 = 9.0f;
        if (aspectProfile != null) {
            f = (float) aspectProfile.getWidth();
            f2 = (float) aspectProfile.getHeight();
        }
        if (sScreenMode == 1) {
            f *= 2.0f;
        }
        Log.d("ScreenMode", "w=" + f + ", h=" + f2);
        return f / f2;
    }

    public static int getAspectRatioMode() {
        return sAspectRatioMode;
    }

    public static void setScreenMode(int i) {
        Log.d("ScreenMode", "setScreenMode=" + i);
        sScreenMode = i;
    }

    public static int getScreenMode() {
        return sScreenMode;
    }

    public static final int getApiLevel() {
        return 0;
    }

    public static final boolean isSupportedApi(APILevel aPILevel) {
        return EditorGlobal.a(aPILevel.getValue());
    }

    public static final void setAppAssetPackageVersionCode(long j) {
        AppAssetPackageVersionCode = j;
    }

    public static final void setAssetStoreRootPath(String str) {
        AssetLocalInstallDB.setAssetStoreRootPath(str);
    }

    public static final void setAssetInstallRootPath(String str) {
        AssetLocalInstallDB.setInstalledAssetPath(str);
    }

    public static void setAspectProfile(nexAspectProfile nexaspectprofile) {
        sAspectRatioMode = nexaspectprofile.getAspectMode();
        aspectProfile = nexaspectprofile;
        NexThemeView.setAspectRatio(aspectProfile.getAspectRatio());
    }

    public static final nexAspectProfile getAspectProfile() {
        return aspectProfile;
    }

    public static void setDefaultLetterboxEffect(String str) {
        default_letterbox_effect = str;
    }

    public static String getDefaultLetterboxEffect() {
        return default_letterbox_effect;
    }

    public static nexExternalModuleManager getExternalModuleManager() {
        return nexExternalModuleManager.getInstance();
    }

    public static void setOverlayCoordinateMode(int i) {
        sOverlayCoordinateMode = i;
    }

    public static int getOverlayCoordinateMode() {
        return sOverlayCoordinateMode;
    }
}
