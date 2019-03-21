package com.miui.gallery.video.editor.util;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.R;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.ConfirmDialog;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.VideoEditor;
import com.miui.gallery.video.editor.fragment.FilterAdjustFragment;
import com.miui.gallery.video.editor.fragment.VideoNavFragment;
import com.miui.gallery.video.editor.manager.SmartVideoJudgeManager;
import com.miui.gallery.video.editor.model.MenuFragmentData;
import com.miui.gallery.video.editor.ui.AudioFragment;
import com.miui.gallery.video.editor.ui.EncodeProgressDialog;
import com.miui.gallery.video.editor.ui.EncodeProgressDialog.OnCompletedListener;
import com.miui.gallery.video.editor.ui.MenuFragment;
import com.miui.gallery.video.editor.ui.SmartEffectFragment;
import com.miui.gallery.video.editor.ui.TrimFragment;
import com.miui.gallery.video.editor.ui.VideoEditorFragment;
import com.miui.gallery.video.editor.ui.WaterMarkFragment;
import com.miui.gallery.video.editor.widget.DisplayWrapper;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

public class VideoEditorHelper {
    private Activity mActivity;
    private Context mContext;
    private int mCurrentEditType;
    private MenuFragment mCurrentMenuFragment;
    private DisplayWrapper mDisplayWrapperView;
    private int mEffectContainerId;
    private VideoEditorFragment mFragment;
    private FragmentManager mFragmentManager;
    private String mLastTag;
    private LinkedHashMap<Integer, MenuFragmentData> mNavgatorDataMap;
    private List<MenuFragmentData> mNavigatorDataList = new ArrayList();
    private VideoEditor mVideoEditor;
    private VideoSaveManager mVideoSaveManager;
    private boolean mVideoSaving;

    private static class VideoSaveManager {
        private Future<Void> mFuture;
        private WeakReference<VideoEditorHelper> mHelperWeakReference;

        public VideoSaveManager(VideoEditorHelper fragmentRef) {
            this.mHelperWeakReference = new WeakReference(fragmentRef);
        }

