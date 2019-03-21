package com.miui.gallery.editor.photo.app;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.miui.arcsoftbeauty.ArcsoftBeautyJni;
import com.miui.filtersdk.BeautificationSDK;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.compat.app.ActivityCompat;
import com.miui.gallery.compat.app.ActivityCompat.SharedElementCallback;
import com.miui.gallery.compat.transition.TransitionCompat;
import com.miui.gallery.compat.view.WindowCompat;
import com.miui.gallery.editor.photo.app.AlertDialogFragment.Builder;
import com.miui.gallery.editor.photo.app.AlertDialogFragment.Callbacks;
import com.miui.gallery.editor.photo.app.DraftManager.OnPreviewRefreshListener;
import com.miui.gallery.editor.photo.app.adjust.AdjustFragment;
import com.miui.gallery.editor.photo.app.beautify.BeautifyFragment;
import com.miui.gallery.editor.photo.app.crop.CropFragment;
import com.miui.gallery.editor.photo.app.doodle.DoodleMenuFragment;
import com.miui.gallery.editor.photo.app.filter.FilterFragment;
import com.miui.gallery.editor.photo.app.frame.FrameMenuFragment;
import com.miui.gallery.editor.photo.app.longcrop.LongCropFragment;
import com.miui.gallery.editor.photo.app.miuibeautify.MiuiBeautyFragment;
import com.miui.gallery.editor.photo.app.mosaic.MosaicMenuFragment;
import com.miui.gallery.editor.photo.app.navigator.PhotoNaviFragment;
import com.miui.gallery.editor.photo.app.navigator.ScreenshotNaviFragment;
import com.miui.gallery.editor.photo.app.remover.Inpaint;
import com.miui.gallery.editor.photo.app.remover.RemoverFragment;
import com.miui.gallery.editor.photo.app.sticker.StickerFragment;
import com.miui.gallery.editor.photo.app.text.TextMenuFragment;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.GLFragment;
import com.miui.gallery.editor.photo.core.GLFragment.GLContext.OnCreatedListener;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderFragment;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.origin.EditorOriginHandler;
import com.miui.gallery.editor.photo.utils.Callback;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.module.GalleryModuleManager;
import com.miui.gallery.module.GalleryModuleManager.ModuleLoadListener;
import com.miui.gallery.permission.PermissionIntroductionUtils;
import com.miui.gallery.permission.core.OnPermissionIntroduced;
import com.miui.gallery.permission.core.PermissionCheckCallback;
import com.miui.gallery.permission.core.PermissionCheckHelper;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.scanner.SaveToCloudUtil;
import com.miui.gallery.scanner.SaveToCloudUtil.SaveParams;
import com.miui.gallery.sdk.editor.Constants;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SystemUiUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.view.BrightnessManager;
import com.miui.privacy.LockSettingsHelper;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import miui.view.animation.CubicEaseInOutInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;

