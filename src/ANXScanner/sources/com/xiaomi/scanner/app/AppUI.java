package com.xiaomi.scanner.app;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnKeyListener;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.camera.TextureViewHelper;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.ModuleController;
import com.xiaomi.scanner.module.ModuleManager.ModuleBaseInfo;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.setting.SettingActivity;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.settings.SettingsManager.OnSettingChangedListener;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.BottomModuleContainer;
import com.xiaomi.scanner.ui.BottomModuleContainer.ModuleSelectListener;
import com.xiaomi.scanner.ui.FlashButton;
import com.xiaomi.scanner.ui.FlashButton.OnTurnFlashListener;
import com.xiaomi.scanner.ui.FullScreenPanelRoot;
import com.xiaomi.scanner.ui.FunctionUI;
import com.xiaomi.scanner.ui.MessageDispatcher;
import com.xiaomi.scanner.ui.PreviewStatusListener;
import com.xiaomi.scanner.ui.PreviewStatusListener.PreviewAreaChangedListener;
import com.xiaomi.scanner.ui.ShutterButton;
import com.xiaomi.scanner.ui.ShutterButton.OnShutterButtonListener;
import com.xiaomi.scanner.util.AppJumpUtils;
import com.xiaomi.scanner.util.Constants;
import com.xiaomi.scanner.util.ModuleBaseInfoManager;
import com.xiaomi.scanner.util.SPUtils;
import com.xiaomi.scanner.util.ToastUtils;
import com.xiaomi.scanner.util.Util;
import java.util.List;
import java.util.Locale;
import miui.app.ProgressDialog;

