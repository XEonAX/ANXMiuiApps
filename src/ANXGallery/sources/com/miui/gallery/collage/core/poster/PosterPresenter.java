package com.miui.gallery.collage.core.poster;

import android.content.Context;
import android.util.SparseArray;
import com.miui.gallery.R;
import com.miui.gallery.collage.BitmapManager;
import com.miui.gallery.collage.app.common.CollageMenuFragment;
import com.miui.gallery.collage.app.common.CollageRenderFragment;
import com.miui.gallery.collage.app.common.IDataLoader;
import com.miui.gallery.collage.app.poster.PosterMenuFragment;
import com.miui.gallery.collage.core.CollagePresenter;
import com.miui.gallery.collage.core.CollagePresenter.DataLoadListener;
import com.miui.gallery.collage.core.RenderEngine;
import com.miui.gallery.collage.core.layout.LayoutModel;
import java.util.List;

public class PosterPresenter extends CollagePresenter {
    private SparseArray<List<LayoutModel>> mPosterLayoutSparseArray = new SparseArray();
    private SparseArray<List<PosterModel>> mPosterSparseArray = new SparseArray();

    protected void onDetach() {
    }

    public int getTitle() {
        return R.string.collage_title_poster;
    }

    public String getMenuFragmentTag() {
        return "fragment_poster:menu";
    }

    public String getRenderFragmentTag() {
        return "fragment_poster:render";
    }

    protected CollageMenuFragment onCreateMenuFragment() {
        return new PosterMenuFragment();
    }

    protected CollageRenderFragment onCreateRenderFragment() {
        return new PosterFragment();
    }

    protected RenderEngine createEngine(Context context, BitmapManager bitmapManager) {
        return new PosterRenderEngine(context, bitmapManager);
    }

    protected boolean hasResourceData() {
        return (this.mPosterLayoutSparseArray.size() == 0 || this.mPosterSparseArray.size() == 0) ? false : true;
    }

    public IDataLoader onCreateDataLoader(final DataLoadListener dataLoadListener) {
        return new PosterDataLoader(this.mViewInterface.getContext().getAssets(), new DataLoadListener() {
            public void onDataLoad(SparseArray<List<LayoutModel>> layoutForPoster, SparseArray<List<PosterModel>> poster) {
                int i;
                int key;
                PosterPresenter.this.mPosterLayoutSparseArray.clear();
                for (i = 0; i < layoutForPoster.size(); i++) {
                    key = layoutForPoster.keyAt(i);
                    PosterPresenter.this.mPosterLayoutSparseArray.put(key, layoutForPoster.get(key));
                }
                PosterPresenter.this.mPosterSparseArray.clear();
                for (i = 0; i < poster.size(); i++) {
                    key = poster.keyAt(i);
                    PosterPresenter.this.mPosterSparseArray.put(key, poster.get(key));
                }
                if (dataLoadListener != null) {
                    dataLoadListener.onDataLoad();
                }
            }
        });
    }

    public List<PosterModel> getPosters() {
        return (List) this.mPosterSparseArray.get(this.mImageCount);
    }

    public LayoutModel getPosterCollageLayout(PosterModel posterModel) {
        int layoutIndex = getPosterLayoutIndex(posterModel, this.mImageCount);
        if (layoutIndex != -1) {
            return (LayoutModel) ((List) this.mPosterLayoutSparseArray.get(this.mImageCount)).get(layoutIndex);
        }
        return null;
    }

    private static int getPosterLayoutIndex(PosterModel posterModel, int size) {
        for (int index : posterModel.collageModels) {
            if (index / 10 == size) {
                return index % 10;
            }
        }
        return -1;
    }
}