public class PhotoEditor extends Activity implements PermissionCheckCallback {
    private ArrayList<Integer> mActivatedEffects;
    private Intent mActivityIntent;
    private int mActivityResult = 0;
    private Callbacks mAlertDialogCallbacks = new Callbacks() {
        public void onClick(AlertDialogFragment dialog, int which) {
            Log.d("PhotoEditor", "confirm dialog from %s, event is %d", dialog == null ? "unknown" : dialog.getTag(), Integer.valueOf(which));
            if ("main_alert_dialog".equals(dialog.getTag())) {
                if (which == -1) {
                    PhotoEditor.this.mNavigatorCallbacks.onExport();
                } else if (which == -2) {
                    PhotoEditor.this.mNavigatorCallbacks.onDiscard();
                }
            } else if ("menu_alert_dialog".equals(dialog.getTag())) {
                Fragment fragment = PhotoEditor.this.mFragments.findFragmentById(R.id.menu_panel);
                if (!(fragment instanceof MenuFragment)) {
                    return;
                }
                if (which == -1) {
                    PhotoEditor.this.mMenuCallback.onSave((MenuFragment) fragment);
                } else if (which == -2) {
                    PhotoEditor.this.mMenuCallback.onDiscard((MenuFragment) fragment);
                }
            }
        }

        public void onCancel(AlertDialogFragment dialog) {
        }

        public void onDismiss(AlertDialogFragment dialog) {
        }
    };
    private BrightnessManager mBrightnessManager;
    private long mCreateTime;
    private Callbacks mDecoderCallbacks = new Callbacks() {
        public int doInitialize() {
            SdkManager.INSTANCE.onAttach(PhotoEditor.this.getApplication());
            SdkManager.INSTANCE.onActivityCreate();
            boolean result = false;
            try {
                DraftManager draftManager = PhotoEditor.this.mDraftManager;
                if (draftManager != null) {
                    result = draftManager.initializeForPreview(PhotoEditor.this.mEditorOriginHandler.isInMainProcess());
                }
                if (result) {
                    return 3;
                }
                return 2;
            } catch (Throwable e) {
                Log.w("PhotoEditor", e);
                return 1;
            } catch (Throwable e2) {
                Log.w("PhotoEditor", e2);
                return 2;
            }
        }

        public void onDone() {
            Fragment fragment = PhotoEditor.this.mFragments.findFragmentByTag("preview");
            final PreviewFragment preview = (PreviewFragment) fragment;
            if (fragment != null && fragment.isAdded()) {
                preview.setLoadDone(true);
                preview.showForLoadDown();
                if (PhotoEditor.this.mDraftManager != null) {
                    PhotoEditor.this.mDraftManager.setOnPreviewRefreshListener(new OnPreviewRefreshListener() {
                        public void onRefresh(Bitmap bitmap) {
                            preview.refreshPreview(bitmap);
                        }
                    });
                }
            }
            PhotoEditor.this.mTransitionConfig.onImageLoaded();
        }
    };
    private DraftManager mDraftManager;
    private EditorOriginHandler mEditorOriginHandler;
    private Callbacks mExportCallbacks = new Callbacks() {
        private long mStartTime;

        public boolean doExport() {
            DraftManager draftManager = PhotoEditor.this.mDraftManager;
            if (draftManager == null) {
                return false;
            }
            this.mStartTime = System.currentTimeMillis();
            PhotoEditor.this.mTaskInfo.prepareToExport(draftManager);
            Log.d("PhotoEditor", "doExport start");
            boolean finish = PhotoEditor.this.mEditorOriginHandler.doExport(draftManager, PhotoEditor.this.mTaskInfo.getExportUri());
            Log.d("PhotoEditor", "doExport end, use time: %d", Long.valueOf(System.currentTimeMillis() - this.mStartTime));
            finish = PhotoEditor.this.mTaskInfo.onExport(finish, draftManager);
            sampleExportTime("compress_finished", System.currentTimeMillis() - this.mStartTime);
            return finish;
        }

        public void onCancelled(boolean success) {
            PhotoEditor.this.mTaskInfo.onCancelled(success);
            sampleExportTime("compress_cancelled", System.currentTimeMillis() - this.mStartTime);
        }

        public void onExported(boolean success) {
            PhotoEditor.this.mTaskInfo.onPostExport(success);
            if (success) {
                PhotoEditor.this.mTaskInfo.preFinish();
                PhotoEditor.this.onActivityFinish(true);
                ActivityCompat.finishAfterTransition(PhotoEditor.this);
                return;
            }
            PhotoEditor.this.mTaskInfo.closeExportDialog();
            ToastUtils.makeText(PhotoEditor.this, (int) R.string.main_save_error_msg);
        }

        private void sampleExportTime(String event, long milli) {
            PhotoEditor.this.mSampler.recordNumericEvent("_main", event, milli / 100);
        }
    };
    private FragmentData[] mFragmentData = new FragmentData[Effect.values().length];
    private FragmentManager mFragments;
    private OnViewReadyListener mGLMaskOutReadyListener = new OnViewReadyListener() {
        public void onViewReady() {
            MenuFragment menu = PhotoEditor.this.findActiveMenu();
            if (menu != null) {
                PhotoEditor.this.onExit(menu);
            } else {
                Log.i("PhotoEditor", "menu already exit.");
            }
        }
    };
    private OnCreatedListener mGLReadyListener = new OnCreatedListener() {
        public void onCreated() {
            Fragment mask = PhotoEditor.this.mFragments.findFragmentByTag("gl_mask_in");
            if (mask != null) {
                PhotoEditor.this.mFragments.beginTransaction().remove(mask).commitAllowingStateLoss();
                Log.d("PhotoEditor", "mGLReadyListener remove mask");
            }
        }
    };
    private InitializeController mInitializeController;
    private MenuFragment.Callbacks mMenuCallback = new MenuFragment.Callbacks() {
        public Bitmap onLoadPreview() {
            return PhotoEditor.this.mDraftManager == null ? null : PhotoEditor.this.mDraftManager.getPreview();
        }

        public Bitmap onLoadOrigin() {
            return PhotoEditor.this.mDraftManager == null ? null : PhotoEditor.this.mDraftManager.decodeOrigin();
        }

        public List<RenderData> onLoadRenderData() {
            List<RenderData> renderDataList = new ArrayList();
            if (PhotoEditor.this.mDraftManager != null) {
                PhotoEditor.this.mDraftManager.getRenderData(renderDataList);
            }
            return renderDataList;
        }

        public void onDiscard(MenuFragment menu) {
            RenderFragment display = menu.getRenderFragment();
            if (display != null && display.isAdded()) {
                sample(PhotoEditor.this.mSampleTags[menu.mEffect.ordinal()], display, "discard_detail");
                PhotoEditor.this.onExit(menu);
            }
        }

        public void onSave(MenuFragment menu) {
            RenderFragment display = menu.getRenderFragment();
            if (display == null || !display.isAdded()) {
                Log.d("PhotoEditor", "no active render fragment");
                return;
            }
            RenderData data = display.export();
            if (data != null) {
                sample(PhotoEditor.this.mSampleTags[menu.mEffect.ordinal()], display, "save_detail");
                if (PhotoEditor.this.mDraftManager != null) {
                    PhotoEditor.this.mDraftManager.enqueue(data, PhotoEditor.this.mPreviewSaveCallback);
                    return;
                }
                return;
            }
            PhotoEditor.this.mPreviewSaveCallback.onCancel();
        }

        private void sample(String tag, RenderFragment render, String event) {
            List<String> sample = render.sample();
            HashMap<String, String> args = new HashMap();
            if (sample == null || sample.isEmpty()) {
                args.put("effect", "*none*");
                PhotoEditor.this.mSampler.recordEvent(tag, event, args);
                return;
            }
            for (String effect : sample) {
                args.put("effect", effect);
                PhotoEditor.this.mSampler.recordEvent(tag, event, args);
            }
        }
    };
    private Callbacks mNavigatorCallbacks = new Callbacks() {
        public void onNavigate(Effect effect) {
            if (PhotoEditor.this.mDraftManager == null || !PhotoEditor.this.mDraftManager.isPreviewEnable()) {
                Log.w("PhotoEditor", "has not load preview when click");
            } else if (SdkManager.INSTANCE.getProvider(effect).initialized()) {
                Log.d("PhotoEditor", "navigate %s", (Object) effect);
                if (PhotoEditor.this.mFragments.getBackStackEntryCount() != 0) {
                    Log.d("PhotoEditor", "last effect editor is still active");
                    return;
                }
                FragmentData data = PhotoEditor.this.mFragmentData[effect.ordinal()];
                RenderFragment renderView = (RenderFragment) PhotoEditor.this.mFragments.findFragmentByTag(data.renderTag);
                Fragment gestureView = PhotoEditor.this.mFragments.findFragmentByTag(data.gestureTag);
                MenuFragment menu = data.newMenu();
                boolean hasTransaction = false;
                if (renderView == null) {
                    renderView = menu.createRenderFragment();
                    PhotoEditor.this.mFragments.beginTransaction().detach(renderView).add(R.id.display_panel, renderView, data.renderTag).commit();
                    hasTransaction = true;
                }
                if (renderView.isSupportBitmap(PhotoEditor.this.mDraftManager.getPreview())) {
                    if (gestureView == null) {
                        gestureView = menu.createGestureFragment();
                        if (gestureView != null) {
                            PhotoEditor.this.mFragments.beginTransaction().detach(gestureView).add(R.id.display_panel, gestureView, data.gestureTag).commit();
                            hasTransaction = true;
                        }
                    }
                    if (hasTransaction) {
                        PhotoEditor.this.mFragments.executePendingTransactions();
                    }
                    Bundle args = new Bundle();
                    PhotoEditor.this.mFragments.putFragment(args, "MenuFragment:display_fragment", renderView);
                    if (gestureView != null) {
                        PhotoEditor.this.mFragments.putFragment(args, "MenuFragment:gesture_fragment", gestureView);
                    }
                    menu.setArguments(args);
                    Fragment navi = PhotoEditor.this.mFragments.findFragmentByTag("navigator");
                    PhotoEditor.this.mFragments.beginTransaction().detach(navi).detach(PhotoEditor.this.mFragments.findFragmentByTag("preview")).addToBackStack(null).add(R.id.menu_panel, menu, data.menuTag).commit();
                    PhotoEditor.this.mFragments.executePendingTransactions();
                    if (renderView instanceof GLFragment) {
                        PreviewFragment mask = new PreviewFragment();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("overwrite_background", true);
                        mask.setArguments(bundle);
                        PhotoEditor.this.mFragments.beginTransaction().add(R.id.display_panel, mask, "gl_mask_in").commit();
                        PhotoEditor.this.mFragments.executePendingTransactions();
                    }
                    sampleNavigate(effect);
                    return;
                }
                ToastUtils.makeText(PhotoEditor.this, renderView.getUnSupportStringRes());
            } else {
                Log.w("PhotoEditor", "SdkProvider: %s has not initialized when click", effect.name());
            }
        }

        public void onDiscard() {
            PhotoEditor.this.onActivityFinish(false);
            ActivityCompat.finishAfterTransition(PhotoEditor.this);
            sampleExit("cancelled");
        }

        public void onExport() {
            PhotoEditor.this.mTaskInfo.showExportDialog();
            sampleExit("exported");
        }

        private void sampleNavigate(Effect effect) {
            PhotoEditor.this.mSampler.recordEvent(PhotoEditor.this.mSampleTags[effect.ordinal()], "enter");
        }

        private void sampleExit(String event) {
            if (PhotoEditor.this.mDraftManager != null) {
                Map<String, String> values = new HashMap();
                values.put("step_count", String.valueOf(PhotoEditor.this.mDraftManager.getStepCount()));
                values.put("total_time", String.valueOf((System.currentTimeMillis() - PhotoEditor.this.mCreateTime) / 100));
                PhotoEditor.this.mSampler.recordEvent("_main", event, values);
            }
        }
    };
    private boolean mNeedConfirmPassword;
    private PermissionCheckHelper mPermissionCheckHelper;
    private Callbacks mPreviewCallbacks = new Callbacks() {
        public Bitmap onLoadPreview() {
            return PhotoEditor.this.mDraftManager == null ? null : PhotoEditor.this.mDraftManager.getPreview();
        }

        public Bitmap onLoadPreviewOriginal() {
            return PhotoEditor.this.mDraftManager == null ? null : PhotoEditor.this.mDraftManager.getPreviewOriginal();
        }

        public boolean isPreviewChanged() {
            return PhotoEditor.this.mDraftManager != null && PhotoEditor.this.mDraftManager.getStepCount() > 0;
        }
    };
    private Callback mPreviewSaveCallback = new Callback<Bitmap, Void>() {
        public void onPrepare() {
            PhotoEditor.this.mSuspendInputs = true;
        }

        public void onDone(Bitmap o) {
            PhotoEditor.this.mSuspendInputs = false;
            MenuFragment menu = PhotoEditor.this.findActiveMenu();
            if (menu != null) {
                menu.hideProcessDialog();
                PhotoEditor.this.onExit(menu);
            }
            if (PhotoEditor.this.mDraftManager == null || PhotoEditor.this.mDraftManager.getStepCount() <= 1) {
                AbstractNaviFragment fragment = (AbstractNaviFragment) PhotoEditor.this.mFragments.findFragmentByTag("navigator");
                if (fragment.isAdded() && fragment.getView() != null) {
                    fragment.setExportEnabled(true);
                }
            }
        }

        public void onCancel() {
            PhotoEditor.this.mSuspendInputs = false;
            PhotoEditor.this.onExit(PhotoEditor.this.findActiveMenu());
        }

        public void onError(Void o) {
            PhotoEditor.this.mSuspendInputs = false;
            ToastUtils.makeText(PhotoEditor.this, (int) R.string.main_save_error_msg);
        }

        public void onExecute(Bitmap o) {
        }
    };
    private boolean mResumed;
    private String[] mSampleTags = new String[Effect.values().length];
    private Sampler mSampler;
    private boolean mSuspendInputs;
    private TaskInfo mTaskInfo;
    private TransitionConfiguration mTransitionConfig = new TransitionConfiguration(this);

