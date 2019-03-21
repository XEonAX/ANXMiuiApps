package com.miui.gallery.collage.core.stitching;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.collage.app.common.AbstractStitchingFragment;
import com.miui.gallery.collage.core.RenderData;
import com.miui.gallery.collage.widget.CollageStitchingLayout;
import java.util.Arrays;
import java.util.HashMap;

public class StitchingFragment extends AbstractStitchingFragment {
    private boolean mInit = false;
    private boolean mModelReady = false;
    private CollageStitchingLayout mStitchingLayout;
    private StitchingModel mStitchingModel;
    private boolean mViewReady = false;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.collage_stitching_render, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        this.mStitchingLayout = (CollageStitchingLayout) view.findViewById(R.id.drag_layout);
        this.mViewReady = true;
        refreshLayout();
    }

    private void refreshLayout() {
        if (this.mInit) {
            refreshStitchingLayout(this.mStitchingModel);
        } else if (this.mModelReady && this.mBitmapReady && this.mViewReady) {
            generateStitchingLayout(this.mStitchingModel);
            this.mStitchingLayout.setReplaceImageListener(this.mReplaceImageListener);
            this.mInit = true;
        }
    }

    private void generateStitchingLayout(StitchingModel stitchingModel) {
        this.mStitchingLayout.setBitmaps((Bitmap[]) Arrays.copyOf(this.mBitmaps, this.mBitmaps.length));
        this.mStitchingLayout.setStitchingModel(stitchingModel);
    }

    private void refreshStitchingLayout(StitchingModel stitchingModel) {
        this.mStitchingLayout.setStitchingModel(stitchingModel);
    }

    protected void onBitmapsReceive() {
        refreshLayout();
    }

    public void dismissControlWindow() {
        if (this.mStitchingLayout != null) {
            this.mStitchingLayout.dismissControlWindow();
        }
    }

    public RenderData export() {
        StitchingRenderData stitchingRenderData = new StitchingRenderData(this.mStitchingLayout.generateRenderData());
        stitchingRenderData.mWidth = 1080;
        return stitchingRenderData;
    }

    public HashMap<String, String> onSimple() {
        HashMap<String, String> simple = new HashMap();
        simple.put("collage_save_type", "Stitching");
        simple.put("collage_image_size", String.valueOf(this.mBitmaps == null ? 0 : this.mBitmaps.length));
        simple.put("Stitching", this.mStitchingModel == null ? null : this.mStitchingModel.name);
        return simple;
    }

    public void onBitmapReplace(Bitmap from, Bitmap to) {
        this.mStitchingLayout.notifyBitmapReplace(from, to);
    }

    public void onSelectModel(StitchingModel stitchingModel) {
        this.mStitchingModel = stitchingModel;
        this.mModelReady = true;
        refreshLayout();
    }
}
