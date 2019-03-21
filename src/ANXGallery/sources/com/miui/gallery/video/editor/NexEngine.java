package com.miui.gallery.video.editor;

import android.content.Context;
import android.util.Log;
import com.nexstreaming.nexeditorsdk.nexApplicationConfig;
import com.nexstreaming.nexeditorsdk.nexConfig;
import com.nexstreaming.nexeditorsdk.nexEngine;

public class NexEngine {
    private static nexEngine mEngine;
    private static boolean mIsInit = false;
    private static Boolean mIsInitFinished = Boolean.valueOf(false);

    public static synchronized nexEngine getEngine(Context context) {
        nexEngine nexengine;
        synchronized (NexEngine.class) {
            if (mIsInit) {
                if (mEngine == null) {
                    nexEngine.setLoadListAsync(true);
                    mEngine = new nexEngine(context.getApplicationContext());
                }
                nexengine = mEngine;
            } else {
                throw new IllegalStateException("call init first");
            }
        }
        return nexengine;
    }

    public static void init(Context context, int aspectMode, final Runnable callBack) {
        if (mIsInit) {
            callBack.run();
            return;
        }
        nexApplicationConfig.setAspectMode(aspectMode);
        Context AppContext = context.getApplicationContext();
        nexApplicationConfig.createApp(AppContext);
        nexConfig.set(24883200, 4, 250, false, 8294400);
        nexApplicationConfig.init(AppContext, "MiuiGallery");
        mIsInit = true;
        nexApplicationConfig.waitForLoading(context, new Runnable() {
            public void run() {
                NexEngine.mIsInitFinished = Boolean.valueOf(true);
                callBack.run();
            }
        });
    }

    public static void releaseEngine() {
        if (mIsInitFinished.booleanValue()) {
            Log.d("NexEngine", "releaseEngine");
            mEngine = null;
            try {
                nexApplicationConfig.releaseApp();
            } catch (Exception e) {
                e.printStackTrace();
            }
            mIsInit = false;
            mIsInitFinished = Boolean.valueOf(false);
        }
    }
}