    private static class FragmentData {
        final String gestureTag;
        final Class<? extends MenuFragment> menu;
        final String menuTag;
        final String renderTag;

        public FragmentData(Class<? extends MenuFragment> _class, Effect effect) {
            this.menu = _class;
            this.menuTag = effect.name() + ":menu";
            this.renderTag = effect.name() + ":render";
            this.gestureTag = effect.name() + ":gesture";
        }

        public MenuFragment newMenu() {
            try {
                return (MenuFragment) this.menu.newInstance();
            } catch (Throwable e) {
                Log.w("PhotoEditor", e);
                throw new IllegalStateException(e);
            } catch (Throwable e2) {
                Log.w("PhotoEditor", e2);
                throw new IllegalStateException(e2);
            }
        }
    }

    private static class LoadModuleCallback implements ModuleLoadListener {
        private WeakReference<PhotoEditor> mEditorActivity;
        private String mModuleName;

        public LoadModuleCallback(WeakReference<PhotoEditor> editorActivity, String moduleName) {
            this.mEditorActivity = editorActivity;
            this.mModuleName = moduleName;
        }

        public void onLoadSuccess() {
            Log.d("PhotoEditor", "load success");
            postResult();
        }

        public void onLoadFailed() {
            Log.d("PhotoEditor", "load failed");
            postResult();
            Log.d("PhotoEditor", "schedule preload typeface");
            GalleryModuleManager.getInstance().scheduleModuleDownLoadJob(this.mModuleName);
        }

        private void postResult() {
            PhotoEditor activity = (PhotoEditor) this.mEditorActivity.get();
            if (activity == null || activity.isDestroyed()) {
                Log.d("PhotoEditor", "load typeface finish, but activity is not alive");
            } else if (activity.mResumed) {
                Log.d("PhotoEditor", "load typeface finish, load photo editor fragment");
            } else {
                Log.d("PhotoEditor", "activity is paused, load photo editor fragment when resume");
            }
        }
    }

