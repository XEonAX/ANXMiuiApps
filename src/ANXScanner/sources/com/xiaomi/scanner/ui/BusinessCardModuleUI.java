package com.xiaomi.scanner.ui;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.gson.Gson;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.bean.BusinessCardItem;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.BusinessCardResultView.FinishClick;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ToastUtils;
import com.xiaomi.scanner.util.Util;
import java.util.List;

public class BusinessCardModuleUI implements FinishClick {
    private static final Tag TAG = new Tag("BusinessCardModuleUI");
    private PreviewWithRectView cardPreview;
    private ScanActivity mActivity;
    private Bitmap mBitmap;
    private ViewGroup mFullRoot;
    private BusinessCardResultView resultView;

    public BusinessCardModuleUI(ScanActivity mActivity) {
        this.mActivity = mActivity;
        ViewGroup mRoot = (ViewGroup) mActivity.getModuleLayoutRoot();
        ViewGroup mPreviewRoot = (ViewGroup) mRoot.findViewById(R.id.module_ui_layout);
        this.mFullRoot = (ViewGroup) mRoot.findViewById(R.id.full_screen_panel_layout);
        mActivity.getLayoutInflater().inflate(R.layout.module_business_card, mPreviewRoot, true);
        this.cardPreview = (PreviewWithRectView) mPreviewRoot.findViewById(R.id.card_preview);
        Rect rect = getPreviewRect();
        this.cardPreview.setDataAndDraw(rect, mActivity.getResources().getColor(R.color.black_50_transparent), false);
        LayoutParams layoutParams = (LayoutParams) ((TextView) mPreviewRoot.findViewById(R.id.tv_bc_tip)).getLayoutParams();
        layoutParams.topMargin += rect.bottom;
    }

    private Rect getPreviewRect() {
        int marginTop = this.mActivity.getResources().getDimensionPixelSize(R.dimen.namecard_frame_offset_top);
        int marginLeft = this.mActivity.getResources().getDimensionPixelSize(R.dimen.preview_business_margin_left);
        int screenWidth = Util.screenWidth;
        return new Rect(marginLeft, marginTop, screenWidth - marginLeft, marginTop + ((int) (((float) (screenWidth - (marginLeft * 2))) * 0.618f)));
    }

    private void initOrUpdateResultUi(List<BusinessCardItem> items) {
        if (this.resultView == null) {
            this.resultView = new BusinessCardResultView(this.mActivity);
            this.resultView.setFinishClick(this);
            this.mFullRoot.addView(this.resultView);
        }
        this.mFullRoot.setVisibility(0);
        this.resultView.setVisibility(0);
        this.resultView.updateView(this.mBitmap, items);
        changeTo(false);
    }

    public Bitmap getCropBitmap(Bitmap bitmap) {
        Bitmap cropBitmap = null;
        try {
            cropBitmap = PictureDecoder.cropBitmap(bitmap, this.cardPreview.getPreviewRect());
        } catch (Exception e) {
            Log.e(TAG, "getCropBitmap error = " + e);
        }
        if (cropBitmap == null) {
            return bitmap;
        }
        return cropBitmap;
    }

    public void showBusinessResult(List<BusinessCardItem> items) {
        hideLoading();
        if (items == null || items.size() == 0) {
            ToastUtils.showCenterToast((int) R.string.business_no_result);
            changeTo(true);
        } else if (this.mActivity == null || !this.mActivity.isOnlyBusinessCardScan()) {
            trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_RESULT_SHOW);
            initOrUpdateResultUi(items);
        } else {
            trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_RESULT_SHOW);
            Intent intent = new Intent();
            intent.putExtra("BusinessCardResult", new Gson().toJson((Object) items));
            this.mActivity.setResult(-1, intent);
            this.mActivity.finish();
        }
    }

    private void trackBCEvent(String key) {
        if (this.mActivity != null) {
            UsageStatistics.trackBCEvent(this.mActivity.isOnlyBusinessCardScan(), key);
        }
    }

    public void onFinishClick() {
        changeTo(true);
    }

    private void changeTo(boolean preview) {
        int i = 0;
        if (preview) {
            this.mFullRoot.setVisibility(8);
        }
        if (this.resultView != null) {
            this.resultView.setVisibility(preview ? 8 : 0);
        }
        if (this.cardPreview != null) {
            PreviewWithRectView previewWithRectView = this.cardPreview;
            if (!preview) {
                i = 8;
            }
            previewWithRectView.setVisibility(i);
        }
        if (preview) {
            this.mActivity.getCaptureModule().startPreview();
            onDestroy();
        }
    }

    public void showImageAndLoading(Bitmap decode) {
        this.mBitmap = decode;
        showLoading();
    }

    private void showLoading() {
        if (this.mActivity.getAppUI().isProgressShowing()) {
            hideLoading();
        }
        this.mActivity.getAppUI().showProgressView((int) R.string.plant_loading, 0);
    }

    private void hideLoading() {
        this.mActivity.getAppUI().dismissProgress();
    }

    public void onPause() {
        hideLoading();
    }

    public void onDestroy() {
        this.resultView = null;
        this.mBitmap = null;
        if (this.cardPreview != null) {
            this.cardPreview.clear();
        }
    }

    public boolean onBackPressed() {
        boolean canBack = this.mFullRoot.getVisibility() == 0;
        if (canBack) {
            changeTo(true);
        }
        return canBack;
    }
}
