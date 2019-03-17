package com.xiaomi.scanner.ui;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.config.ConfigModel;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.CodeModule;
import com.xiaomi.scanner.module.code.ui.QRCodeFgView;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.Util;

public class CodeModuleUI {
    private static final String REQUEST_EXTRA_SUBTITLE = "subTitle";
    private static final String REQUEST_EXTRA_SUBTITLE_LINK = "subTitleLink";
    private static final String REQUEST_EXTRA_SUBTITLE_LINK_ACTION = "subTitleLinkAction";
    private static final String REQUEST_EXTRA_TITLE = "title";
    private static final Tag TAG = new Tag("CodeModuleUI");
    private final ScanActivity mActivity;
    private final View mAppRoot;
    private AppUI mAppUI = this.mActivity.getAppUI();
    private final CodeModule mController;
    private Rect mFrameRectInPreview;
    private Rect mFramingRect;
    private final ViewGroup mModuleRoot = ((ViewGroup) this.mAppRoot.findViewById(R.id.module_ui_layout));
    private QRCodeFgView mQRFgView;
    private TextView tipView;

    public CodeModuleUI(ScanActivity activity, CodeModule controller, View parent, String callingApp) {
        this.mActivity = activity;
        this.mController = controller;
        this.mAppRoot = parent;
        this.mActivity.getLayoutInflater().inflate(R.layout.code_module, this.mModuleRoot, true);
        this.mQRFgView = (QRCodeFgView) this.mModuleRoot.findViewById(R.id.qrc_fgview);
        this.mQRFgView.setScannerFrame(getFramingRect());
        if (!this.mController.isPause() && AppUtil.isUserAgreeToRun()) {
            this.mQRFgView.startLaserAnim();
        }
        if (!TextUtils.isEmpty(callingApp)) {
            showThirdAppUI();
        }
        this.tipView = (TextView) this.mModuleRoot.findViewById(R.id.tv_qr_code_scan_tip);
        ((LayoutParams) this.tipView.getLayoutParams()).topMargin = getFramingRect().bottom + activity.getResources().getDimensionPixelSize(R.dimen.framing_tip_margin_top);
    }

    public void onResume() {
        if (this.mQRFgView == null || this.mFramingRect == null) {
            Log.v(TAG, "drop this start operation, mFramingRect=" + this.mFramingRect);
        } else {
            this.mQRFgView.startLaserAnim();
        }
        if (this.tipView != null && !TextUtils.isEmpty(ConfigModel.instance.getQrScanTip())) {
            this.tipView.setText(ConfigModel.instance.getQrScanTip());
        }
    }

    public void onPause() {
        if (this.mQRFgView != null) {
            this.mQRFgView.stopLaserAnim();
        }
    }

    public void showThirdAppUI() {
        Intent intent = this.mActivity.getIntent();
        String title = intent.getStringExtra("title");
        String subTitle = intent.getStringExtra(REQUEST_EXTRA_SUBTITLE);
        final String subTitleLinkAction = intent.getStringExtra(REQUEST_EXTRA_SUBTITLE_LINK_ACTION);
        boolean subTitleLink = intent.getBooleanExtra(REQUEST_EXTRA_SUBTITLE_LINK, false);
        this.mModuleRoot.findViewById(R.id.scanBarcodeStub).setVisibility(0);
        if (!TextUtils.isEmpty(title)) {
            ((TextView) this.mModuleRoot.findViewById(R.id.titleTextView)).setText(title);
        }
        if (!TextUtils.isEmpty(subTitle)) {
            TextView subTitleTextView = (TextView) this.mModuleRoot.findViewById(R.id.subTitleTextView);
            subTitleTextView.getPaint().setFlags(8);
            subTitleTextView.setText(subTitle);
            if (subTitleLink) {
                subTitleTextView.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        Intent intent = new Intent();
                        intent.setAction(subTitleLinkAction);
                        try {
                            CodeModuleUI.this.mActivity.startActivityForResult(intent, 0);
                        } catch (ActivityNotFoundException e) {
                            Log.e(CodeModuleUI.TAG, "ActivityNotFoundException", e);
                        }
                    }
                });
            }
        }
    }

    public Rect getFramingRect() {
        if (this.mFramingRect == null) {
            Resources res = this.mActivity.getResources();
            int width = (int) res.getDimension(R.dimen.framingRectWidth);
            int height = (int) res.getDimension(R.dimen.framingRectHeight);
            int leftOffset = ((this.mModuleRoot.getWidth() == 0 ? Math.min(Util.screenWidth, Util.screenHeight) : this.mModuleRoot.getWidth()) - width) / 2;
            int topOffset = res.getDimensionPixelSize(R.dimen.framingRectMarginTop);
            this.mFramingRect = new Rect(leftOffset, topOffset, leftOffset + width, topOffset + height);
        }
        Log.v(TAG, "framingRect: " + this.mFramingRect);
        return this.mFramingRect;
    }

    public Rect getFramingRectInPreview(int previewWidth, int previewHeight, int orientation) {
        if (this.mFrameRectInPreview == null) {
            float ratio;
            Rect rect = new Rect(getFramingRect());
            if (orientation == 90 || orientation == 270) {
                ratio = (((float) previewHeight) * 1.0f) / ((float) this.mAppUI.getPreviewWidth());
            } else {
                ratio = (((float) previewWidth) * 1.0f) / ((float) this.mAppUI.getPreviewWidth());
            }
            rect.left = (int) (((float) rect.left) * ratio);
            rect.right = (int) (((float) rect.right) * ratio);
            rect.top = (int) (((float) rect.top) * ratio);
            rect.bottom = (int) (((float) rect.bottom) * ratio);
            int offset = Math.min(rect.left, rect.top) / 3;
            if (((float) (rect.bottom + offset)) < ((float) this.mAppUI.getPreviewHeight()) * ratio && ((float) (rect.right + offset)) < ((float) this.mAppUI.getPreviewWidth()) * ratio) {
                rect.left -= offset;
                rect.top -= offset;
                rect.right += offset;
                rect.bottom += offset;
            }
            this.mFrameRectInPreview = rect;
            Log.v(TAG, "framingRectInPreview: " + this.mFrameRectInPreview);
        }
        return this.mFrameRectInPreview;
    }

    public void onDestroy() {
        this.mQRFgView.clear();
    }
}
