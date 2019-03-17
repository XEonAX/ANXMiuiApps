package com.xiaomi.scanner.translation.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.dialog.CustomProgressDialog;
import com.xiaomi.scanner.dialog.ErrorDialog;
import com.xiaomi.scanner.dialog.TranslateSelectLangDialog;
import com.xiaomi.scanner.dialog.TranslateSelectLangDialog.ConfirmClick;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.translation.TranslateModel;
import com.xiaomi.scanner.translation.TranslationModuleUI;
import com.xiaomi.scanner.translation.bean.TranslateResult;
import com.xiaomi.scanner.translation.bean.TranslateResult.LineInfo;
import com.xiaomi.scanner.translation.widget.ChooseLangView.LangViewClick;
import com.xiaomi.scanner.ui.ZoomImageView;
import com.xiaomi.scanner.ui.ZoomImageView.OnViewTapListener;
import com.xiaomi.scanner.util.ImageUtils;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.ScannerThreadPool.ScanThreadCallback;
import com.xiaomi.scanner.util.Util;
import java.util.ArrayList;
import java.util.List;

public class TranslateResultContainer extends RelativeLayout implements OnClickListener, LangViewClick, ConfirmClick, OnViewTapListener, OnTouchListener {
    private static final Tag TAG = new Tag("TranslateResult");
    private TranslateUICallback callback;
    private ChooseLangView mChooseLangView;
    private TextView mCompareBtn;
    private TranslateCompareView mCompareView;
    private ErrorDialog mErrorDialog;
    private Bitmap mHandleBitmap;
    private ZoomImageView mImageBg;
    private ImageView mImageBgFlag;
    private ZoomImageView mImageTranslate;
    private List<LineInfo> mLineList;
    private TranslationModuleUI mUi;
    private CustomProgressDialog progressDialog;
    private RealTimeTranslateView translateDrawView;

    public interface TranslateUICallback {
        void backClick();
    }

    public void setCallback(TranslateUICallback callback) {
        this.callback = callback;
    }

    public TranslateResultContainer(@NonNull Context context, TranslationModuleUI UI) {
        this(context, null, -1);
        this.mUi = UI;
    }

    public TranslateResultContainer(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TranslateResultContainer(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        LayoutInflater.from(context).inflate(R.layout.translate_result_layout, this);
        this.mImageBgFlag = (ImageView) findViewById(R.id.image_bg_flag);
        this.mImageTranslate = (ZoomImageView) findViewById(R.id.image_translate);
        this.translateDrawView = (RealTimeTranslateView) findViewById(R.id.translate_result_view);
        this.mImageBg = (ZoomImageView) findViewById(R.id.image_bg);
        this.mCompareBtn = (TextView) findViewById(R.id.btn_compare);
        this.mCompareBtn.setOnClickListener(this);
        this.mChooseLangView = (ChooseLangView) findViewById(R.id.choose_lang_view);
        this.mChooseLangView.setHasConvertFunction(true);
        this.mChooseLangView.setLangViewClick(this);
        findViewById(R.id.image_back).setOnClickListener(this);
        LayoutParams bottomParams = (LayoutParams) this.mCompareBtn.getLayoutParams();
        int normalMargin = getResources().getDimensionPixelSize(R.dimen.translate_compare_margin);
        if (Util.hasNativageBar && !Utils.isFullScreenDevice()) {
            normalMargin += Utils.getNavigationBarHeight();
        }
        bottomParams.bottomMargin = normalMargin;
        this.mImageBg.setOnViewTapListener(this);
        setOnTouchListener(this);
    }

    public boolean onBackPressed() {
        boolean canBack = this.mCompareView != null && this.mCompareView.onBackPressed();
        if (!canBack) {
            clearTranslate();
        }
        return canBack;
    }

    private void loadResultBackgroundAndImage(final TranslateResult result, final int orientation) {
        ScannerThreadPool.poolExecute(new ScanThreadCallback<Drawable>() {
            public Drawable onBackground() {
                if (result == null || result.translationResult == null || TextUtils.isEmpty(result.translationResult.backgroundImageUrl)) {
                    return null;
                }
                try {
                    return new BitmapDrawable(ScannerApp.getAndroidContext().getResources(), PictureDecoder.rotateBitmap(ImageUtils.loadImageFromServer(result.translationResult.backgroundImageUrl), orientation));
                } catch (Exception e) {
                    Log.e(TranslateResultContainer.TAG, "loadResultBackgroundAndImage error = " + e);
                    return null;
                }
            }

            public void onMainResult(Drawable drawable) {
                TranslateResultContainer.this.hideLoadingAndError();
                if (TranslateResultContainer.this.translateDrawView != null) {
                    if (drawable != null) {
                        TranslateResultContainer.this.translateDrawView.setBackground(drawable);
                    } else {
                        TranslateResultContainer.this.translateDrawView.setBackgroundResource(R.color.transparent);
                    }
                    TranslateResultContainer.this.enableBtn(true);
                    TranslateResultContainer.this.translateDrawView.post(new Runnable() {
                        public void run() {
                            if (TranslateResultContainer.this.mImageTranslate != null) {
                                TranslateResultContainer.this.mImageTranslate.setVisibility(0);
                                Bitmap resultBitmap = ImageUtils.loadBitmapFromView(TranslateResultContainer.this.translateDrawView);
                                if (resultBitmap != null) {
                                    TranslateResultContainer.this.mImageTranslate.setImageBitmap(resultBitmap);
                                }
                                if (TranslateResultContainer.this.mImageBg != null) {
                                    TranslateResultContainer.this.mImageBg.resetImageMatrix();
                                }
                            }
                            TranslateResultContainer.this.translateDrawView.setVisibility(8);
                            TranslateResultContainer.this.mImageBgFlag.setVisibility(8);
                        }
                    });
                }
            }
        });
    }

    public void updateTranslateResult(TranslateResult result, int orientation) {
        Log.d(TAG, "updateTranslateResult orientation = " + orientation + ", server orientation = " + result.getDegree());
        this.mLineList = result.getLineInfos();
        resetTranslateDrawView();
        this.translateDrawView.setTranslateData(result, orientation);
        loadResultBackgroundAndImage(result, orientation);
    }

    public void updateBgView(Bitmap bitmap) {
        if (this.mImageBg != null) {
            this.mHandleBitmap = bitmap;
            if (bitmap == null || bitmap.isRecycled()) {
                this.mImageBg.setImageResource(R.color.transparent);
            } else {
                this.mImageBg.setImageBitmap(bitmap);
                this.mImageBgFlag.setImageBitmap(bitmap);
            }
            resetTranslateDrawView();
            showLoading();
            if (this.mChooseLangView != null) {
                this.mChooseLangView.updateLang(TranslateModel.getInstance().getSrcLang(), TranslateModel.getInstance().getDesLang());
            }
        }
    }

    private void resetTranslateDrawView() {
        this.translateDrawView.setVisibility(4);
        this.translateDrawView.removeAllViews();
        this.mImageBgFlag.setVisibility(4);
        this.mImageBg.setVisibility(0);
        this.mImageTranslate.setVisibility(0);
    }

    public void clearTranslate() {
        resetTranslateDrawView();
        if (this.mImageTranslate != null) {
            this.mImageTranslate.setImageResource(R.color.transparent);
        }
        setVisibility(8);
        if (this.callback != null) {
            this.callback.backClick();
        }
        this.mLineList = null;
        onDestroy();
    }

    public void onClick(View v) {
        int i = 0;
        switch (v.getId()) {
            case R.id.error_try_again /*2131558603*/:
                showLoading();
                TranslateModel instance = TranslateModel.getInstance();
                Bitmap bitmap = this.mHandleBitmap;
                if (this.mUi != null) {
                    i = this.mUi.getTakePhotoOrientation(false);
                }
                instance.sendTranslate(bitmap, -1, i);
                return;
            case R.id.image_back /*2131558715*/:
                clearTranslate();
                return;
            case R.id.btn_compare /*2131558717*/:
                showCompare();
                return;
            default:
                return;
        }
    }

    private void showCompare() {
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_COMPARE);
        if (this.mCompareView == null) {
            this.mCompareView = new TranslateCompareView(getContext());
            addView(this.mCompareView, new LayoutParams(-1, -1));
        }
        this.mCompareView.setCompareList(this.mLineList);
        this.mCompareView.setVisibility(0);
    }

