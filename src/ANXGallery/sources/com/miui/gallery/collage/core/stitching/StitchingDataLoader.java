package com.miui.gallery.collage.core.stitching;

import android.content.res.AssetManager;
import android.os.AsyncTask;
import com.google.gson.Gson;
import com.miui.gallery.collage.CollageUtils;
import com.miui.gallery.collage.app.common.IDataLoader;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

class StitchingDataLoader implements IDataLoader {
    public static final String PATH_STITCHING = ("collage" + SEPARATOR + "stitching");
    private static final String SEPARATOR = File.separator;
    private AssetManager mAssetManager;
    private DataLoadListener mDataLoadListener;
    private AsyncTask mTask;

    interface DataLoadListener {
        void onDataLoad(List<StitchingModel> list);
    }

    private static class LoadResourceTask extends AsyncTask<AssetManager, Void, Void> {
        private DataLoadListener mDataLoadListener;
        private List<StitchingModel> mStitchingModelList;

        private LoadResourceTask(DataLoadListener dataLoadListener) {
            this.mDataLoadListener = dataLoadListener;
        }

        protected Void doInBackground(AssetManager... assetManagers) {
            int i = 0;
            this.mStitchingModelList = new ArrayList();
            Gson gson = CollageUtils.generateCustomGson();
            AssetManager assetManager = assetManagers[0];
            try {
                String[] stitchingList = assetManager.list(StitchingDataLoader.PATH_STITCHING);
                int length = stitchingList.length;
                while (i < length) {
                    String stitchingName = stitchingList[i];
                    if (isCancelled()) {
                        break;
                    }
                    this.mStitchingModelList.add(StitchingDataLoader.generateStitchingModelByName(assetManager, gson, stitchingName));
                    i++;
                }
            } catch (Throwable e) {
                Log.d("StitchingDataLoader", e);
            }
            return null;
        }

        protected void onPostExecute(Void aVoid) {
            if (this.mDataLoadListener != null) {
                this.mDataLoadListener.onDataLoad(this.mStitchingModelList);
            }
        }
    }

    public StitchingDataLoader(AssetManager assetManager, DataLoadListener dataLoadListener) {
        this.mAssetManager = assetManager;
        this.mDataLoadListener = dataLoadListener;
    }

    public void loadData() {
        this.mTask = new LoadResourceTask(this.mDataLoadListener).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new AssetManager[]{this.mAssetManager});
    }

    public void cancel() {
        if (this.mTask != null) {
            this.mTask.cancel(false);
        }
    }

    private static StitchingModel generateStitchingModelByName(AssetManager assetManager, Gson gson, String name) {
        String relativePath = PATH_STITCHING + SEPARATOR + name;
        StitchingModel stitchingModel = (StitchingModel) gson.fromJson(CollageUtils.loadResourceFileString(assetManager, relativePath + SEPARATOR + "main.json"), StitchingModel.class);
        stitchingModel.relativePath = relativePath;
        stitchingModel.name = name;
        return stitchingModel;
    }
}
