package com.miui.gallery.collage.core.poster;

import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.util.SparseArray;
import com.google.gson.Gson;
import com.google.gson.JsonParser;
import com.miui.gallery.collage.CollageUtils;
import com.miui.gallery.collage.app.common.IDataLoader;
import com.miui.gallery.collage.core.layout.LayoutModel;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

class PosterDataLoader implements IDataLoader {
    private static final String PATH_POSTER = ("collage" + SEPARATOR + "poster");
    public static final String PATH_POSTER_LAYOUT = (PATH_POSTER + SEPARATOR + "layout");
    public static final String PATH_POSTER_MODE = (PATH_POSTER + SEPARATOR + "mode");
    private static final String SEPARATOR = File.separator;
    private AssetManager mAssetManager;
    private DataLoadListener mDataLoadListener;
    private AsyncTask mTask;

    interface DataLoadListener {
        void onDataLoad(SparseArray<List<LayoutModel>> sparseArray, SparseArray<List<PosterModel>> sparseArray2);
    }

    private static class LoadResourceTask extends AsyncTask<AssetManager, Void, Void> {
        private DataLoadListener mDataLoadListener;
        private SparseArray<List<LayoutModel>> mPosterLayoutSparseArray = new SparseArray();
        private SparseArray<List<PosterModel>> mPosterSparseArray = new SparseArray();

        public LoadResourceTask(DataLoadListener dataLoadListener) {
            this.mDataLoadListener = dataLoadListener;
        }

        protected Void doInBackground(AssetManager... assetManagers) {
            Gson gson = CollageUtils.generateCustomGson();
            AssetManager assetManager = assetManagers[0];
            try {
                JsonParser jsonParser = new JsonParser();
                for (String name : assetManager.list(PosterDataLoader.PATH_POSTER_LAYOUT)) {
                    if (isCancelled()) {
                        return null;
                    }
                    PosterDataLoader.addLayoutModel(this.mPosterLayoutSparseArray, PosterDataLoader.generatePosterLayoutModelByName(assetManager, gson, name));
                }
                for (String name2 : assetManager.list(PosterDataLoader.PATH_POSTER_MODE)) {
                    if (isCancelled()) {
                        return null;
                    }
                    long a = System.currentTimeMillis();
                    PosterDataLoader.addPosterModel(this.mPosterSparseArray, PosterDataLoader.generatePosterModelByName(assetManager, gson, jsonParser, name2));
                    Log.d("PosterDataLoader", "gson parse posterModel %s coast %d", name2, Long.valueOf(System.currentTimeMillis() - a));
                }
            } catch (Throwable e) {
                Log.d("PosterDataLoader", e);
            }
            return null;
        }

        protected void onPostExecute(Void aVoid) {
            if (this.mDataLoadListener != null) {
                this.mDataLoadListener.onDataLoad(this.mPosterLayoutSparseArray, this.mPosterSparseArray);
            }
        }
    }

    public PosterDataLoader(AssetManager assetManager, DataLoadListener dataLoadListener) {
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

    private static void addLayoutModel(SparseArray<List<LayoutModel>> sparseArray, LayoutModel layoutModel) {
        int size = layoutModel.size;
        List<LayoutModel> layoutModelList = (List) sparseArray.get(size);
        if (layoutModelList == null) {
            layoutModelList = new ArrayList();
            sparseArray.put(size, layoutModelList);
        }
        layoutModelList.add(layoutModel);
    }

    private static void addPosterModel(SparseArray<List<PosterModel>> sparseArray, PosterModel posterModel) {
        for (int size : posterModel.collageModels) {
            int size2 = size2 / 10;
            List<PosterModel> posterModelList = (List) sparseArray.get(size2);
            if (posterModelList == null) {
                posterModelList = new ArrayList();
                sparseArray.put(size2, posterModelList);
            }
            posterModelList.add(posterModel);
        }
    }

    public static LayoutModel generatePosterLayoutModelByName(AssetManager assetManager, Gson gson, String name) {
        LayoutModel layoutModel = (LayoutModel) gson.fromJson(CollageUtils.loadResourceFileString(assetManager, PATH_POSTER_LAYOUT + SEPARATOR + name), LayoutModel.class);
        layoutModel.name = name;
        return layoutModel;
    }

    public static PosterModel generatePosterModelByName(AssetManager assetManager, Gson gson, JsonParser jsonParser, String name) {
        int length;
        int i = 0;
        String relativePath = PATH_POSTER_MODE + SEPARATOR + name;
        PosterModel posterModel = (PosterModel) gson.fromJson(CollageUtils.loadResourceFileString(assetManager, relativePath + SEPARATOR + "main.json"), PosterModel.class);
        posterModel.relativePath = relativePath;
        posterModel.name = name;
        ImageElementModel[] imageElementModels = posterModel.imageElementModels;
        if (imageElementModels != null) {
            for (ImageElementModel imageElementModel : imageElementModels) {
                imageElementModel.relativePath = relativePath;
            }
        }
        CollagePositionModel[] collagePositionModels = posterModel.collagePositions;
        if (collagePositionModels != null) {
            length = collagePositionModels.length;
            while (i < length) {
                collagePositionModels[i].relativePath = relativePath;
                i++;
            }
        }
        return posterModel;
    }
}