        public void handleVideoSave(final String outputPath) {
            if (TextUtils.isEmpty(outputPath)) {
                Log.d("VideoEditorHelper", "the video path is null. ");
            } else if (getVideoEditorHelper() == null) {
                Log.d("VideoEditorHelper", "the VideoEditorHelper is null. ");
            } else {
                if (this.mFuture != null) {
                    this.mFuture.cancel();
                }
                this.mFuture = ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        VideoEditorHelper helper = VideoSaveManager.this.getVideoEditorHelper();
                        if (!(helper == null || VideoSaveManager.this.mFuture.isCancelled())) {
                            Context activity = helper.mActivity;
                            MediaScanner.scanSingleFile(activity, outputPath);
                            MediaStoreUtils.insert(activity, outputPath, 2);
                            activity.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(outputPath))));
                        }
                        return null;
                    }
                }, new FutureHandler<Void>() {
                    public void onPostExecute(Future<Void> future) {
                        VideoEditorHelper helper = VideoSaveManager.this.getVideoEditorHelper();
                        if (!future.isCancelled() && helper != null) {
                            helper.onVideoSaved(outputPath);
                        }
                    }
                });
            }
        }

        private VideoEditorHelper getVideoEditorHelper() {
            return this.mHelperWeakReference == null ? null : (VideoEditorHelper) this.mHelperWeakReference.get();
        }

        public void onDestroy() {
            if (this.mFuture != null) {
                this.mFuture.cancel();
                this.mFuture = null;
            }
        }
    }

    public VideoEditorHelper(Context context, VideoEditorFragment fragment) {
        this.mContext = context;
        this.mFragment = fragment;
        this.mActivity = fragment.getActivity();
        this.mFragmentManager = this.mActivity.getFragmentManager();
        this.mVideoEditor = this.mFragment.getVideoEditor();
        this.mDisplayWrapperView = this.mVideoEditor.getDisplayWrapper();
        this.mEffectContainerId = this.mFragment.getEffectMenuContainerId();
        if (this.mNavgatorDataMap == null) {
            this.mNavgatorDataMap = new LinkedHashMap();
            initNavgatorData();
        }
        this.mVideoSaveManager = new VideoSaveManager(this);
        initListener();
    }

    private void initNavgatorData() {
        this.mNavgatorDataMap.put(Integer.valueOf(16), new MenuFragmentData(VideoNavFragment.class, 0, 0, 16));
        this.mNavgatorDataMap.put(Integer.valueOf(17), new MenuFragmentData(SmartEffectFragment.class, R.drawable.video_editor_icon_smareffects, R.string.video_editor_intelligent_special_effect, 17));
        this.mNavgatorDataMap.put(Integer.valueOf(18), new MenuFragmentData(TrimFragment.class, R.drawable.video_editor_icon_trim, R.string.video_editor_trim, 18));
        this.mNavgatorDataMap.put(Integer.valueOf(19), new MenuFragmentData(FilterAdjustFragment.class, R.drawable.video_editor_icon_filter, R.string.video_editor_filter_and_regulator, 19));
        this.mNavgatorDataMap.put(Integer.valueOf(20), new MenuFragmentData(AudioFragment.class, R.drawable.video_editor_icon_music, R.string.video_editor_audio, 20));
        this.mNavgatorDataMap.put(Integer.valueOf(21), new MenuFragmentData(WaterMarkFragment.class, R.drawable.video_editor_icon_text, R.string.video_editor_watermark, 21));
        this.mNavgatorDataMap.put(Integer.valueOf(22), new MenuFragmentData(null, R.drawable.video_editor_icon_more, R.string.video_editor_more, 22));
    }

    private void initListener() {
        this.mDisplayWrapperView.setAudioVoiceListener(new OnClickListener() {
            public void onClick(View v) {
                boolean enabled = VideoEditorHelper.this.mDisplayWrapperView.getAudioVoiceSelected();
                VideoEditorHelper.this.mDisplayWrapperView.setAudioVoiceSelected(!enabled);
                VideoEditorHelper.this.mCurrentMenuFragment.updateVoiceState(enabled);
            }
        });
    }

    public List<MenuFragmentData> getNavigatorData(int videoFrames) {
        if (this.mNavigatorDataList.isEmpty()) {
            for (MenuFragmentData data : this.mNavgatorDataMap.values()) {
                if (!(data == null || data.isNavModule())) {
                    boolean smartVideoAvailable = SmartVideoJudgeManager.isAvailable() && videoFrames <= BaiduSceneResult.MOTORCYCLE;
                    if (data.module != 17 || smartVideoAvailable) {
                        this.mNavigatorDataList.add(data);
                    }
                }
            }
        }
        return this.mNavigatorDataList;
    }

    public void changeEditMenu(MenuFragmentData fragmentData) {
        if (fragmentData != null) {
            String tag = fragmentData.getTag();
            if (fragmentData.isModuleMore()) {
                this.mVideoEditor.toThirdEditor(this.mContext);
                return;
            }
            MenuFragment last = (MenuFragment) this.mFragmentManager.findFragmentByTag(makeMenuFragmentTag(this.mLastTag));
            if (last == null) {
                last = (MenuFragment) this.mFragmentManager.findFragmentById(this.mEffectContainerId);
            }
            MenuFragment menu = (MenuFragment) this.mFragmentManager.findFragmentByTag(makeMenuFragmentTag(tag));
            if (menu != null && menu.equals(last)) {
                last = null;
            }
            FragmentTransaction transaction = this.mFragmentManager.beginTransaction();
            if (menu != null) {
                transaction.attach(menu);
                this.mCurrentMenuFragment = menu;
            } else {
                Class<? extends MenuFragment> menuClass = fragmentData.getMenu();
                if (menuClass != null) {
                    try {
                        menu = (MenuFragment) menuClass.newInstance();
                        transaction.add(this.mEffectContainerId, menu, makeMenuFragmentTag(tag));
                        this.mCurrentMenuFragment = menu;
                    } catch (Exception e) {
                        e.printStackTrace();
                        Log.d("VideoEditorHelper", e.toString());
                    }
                }
            }
            this.mCurrentMenuFragment.updateLastFragment(last);
            if (last != null) {
                transaction.detach(last);
            }
            transaction.commitAllowingStateLoss();
            this.mLastTag = tag;
            this.mCurrentEditType = this.mCurrentMenuFragment.getEffectId();
        }
    }

    private String makeMenuFragmentTag(String tag) {
        return VideoEditorHelper.class.getName() + tag;
    }

    private void onMenuFragCancel() {
        if (this.mCurrentMenuFragment != null) {
            this.mCurrentMenuFragment.doCancel();
        }
    }

    public void onVideoLoadCompleted() {
        if (this.mCurrentMenuFragment != null) {
            this.mCurrentMenuFragment.onVideoLoadCompleted();
        }
    }

    public void onPlayButtonClicked() {
        if (this.mCurrentMenuFragment != null) {
            this.mCurrentMenuFragment.onPlayButtonClicked();
        }
    }

    private boolean isTrimEditMenu() {
        return R.id.video_editor_trim == this.mCurrentEditType;
    }

    private boolean isAudioEditMenu() {
        return R.id.video_editor_audio == this.mCurrentEditType;
    }

    private boolean isNavEditMenu() {
        return R.id.video_editor_nav == this.mCurrentEditType;
    }

    public boolean isWaterMarkEditMenu() {
        return R.id.video_editor_water_mark == this.mCurrentEditType;
    }

    public void showNavEditMenu() {
        changeEditMenu((MenuFragmentData) this.mNavgatorDataMap.get(Integer.valueOf(16)));
    }

    public void onCancel() {
        onBackPressed();
    }

    public void onSave() {
        if (this.mVideoEditor == null || this.mVideoSaving) {
            Log.e("VideoEditorHelper", "the video is saving:  %s ", Boolean.valueOf(this.mVideoSaving));
            return;
        }
        Log.d("VideoEditorHelper", "start save video！");
        Uri data = this.mFragment.getData();
        setVideoSaving(true);
        EncodeProgressDialog.startEncode(this.mVideoEditor, FileHelper.generateOutputFilePath(data.getPath(), false), new OnCompletedListener() {
            public void onCompleted(String outputPath, boolean success, int errorCode, int state) {
                Log.d("VideoEditorHelper", "video save success: %s, and video encode error errorCode :%s", Boolean.valueOf(success), String.valueOf(errorCode));
                if (success) {
                    BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_export_success");
                    VideoEditorHelper.this.mVideoSaveManager.handleVideoSave(outputPath);
                } else if (state == -1) {
                    VideoEditorHelper.this.setVideoSaving(false);
                } else {
                    HashMap<String, String> params = new HashMap();
                    params.put("errorCode", String.valueOf(errorCode));
                    BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_export_failed", params);
                    ToastUtils.makeText(VideoEditorHelper.this.mActivity, VideoEditorHelper.this.mActivity.getResources().getString(R.string.video_editor_encode_video_error));
                    VideoEditorHelper.this.setVideoSaving(false);
                }
            }
        }, this.mFragment.getFragmentManager());
    }

    public boolean onBackPressed() {
        if (this.mVideoEditor == null) {
            return false;
        }
        if (!this.mVideoEditor.isInit()) {
            return true;
        }
        if (!this.mVideoEditor.hasEdit()) {
            BaseSamplingStatHelper.recordCountEvent("video_editor", "cancel");
            if (isNavEditMenu()) {
                this.mFragment.exit();
            } else if (isTrimEditMenu()) {
                onMenuFragCancel();
            } else {
                showNavEditMenu();
            }
        } else if (isNavEditMenu()) {
            ConfirmDialog.showConfirmDialog(this.mFragmentManager, this.mFragment.getString(R.string.video_editor_abandon_changes_tip_title), this.mFragment.getString(R.string.video_editor_abandon_changes_tip_message), this.mFragment.getString(R.string.video_editor_cancel), this.mFragment.getString(R.string.video_editor_ok), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    BaseSamplingStatHelper.recordCountEvent("video_editor", "cancel");
                    if (VideoEditorHelper.this.isNavEditMenu()) {
                        VideoEditorHelper.this.mFragment.exit();
                    } else {
                        VideoEditorHelper.this.onMenuFragCancel();
                    }
                }

                public void onCancel(DialogFragment dialog) {
                }
            });
        } else {
            onMenuFragCancel();
            return true;
        }
        return true;
    }

    public void setVideoSaving(boolean videoSaving) {
        this.mVideoSaving = videoSaving;
    }

    public void updatePlayView() {
        if (this.mVideoSaving) {
            this.mDisplayWrapperView.showPlayBtn(false);
        } else if (isWaterMarkEditMenu()) {
            this.mDisplayWrapperView.showPlayBtn(false);
        } else {
            int state = this.mVideoEditor.getState();
            if (state == 2 || state == 0) {
                this.mDisplayWrapperView.showPlayBtn(true);
            } else if (isTrimEditMenu() && (state == 3 || state == 200)) {
                this.mDisplayWrapperView.showPlayBtn(true);
            } else {
                this.mDisplayWrapperView.showPlayBtn(false);
            }
        }
    }

    public void updateAutoTrimView() {
        boolean z = false;
        if (isTrimEditMenu()) {
            DisplayWrapper displayWrapper = this.mDisplayWrapperView;
            if (this.mVideoEditor != null && this.mVideoEditor.isSupportAutoTrim()) {
                z = true;
            }
            displayWrapper.showAutoTrimBtn(z);
            return;
        }
        this.mDisplayWrapperView.showAutoTrimBtn(false);
    }

    public void updateAudioVoiceView(boolean enable) {
        boolean z = true;
        if (isAudioEditMenu()) {
            this.mDisplayWrapperView.showAudioVoice(true);
            DisplayWrapper displayWrapper = this.mDisplayWrapperView;
            if (enable) {
                z = false;
            }
            displayWrapper.setAudioVoiceSelected(z);
            return;
        }
        this.mDisplayWrapperView.showAudioVoice(false);
    }

    private void onVideoSaved(String outputPath) {
        Intent result = new Intent();
        result.setData(GalleryOpenProvider.translateToContent(outputPath));
        this.mFragment.getActivity().setResult(-1, result);
        setVideoSaving(false);
        this.mFragment.exit();
    }

    public void onDestroy() {
        if (this.mVideoSaveManager != null) {
            this.mVideoSaveManager.onDestroy();
        }
    }
}
