package com.miui.gallery.activity;

import android.content.ContentUris;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.permission.core.PermissionUtils;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.PhotoPageFragment;
import com.miui.gallery.util.BrightnessProvider;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.ProcessingMediaHelper;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.view.BrightnessManager;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.NonViewAware;

public class ExternalPhotoPageActivity extends BaseActivity implements BrightnessProvider {
    private static final String[] REQUIRED_RUNTIME_PERMISSIONS = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
    private BrightnessManager mBrightnessManager;
    private boolean mSupportWindowAnim;

    public float getManualBrightness() {
        return this.mBrightnessManager == null ? -1.0f : this.mBrightnessManager.getManualBrightness();
    }

    public float getAutoBrightness() {
        return this.mBrightnessManager == null ? -1.0f : this.mBrightnessManager.getAutoBrightness();
    }

    public void onCreate(Bundle savedInstanceState) {
        prepareIfFromCamera();
        super.onCreate(savedInstanceState);
        String callingPackage = IntentUtil.getCallingPackage(this);
        String str = "photo";
        String str2 = "external_view_photo";
        if (TextUtils.isEmpty(callingPackage)) {
            callingPackage = "Unknown";
        }
        BaseSamplingStatHelper.recordStringPropertyEvent(str, str2, callingPackage);
    }

    private boolean isCameraPreview() {
        Intent intent = getIntent();
        if (intent == null || !intent.getBooleanExtra("from_MiuiCamera", false)) {
            return false;
        }
        return true;
    }

    private void prepareIfFromCamera() {
        Intent intent = getIntent();
        if (intent != null && intent.getData() != null && intent.getExtras() != null) {
            Bundle extras = intent.getExtras();
            if (isCameraPreview()) {
                int supportWidth = getResources().getInteger(R.integer.photo_page_anim_support_width);
                int supportHeight = getResources().getInteger(R.integer.photo_page_anim_support_height);
                if (ScreenUtils.getScreenWidth() == supportWidth && ScreenUtils.getScreenHeight() == supportHeight) {
                    getWindow().setWindowAnimations(R.style.f43Animation.CameraPreview);
                    this.mSupportWindowAnim = true;
                }
                Uri data = intent.getData();
                String uri = data.toString();
                intent.putExtra("photo_count", 1);
                intent.putExtra("photo_init_position", 0);
                intent.putExtra("photo_transition_data", new ImageLoadParams(ContentUris.parseId(data), uri, getImageSize(ProcessingMediaHelper.getInstance().isMediaInProcessing(uri)), null, 0, MediaStoreUtils.getMineTypeFromUri(data), -1));
                preloadThumbnail(uri);
                this.mBrightnessManager = new BrightnessManager(this, (1.0f * ((float) (extras.getInt("camera-brightness-manual", -1) == -1 ? extras.getInt("camera-brightness", -1) : extras.getInt("camera-brightness-manual", -1)))) / 255.0f, extras.getFloat("camera-brightness-auto", -1.0f));
            }
        }
    }

    private static ImageSize getImageSize(boolean withBlurEffect) {
        if (withBlurEffect) {
            return ThumbConfig.get().sMicroTargetSize;
        }
        return new ImageSize(ScreenUtils.getScreenWidth(), ScreenUtils.getScreenHeight());
    }

    public static void preloadThumbnail(String uri) {
        preloadThumbnail(uri, ProcessingMediaHelper.getInstance().isMediaInProcessing(uri));
    }

    public static void preloadThumbnail(String uri, boolean withBlurEffect) {
        if (PermissionUtils.checkPermission(GalleryApp.sGetAndroidContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
            ImageSize imageSize = getImageSize(withBlurEffect);
            Builder builder = new Builder().cloneFrom(ThumbConfig.THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT);
            builder.loadFromBigPhotoCache(true).imageScaleType(ImageScaleType.EXACTLY).delayCacheThumbnail(true).cacheInMemory(true).highPriority(true);
            DisplayImageOptions options = builder.build();
            if (withBlurEffect) {
                options = ThumbConfig.appendBlurOptions(options);
            }
            ImageAware viewAware = new NonViewAware(imageSize, ViewScaleType.FIT_INSIDE);
            ImageLoader.getInstance().resume();
            ImageLoader.getInstance().displayImage(uri, viewAware, options);
            return;
        }
        Log.w("ExternalPhotoPageActivity", "Can't access external storage, relate permission is ungranted");
    }

    public void finish() {
        if (VERSION.SDK_INT >= 21) {
            finishAndRemoveTask();
        } else {
            super.finish();
        }
        if (this.mSupportWindowAnim) {
            overridePendingTransition(R.anim.photo_page_close_enter, R.anim.photo_page_close_exit);
        }
    }

    public void onActivityReenter(int resultCode, Intent data) {
        PhotoPageFragment fragment = (PhotoPageFragment) getFragmentManager().findFragmentByTag("PhotoPageFragment");
        if (fragment != null) {
            fragment.onActivityReenter(resultCode, data);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (getFragmentManager().getBackStackEntryCount() == 0) {
            PhotoPageFragment fragment = (PhotoPageFragment) getFragmentManager().findFragmentByTag("PhotoPageFragment");
            if (fragment != null) {
                fragment.onActivityResult(requestCode, resultCode, data);
            }
        }
    }

    public void onPermissionsChecked(String[] permissions, int[] grantResults) {
        super.onPermissionsChecked(permissions, grantResults);
        Intent intent = getIntent();
        if (intent != null) {
            Uri uri = intent.getData();
            if (uri != null) {
                if (((PhotoPageFragment) getFragmentManager().findFragmentByTag("PhotoPageFragment")) == null) {
                    startFragment(PhotoPageFragment.newInstance(uri, intent.getType(), intent.getExtras(), 0), "PhotoPageFragment", false, true);
                    return;
                }
                return;
            }
        }
        finish();
        startMainActivity();
    }

    private void startMainActivity() {
        Intent i = new Intent("android.intent.action.MAIN");
        i.setPackage(getPackageName());
        i.addFlags(67108864);
        startActivity(i);
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    protected int getFragmentContainerId() {
        return 16908290;
    }

    protected void onPause() {
        super.onPause();
        ImageLoader.getInstance().pause();
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onPause();
        }
    }

    protected void onResume() {
        super.onResume();
        ImageLoader.getInstance().resume();
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onResume();
        }
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onWindowFocusChanged(hasFocus);
        }
    }

    public void onBackPressed() {
        if (getFragmentManager().getBackStackEntryCount() == 0) {
            PhotoPageFragment fragment = (PhotoPageFragment) getFragmentManager().findFragmentByTag("PhotoPageFragment");
            if (fragment != null && fragment.isVisible() && fragment.onBackPressed()) {
                return;
            }
        }
        super.onBackPressed();
    }

    public String[] getRuntimePermissions() {
        return REQUIRED_RUNTIME_PERMISSIONS;
    }
}