    private static class LoadModuleJob implements Job<Void> {
        private WeakReference<PhotoEditor> mEditorActivity;
        private String mModuleName;

        /* synthetic */ LoadModuleJob(PhotoEditor x0, String x1, AnonymousClass1 x2) {
            this(x0, x1);
        }

        private LoadModuleJob(PhotoEditor editorActivity, String moduleName) {
            this.mEditorActivity = new WeakReference(editorActivity);
            this.mModuleName = moduleName;
        }

        public Void run(JobContext jc) {
            PhotoEditor activity = (PhotoEditor) this.mEditorActivity.get();
            if (activity == null || activity.isDestroyed()) {
                Log.d("PhotoEditor", "activity not alive, skip load typeface");
            } else {
                Log.d("PhotoEditor", "start load text editor typeface");
                GalleryModuleManager.getInstance().loadModule(true, new LoadModuleCallback(this.mEditorActivity, this.mModuleName), this.mModuleName);
            }
            return null;
        }
    }

    private static class TaskInfo {
        private PhotoEditor mEditor;
        private ExportFragment mExportFragment;
        private Uri mExportUri;
        private boolean mExternalCall;
        private long mSecretId;
        private Uri mSource;

        private TaskInfo() {
        }

        boolean onExport(boolean success, DraftManager draftManager) {
            if (success && !this.mExternalCall) {
                Log.d("PhotoEditor", "internal call, scan to db :%s", this.mExportUri.getPath());
                if (draftManager.isSecret()) {
                    this.mSecretId = SaveToCloudUtil.saveToCloudDB(this.mEditor, new SaveParams(new File(this.mExportUri.getPath()), -1000, 8, true));
                    if (this.mSecretId <= 0) {
                        FileUtils.deleteFile(new File(this.mExportUri.getPath()));
                        return false;
                    }
                }
                MediaScanner.scanSingleFile(this.mEditor, this.mExportUri.getPath());
                MediaStoreUtils.insert(this.mEditor, this.mExportUri.getPath(), 1);
                Log.d("PhotoEditor", "internal call, scan to db done secretId:%d", Long.valueOf(this.mSecretId));
            }
            if (success && this.mSource.equals(this.mExportUri) && this.mExternalCall && "content".equals(this.mSource.getScheme()) && "media".equals(this.mSource.getAuthority())) {
                MediaStoreUtils.update(this.mExportUri);
                Log.d("PhotoEditor", "external call, update media store:%s", this.mExportUri.toString());
            }
            if (this.mSource != this.mExportUri) {
                return success;
            }
            long[] result = CloudUtils.deleteCloudByPath(this.mEditor, 55, MediaStoreUtils.getMediaFilePath(this.mExportUri.toString()));
            String str = "PhotoEditor";
            String str2 = "deleteCloudByPath path:%s,result:%s";
            Object valueOf = (result == null || result.length <= 0) ? null : String.valueOf(result[0]);
            Log.d(str, str2, path, valueOf);
            return success;
        }

        void onPostExport(boolean success) {
            if (success && this.mExternalCall && !this.mSource.equals(this.mExportUri) && "file".equals(this.mExportUri.getScheme())) {
                ToastUtils.makeTextLong(this.mEditor, this.mEditor.getString(R.string.photo_save_to_msg, new Object[]{this.mExportUri.getPath()}));
            }
        }

        void onCancelled(boolean success) {
        }

        private void preFinish() {
            if (!this.mExternalCall) {
                Log.d("PhotoEditor", "internal call, pass result");
                Intent result = new Intent();
                result.setDataAndType(GalleryOpenProvider.translateToContent(this.mExportUri.getPath()), "image/jpeg");
                result.putExtra("photo_secret_id", this.mSecretId);
                this.mEditor.setActivityResult(-1, result);
            }
        }

        void prepareToExport(DraftManager draftManager) {
            if (!this.mExternalCall) {
                this.mExportUri = Uri.fromFile(createExportFile(this.mSource, draftManager));
                Log.d("PhotoEditor", "export to a new file %s", this.mExportUri);
            } else if ("file".equals(this.mSource.getScheme()) || ("content".equals(this.mSource.getScheme()) && "media".equals(this.mSource.getAuthority()))) {
                this.mExportUri = this.mSource;
                Log.d("PhotoEditor", "export to origin file or media uri %s", this.mExportUri);
            } else {
                if (this.mEditor.checkUriPermission(this.mSource, Process.myPid(), Process.myUid(), 2) == 0) {
                    this.mExportUri = this.mSource;
                    Log.d("PhotoEditor", "export to origin uri %s", this.mExportUri);
                    return;
                }
                this.mExportUri = Uri.fromFile(createFile(null, draftManager));
                Log.d("PhotoEditor", "export to a specified dir %s", this.mExportUri);
            }
        }

        void showExportDialog() {
            this.mExportFragment = new ExportFragment();
            this.mExportFragment.setCancelable(false);
            this.mExportFragment.show(this.mEditor.mFragments.beginTransaction().addToBackStack(null), null);
        }

        void closeExportDialog() {
            if (this.mExportFragment != null && this.mExportFragment.isAdded()) {
                this.mExportFragment.dismissAllowingStateLoss();
                this.mExportFragment = null;
            }
        }

        Uri getExportUri() {
            if (this.mExportUri != null) {
                return this.mExportUri;
            }
            throw new IllegalStateException("call prepareToExport first");
        }

        Uri getSource() {
            return this.mSource;
        }

        private File createExportFile(Uri data, DraftManager draftManager) {
            String parent = null;
            if ("file".equals(data.getScheme())) {
                parent = new File(data.getPath()).getParent();
            } else if ("content".equals(data.getScheme())) {
                try {
                    Cursor cursor = this.mEditor.getContentResolver().query(data, new String[]{"_data"}, null, null, null);
                    if (cursor != null && cursor.moveToNext()) {
                        parent = new File(cursor.getString(0)).getParent();
                    }
                    IoUtils.close("PhotoEditor", cursor);
                } catch (Exception e) {
                    Log.d("PhotoEditor", "receive an exception when look for parent for %s", (Object) data);
                    IoUtils.close("PhotoEditor", null);
                } catch (Throwable th) {
                    IoUtils.close("PhotoEditor", null);
                    throw th;
                }
            }
            return createFile(parent, draftManager);
        }