    public void onConvertClick(String newSrc, String newDes) {
        onSelectClick();
    }

    public void onSelectClick() {
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_SELECT_LANG);
        TranslateSelectLangDialog.showDialog((Activity) getContext(), this, TranslateModel.getInstance().getSrcLang(), TranslateModel.getInstance().getDesLang(), new ArrayList(TranslateModel.getInstance().getSrcLangList()), new ArrayList(TranslateModel.getInstance().getDesLangList()));
    }

    public void onConfirmClick(String selectSrc, String selectDes) {
        handleLangChange(selectSrc, selectDes);
    }

    private void handleLangChange(String selectSrc, String selectDes) {
        int i = 0;
        TranslateModel.getInstance().updateLangs(selectSrc, selectDes);
        this.mChooseLangView.updateLang(selectSrc, selectDes);
        TranslateModel instance = TranslateModel.getInstance();
        Bitmap bitmap = this.mHandleBitmap;
        if (this.mUi != null) {
            i = this.mUi.getTakePhotoOrientation(false);
        }
        instance.sendTranslate(bitmap, -1, i);
        showLoading();
    }

    public void showError() {
        hideLoadingAndError();
        this.mErrorDialog = ErrorDialog.show(getContext(), getResources().getString(R.string.translate_fail), getResources().getString(R.string.translate_try_again), this);
        enableBtn(false);
    }

    private void hideError() {
        if (this.mErrorDialog != null) {
            this.mErrorDialog.dismiss();
            this.mErrorDialog = null;
        }
    }

    public void hideLoadingAndError() {
        hideError();
        if (this.progressDialog != null) {
            this.progressDialog.dismiss();
        }
    }

    public void showLoading() {
        hideLoadingAndError();
        this.progressDialog = CustomProgressDialog.showProgress((Activity) getContext(), R.drawable.kingsoft_logo, R.string.translate_loading);
        enableBtn(false);
    }

    private void enableBtn(boolean enable) {
        this.mCompareBtn.setEnabled(enable);
        this.mCompareBtn.setAlpha(enable ? 1.0f : 0.4f);
    }

    private void onDestroy() {
        this.mHandleBitmap = null;
    }

    public void onViewTap(View view, float x, float y) {
        if (this.mLineList != null && this.mLineList.size() > 0) {
            this.mImageTranslate.setVisibility(this.mImageTranslate.getVisibility() == 0 ? 8 : 0);
        }
    }

    public boolean onTouch(View v, MotionEvent event) {
        this.mImageBg.onTouchFromParent(this.mImageBg, event);
        this.mImageTranslate.onTouchFromParent(this.mImageTranslate, event);
        return true;
    }
}
