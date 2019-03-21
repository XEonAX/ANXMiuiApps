package com.miui.gallery.collage.core.layout;

import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.util.SparseArray;
import com.google.gson.Gson;
import com.miui.gallery.collage.CollageUtils;
import com.miui.gallery.collage.app.common.IDataLoader;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

class LayoutDataLoader implements IDataLoader {
    public static final String PATH_LAYOUT = ("collage" + SEPARATOR + "layout");
    private static final String SEPARATOR = File.separator;
    private AssetManager mAssetManager;
    private DataLoadListener mDataLoadListener;
    private AsyncTask mTask;

    interface DataLoadListener {
        void onDataLoad(SparseArray<List<LayoutModel>> sparseArray);
    }

    private static class LoadResourceTask extends AsyncTask<AssetManager, Void, Void> {
        private DataLoadListener mDataLoadListener;
        private SparseArray<List<LayoutModel>> mLayoutSparseArray = new SparseArray();

        public LoadResourceTask(DataLoadListener dataLoadListener) {
            this.mDataLoadListener = dataLoadListener;
        }

        protected Void doInBackground(AssetManager... assetManagers) {
            int i = 0;
            Gson gson = CollageUtils.generateCustomGson();
            AssetManager assetManager = assetManagers[0];
            try {
                String[] layoutList = assetManager.list(LayoutDataLoader.PATH_LAYOUT);
                int length = layoutList.length;
                while (i < length) {
                    String name = layoutList[i];
                    if (isCancelled()) {
                        break;
                    }
                    LayoutDataLoader.addLayoutModel(this.mLayoutSparseArray, LayoutDataLoader.generateLayoutModelByName(assetManager, gson, name));
                    i++;
                }
            } catch (Throwable e) {
                Log.d("LayoutDataLoader", e);
            }
            return null;
        }

        protected void onPostExecute(Void aVoid) {
            if (this.mDataLoadListener != null) {
                this.mDataLoadListener.onDataLoad(this.mLayoutSparseArray);
            }
        }
    }

    public LayoutDataLoader(AssetManager assetManager, DataLoadListener dataLoadListener) {
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

    public static LayoutModel generateLayoutModelByName(AssetManager assetManager, Gson gson, String name) {
        LayoutModel layoutModel = (LayoutModel) gson.fromJson(CollageUtils.loadResourceFileString(assetManager, PATH_LAYOUT + SEPARATOR + name), LayoutModel.class);
        layoutModel.name = name;
        return layoutModel;
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
}