        private File createFile(String parent, DraftManager draftManager) {
            CharSequence stamp = DateFormat.format("yyyyMMdd_HHmmss", System.currentTimeMillis());
            String name = String.format(Locale.US, "IMG_%s.%s", new Object[]{stamp, draftManager.getExportFileSuffix()});
            if (TextUtils.isEmpty(parent)) {
                parent = StorageUtils.getCreativeDirectory();
                FileUtils.createFolder(parent, false);
            } else if (BaseDocumentProviderUtils.needUseDocumentProvider(parent)) {
                parent = StorageUtils.getPathInPrimaryStorage(StorageUtils.getRelativePath(GalleryApp.sGetAndroidContext(), parent));
                FileUtils.createFolder(parent, false);
            }
            return FileUtils.forceCreate(parent, name, 0);
        }

        static TaskInfo from(PhotoEditor editor) {
            Intent intent = editor.getIntent();
            if (intent == null || intent.getData() == null) {
                return null;
            }
            TaskInfo task = new TaskInfo();
            task.mEditor = editor;
            task.mExternalCall = TextUtils.equals("android.intent.action.EDIT", intent.getAction());
            task.mSource = intent.getData();
            Log.d("PhotoEditor", "editting %s", task.mSource);
            return task;
        }
    }

    private static class TransitionConfiguration {
        private PhotoEditor mEditor;
        private int mEnterDuration;
        private int mExitDuration;
        private int mImageHeight;
        private int mImageWidth;
        private Matrix mMatrix;
        private int mMenuOffset;
        private String mPhotoViewName;
        private boolean mRunTransition;

        public TransitionConfiguration(PhotoEditor editor) {
            this.mEditor = editor;
        }

        void onActivityCreate() {
            boolean z = false;
            Intent intent = this.mEditor.getIntent();
            if (WindowCompat.requestActivityTransition(this.mEditor.getWindow()) && intent.getBooleanExtra("extra_custom_transition", false)) {
                z = true;
            }
            this.mRunTransition = z;
            SystemUiUtil.setDrawSystemBarBackground(this.mEditor.getWindow());
        }

        void postActivityCreate() {
            if (this.mRunTransition) {
                Intent intent = this.mEditor.getIntent();
                this.mImageWidth = intent.getIntExtra("extra_image_width", 0);
                this.mImageHeight = intent.getIntExtra("extra_image_height", 0);
                float[] rawMatrix = intent.getFloatArrayExtra("extra_image_matrix");
                this.mMatrix = new Matrix();
                this.mMatrix.setValues(rawMatrix);
                Resources res = this.mEditor.getResources();
                this.mMenuOffset = res.getDimensionPixelOffset(R.dimen.photo_editor_transition_menu_offset);
                this.mPhotoViewName = res.getString(R.string.photo_editor_transition_image_view);
                this.mEnterDuration = res.getInteger(R.integer.photo_editor_enter_transition_duration);
                this.mExitDuration = res.getInteger(R.integer.photo_editor_exit_transition_duration);
                configureEnterTransition();
                ActivityCompat.postponeEnterTransition(this.mEditor);
            }
        }

        void onImageLoaded() {
            if (this.mRunTransition) {
                ActivityCompat.startPostponedEnterTransition(this.mEditor);
            }
        }

        void onExit(boolean exported) {
            if (this.mRunTransition) {
                configureExitTransition(exported);
                ActivityCompat.setEnterSharedElementCallback(this.mEditor, new SharedElementCallback() {
                    public void onSharedElementStart() {
                        TransitionConfiguration.this.mEditor.mTaskInfo.closeExportDialog();
                    }
                });
                return;
            }
            this.mEditor.mTaskInfo.closeExportDialog();
        }

        private void configureEnterTransition() {
            TransitionSet enter = new TransitionSet();
            ImageTransition imageEnter = new ImageTransition(true, this.mMatrix, this.mImageWidth, this.mImageHeight);
            imageEnter.setInterpolator(new CubicEaseInOutInterpolator());
            TransitionCompat.addTarget(imageEnter, this.mPhotoViewName);
            MenuTransition menuEnter = new MenuTransition((float) this.mMenuOffset, true, this.mEditor.getResources());
            menuEnter.setInterpolator(new CubicEaseInOutInterpolator());
            menuEnter.addTarget(R.id.menu_panel);
            enter.addTransition(imageEnter).addTransition(menuEnter).setDuration((long) this.mEnterDuration);
            WindowCompat.setSharedElementEnterTransition(this.mEditor.getWindow(), enter);
        }

        private void configureExitTransition(boolean exported) {
            TransitionSet exit = new TransitionSet();
            Transition imageExit = exported ? new ChangeBounds() : new ImageTransition(false, this.mMatrix, this.mImageWidth, this.mImageHeight);
            imageExit.setInterpolator(new CubicEaseOutInterpolator());
            imageExit.setDuration((long) this.mExitDuration);
            TransitionCompat.addTarget(imageExit, this.mPhotoViewName);
            MenuTransition menuExit = new MenuTransition((float) this.mMenuOffset, false, this.mEditor.getResources());
            menuExit.setInterpolator(new CubicEaseOutInterpolator());
            menuExit.addTarget(R.id.menu_panel);
            exit.addTransition(imageExit).addTransition(menuExit);
            WindowCompat.setSharedElementReturnTransition(this.mEditor.getWindow(), exit);
        }
    }

