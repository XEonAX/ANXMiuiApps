package com.xiaomi.scanner.translation;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.dialog.TranslateSelectLangDialog;
import com.xiaomi.scanner.dialog.TranslateSelectLangDialog.ConfirmClick;
import com.xiaomi.scanner.dialog.TranslateWordLangDialog;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationResult;
import com.xiaomi.scanner.translation.bean.TranslateResult;
import com.xiaomi.scanner.translation.widget.ChooseLangView;
import com.xiaomi.scanner.translation.widget.ChooseLangView.LangViewClick;
import com.xiaomi.scanner.translation.widget.TranslateResultContainer;
import com.xiaomi.scanner.translation.widget.TranslateResultContainer.TranslateUICallback;
import com.xiaomi.scanner.translation.widget.WordSelectView;
import com.xiaomi.scanner.ui.Switch;
import com.xiaomi.scanner.ui.TranslateLineView;
import com.xiaomi.scanner.util.HttpUtils.ResponseCallback;
import java.util.ArrayList;
import java.util.List;

public class TranslationModuleUI extends ResponseCallback<TranslateResult> implements OnCheckedChangeListener, TranslateUICallback, LangViewClick, ConfirmClick {
    private static final Tag TAG = new Tag("TranslationModuleUI");
    private ScanActivity mActivity;
    private AppUI mAppUi = this.mActivity.getAppUI();
    private ChooseLangView mChooseLangView;
    private ViewGroup mFullScreenRoot;
    private TranslateLineView mLineView;
    private TranslationModule mModule;
    private final ViewGroup mModuleRoot;
    private TranslateResultContainer mPhotoResultContainer;
    private Switch mSwitch;
    private TranslationAdapter mTranslationAdapter;
    private boolean mWordLock;
    private WordSelectView mWordSelectView;

    public TranslationModuleUI(ScanActivity activity, View parent, TranslationAdapter translationAdapter, TranslationModule module) {
        this.mModule = module;
        this.mActivity = activity;
        this.mTranslationAdapter = translationAdapter;
        this.mModuleRoot = (ViewGroup) parent.findViewById(R.id.module_ui_layout);
        this.mActivity.getLayoutInflater().inflate(R.layout.translation_module, this.mModuleRoot, true);
        this.mFullScreenRoot = (FrameLayout) parent.findViewById(R.id.full_screen_panel_layout);
        this.mSwitch = (Switch) this.mModuleRoot.findViewById(R.id.translation_type);
        this.mSwitch.setOnCheckedChangeListener(this);
        this.mChooseLangView = (ChooseLangView) this.mModuleRoot.findViewById(R.id.choose_lang_view);
        this.mChooseLangView.setLangViewClick(this);
        this.mLineView = (TranslateLineView) parent.findViewById(R.id.line_view);
        this.mSwitch.setChecked(false);
        if (isWordDetect()) {
            initWordTranslateView();
        }
        changeTranslationType();
    }

    private void initWordTranslateView() {
        if (this.mWordSelectView == null) {
            this.mWordSelectView = (WordSelectView) this.mModuleRoot.findViewById(R.id.word_select_view);
            this.mWordSelectView.setTranslateAdapterAndModuleUi(this.mTranslationAdapter, this);
        }
    }

    public boolean isWordDetect() {
        return this.mSwitch.isChecked();
    }

    public boolean isPreview() {
        if (this.mFullScreenRoot != null && this.mFullScreenRoot.getVisibility() == 0) {
            return false;
        }
        return true;
    }

    public Rect getWordRect() {
        if (this.mWordSelectView != null) {
            return new Rect(this.mWordSelectView.getPreviewRect());
        }
        return new Rect();
    }

    public void updatePrompt() {
        if (this.mWordSelectView != null) {
            this.mWordSelectView.updatePrompt();
        }
    }

    public void onResume() {
        updatePrompt();
    }

    public void onPause() {
        if (this.mPhotoResultContainer != null) {
            this.mPhotoResultContainer.hideLoadingAndError();
        }
    }

