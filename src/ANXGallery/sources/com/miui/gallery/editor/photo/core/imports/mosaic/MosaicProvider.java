package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractMosaicFragment;
import com.miui.gallery.editor.photo.core.common.model.MosaicData;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

class MosaicProvider extends SdkProvider<MosaicData, AbstractMosaicFragment> {
    private static final String PATH_MOSAIC = ("mosaic" + SEPARATOR + "entities");
    public static final String PEN_MASK_PATH = ("mosaic" + SEPARATOR + "pen" + SEPARATOR + "pen_mask.png");
    private static final String SEPARATOR = File.separator;
    private List<MosaicData> mMosaicDataList = new ArrayList();

    private interface ResourceListener {
        void onLoadFinish(List<MosaicGLEntity> list);
    }

    private static class LoadMosaicTask extends AsyncTask<Application, Void, List<MosaicGLEntity>> {
        private AssetManager mAssetManager;
        private ResourceListener mResourceListener;

        LoadMosaicTask(ResourceListener resourceListener, AssetManager assetManager) {
            this.mResourceListener = resourceListener;
            this.mAssetManager = assetManager;
        }

        protected List<MosaicGLEntity> doInBackground(Application... applications) {
            AssetManager assetManager = this.mAssetManager;
            List<MosaicGLEntity> mosaicEntityList = new ArrayList();
            try {
                String[] mosaics = assetManager.list(MosaicProvider.PATH_MOSAIC);
                for (int i = 0; i < mosaics.length; i++) {
                    String folderName = mosaics[i];
                    String configPath = MosaicProvider.getMosaicConfigPath(folderName);
                    String iconPath = MosaicProvider.getMosaicIconPath(folderName);
                    MosaicConfig mosaicConfig = (MosaicConfig) GsonUtils.fromJson(MosaicProvider.loadResourceFileString(assetManager, configPath), MosaicConfig.class);
                    MosaicGLEntity mosaicEntity = null;
                    switch (mosaicConfig.type) {
                        case ORIGIN:
                            mosaicEntity = new MosaicGLOriginEntity((short) i, folderName, iconPath);
                            break;
                        case RESOURCE:
                            mosaicEntity = new MosaicGLResourceEntity((short) i, folderName, iconPath, MosaicProvider.getMosaicReourcePath(folderName), mosaicConfig.tileMode);
                            break;
                        case EFFECT:
                            mosaicEntity = new MosaicGLEffectEntity((short) i, folderName, iconPath, mosaicConfig.effectType);
                            break;
                        default:
                            break;
                    }
                    mosaicEntityList.add(mosaicEntity);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return mosaicEntityList;
        }

        protected void onPostExecute(List<MosaicGLEntity> mosaicEntities) {
            if (this.mResourceListener != null) {
                this.mResourceListener.onLoadFinish(mosaicEntities);
            }
        }
    }

    static {
        SdkManager.INSTANCE.register(new MosaicProvider());
    }

    private MosaicProvider() {
        super(Effect.MOSAIC);
    }

    public List<? extends MosaicData> list() {
        return this.mMosaicDataList;
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        initialize();
    }

    protected AbstractMosaicFragment onCreateFragment() {
        return new MosaicFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new MosaicEngine();
    }

    private void initialize() {
        new LoadMosaicTask(new ResourceListener() {
            public void onLoadFinish(List<MosaicGLEntity> mosaicEntities) {
                MosaicProvider.this.mMosaicDataList.clear();
                MosaicProvider.this.mMosaicDataList.addAll(mosaicEntities);
                MosaicProvider.this.notifyInitializeFinish();
            }
        }, getApplicationContext().getAssets()).execute(new Application[]{getApplicationContext()});
    }

    private static String getMosaicConfigPath(String folderName) {
        return PATH_MOSAIC + SEPARATOR + folderName + SEPARATOR + "config.json";
    }

    private static String getMosaicIconPath(String folderName) {
        return "assets://" + PATH_MOSAIC + SEPARATOR + folderName + SEPARATOR + "icon.png";
    }

    private static String getMosaicReourcePath(String folderName) {
        return "assets://" + PATH_MOSAIC + SEPARATOR + folderName + SEPARATOR + "resource.png";
    }

    static String loadResourceFileString(AssetManager assetManager, String name) {
        String result = null;
        InputStream inputStream = null;
        try {
            inputStream = assetManager.open(name);
            result = IoUtils.readInputStreamToString("MosaicProvider", inputStream);
        } catch (Throwable e) {
            Log.e("MosaicProvider", e);
        } finally {
            IoUtils.close(inputStream);
        }
        return result;
    }
}