    public PhotoEditor() {
        this.mFragmentData[Effect.BEAUTIFY.ordinal()] = new FragmentData(BeautifyFragment.class, Effect.BEAUTIFY);
        this.mFragmentData[Effect.ADJUST.ordinal()] = new FragmentData(AdjustFragment.class, Effect.ADJUST);
        this.mFragmentData[Effect.FILTER.ordinal()] = new FragmentData(FilterFragment.class, Effect.FILTER);
        this.mFragmentData[Effect.CROP.ordinal()] = new FragmentData(CropFragment.class, Effect.CROP);
        this.mFragmentData[Effect.TEXT.ordinal()] = new FragmentData(TextMenuFragment.class, Effect.TEXT);
        this.mFragmentData[Effect.DOODLE.ordinal()] = new FragmentData(DoodleMenuFragment.class, Effect.DOODLE);
        this.mFragmentData[Effect.STICKER.ordinal()] = new FragmentData(StickerFragment.class, Effect.STICKER);
        this.mFragmentData[Effect.LONG_CROP.ordinal()] = new FragmentData(LongCropFragment.class, Effect.LONG_CROP);
        this.mFragmentData[Effect.MOSAIC.ordinal()] = new FragmentData(MosaicMenuFragment.class, Effect.MOSAIC);
        this.mFragmentData[Effect.REMOVER.ordinal()] = new FragmentData(RemoverFragment.class, Effect.REMOVER);
        this.mFragmentData[Effect.MIUIBEAUTIFY.ordinal()] = new FragmentData(MiuiBeautyFragment.class, Effect.MIUIBEAUTIFY);
        this.mFragmentData[Effect.FRAME.ordinal()] = new FragmentData(FrameMenuFragment.class, Effect.FRAME);
        this.mSampleTags[Effect.BEAUTIFY.ordinal()] = "_beautify";
        this.mSampleTags[Effect.ADJUST.ordinal()] = "_enhance";
        this.mSampleTags[Effect.FILTER.ordinal()] = "_filter";
        this.mSampleTags[Effect.CROP.ordinal()] = "_crop";
        this.mSampleTags[Effect.STICKER.ordinal()] = "_sticker";
        this.mSampleTags[Effect.LONG_CROP.ordinal()] = "_beautify";
        this.mSampleTags[Effect.TEXT.ordinal()] = "_text";
        this.mSampleTags[Effect.MOSAIC.ordinal()] = "_mosaic";
        this.mSampleTags[Effect.DOODLE.ordinal()] = "_doodle";
        this.mSampleTags[Effect.REMOVER.ordinal()] = "_remover";
        this.mSampleTags[Effect.MIUIBEAUTIFY.ordinal()] = "_miuibeautify";
        this.mSampleTags[Effect.FRAME.ordinal()] = "_frame";
    }

    protected void onCreate(Bundle savedInstanceState) {
        CTA.setToAllowUseOnOfflineGlobal(getIntent().getBooleanExtra("allow_use_on_offline_global", false));
        super.onCreate(null);
        com.android.internal.WindowCompat.setCutoutModeShortEdges(getWindow());
        this.mTransitionConfig.onActivityCreate();
        this.mTaskInfo = TaskInfo.from(this);
        if (this.mTaskInfo == null) {
            ActivityCompat.finishAfterTransition(this);
            ToastUtils.makeText((Context) this, (int) R.string.image_invalid_path);
            return;
        }
        setContentView(R.layout.photo_editor_main);
        this.mSampler = Sampler.from(getIntent().getExtras());
        this.mEditorOriginHandler = new EditorOriginHandler(this, this.mTaskInfo.getSource());
        this.mFragments = getFragmentManager();
        this.mDraftManager = new DraftManager(this, this.mTaskInfo.getSource(), getIntent().getExtras());
        this.mPermissionCheckHelper = new PermissionCheckHelper(this, false, this);
        this.mPermissionCheckHelper.checkPermission();
    }

    public void onAttachedToWindow() {
        if (com.android.internal.WindowCompat.isNotch(this)) {
            SystemUiUtil.extendToStatusBar(getWindow().getDecorView());
        }
    }

    public void onPermissionsChecked(String[] permissions, int[] grantResults) {
        this.mInitializeController = new InitializeController(this, this.mDecoderCallbacks);
        this.mInitializeController.doInitialize();
        this.mCreateTime = System.currentTimeMillis();
        this.mSampler.recordEvent("_main", "enter");
        BeautificationSDK.init(getApplicationContext());
        this.mTransitionConfig.postActivityCreate();
        calculationPreviewSize();
        getWindow().getDecorView().post(new Runnable() {
            public void run() {
                Log.d("PhotoEditor", "activity end");
                if (GalleryModuleManager.getInstance().isModuleLoaded("com.miui.gallery.extra.videoeditor.v1000")) {
                    Log.d("PhotoEditor", "typeface is loaded");
                } else {
                    ThreadManager.getMiscPool().submit(new LoadModuleJob(PhotoEditor.this, "com.miui.gallery.extra.videoeditor.v1000", null));
                }
            }
        });
        initScreenBrightness();
        this.mEditorOriginHandler.onStart();
        PreviewFragment preview = new PreviewFragment();
        preview.setLoadDone(false);
        this.mFragments.beginTransaction().add(R.id.display_panel, preview, "preview").commit();
        prepareNavigator();
    }

    private void initScreenBrightness() {
        Intent intent = getIntent();
        if (intent != null) {
            float manualBrightness = intent.getFloatExtra("photo-brightness-manual", -1.0f);
            float autoBrightness = intent.getFloatExtra("photo-brightness-auto", -1.0f);
            if (manualBrightness >= 0.0f || autoBrightness >= 0.0f) {
                this.mBrightnessManager = new BrightnessManager(this, manualBrightness, autoBrightness);
                if (this.mResumed) {
                    this.mBrightnessManager.onResume();
                }
            }
        }
    }

    public String[] getRuntimePermissions() {
        return new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
    }

    public boolean isPermissionRequired(String permission) {
        return true;
    }

