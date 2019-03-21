package com.miui.gallery.video.editor.manager;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.preference.GalleryPreferences.SmartVideoGuide;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.video.editor.util.ToolsUtil;

public class SmartVideoGuideHelper {
    private static volatile boolean sHasGuided = true;
    private SmartVideoGuideHandleThread mGuideHandleThread;
    private SmartVideoGuideListener mGuideListener;

    public interface SmartVideoGuideListener {
        void showGuideView(String str);
    }

    class SmartVideoGuideHandleThread extends HandlerThread implements Callback {
        Handler mWorkHandler;

        /* synthetic */ SmartVideoGuideHandleThread(SmartVideoGuideHelper x0, AnonymousClass1 x1) {
            this();
        }

        private SmartVideoGuideHandleThread() {
            super("SmartEffectAttentionThread");
            start();
        }

        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    String filePath = msg.obj;
                    int frames = ToolsUtil.getVideoFrameRate(filePath);
                    if (!TextUtils.isEmpty(filePath) && isSupportSmartVideo(frames)) {
                        SmartVideoGuideHelper.this.tryShowGuideView(filePath);
                        break;
                    }
            }
            return false;
        }

        private boolean isSupportSmartVideo(int frames) {
            return frames >= 100 && frames <= BaiduSceneResult.MOTORCYCLE;
        }

        public void handleHighFrameRate(String filePath) {
            if (this.mWorkHandler == null) {
                this.mWorkHandler = new Handler(getLooper(), this);
            }
            Message message = Message.obtain(this.mWorkHandler);
            message.obj = filePath;
            message.what = 0;
            this.mWorkHandler.removeCallbacksAndMessages(null);
            this.mWorkHandler.sendMessage(message);
        }

        public void destroyThread() {
            this.mWorkHandler.removeCallbacksAndMessages(null);
            quit();
        }
    }

    public static void init() {
        if (SmartVideoJudgeManager.isAvailable()) {
            sHasGuided = SmartVideoGuide.hasGuided();
        }
    }

    public void setSmartVideoGuideListener(SmartVideoGuideListener guideListener) {
        this.mGuideListener = guideListener;
    }

    public static boolean hasGuided() {
        return sHasGuided;
    }

    public static void setHasGuided(boolean hasGuided) {
        sHasGuided = hasGuided;
        SmartVideoGuide.setSmartVideoGuided(hasGuided);
    }

    public void release() {
        if (this.mGuideListener != null) {
            this.mGuideListener = null;
        }
        if (this.mGuideHandleThread != null) {
            this.mGuideHandleThread.destroyThread();
        }
    }

    public void handleHighFrameRate(String filePath) {
        if (!TextUtils.isEmpty(filePath)) {
            if (this.mGuideHandleThread == null) {
                this.mGuideHandleThread = new SmartVideoGuideHandleThread(this, null);
            }
            this.mGuideHandleThread.handleHighFrameRate(filePath);
        }
    }

    private void tryShowGuideView(final String filePath) {
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                if (SmartVideoGuideHelper.this.mGuideListener != null) {
                    SmartVideoGuideHelper.this.mGuideListener.showGuideView(filePath);
                }
            }
        });
    }
}