public class AppUI implements SurfaceTextureListener, OnSettingChangedListener, ModuleSelectListener, MessageDispatcher, FunctionUI, OnClickListener, OnTurnFlashListener {
    private static final Tag TAG = new Tag("AppUI");
    private final FrameLayout mAppRootView;
    private View mBottomCover;
    private BottomModuleContainer mBottomModuleView;
    private Context mContext;
    private final AppController mController;
    private boolean mDisableAllUserInteractions;
    private FlashButton mFlashButton;
    private FullScreenPanelRoot mFullScreenUI;
    private FrameLayout mModuleUI;
    private ImageView mPickerButton;
    private final OnLayoutChangeListener mPreviewLayoutChangeListener = new OnLayoutChangeListener() {
        public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            if (AppUI.this.mPreviewStatusListener != null) {
                AppUI.this.mPreviewStatusListener.onPreviewLayoutChanged(v, left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom);
            }
        }
    };
    private PreviewStatusListener mPreviewStatusListener;
    private ProgressDialog mProgressDialog;
    private ShutterButton mShutterButton;
    private SurfaceTexture mSurface;
    private TextureView mTextureView;
    private TextureViewHelper mTextureViewHelper;
    private TextView mTitleView;
    private TextView mTranslateWordLock;

    public boolean dispatchMessage(int what, int sender, int receiver, Object extra1, Object extra2) {
        switch (receiver) {
            case 1:
                return this.mController.handleMessage(what, sender, extra1, extra2);
            case 2:
                ModuleController controller = this.mController.getCurrentModuleController();
                if (controller != null) {
                    return controller.handleMessage(what, sender, extra1, extra2);
                }
                return false;
            case 3:
                return handleMessage(what, sender, extra1, extra2);
            default:
                Log.d(TAG, "unexpected receiver " + receiver);
                return false;
        }
    }

    public boolean handleMessage(int what, int sender, Object extra1, Object extra2) {
        return false;
    }

    public void setMessageDispatcher(MessageDispatcher p) {
        int childCount = this.mAppRootView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = this.mAppRootView.getChildAt(i);
            if (child instanceof FunctionUI) {
                ((FunctionUI) child).setMessageDispatcher(p);
            }
        }
    }

    public Bitmap getPreviewBitmap() {
        return this.mTextureViewHelper.getPreviewBitmap();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.tv_translate_lock /*2131558538*/:
                int nextId;
                boolean z;
                boolean currentLock = this.mContext.getString(R.string.translate_auto_unlock).equals(this.mTranslateWordLock.getText().toString());
                if (currentLock) {
                    UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_AUTO_UNLOCK);
                    this.mTranslateWordLock.setVisibility(8);
                    this.mTranslateWordLock.setText(R.string.translate_auto_lock);
                    nextId = R.string.translate_auto_lock;
                } else {
                    UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_AUTO_LOCK);
                    nextId = R.string.translate_auto_unlock;
                }
                this.mTranslateWordLock.setText(nextId);
                this.mTranslateWordLock.setContentDescription(this.mContext.getString(nextId));
                AppController appController = this.mController;
                if (currentLock) {
                    z = false;
                } else {
                    z = true;
                }
                appController.updateWordTranslateUI(z);
                return;
            case R.id.top_panel_picker /*2131558539*/:
                if (this.mController == null) {
                    Log.i(TAG, "top_panel_picker click control null");
                    return;
                } else if (!this.mController.isPrerequisiteSatisfied()) {
                    ToastUtils.showCenterToast((int) R.string.no_network);
                    return;
                } else if (this.mController.isSdkReady()) {
                    ModuleController currentModule = this.mController.getCurrentModuleController();
                    if (currentModule == null) {
                        Log.i(TAG, "top_panel_picker click module null");
                        return;
                    }
                    currentModule.doPrething();
                    currentModule.selectPhotoClick();
                    AppJumpUtils.requestDecodeImage((ScanActivity) this.mContext);
                    return;
                } else {
                    ToastUtils.showCenterToast((int) R.string.sdk_not_ready);
                    return;
                }
            case R.id.top_panel_more /*2131558542*/:
                SettingActivity.showSetting(this.mContext);
                return;
            default:
                return;
        }
    }

    public void resetFlashState() {
        if (this.mFlashButton != null) {
            this.mFlashButton.resetFlashView();
        }
    }

    private void turnFlash(boolean on) {
        if (on) {
            this.mController.getCaptureModule().turnTorchOn();
        } else {
            this.mController.getCaptureModule().turnTorchOff();
        }
        this.mFlashButton.setEnabled(true);
    }

    public void updatePreviewAspectRatio(float aspectRatio) {
        this.mTextureViewHelper.updateAspectRatio(aspectRatio);
    }

    public void updatePreviewTransform(Matrix matrix) {
        this.mTextureViewHelper.updateTransform(matrix);
    }

    private void initView(FrameLayout root) {
        this.mShutterButton = (ShutterButton) root.findViewById(R.id.shutter_button);
        this.mBottomCover = root.findViewById(R.id.bottom_cover);
        ((LayoutParams) this.mBottomCover.getLayoutParams()).height = Utils.getNavigationBarHeight();
        this.mTranslateWordLock = (TextView) root.findViewById(R.id.tv_translate_lock);
        this.mTranslateWordLock.setOnClickListener(this);
        ((ImageView) root.findViewById(R.id.top_panel_more)).setOnClickListener(this);
        this.mBottomModuleView = (BottomModuleContainer) root.findViewById(R.id.module_container);
        this.mBottomModuleView.setModuleSelectListener(this);
        this.mTitleView = (TextView) root.findViewById(R.id.top_panel_title);
        this.mFlashButton = (FlashButton) root.findViewById(R.id.top_panel_flash);
        this.mFlashButton.setOnTurnFlashListener(this);
        this.mPickerButton = (ImageView) root.findViewById(R.id.top_panel_picker);
        this.mPickerButton.setOnClickListener(this);
        this.mModuleUI = (FrameLayout) this.mAppRootView.findViewById(R.id.module_ui_layout);
        this.mFullScreenUI = (FullScreenPanelRoot) this.mAppRootView.findViewById(R.id.full_screen_panel_layout);
        this.mFullScreenUI.setVisibleChangeListener(this.mController);
        this.mTextureView = (TextureView) this.mAppRootView.findViewById(R.id.preview_content);
    }

    public void updateTouchEvent(MotionEvent event) {
        if (this.mBottomModuleView != null) {
            this.mBottomModuleView.onTouchEvent(event);
        }
    }

    public AppUI(AppController controller, FrameLayout appRootView) {
        this.mContext = (Context) controller;
        this.mController = controller;
        this.mAppRootView = appRootView;
        initView(appRootView);
        updateBottomCover();
    }

    public void addOrUpdateModuleList(List<ModuleBaseInfo> baseInfoss, int moduleId) {
        if (this.mBottomModuleView != null) {
            this.mBottomModuleView.addModuleItemList(baseInfoss, moduleId);
        }
    }

    public void updateBottomCover() {
        if (this.mBottomCover != null) {
            View view = this.mBottomCover;
            int i = (!Util.hasNativageBar || Utils.isFullScreenDevice()) ? 8 : 0;
            view.setVisibility(i);
        }
    }

    public void resume() {
        Log.v(TAG, "onResume");
        updateOverlayUI();
        resetFlashState();
    }

    public void onDestroy() {
        if (isProgressShowing()) {
            dismissProgress();
        }
        if (this.mTextureViewHelper != null) {
            this.mTextureViewHelper.setSurfaceTextureListener(null);
        }
        this.mTextureView = null;
    }

    public boolean onBackPressed() {
        return false;
    }

    public void setPreviewStatusListener(PreviewStatusListener previewStatusListener) {
        this.mPreviewStatusListener = previewStatusListener;
        if (this.mPreviewStatusListener != null) {
            onPreviewListenerChanged();
        }
    }

    private void onPreviewListenerChanged() {
        this.mTextureViewHelper.setAutoAdjustTransform(this.mPreviewStatusListener.shouldAutoAdjustTransformMatrixOnLayout());
    }

    public void addPreviewAreaChangedListener(PreviewAreaChangedListener listener) {
        this.mTextureViewHelper.addPreviewAreaSizeChangedListener(listener);
    }

    public void removePreviewAreaChangedListener(PreviewAreaChangedListener listener) {
        this.mTextureViewHelper.removePreviewAreaSizeChangedListener(listener);
    }

    public void prepareModuleUI() {
        addOrUpdateModuleList(ModuleBaseInfoManager.getInstance().getModuleListBySortId(), this.mController.getCurrentModuleIndex());
        this.mController.getSettingsManager().addListener(this);
        this.mTextureViewHelper = new TextureViewHelper(this.mTextureView, this.mController.getCameraProvider());
        this.mTextureViewHelper.setSurfaceTextureListener(this);
        this.mTextureViewHelper.setOnLayoutChangeListener(this.mPreviewLayoutChangeListener);
        createOrUpdateBottomUi();
    }

    public void createOrUpdateBottomUi() {
        if (this.mController.isOnlyBusinessCardScan()) {
            this.mBottomModuleView.setVisibility(4);
        } else {
            this.mBottomModuleView.setVisibility(0);
        }
        updateOverlayUI();
        addOrRemoveShutterListener(this.mController.getCurrentModuleController(), false);
    }

    public View getModuleRootView() {
        return this.mAppRootView;
    }

    public void clearModuleUI() {
        if (this.mModuleUI != null) {
            this.mModuleUI.removeAllViews();
        }
        if (this.mFullScreenUI != null) {
            this.mFullScreenUI.removeAllViews();
            this.mFullScreenUI.setVisibility(8);
        }
        addOrRemoveShutterListener(this.mController.getCurrentModuleController(), true);
        setInPictureTakenState(false);
        setTitle(0);
    }

    public void onPreviewStarted() {
        Log.v(TAG, "onPreviewStarted");
    }

    public void setDisableAllUserInteractions(boolean disable) {
        Log.v(TAG, "setDisableAllUserInteractions: " + disable);
        this.mDisableAllUserInteractions = disable;
        setShutterButtonEnabled(!disable);
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.mSurface;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
        Log.v(TAG, String.format(Locale.ENGLISH, "onSurfaceTextureAvailable: %d x %d", new Object[]{Integer.valueOf(width), Integer.valueOf(height)}));
        this.mSurface = surface;
        if (this.mPreviewStatusListener != null) {
            this.mPreviewStatusListener.onSurfaceTextureAvailable(surface, width, height);
        } else {
            Log.e(TAG, "onSurfaceTextureAvailable: no listener!");
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
        Log.v(TAG, String.format("onSurfaceTextureSizeChanged: %d x %d", new Object[]{Integer.valueOf(width), Integer.valueOf(height)}));
        this.mSurface = surface;
        if (this.mPreviewStatusListener != null) {
            this.mPreviewStatusListener.onSurfaceTextureSizeChanged(surface, width, height);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        Log.v(TAG, "onSurfaceTextureDestroyed");
        if (this.mSurface != null) {
            this.mSurface.release();
            this.mSurface = null;
        }
        if (this.mPreviewStatusListener != null) {
            return this.mPreviewStatusListener.onSurfaceTextureDestroyed(surface);
        }
        return false;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
        this.mSurface = surface;
        if (this.mPreviewStatusListener != null) {
            this.mPreviewStatusListener.onSurfaceTextureUpdated(surface);
        }
    }

    public void setShutterButtonEnabled(boolean enabled) {
        Log.v(TAG, "setShutterButtonEnabled: enabled=" + enabled + " disableAll=" + this.mDisableAllUserInteractions);
        if (!this.mDisableAllUserInteractions) {
            this.mShutterButton.setEnabled(enabled);
        }
    }

    public void setInPictureTakenState(boolean inPictureState) {
        boolean z = true;
        if (this.mBottomModuleView != null) {
            this.mBottomModuleView.setCanScrollByTakePic(!inPictureState);
        }
        if (this.mFlashButton != null) {
            boolean z2;
            FlashButton flashButton = this.mFlashButton;
            if (inPictureState) {
                z2 = false;
            } else {
                z2 = true;
            }
            flashButton.setEnabled(z2);
            ImageView imageView = this.mPickerButton;
            if (inPictureState) {
                z = false;
            }
            imageView.setEnabled(z);
        }
    }

    public boolean isShutterButtonEnabled() {
        return this.mShutterButton.isEnabled();
    }

    public void updateOverlayUI() {
        this.mShutterButton.setEnabled(this.mController.isCaptureNeeded());
        this.mPickerButton.setVisibility(this.mController.isPickerNeeded() ? 0 : 8);
    }

    public void setTitle(int resId) {
        if (this.mTitleView != null) {
            if (resId > 0) {
                this.mTitleView.setText(resId);
            }
            this.mTitleView.setVisibility(resId > 0 ? 0 : 8);
        }
    }

    public void addOrRemoveShutterListener(OnShutterButtonListener listener, boolean remove) {
        if (remove) {
            this.mShutterButton.removeOnShutterButtonListener(listener);
        } else {
            this.mShutterButton.addOnShutterButtonListener(listener);
        }
    }

    public void onSettingChanged(SettingsManager settingsManager, String key) {
        Log.v(TAG, "onSettingChanged: " + key);
    }

    public void showProgressView(int msgResId, int vendorResId) {
        showProgressView(msgResId, vendorResId, null);
    }

    public void showProgressView(String msg, String vendorInfo) {
        showProgressView(msg, vendorInfo, null);
    }

    public void showProgressView(int msgResId, int vendorResId, OnKeyListener onKeyListener) {
        String vendor = null;
        Resources res = this.mContext.getResources();
        String msg = msgResId == 0 ? null : res.getString(msgResId);
        if (vendorResId != 0) {
            vendor = res.getString(vendorResId);
        }
        showProgressView(msg, vendor, onKeyListener);
    }

    public synchronized void showProgressView(String msg, String vendorInfo, OnKeyListener onKeyListener) {
        if (this.mProgressDialog != null) {
            this.mProgressDialog.cancel();
        }
        if (!((this.mContext instanceof Activity) && (((Activity) this.mContext).isFinishing() || ((Activity) this.mContext).isDestroyed()))) {
            this.mProgressDialog = ProgressDialog.show(this.mContext, vendorInfo, msg, true, true);
            this.mProgressDialog.setCanceledOnTouchOutside(false);
            if (onKeyListener != null) {
                this.mProgressDialog.setOnKeyListener(onKeyListener);
            }
        }
    }

    public void updateLockText(boolean hasWordResult) {
        this.mTranslateWordLock.setVisibility(hasWordResult ? 0 : 8);
        this.mTranslateWordLock.setText(R.string.translate_auto_lock);
    }

    public synchronized void dismissProgress() {
        if (this.mProgressDialog != null) {
            this.mProgressDialog.dismiss();
            this.mProgressDialog = null;
        }
    }

    public synchronized boolean isProgressShowing() {
        boolean z;
        z = this.mProgressDialog != null && this.mProgressDialog.isShowing();
        return z;
    }

    public int getPreviewHeight() {
        return this.mTextureViewHelper.getPreviewHeight();
    }

    public int getPreviewWidth() {
        return this.mTextureViewHelper.getPreviewWidth();
    }

    public void onModuleSelect(int moduleId) {
        if (this.mController == null) {
            Log.e(TAG, "switch to onModuleSelect control null ");
        } else if (moduleId != this.mController.getCurrentModuleIndex()) {
            Log.v(TAG, "switch to module " + moduleId);
            updateLockText(false);
            this.mController.onModuleSelected(moduleId);
            updateOverlayUI();
            if (SPUtils.getLocal(Constants.KEY_SAVE_DEFAULT_FUNCTION_SELECT, 0).intValue() == -100) {
                SPUtils.saveToLocal(Constants.KEY_LAST_USE_MODULE_ID, Integer.valueOf(moduleId));
            }
        }
    }

    public void onTurnFlash(boolean on) {
        turnFlash(on);
        UsageStatistics.recordWithParamEvent(UsageStatistics.KEY_LIGHT_CLICK, on ? "open" : "close");
    }
}