    public void showPermissionIntroduction(Activity activity, String permission, OnPermissionIntroduced callback) {
        PermissionIntroductionUtils.showPermissionIntroduction(activity, permission, callback);
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        this.mPermissionCheckHelper.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    protected void onSaveInstanceState(Bundle outState) {
        Log.d("PhotoEditor", "onSaveInstanceState");
    }

    private void calculationPreviewSize() {
        int screenWidth = ScreenUtils.getScreenWidth();
        int height = (int) ((((((float) screenWidth) - (2.0f * getResources().getDimension(R.dimen.photo_editor_preview_padding))) / ((float) getResources().getInteger(R.integer.editor_preview_width_ratio))) * ((float) getResources().getInteger(R.integer.editor_preview_height_ratio))) + getResources().getDimension(R.dimen.photo_editor_preview_padding_top));
        int paddingBottom = (int) getResources().getDimension(R.dimen.photo_editor_preview_padding_bottom);
        View displayPanel = findViewById(R.id.display_panel);
        LayoutParams displayLps = displayPanel.getLayoutParams();
        displayLps.width = screenWidth;
        displayLps.height = height + paddingBottom;
        displayPanel.setLayoutParams(displayLps);
        View menuPanel = findViewById(R.id.menu_panel);
        LayoutParams menuLps = menuPanel.getLayoutParams();
        menuLps.width = screenWidth;
        menuLps.height = ScreenUtils.getScreenHeight() - displayLps.height;
        menuPanel.setLayoutParams(menuLps);
    }

    protected void onResume() {
        super.onResume();
        MenuFragment fragment = findActiveMenu();
        if (fragment != null) {
            RenderFragment render = fragment.getRenderFragment();
            if (render != null && render.isAdded() && (render instanceof GLFragment)) {
                ((GLFragment) render).getGLContext().performResume();
            }
        }
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onResume();
        }
        this.mSampler.recordPageStart(this);
        this.mResumed = true;
        ImageLoader.getInstance().onPageResume();
        if (isNeedConfirmPassword()) {
            this.mNeedConfirmPassword = false;
            LockSettingsHelper.startAuthenticatePasswordActivity((Activity) this, 27);
        }
    }

