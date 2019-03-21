package com.miui.gallery.collage.core.stitching;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.collage.BitmapManager;
import com.miui.gallery.collage.app.common.CollageMenuFragment;
import com.miui.gallery.collage.app.common.CollageRenderFragment;
import com.miui.gallery.collage.app.common.IDataLoader;
import com.miui.gallery.collage.app.stitching.StitchingMenuFragment;
import com.miui.gallery.collage.core.CollagePresenter;
import com.miui.gallery.collage.core.CollagePresenter.DataLoadListener;
import com.miui.gallery.collage.core.RenderEngine;
import java.util.ArrayList;
import java.util.List;

public class StitchingPresenter extends CollagePresenter {
    private List<StitchingModel> mStitchingModelList = new ArrayList();

    protected void onDetach() {
    }

    public int getTitle() {
        return R.string.collage_title_stitching;
    }

    public boolean supportImageSize(int imageCount) {
        return imageCount > 1;
    }

    public String getMenuFragmentTag() {
        return "fragment_stitching:menu";
    }

    public String getRenderFragmentTag() {
        return "fragment_stitching:render";
    }

    protected CollageMenuFragment onCreateMenuFragment() {
        return new StitchingMenuFragment();
    }

    protected CollageRenderFragment onCreateRenderFragment() {
        return new StitchingFragment();
    }

    protected RenderEngine createEngine(Context context, BitmapManager bitmapManager) {
        return new StitchingEngine(context, bitmapManager);
    }

    protected boolean hasResourceData() {
        return !this.mStitchingModelList.isEmpty();
    }

    protected IDataLoader onCreateDataLoader(final DataLoadListener dataLoadListener) {
        return new StitchingDataLoader(this.mViewInterface.getContext().getAssets(), new DataLoadListener() {
            public void onDataLoad(List<StitchingModel> stitchingModels) {
                StitchingPresenter.this.mStitchingModelList.clear();
                StitchingPresenter.this.mStitchingModelList.addAll(stitchingModels);
                if (dataLoadListener != null) {
                    dataLoadListener.onDataLoad();
                }
            }
        });
    }

    public List<StitchingModel> getStitching() {
        return this.mStitchingModelList;
    }
}