    public void onDestroy() {
        if (this.mWordSelectView != null) {
            this.mWordSelectView.clear();
        }
        this.mWordLock = false;
    }

    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        Log.v(TAG, "onCheckedChanged");
        if (isWordDetect()) {
            initWordTranslateView();
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_CHANGE_TYPE);
        changeTranslationType();
        this.mModule.switchScanType();
    }

    private void changeTranslationType() {
        boolean z = false;
        resetWordResult();
        if (isWordDetect()) {
            this.mLineView.setVisibility(8);
            this.mWordSelectView.setVisibility(0);
            UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_AUTO_SELECT_WORD_TAB);
            this.mChooseLangView.updateLang(this.mTranslationAdapter.getSourceEntry(), this.mTranslationAdapter.getDestEntry());
        } else {
            this.mLineView.setVisibility(0);
            if (!(this.mActivity.getOrientationManager() == null || this.mActivity.getOrientationManager().getDeviceOrientation() == null)) {
                updateTranslateOrientation(this.mActivity.getOrientationManager().getDeviceOrientation().getDegrees());
            }
            if (this.mWordSelectView != null) {
                this.mWordSelectView.setVisibility(8);
            }
            UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_LONG_WORD_TAB);
            this.mChooseLangView.updateLang(TranslateModel.getInstance().getSrcLang(), TranslateModel.getInstance().getDesLang());
        }
        ChooseLangView chooseLangView = this.mChooseLangView;
        if (!isWordDetect()) {
            z = true;
        }
        chooseLangView.setHasConvertFunction(z);
        this.mActivity.getAppUI().updateOverlayUI();
    }

    public void setOcrResult(TranslationResult result) {
        if (isWordDetect() && result.isOcrOnly() && result.getCredibility()) {
            setWordResultUI(8, result.getOcrResult(), null, null, null);
        }
    }

    public void setWordResult(TranslationResult result) {
        if (isWordDetect() && !this.mWordLock && result != null && result.isDefinitionFound() && result.isOcrSuccess()) {
            setWordResultUI(8, result.getOcrResult(), result.getSymbols(), result.getDefinition(), result.getMoreDefinition());
            this.mWordSelectView.setTranslationResult(result);
        } else if (this.mPhotoResultContainer != null) {
            this.mPhotoResultContainer.hideLoadingAndError();
        }
    }

    public void updateWordLock(boolean lock) {
        if (isWordDetect()) {
            this.mWordLock = lock;
            if (!lock) {
                resetWordResult();
            }
        }
    }

    public void resetWordResult() {
        this.mWordLock = false;
        setWordResultUI(0, null, null, null, null);
    }

    private void setWordResultUI(int promptVisible, CharSequence ocrStr, CharSequence symbolStr, CharSequence definitionStr, CharSequence moreStr) {
        if (this.mWordSelectView != null) {
            this.mWordSelectView.setWordResultUI(promptVisible, ocrStr, symbolStr, definitionStr, moreStr);
        }
        AppUI appUI = this.mAppUi;
        boolean z = (TextUtils.isEmpty(ocrStr) && TextUtils.isEmpty(symbolStr) && TextUtils.isEmpty(definitionStr)) ? false : true;
        appUI.updateLockText(z);
    }

    private void changeFullScreenUI(int fullScreenUI) {
        this.mFullScreenRoot.setVisibility(fullScreenUI);
    }

    public boolean onBackPressed() {
        if (isPreview()) {
            return false;
        }
        if (this.mPhotoResultContainer == null || !this.mPhotoResultContainer.onBackPressed()) {
            backClick();
        }
        return true;
    }

    private void initTranslateUI() {
        if (this.mPhotoResultContainer == null) {
            this.mPhotoResultContainer = new TranslateResultContainer(this.mActivity, this);
            this.mPhotoResultContainer.setCallback(this);
            this.mFullScreenRoot.addView(this.mPhotoResultContainer, new LayoutParams(-1, -1));
        }
        this.mPhotoResultContainer.setVisibility(0);
    }

    public void showTranslateView(Bitmap bitmap) {
        changeFullScreenUI(0);
        initTranslateUI();
        this.mPhotoResultContainer.updateBgView(bitmap);
    }

    public void backClick() {
        changeFullScreenUI(8);
        if (isWordDetect()) {
            this.mChooseLangView.updateLang(this.mTranslationAdapter.getSourceEntry(), this.mTranslationAdapter.getDestEntry());
        } else {
            this.mChooseLangView.updateLang(TranslateModel.getInstance().getSrcLang(), TranslateModel.getInstance().getDesLang());
        }
    }

    public void onSuccess(TranslateResult obj) {
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_RESULT);
        initTranslateUI();
        if (this.mFullScreenRoot.getVisibility() == 0) {
            this.mPhotoResultContainer.updateTranslateResult(obj, TranslateModel.getInstance().useLocalRotate() ? getTakePhotoOrientation(true) : obj.getDegree());
        }
    }

    public void onFail(int code) {
        super.onFail(code);
        initTranslateUI();
        this.mPhotoResultContainer.showError();
    }

    public void finishCurrentTranslation() {
        if (this.mModule != null) {
            this.mModule.finishCurrentTranslation();
        }
    }

    public void onConvertClick(String newSrc, String newDes) {
        onSelectClick();
    }

    public void onSelectClick() {
        if (!isWordDetect()) {
            List<String> srcLangs = new ArrayList(TranslateModel.getInstance().getSrcLangList());
            List<String> desLangs = new ArrayList(TranslateModel.getInstance().getDesLangList());
            TranslateSelectLangDialog.showDialog(this.mActivity, this, TranslateModel.getInstance().getSrcLang(), TranslateModel.getInstance().getDesLang(), srcLangs, desLangs);
        } else if (this.mTranslationAdapter != null) {
            finishCurrentTranslation();
            TranslateWordLangDialog.showDialog(this.mActivity, this, this.mTranslationAdapter);
        }
    }

    public void onConfirmClick(String selectSrc, String selectDes) {
        this.mChooseLangView.updateLang(selectSrc, selectDes);
        if (isWordDetect()) {
            if (this.mTranslationAdapter != null) {
                this.mTranslationAdapter.updateSelection(selectSrc, selectDes);
            }
            resetWordResult();
            return;
        }
        TranslateModel.getInstance().updateLangs(selectSrc, selectDes);
    }

    public void updateTranslateOrientation(int orientation) {
        if (this.mLineView != null && isPreview()) {
            this.mLineView.updateOrientation(orientation);
        }
    }

    public int getTakePhotoOrientation(boolean result) {
        if (this.mLineView != null) {
            return result ? this.mLineView.getRotateDegree() : this.mLineView.getDegree();
        } else {
            return 0;
        }
    }
}
