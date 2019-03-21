package com.miui.gallery.editor.photo.core.imports.longcrop;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractLongCropFragment;
import java.util.Arrays;
import java.util.List;

public class LongScreenshotCropFragment extends AbstractLongCropFragment {
    private LongScreenshotCropEditorView mEditorView;
    private Bitmap mOrigin;
    private ProgressBar mProgressBar;

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.long_screenshot_crop_editor_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mEditorView = (LongScreenshotCropEditorView) view.findViewById(R.id.editor_view);
        this.mProgressBar = (ProgressBar) view.findViewById(R.id.progress_view);
        if (getBitmap() != null) {
            this.mEditorView.setBitmap(getBitmap());
        }
        validateBitmap();
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.mOrigin = null;
    }

    protected RenderData onExport() {
        return new CropRenderData(this.mEditorView.export());
    }

    protected List<String> onSample() {
        Entry entry = this.mEditorView.export();
        if (Math.round(entry.mBottomRatio) * Math.round(entry.mTopRatio) != 0) {
            return null;
        }
        return Arrays.asList(new String[]{"long_crop"});
    }

    public void clear() {
    }

    public void setBitmap(Bitmap bitmap) {
        super.setBitmap(bitmap);
        if (getView() != null) {
            this.mEditorView.setBitmap(bitmap);
            validateBitmap();
        }
    }

    public boolean isEmpty() {
        return this.mEditorView.isEmpty();
    }

    public void setOriginBitmap(Bitmap bitmap, List<RenderData> preRenderData) {
        if (bitmap != null) {
            this.mOrigin = bitmap;
            RectF clipRatioRect = getClipRatioRectByPreData(preRenderData);
            if (getView() != null) {
                this.mEditorView.setOriginalBitmap(bitmap, clipRatioRect.top, clipRatioRect.bottom);
                validateBitmap();
            }
        }
    }

    private void validateBitmap() {
        if (getBitmap() == null || this.mOrigin == null) {
            this.mProgressBar.setVisibility(0);
            this.mEditorView.setVisibility(4);
            return;
        }
        this.mProgressBar.setVisibility(8);
        this.mEditorView.setVisibility(0);
    }

    private RectF getClipRatioRectByPreData(List<RenderData> renderDataList) {
        RectF clipRatioRect = new RectF();
        clipRatioRect.set(0.0f, 0.0f, 1.0f, 1.0f);
        for (RenderData renderData : renderDataList) {
            if (renderData instanceof CropRenderData) {
                Entry entry = ((CropRenderData) renderData).mEntry;
                float height = clipRatioRect.height();
                float top = clipRatioRect.top;
                clipRatioRect.top = (entry.mTopRatio * height) + top;
                clipRatioRect.bottom = (entry.mBottomRatio * height) + top;
            }
        }
        return clipRatioRect;
    }
}
