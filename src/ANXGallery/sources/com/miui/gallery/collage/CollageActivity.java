package com.miui.gallery.collage;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.android.internal.WindowCompat;
import com.miui.gallery.R;
import com.miui.gallery.activity.ExternalPhotoPageActivity;
import com.miui.gallery.collage.core.CollagePresenter;
import com.miui.gallery.collage.core.Effect;
import com.miui.gallery.collage.core.ViewInterface;
import com.miui.gallery.picker.PickGalleryActivity;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SystemUiUtil;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import miui.app.ProgressDialog;

public class CollageActivity extends Activity implements ViewInterface {
    private BitmapLoaderListener mBitmapLoaderListener = new BitmapLoaderListener() {
        public void onBitmapLoad(Bitmap[] bitmaps) {
            CollageActivity.this.onBitmapDecodeFinishAfterChoose();
        }

        public void onBitmapReplace(Bitmap from, Bitmap to) {
            CollageActivity.this.notifyBitmapReplace(from, to);
        }
    };
    private BitmapManager mBitmapManager;
    private TextView mCancel;
    private OnClickListener mCancelListener = new OnClickListener() {
        public void onClick(View v) {
            CollageActivity.this.finish();
        }
    };
    private OnCheckedChangeListener mCheckedChangeListener = new OnCheckedChangeListener() {
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                CollageActivity.this.onSelectRadio(buttonView);
            }
        }
    };
    private int mCurrentImageSize = 1;
    private CollagePresenter mCurrentPresenter;
    private View mLoadingProgressView;
    private CollagePresenter[] mPresenters;
    private RadioGroup mRadioGroup;
    private Rect mRectTemp = new Rect();
    private View mRenderContainer;
    private Bitmap mReplaceBitmapFrom;
    private ViewGroup mRootView;
    private TextView mSave;
    private OnClickListener mSaveListener = new OnClickListener() {
        public void onClick(View v) {
            if (CollageActivity.this.mCurrentPresenter != null && !CollageActivity.this.mCurrentPresenter.isActivating()) {
                CollageActivity.this.mCurrentPresenter.doSave(CollageActivity.this.mBitmapManager);
            }
        }
    };
    private ProgressDialog mSaveProgressDialog;

    public interface ReplaceImageListener {
        void onReplace(Bitmap bitmap);
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(null);
        WindowCompat.setCutoutModeShortEdges(getWindow());
        getWindow().setFlags(1024, 1024);
        SystemUiUtil.setDrawSystemBarBackground(getWindow());
        setContentView(R.layout.collage_main);
        init();
        findViews();
        resolveIntent();
        initPresenter();
        initView();
    }

    private void init() {
        this.mBitmapManager = new BitmapManager(this, this.mBitmapLoaderListener);
    }

    private void initPresenter() {
        List<CollagePresenter> collagePresenters = new ArrayList();
        for (Effect generatePresenter : Effect.values()) {
            CollagePresenter presenter = generatePresenter.generatePresenter();
            if (presenter.supportImageSize(this.mCurrentImageSize)) {
                presenter.setImageSize(this.mCurrentImageSize);
                collagePresenters.add(presenter);
            }
        }
        this.mPresenters = new CollagePresenter[collagePresenters.size()];
        collagePresenters.toArray(this.mPresenters);
    }

    private void initView() {
        for (CollagePresenter presenter : this.mPresenters) {
            RadioButton radioButton = (RadioButton) LayoutInflater.from(this).inflate(R.layout.collage_radio_item, this.mRadioGroup, false);
            this.mRadioGroup.addView(radioButton);
            radioButton.setText(presenter.getTitle());
            radioButton.setContentDescription(radioButton.getText());
            radioButton.setOnCheckedChangeListener(this.mCheckedChangeListener);
        }
        this.mRadioGroup.check(this.mRadioGroup.getChildAt(0).getId());
        this.mCancel.setOnClickListener(this.mCancelListener);
        this.mSave.setOnClickListener(this.mSaveListener);
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (this.mCurrentPresenter != null) {
            this.mCurrentPresenter.onAttachFragment(fragment);
        }
    }

    private void onSelectRadio(View radioButton) {
        onSelectPresenter(this.mRadioGroup.indexOfChild(radioButton));
    }

    private void onSelectPresenter(int index) {
        CollagePresenter presenter = this.mPresenters[index];
        presenter.attach(this);
        FragmentManager fragmentManager = getFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        if (this.mCurrentPresenter != null) {
            fragmentTransaction.hide(fragmentManager.findFragmentByTag(this.mCurrentPresenter.getMenuFragmentTag()));
            fragmentTransaction.hide(fragmentManager.findFragmentByTag(this.mCurrentPresenter.getRenderFragmentTag()));
        }
        this.mCurrentPresenter = presenter;
        String menuTag = presenter.getMenuFragmentTag();
        String renderTag = presenter.getRenderFragmentTag();
        Fragment menuFragment = fragmentManager.findFragmentByTag(menuTag);
        Fragment renderFragment = fragmentManager.findFragmentByTag(renderTag);
        if (renderFragment == null) {
            fragmentTransaction.add(R.id.render_fragment_container, presenter.getRenderFragment(), renderTag);
        } else {
            fragmentTransaction.show(renderFragment);
        }
        if (menuFragment == null) {
            fragmentTransaction.add(R.id.menu_fragment_container, presenter.getMenuFragment(), menuTag);
        } else {
            fragmentTransaction.show(menuFragment);
        }
        fragmentTransaction.commit();
        fragmentManager.executePendingTransactions();
    }

    private void notifyBitmapsReceive() {
        if (!this.mBitmapManager.isEmpty()) {
            dismissLoading();
            for (CollagePresenter presenter : this.mPresenters) {
                presenter.notifyReceiveBitmaps();
            }
            enableButton();
        }
    }

    private void dismissLoading() {
        if (this.mLoadingProgressView != null) {
            this.mRootView.removeView(this.mLoadingProgressView);
            this.mLoadingProgressView = null;
        }
    }

    private void notifyBitmapReplace(Bitmap from, Bitmap to) {
        for (CollagePresenter presenter : this.mPresenters) {
            presenter.notifyBitmapReplace(from, to);
        }
    }

    public void onAttachedToWindow() {
        if (WindowCompat.isNotch(this)) {
            SystemUiUtil.extendToStatusBar(getWindow().getDecorView());
        }
    }

    private void resolveIntent() {
        Intent intent = getIntent();
        if (intent != null) {
            BaseSamplingStatHelper.recordCountEvent("collage", "collage_enter");
            receiveImages(intent.getClipData());
        }
    }

    private Uri resolveUri(Uri uri) {
        if (uri.getAuthority().equals("com.miui.gallery.open")) {
            return Uri.fromFile(new File(uri.getLastPathSegment()));
        }
        return uri;
    }

    private void findViews() {
        this.mRadioGroup = (RadioGroup) findViewById(R.id.collage_title_parent);
        this.mSave = (TextView) findViewById(R.id.collage_save);
        this.mCancel = (TextView) findViewById(R.id.collage_back);
        this.mRenderContainer = findViewById(R.id.render_fragment_container);
        this.mLoadingProgressView = findViewById(R.id.progress_view);
        this.mRootView = (ViewGroup) findViewById(R.id.collage_root);
    }

    private void startPicker(int requestCode, int max) {
        Intent intent = new Intent(this, PickGalleryActivity.class);
        intent.setType("image/*");
        intent.putExtra("pick-upper-bound", max);
        startActivityForResult(intent, requestCode);
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Log.d("CollageActivity", "onActivityResult");
        switch (requestCode) {
            case 0:
                switch (resultCode) {
                    case -1:
                        receiveImages(data.getClipData());
                        return;
                    default:
                        finish();
                        return;
                }
            case 1:
                switch (resultCode) {
                    case -1:
                        this.mBitmapManager.replaceBitmap(this.mReplaceBitmapFrom, resolveUri(data.getData()));
                        return;
                    default:
                        return;
                }
            default:
                return;
        }
    }

    public void onSaving() {
        showProgressDialog();
    }

    public void onSaveFinish(String outPath, boolean success) {
        if (success && !TextUtils.isEmpty(outPath)) {
            gotoPhotoPage(outPath);
        }
        setResult(-1);
        finish();
    }

    public void onReplaceBitmap(Bitmap from) {
        if (from != null) {
            Log.d("CollageActivity", "replace bitmap : %s", (Object) from);
            this.mReplaceBitmapFrom = from;
            startPicker(1, 1);
        }
    }

    public Bitmap[] getBitmaps() {
        return this.mBitmapManager.data();
    }

    public Context getContext() {
        return this;
    }

    private void showProgressDialog() {
        this.mSaveProgressDialog = new ProgressDialog(this);
        this.mSaveProgressDialog.setMessage(getString(R.string.photo_editor_saving));
        this.mSaveProgressDialog.setCancelable(false);
        this.mSaveProgressDialog.setCanceledOnTouchOutside(false);
        this.mSaveProgressDialog.setIndeterminate(true);
        this.mSaveProgressDialog.show();
    }

    private void gotoPhotoPage(String path) {
        Intent intent = new Intent(this, ExternalPhotoPageActivity.class);
        intent.setData(Uri.fromFile(new File(path)));
        startActivity(intent);
    }

    private void receiveImages(ClipData clipData) {
        int count = Math.min(clipData.getItemCount(), 6);
        Uri[] uris = new Uri[count];
        for (int i = 0; i < count; i++) {
            uris[i] = resolveUri(clipData.getItemAt(i).getUri());
        }
        this.mCurrentImageSize = count;
        decodeBitmapAsync(uris);
    }

    private void decodeBitmapAsync(Uri[] uris) {
        this.mBitmapManager.loadBitmapAsync(uris);
    }

    private void onBitmapDecodeFinishAfterChoose() {
        if (!this.mBitmapManager.isEmpty()) {
            this.mCurrentImageSize = this.mBitmapManager.size();
            notifyBitmapsReceive();
        }
    }

    private void enableButton() {
        this.mSave.setEnabled(true);
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0 && this.mRenderContainer != null) {
            this.mRenderContainer.getGlobalVisibleRect(this.mRectTemp);
            if (!this.mRectTemp.contains(Math.round(ev.getX()), Math.round(ev.getY()))) {
                this.mCurrentPresenter.dismissControlWindow();
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    public static void startPicker(Context context) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        intent.putExtra("pick-upper-bound", 6);
        intent.putExtra("pick_intent", new Intent(context, CollageActivity.class));
        intent.putExtra("pick_close_type", 3);
        intent.setPackage("com.miui.gallery");
        context.startActivity(intent);
    }

    protected void onResume() {
        super.onResume();
        ImageLoader.getInstance().resume();
    }

    protected void onPause() {
        super.onPause();
        ImageLoader.getInstance().pause();
    }

    protected void onDestroy() {
        if (this.mSaveProgressDialog != null) {
            this.mSaveProgressDialog.dismiss();
        }
        for (CollagePresenter presenter : this.mPresenters) {
            presenter.detach();
        }
        if (this.mBitmapManager != null) {
            this.mBitmapManager.setBitmapLoaderListener(null);
        }
        super.onDestroy();
    }
}
