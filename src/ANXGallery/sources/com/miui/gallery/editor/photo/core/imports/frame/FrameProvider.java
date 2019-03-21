package com.miui.gallery.editor.photo.core.imports.frame;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractFrameFragment;
import com.miui.gallery.editor.photo.core.common.model.FrameData;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

class FrameProvider extends SdkProvider<FrameData, AbstractFrameFragment> {
    private static final String SEPARATOR = File.separator;
    private List<FrameData> mFrameData;

    private interface ResourceListener {
        void onLoadFinish(List<FrameData> list);
    }

    private static class LoadResourceTask extends AsyncTask<Application, Void, List<FrameData>> {
        private ResourceListener mResourceListener;

        public LoadResourceTask(ResourceListener resourceListener) {
            this.mResourceListener = resourceListener;
        }

        protected List<FrameData> doInBackground(Application... applications) {
            AssetManager assetManager = applications[0].getAssets();
            List<FrameData> frameDataList = new ArrayList();
            try {
                String[] configs = assetManager.list("frame");
                for (int i = 0; i < configs.length; i++) {
                    FrameConfig frameConfig = (FrameConfig) GsonUtils.fromJson(FrameProvider.loadResourceFileString(assetManager, String.format("%s%s%s", new Object[]{"frame", FrameProvider.SEPARATOR, configs[i]})), FrameConfig.class);
                    frameDataList.add(new FrameData((short) i, configs[i], frameConfig.width, frameConfig.height, frameConfig.iconRatio));
                }
            } catch (Object e) {
                Log.e("FrameProvider", "FrameProvider load resource error", e);
            }
            return frameDataList;
        }

        protected void onPostExecute(List<FrameData> frameDataList) {
            if (this.mResourceListener != null) {
                this.mResourceListener.onLoadFinish(frameDataList);
            }
        }
    }

    static {
        SdkManager.INSTANCE.register(new FrameProvider());
    }

    private FrameProvider() {
        super(Effect.FRAME);
    }

    protected void onActivityCreate() {
        initialize();
    }

    protected AbstractFrameFragment onCreateFragment() {
        return new FrameFragment();
    }

    private void initialize() {
        new LoadResourceTask(new ResourceListener() {
            public void onLoadFinish(List<FrameData> frameDataList) {
                FrameProvider.this.mFrameData = frameDataList;
                FrameProvider.this.notifyInitializeFinish();
            }
        }).execute(new Application[]{getApplicationContext()});
    }

    public List<? extends FrameData> list() {
        return this.mFrameData;
    }

    public RenderEngine createEngine(Context context) {
        return new FrameEngine();
    }

    static String loadResourceFileString(AssetManager assetManager, String name) {
        String result = null;
        InputStream inputStream = null;
        try {
            inputStream = assetManager.open(name);
            result = IoUtils.readInputStreamToString("FrameProvider", inputStream);
        } catch (Throwable e) {
            Log.e("FrameProvider", e);
        } finally {
            IoUtils.close(inputStream);
        }
        return result;
    }
}