    protected void onStop() {
        this.mNeedConfirmPassword = true;
        super.onStop();
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 27:
                if (resultCode == -1) {
                    this.mNeedConfirmPassword = false;
                    break;
                }
                setPhotoSecretFinishResult();
                finish();
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    protected void onPause() {
        this.mResumed = false;
        super.onPause();
        MenuFragment fragment = findActiveMenu();
        if (fragment != null) {
            RenderFragment render = fragment.getRenderFragment();
            if (render != null && render.isAdded() && (render instanceof GLFragment)) {
                ((GLFragment) render).getGLContext().performPause();
            }
        }
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onPause();
        }
        this.mSampler.recordPageEnd(this);
        ImageLoader.getInstance().onPagePause();
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (this.mBrightnessManager != null) {
            this.mBrightnessManager.onWindowFocusChanged(hasFocus);
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mDraftManager != null) {
            this.mDraftManager.release();
            this.mDraftManager = null;
        }
        if (this.mTaskInfo != null) {
            this.mTaskInfo.closeExportDialog();
        }
        if (this.mEditorOriginHandler != null) {
            this.mEditorOriginHandler.onDestroy();
        }
    }

    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof MenuFragment) {
            ((MenuFragment) fragment).mCallbacks = this.mMenuCallback;
        } else if (fragment instanceof AbstractNaviFragment) {
            ((AbstractNaviFragment) fragment).mCallbacks = this.mNavigatorCallbacks;
        } else if (fragment instanceof PreviewFragment) {
            PreviewFragment preview = (PreviewFragment) fragment;
            preview.mCallbacks = this.mPreviewCallbacks;
            if ("gl_mask_out".equals(preview.getTag())) {
                preview.mOnViewReadyListener = this.mGLMaskOutReadyListener;
            }
        } else if (fragment instanceof ExportFragment) {
            ((ExportFragment) fragment).mCallbacks = this.mExportCallbacks;
        } else if (fragment instanceof AlertDialogFragment) {
            ((AlertDialogFragment) fragment).setCallbacks(this.mAlertDialogCallbacks);
        }
        if (fragment instanceof GLFragment) {
            ((GLFragment) fragment).getGLContext().setOnCreatedListener(this.mGLReadyListener);
        }
    }

    public void onBackPressed() {
        Fragment fragment = this.mFragments.findFragmentById(R.id.menu_panel);
        if (fragment instanceof AbstractNaviFragment) {
            Log.d("PhotoEditor", "back pressed on navigator");
            if (this.mDraftManager != null && this.mDraftManager.getStepCount() > 0) {
                Log.d("PhotoEditor", "have pending operation");
                new Builder().setMessage(R.string.main_discard_confirm_message).setPositiveButton(R.string.main_discard_positive_btn).setNegativeButton(R.string.main_discard_negative_btn).setCancellable(true).build().showAllowingStateLoss(this.mFragments, "main_alert_dialog");
                return;
            }
        } else if (fragment instanceof MenuFragment) {
            Log.d("PhotoEditor", "back pressed on menu");
            MenuFragment menu = (MenuFragment) fragment;
            if (menu.getRenderFragment() == null || menu.getRenderFragment().isEmpty()) {
                onExit(menu);
                return;
            }
            Log.d("PhotoEditor", "menu has pending operation");
            new Builder().setMessage(R.string.sub_discard_confirm_message).setPositiveButton(R.string.sub_discard_positive_btn).setNegativeButton(R.string.sub_discard_negative_btn).setCancellable(true).build().showAllowingStateLoss(this.mFragments, "menu_alert_dialog");
            return;
        }
        Log.d("PhotoEditor", "neither handled back press event, just call default");
        onActivityFinish(false);
        super.onBackPressed();
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        return this.mSuspendInputs || super.dispatchTouchEvent(ev);
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        return this.mSuspendInputs || super.dispatchKeyEvent(event);
    }

    private void onActivityFinish(boolean exported) {
        this.mTransitionConfig.onExit(exported);
        Fragment fragment = this.mFragments.findFragmentById(R.id.display_panel);
        if (fragment instanceof PreviewFragment) {
            ((PreviewFragment) fragment).onExit(exported);
        }
        if (isNeedConfirmPassword()) {
            setPhotoSecretFinishResult();
        }
    }

    public void setActivityResult(int result, Intent intent) {
        this.mActivityResult = result;
        this.mActivityIntent = intent;
        prepareResult(intent);
        intent.putExtra("extra_photo_edit_type", "extra_photo_editor_type_common");
        setResult(this.mActivityResult, this.mActivityIntent);
    }

    private void setPhotoSecretFinishResult() {
        if (this.mActivityIntent == null) {
            this.mActivityIntent = new Intent();
        }
        prepareResult(this.mActivityIntent);
        this.mActivityIntent.putExtra("photo_secret_finish", true);
        this.mActivityIntent.putExtra("extra_photo_edit_type", "extra_photo_editor_type_common");
        setResult(this.mActivityResult, this.mActivityIntent);
    }

    private void prepareResult(Intent intent) {
        if (this.mDraftManager != null) {
            intent.putExtra("photo_edit_exported_width", this.mDraftManager.getExportedWidth());
            intent.putExtra("photo_edit_exported_height", this.mDraftManager.getExportedHeight());
        }
    }

    private boolean isNeedConfirmPassword() {
        return this.mDraftManager != null && this.mDraftManager.isSecret() && this.mNeedConfirmPassword;
    }

    private void prepareNavigator() {
        this.mActivatedEffects = resolveEffects(getIntent().getExtras());
        ArrayList<Integer> effect = (ArrayList) this.mActivatedEffects.clone();
        Effect[] effects = Effect.values();
        Iterator it = effect.iterator();
        while (it.hasNext()) {
            int index = ((Integer) it.next()).intValue();
            if (SdkManager.INSTANCE.getProvider(effects[index]) == null) {
                Log.d("PhotoEditor", "%s not supported, skip", effects[index]);
                this.mActivatedEffects.remove(Integer.valueOf(index));
            }
        }
        showNavigator();
    }

    private void showNavigator() {
        AbstractNaviFragment navi = resolveNavigator(getIntent().getExtras());
        Bundle args = new Bundle();
        args.putIntegerArrayList("content", this.mActivatedEffects);
        navi.setArguments(args);
        this.mFragments.beginTransaction().setTransition(8194).add(R.id.menu_panel, navi, "navigator").commitAllowingStateLoss();
        this.mFragments.executePendingTransactions();
    }

    private void onExit(MenuFragment menu) {
        boolean glRender = menu.getRenderFragment() instanceof GLFragment;
        if (glRender) {
            Log.d("PhotoEditor", "exiting gl render view");
            Fragment inMask = this.mFragments.findFragmentByTag("gl_mask_in");
            if (inMask != null) {
                Log.d("PhotoEditor", "gl not ready");
                this.mFragments.beginTransaction().remove(inMask).commitAllowingStateLoss();
                this.mFragments.executePendingTransactions();
            } else if (this.mFragments.findFragmentByTag("gl_mask_out") == null) {
                Log.d("PhotoEditor", "display mask first");
                Fragment outMask = new PreviewFragment();
                Bundle bundle = new Bundle();
                bundle.putBoolean("overwrite_background", true);
                outMask.setArguments(bundle);
                this.mFragments.beginTransaction().add(R.id.display_panel, outMask, "gl_mask_out").commitAllowingStateLoss();
                this.mFragments.executePendingTransactions();
                return;
            } else {
                Log.d("PhotoEditor", "mask displayed, remove render view");
            }
        } else {
            Log.d("PhotoEditor", "no gl view on top, do exit");
        }
        this.mFragments.popBackStackImmediate();
        FragmentTransaction ft = this.mFragments.beginTransaction();
        ft.remove(menu.getRenderFragment());
        Fragment gesture = menu.getGestureFragment();
        if (gesture != null) {
            ft.remove(gesture);
        }
        ft.commitAllowingStateLoss();
        this.mFragments.executePendingTransactions();
        if (glRender) {
            if (this.mDraftManager != null && this.mDraftManager.getStepCount() >= 1) {
                AbstractNaviFragment fragment = (AbstractNaviFragment) this.mFragments.findFragmentByTag("navigator");
                if (fragment.isAdded() && fragment.getView() != null) {
                    fragment.setExportEnabled(true);
                }
            }
            Fragment mask = this.mFragments.findFragmentByTag("gl_mask_out");
            if (mask != null) {
                Log.d("PhotoEditor", "remove mask view");
                this.mFragments.beginTransaction().remove(mask).commitAllowingStateLoss();
                this.mFragments.executePendingTransactions();
            }
        }
    }

    private MenuFragment findActiveMenu() {
        if (this.mFragments.getBackStackEntryCount() > 0) {
            Fragment active = this.mFragments.findFragmentById(R.id.menu_panel);
            if (active != null && active.isAdded()) {
                if (active instanceof MenuFragment) {
                    return (MenuFragment) active;
                }
                Log.w("PhotoEditor", "not menu in menu panel: %s", active);
            }
        }
        Log.w("PhotoEditor", "no active menu fragment found");
        return null;
    }

    private ArrayList<Integer> resolveEffects(Bundle bundle) {
        if (bundle == null || !bundle.getBoolean(Constants.EXTRA_IS_SCREENSHOT)) {
            ArrayList<Integer> list = new ArrayList(Arrays.asList(new Integer[]{Integer.valueOf(Effect.BEAUTIFY.ordinal()), Integer.valueOf(Effect.CROP.ordinal()), Integer.valueOf(Effect.FILTER.ordinal()), Integer.valueOf(Effect.STICKER.ordinal()), Integer.valueOf(Effect.DOODLE.ordinal()), Integer.valueOf(Effect.TEXT.ordinal()), Integer.valueOf(Effect.ADJUST.ordinal()), Integer.valueOf(Effect.FRAME.ordinal()), Integer.valueOf(Effect.MOSAIC.ordinal())}));
            if (ArcsoftBeautyJni.idBeautyAvailable()) {
                list.add(list.indexOf(Integer.valueOf(Effect.FILTER.ordinal())), Integer.valueOf(Effect.MIUIBEAUTIFY.ordinal()));
                this.mSampler.recordEvent(this.mSampleTags[Effect.MIUIBEAUTIFY.ordinal()], "category_show");
            }
            if (!Inpaint.isAvailable()) {
                return list;
            }
            list.add(Integer.valueOf(Effect.REMOVER.ordinal()));
            return list;
        } else if (bundle.getBoolean(Constants.EXTRA_IS_LONG_SCREENSHOT)) {
            return new ArrayList(Arrays.asList(new Integer[]{Integer.valueOf(Effect.LONG_CROP.ordinal()), Integer.valueOf(Effect.DOODLE.ordinal()), Integer.valueOf(Effect.MOSAIC.ordinal())}));
        } else {
            return new ArrayList(Arrays.asList(new Integer[]{Integer.valueOf(Effect.CROP.ordinal()), Integer.valueOf(Effect.DOODLE.ordinal()), Integer.valueOf(Effect.TEXT.ordinal()), Integer.valueOf(Effect.MOSAIC.ordinal())}));
        }
    }

    private AbstractNaviFragment resolveNavigator(Bundle bundle) {
        if (bundle == null || !bundle.getBoolean(Constants.EXTRA_IS_SCREENSHOT)) {
            return new PhotoNaviFragment();
        }
        return new ScreenshotNaviFragment();
    }
}
