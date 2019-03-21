package com.miui.gallery.collage.core.layout;

import android.content.Context;
import android.util.SparseArray;
import com.miui.gallery.R;
import com.miui.gallery.collage.BitmapManager;
import com.miui.gallery.collage.app.common.CollageMenuFragment;
import com.miui.gallery.collage.app.common.CollageRenderFragment;
import com.miui.gallery.collage.app.common.IDataLoader;
import com.miui.gallery.collage.app.layout.LayoutMenuFragment;
import com.miui.gallery.collage.core.CollagePresenter;
import com.miui.gallery.collage.core.CollagePresenter.DataLoadListener;
import com.miui.gallery.collage.core.RenderEngine;
import java.util.List;

public class LayoutPresenter extends CollagePresenter {
    private SparseArray<List<LayoutModel>> mLayoutSparseArray = new SparseArray();

    protected void onDetach() {
    }

    public int getTitle() {
        return R.string.collage_title_layout;
    }

    public boolean supportImageSize(int imageCount) {
        return imageCount > 1;
    }

    public String getMenuFragmentTag() {
        return "fragment_layout:menu";
    }

    public String getRenderFragmentTag() {
        return "fragment_layout:render";
    }

    protected CollageMenuFragment onCreateMenuFragment() {
        return new LayoutMenuFragment();
    }

    protected CollageRenderFragment onCreateRenderFragment() {
        return new LayoutFragment();
    }

    protected RenderEngine createEngine(Context context, BitmapManager bitmapManager) {
        return new LayoutRenderEngine(context, bitmapManager);
    }

    protected boolean hasResourceData() {
        return this.mLayoutSparseArray.size() != 0;
    }

    protected IDataLoader onCreateDataLoader(final DataLoadListener dataLoadListener) {
        return new LayoutDataLoader(this.mViewInterface.getContext().getAssets(), new DataLoadListener() {
            public void onDataLoad(SparseArray<List<LayoutModel>> layout) {
                LayoutPresenter.this.mLayoutSparseArray.clear();
                for (int i = 0; i < layout.size(); i++) {
                    int key = layout.keyAt(i);
                    LayoutPresenter.this.mLayoutSparseArray.put(key, layout.get(key));
                }
                if (dataLoadListener != null) {
                    dataLoadListener.onDataLoad();
                }
            }
        });
    }

    public List<LayoutModel> getLayouts(int imageSize) {
        return (List) this.mLayoutSparseArray.get(imageSize);
    }
}
