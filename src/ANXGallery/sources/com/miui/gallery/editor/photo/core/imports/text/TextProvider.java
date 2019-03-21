package com.miui.gallery.editor.photo.core.imports.text;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.TextData;
import com.miui.gallery.editor.photo.core.common.provider.AbstractTextProvider;
import com.miui.gallery.editor.photo.core.imports.text.dialog.BaseDialogModel;
import com.miui.gallery.editor.photo.core.imports.text.dialog.DialogManager;
import com.miui.gallery.editor.photo.core.imports.text.watermark.WatermarkInfo;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.util.GsonUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class TextProvider extends AbstractTextProvider {
    private DialogManager mDialogManager;
    private List<TextData> mTextBubbleList;
    private List<TextData> mTextWaternarkList;

    private interface ResourceListener {
        void onLoadFinish(List<WatermarkInfo> list);
    }

    private static class LoadWatermarkTask extends AsyncTask<Application, Void, List<WatermarkInfo>> {
        private AssetManager mAssetManager;
        private ResourceListener mResourceListener;

        LoadWatermarkTask(ResourceListener resourceListener, AssetManager assetManager) {
            this.mResourceListener = resourceListener;
            this.mAssetManager = assetManager;
        }

        protected List<WatermarkInfo> doInBackground(Application... applications) {
            AssetManager assetManager = this.mAssetManager;
            List<WatermarkInfo> watermarkInfoList = new ArrayList();
            try {
                String[] watermarks = assetManager.list("watermark");
                for (String folderName : watermarks) {
                    WatermarkInfo watermarkInfo = (WatermarkInfo) GsonUtils.fromJson(IoUtils.loadAssetFileString(assetManager, getConfigPath(folderName)), WatermarkInfo.class);
                    watermarkInfo.icon = getAssetFilePath(folderName, watermarkInfo.icon);
                    watermarkInfo.bgPost = getAssetFilePath(folderName, watermarkInfo.bgPost);
                    watermarkInfoList.add(watermarkInfo);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return watermarkInfoList;
        }

        protected void onPostExecute(List<WatermarkInfo> mosaicEntities) {
            if (this.mResourceListener != null) {
                this.mResourceListener.onLoadFinish(mosaicEntities);
            }
        }

        private static String getConfigPath(String folderName) {
            return "watermark" + File.separator + folderName + File.separator + "config.json";
        }

        private static String getAssetFilePath(String folderName, String fileName) {
            if (TextUtils.isEmpty(fileName)) {
                return null;
            }
            return "assets://watermark" + File.separator + folderName + File.separator + fileName;
        }
    }

    protected TextProvider() {
        super(Effect.TEXT);
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        initialize();
    }

    public List<TextData> list() {
        return this.mTextBubbleList;
    }

    protected AbstractEffectFragment onCreateFragment() {
        return new TextFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new TextEngine();
    }

    private void initialize() {
        this.mDialogManager = new DialogManager();
        this.mTextBubbleList = new ArrayList();
        List<BaseDialogModel> dialogModelList = this.mDialogManager.getDialogModelList();
        for (int i = 0; i < dialogModelList.size(); i++) {
            BaseDialogModel baseDialogModel = (BaseDialogModel) dialogModelList.get(i);
            this.mTextBubbleList.add(new TextConfig((short) 0, baseDialogModel.name, baseDialogModel));
        }
        new LoadWatermarkTask(new ResourceListener() {
            public void onLoadFinish(List<WatermarkInfo> watermarkInfos) {
                TextProvider.this.mTextWaternarkList = new ArrayList();
                for (WatermarkInfo watermarkInfo : watermarkInfos) {
                    TextProvider.this.mTextWaternarkList.add(new TextConfig((short) 0, watermarkInfo));
                }
                TextProvider.this.notifyInitializeFinish();
            }
        }, getApplicationContext().getAssets()).execute(new Application[]{getApplicationContext()});
    }

    static {
        SdkManager.INSTANCE.register(new TextProvider());
    }

    public List<TextData> listWatermark() {
        return this.mTextWaternarkList;
    }
}
