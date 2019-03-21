package com.miui.gallery.collage.core.layout;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.constraint.ConstraintLayout.LayoutParams;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.collage.app.common.AbstractLayoutFragment;
import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.render.CollageRender;
import com.miui.gallery.collage.widget.CollageImageView;
import com.miui.gallery.collage.widget.CollageLayout;
import com.miui.gallery.collage.widget.CollageLayout.BitmapExchangeListener;
import java.util.HashMap;
import java.util.Map;

public class LayoutFragment extends AbstractLayoutFragment {
    private BitmapExchangeListener mBitmapExchangeListener = new BitmapExchangeListener() {
        public void onBitmapExchange(Bitmap from, Bitmap to) {
            CollageImageView fromView = (CollageImageView) LayoutFragment.this.mImageViewMap.get(from);
            LayoutFragment.this.mImageViewMap.put(from, (CollageImageView) LayoutFragment.this.mImageViewMap.get(to));
            LayoutFragment.this.mImageViewMap.put(to, fromView);
        }
    };
    private CollageLayout mCollageLayout;
    private Map<Bitmap, CollageImageView> mImageViewMap = new HashMap();
    private boolean mInit = false;
    private LayoutModel mLayoutModel;
    private boolean mModelReady = false;
    private boolean mViewReady = false;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.collage_layout_render, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        this.mCollageLayout = (CollageLayout) view.findViewById(R.id.collage_layout);
        this.mViewReady = true;
        refreshLayout();
    }

    public void onSelectModel(LayoutModel layoutModel) {
        this.mLayoutModel = layoutModel;
        this.mModelReady = true;
        refreshLayout();
    }

    public void onSelectMargin(float size) {
        this.mCollageLayout.setCollageMargin(size, false);
    }

    public void onSelectRatio(float ratio) {
        ((LayoutParams) this.mCollageLayout.getLayoutParams()).dimensionRatio = String.valueOf(ratio);
        this.mCollageLayout.requestLayout();
    }

    protected void onBitmapsReceive() {
        refreshLayout();
    }

    public void dismissControlWindow() {
        if (this.mCollageLayout != null) {
            this.mCollageLayout.dismissControlWindow();
        }
    }

    public boolean isActivating() {
        return this.mCollageLayout != null && this.mCollageLayout.isActivating();
    }

    public RenderData export() {
        LayoutParams layoutParams = (LayoutParams) this.mCollageLayout.getLayoutParams();
        this.mLayoutModel.ratio = Float.parseFloat(layoutParams.dimensionRatio);
        return new LayoutRenderData(CollageRender.generateRenderData(getActivity(), null, this.mLayoutModel, this.mCollageLayout, this.mCollageLayout.getWidth()));
    }

    public HashMap<String, String> onSimple() {
        HashMap<String, String> simple = new HashMap();
        simple.put("collage_save_type", "Layout");
        simple.put("collage_image_size", String.valueOf(this.mBitmaps == null ? 0 : this.mBitmaps.length));
        simple.put("Layout", this.mLayoutModel == null ? null : this.mLayoutModel.name);
        return simple;
    }

    private void refreshLayout() {
        if (this.mInit) {
            refreshCollageLayout(this.mLayoutModel);
        } else if (this.mModelReady && this.mBitmapReady && this.mViewReady) {
            this.mCollageLayout.setBackgroundColor(-1);
            generateCollageLayout(this.mLayoutModel);
            this.mCollageLayout.setReplaceImageListener(this.mReplaceImageListener);
            this.mCollageLayout.setBitmapExchangeListener(this.mBitmapExchangeListener);
            this.mInit = true;
        }
    }

    private void generateCollageLayout(LayoutModel layoutModel) {
        this.mCollageLayout.removeAllViews();
        LayoutItemModel[] layoutItemModels = layoutModel.items;
        for (int i = 0; i < layoutItemModels.length; i++) {
            Bitmap bitmap = this.mBitmaps[i];
            LayoutItemModel layoutItemModel = layoutItemModels[i];
            CollageImageView collageImageView = new CollageImageView(getActivity());
            if (i < this.mBitmaps.length) {
                collageImageView.setBitmap(bitmap);
                this.mImageViewMap.put(bitmap, collageImageView);
            }
            this.mCollageLayout.addView(collageImageView, new CollageLayout.LayoutParams(layoutItemModel.clipType, layoutItemModel.data));
        }
    }

    private void refreshCollageLayout(LayoutModel layoutModel) {
        LayoutItemModel[] viewModels = layoutModel.items;
        int childCount = this.mCollageLayout.getChildCount();
        for (int i = 0; i < Math.min(viewModels.length, childCount); i++) {
            LayoutItemModel layoutItemModel = viewModels[i];
            this.mCollageLayout.getChildAt(i).setLayoutParams(new CollageLayout.LayoutParams(layoutItemModel.clipType, layoutItemModel.data));
        }
    }

    public void onBitmapReplace(Bitmap from, Bitmap to) {
        CollageImageView collageImageView = (CollageImageView) this.mImageViewMap.get(from);
        collageImageView.setBitmap(to);
        this.mImageViewMap.remove(from);
        this.mImageViewMap.put(to, collageImageView);
    }
}
