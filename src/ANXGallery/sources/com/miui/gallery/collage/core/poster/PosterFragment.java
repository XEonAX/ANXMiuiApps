package com.miui.gallery.collage.core.poster;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.constraint.ConstraintLayout;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.collage.CollageUtils;
import com.miui.gallery.collage.app.common.AbstractPosterFragment;
import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.core.layout.LayoutItemModel;
import com.miui.gallery.collage.core.layout.LayoutModel;
import com.miui.gallery.collage.render.CollageRender;
import com.miui.gallery.collage.render.PosterElementRender;
import com.miui.gallery.collage.render.PosterElementRender.LoadDataListener;
import com.miui.gallery.collage.widget.CollageImageView;
import com.miui.gallery.collage.widget.CollageLayout;
import com.miui.gallery.collage.widget.CollageLayout.BitmapExchangeListener;
import com.miui.gallery.collage.widget.CollageLayout.LayoutParams;
import com.miui.gallery.collage.widget.PosterLayout;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class PosterFragment extends AbstractPosterFragment {
    private BitmapExchangeListener mBitmapExchangeListener = new BitmapExchangeListener() {
        public void onBitmapExchange(Bitmap from, Bitmap to) {
            CollageImageView fromView = (CollageImageView) PosterFragment.this.mImageViewMap.get(from);
            PosterFragment.this.mImageViewMap.put(from, (CollageImageView) PosterFragment.this.mImageViewMap.get(to));
            PosterFragment.this.mImageViewMap.put(to, fromView);
        }
    };
    private CollageLayout mCollageLayout;
    private float mDefaultRatio;
    private Map<Bitmap, CollageImageView> mImageViewMap = new HashMap();
    private boolean mInit = false;
    private LayoutModel mLayoutModel;
    private boolean mModelReady = false;
    private PosterLayout mPosterLayout;
    private PosterModel mPosterModel;
    private ViewGroup mRootView;
    private boolean mViewReady = false;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.collage_poster_render, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        this.mRootView = (ViewGroup) view;
        this.mPosterLayout = (PosterLayout) view.findViewById(R.id.poster_layout);
        this.mCollageLayout = (CollageLayout) view.findViewById(R.id.collage_layout);
        this.mViewReady = true;
        this.mDefaultRatio = getResourceFloat(getResources(), R.dimen.poster_image_ratio, 0.75f);
        refreshLayout();
    }

    public void onSelectModel(PosterModel posterModel, LayoutModel layoutModel) {
        this.mPosterModel = posterModel;
        this.mLayoutModel = layoutModel;
        this.mModelReady = true;
        refreshLayout();
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
        return new PosterRenderData(CollageRender.generateRenderData(getActivity(), this.mPosterModel, this.mLayoutModel, this.mCollageLayout, this.mPosterLayout.getWidth()));
    }

    public HashMap<String, String> onSimple() {
        HashMap<String, String> simple = new HashMap();
        String name = this.mPosterModel == null ? null : this.mPosterModel.name;
        if (name != null && name.length() > 3) {
            name = name.substring(3);
        }
        simple.put("collage_save_type", "Poster");
        simple.put("collage_image_size", String.valueOf(this.mBitmaps == null ? 0 : this.mBitmaps.length));
        simple.put("Poster", name);
        return simple;
    }

    private void refreshLayout() {
        if (this.mInit) {
            refreshCollageLayout(this.mLayoutModel);
            refreshCollagePosition(this.mPosterModel);
            setPosterModelToPosterLayout(this.mPosterModel);
        } else if (this.mModelReady && this.mBitmapReady && this.mViewReady) {
            generateCollageLayout(this.mLayoutModel);
            refreshCollagePosition(this.mPosterModel);
            setPosterModelToPosterLayout(this.mPosterModel);
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
            this.mCollageLayout.addView(collageImageView, new LayoutParams(layoutItemModel.clipType, layoutItemModel.data));
        }
    }

    private void refreshCollageLayout(LayoutModel layoutModel) {
        LayoutItemModel[] viewModels = layoutModel.items;
        int childCount = this.mCollageLayout.getChildCount();
        for (int i = 0; i < Math.min(viewModels.length, childCount); i++) {
            LayoutItemModel layoutItemModel = viewModels[i];
            this.mCollageLayout.getChildAt(i).setLayoutParams(new LayoutParams(layoutItemModel.clipType, layoutItemModel.data));
        }
    }

    private void refreshCollagePosition(PosterModel posterModel) {
        final CollagePositionModel collagePositionModel = CollagePositionModel.getCollagePositionModelByImageSize(posterModel.collagePositions, this.mBitmaps.length);
        this.mCollageLayout.setLayoutParams(new PosterLayout.LayoutParams(collagePositionModel.position));
        this.mCollageLayout.setCollageMargin(collagePositionModel.margin, collagePositionModel.ignoreEdgeMargin);
        String[] masks = collagePositionModel.masks;
        Drawable[] maskDrawables = null;
        if (masks != null && masks.length > 0) {
            maskDrawables = new Drawable[masks.length];
            for (int i = 0; i < maskDrawables.length; i++) {
                maskDrawables[i] = CollageUtils.getDrawableByAssets(getResources(), collagePositionModel.relativePath + File.separator + masks[i]);
            }
        }
        final Drawable[] finalMaskDrawables = maskDrawables;
        this.mCollageLayout.post(new Runnable() {
            public void run() {
                PosterFragment.this.mCollageLayout.setMasks(finalMaskDrawables);
                PosterFragment.this.mCollageLayout.setRadius(collagePositionModel.radius);
            }
        });
    }

    private void setPosterModelToPosterLayout(final PosterModel posterModel) {
        float ratio = posterModel.ratio;
        if (ratio == 0.0f) {
            ratio = this.mDefaultRatio;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.mPosterLayout.getLayoutParams();
        if (Float.compare(ratio, Float.parseFloat(layoutParams.dimensionRatio)) != 0) {
            layoutParams.dimensionRatio = String.valueOf(ratio);
            this.mPosterLayout.requestLayout();
        }
        this.mPosterLayout.post(new Runnable() {
            public void run() {
                int width = PosterFragment.this.mPosterLayout.getWidth();
                int height = PosterFragment.this.mPosterLayout.getHeight();
                final PosterElementRender posterElementRender = new PosterElementRender();
                posterElementRender.initializeAsync(posterModel, width, height, PosterFragment.this.getActivity(), new LoadDataListener() {
                    public void onLoadFinish() {
                        PosterFragment.this.mPosterLayout.setRenderData(posterElementRender);
                    }
                });
            }
        });
    }

    public void onBitmapReplace(Bitmap from, Bitmap to) {
        CollageImageView collageImageView = (CollageImageView) this.mImageViewMap.get(from);
        if (collageImageView != null) {
            collageImageView.setBitmap(to);
            this.mImageViewMap.remove(from);
            this.mImageViewMap.put(to, collageImageView);
        }
    }

    private static float getResourceFloat(Resources resources, int resId, float defaultValue) {
        TypedValue value = new TypedValue();
        try {
            resources.getValue(resId, value, true);
            return value.getFloat();
        } catch (Exception e) {
            Log.e("PosterFragment", "Missing resource " + Integer.toHexString(resId));
            return defaultValue;
        }
    }
}
