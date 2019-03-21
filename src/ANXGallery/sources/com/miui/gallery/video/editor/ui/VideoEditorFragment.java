package com.miui.gallery.video.editor.ui;

import android.app.Activity;
import android.app.Fragment;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ProgressBar;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.NexVideoEditor;
import com.miui.gallery.video.editor.VideoEditor;
import com.miui.gallery.video.editor.VideoEditor.OnCompletedListener;
import com.miui.gallery.video.editor.VideoEditor.StateChangeListener;
import com.miui.gallery.video.editor.activity.VideoEditorActivity;
import com.miui.gallery.video.editor.activity.VideoEditorActivity.OnBackPressedListener;
import com.miui.gallery.video.editor.interfaces.IVideoEditorListener.IVideoEditorFragmentCallback;
import com.miui.gallery.video.editor.model.MenuFragmentData;
import com.miui.gallery.video.editor.util.TempFileCollector;
import com.miui.gallery.video.editor.util.ToolsUtil;
import com.miui.gallery.video.editor.util.VideoEditorHelper;
import com.miui.gallery.video.editor.widget.DisplayWrapper;
import com.miui.gallery.video.editor.widget.DisplayWrapper.IProgress;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.HashMap;
import java.util.List;

public class VideoEditorFragment extends Fragment implements OnBackPressedListener {
    private Activity mActivity;
    private int mCurrentTime = 0;
    private Uri mData;
    private DisplayWrapper mDisplayWrapperView;
    private boolean mIsLoadSuccess;
    public IVideoEditorFragmentCallback mMenuFragmentCallBack = new IVideoEditorFragmentCallback() {
        public VideoEditor getVideoEditor() {
            return VideoEditorFragment.this.mVideoEditor;
        }

        public void changeEditMenu(MenuFragmentData fragmentData) {
            VideoEditorFragment.this.mVideoEditorHelper.changeEditMenu(fragmentData);
        }

        public void showNavEditMenu() {
            VideoEditorFragment.this.mVideoEditorHelper.showNavEditMenu();
        }

        public void onCancel() {
            VideoEditorFragment.this.mVideoEditorHelper.onCancel();
        }

        public void onSave() {
            VideoEditorFragment.this.mVideoEditorHelper.onSave();
        }

        public List<MenuFragmentData> getNavigatorData(int videoFrames) {
            return VideoEditorFragment.this.mVideoEditorHelper.getNavigatorData(videoFrames);
        }

        public void updatePalyBtnView() {
            VideoEditorFragment.this.mVideoEditorHelper.updatePlayView();
        }

        public void updateAutoTrimView() {
            VideoEditorFragment.this.mVideoEditorHelper.updateAutoTrimView();
        }

        public boolean isLoadSuccess() {
            return VideoEditorFragment.this.mIsLoadSuccess;
        }

        public void updateAudioVoiceView(boolean enable) {
            VideoEditorFragment.this.mVideoEditorHelper.updateAudioVoiceView(enable);
        }
    };
    private View mMenuView;
    private MyStateChangeListener mMyStateChangeListener;
    private int mPlayProgress = 0;
    private ProgressBar mProgressingView;
    private VideoEditor mVideoEditor;
    private VideoEditorHelper mVideoEditorHelper;

    private class MyVideoLoadCompletedListener implements OnCompletedListener {
        private MyVideoLoadCompletedListener() {
        }

        /* synthetic */ MyVideoLoadCompletedListener(VideoEditorFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onCompleted() {
            if (VideoEditorFragment.this.mVideoEditor != null) {
                if (VideoEditorFragment.this.mVideoEditor.haveSavedEditState()) {
                    VideoEditorFragment.this.mVideoEditor.restoreEditState();
                    VideoEditorFragment.this.mVideoEditor.apply(new OnCompletedListener() {
                        public void onCompleted() {
                        }
                    });
                }
                VideoEditorFragment.this.mVideoEditorHelper.onVideoLoadCompleted();
                VideoEditorFragment.this.mIsLoadSuccess = true;
            }
        }
    }

    private class InitializeListener extends MyVideoLoadCompletedListener {
        private InitializeListener() {
            super(VideoEditorFragment.this, null);
        }

        /* synthetic */ InitializeListener(VideoEditorFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onCompleted() {
            if (VideoEditorFragment.this.mVideoEditor instanceof NexVideoEditor) {
                if (!((NexVideoEditor) VideoEditorFragment.this.mVideoEditor).checkIDRSupport()) {
                    BaseSamplingStatHelper.recordCountEvent("video_editor", "idr_warning");
                }
                VideoEditorFragment.this.mVideoEditor.seek(VideoEditorFragment.this.mVideoEditor.getVideoStartTime(), null);
            }
            super.onCompleted();
        }
    }

    private class MyStateChangeListener implements StateChangeListener {
        private MyStateChangeListener() {
        }

        /* synthetic */ MyStateChangeListener(VideoEditorFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onStateChanged(int state) {
            switch (state) {
                case -500:
                    ToastUtils.makeText(VideoEditorFragment.this.mActivity, (int) R.string.video_editor_fatal_error);
                    VideoEditorFragment.this.exit();
                    break;
                case 0:
                case 2:
                    ToolsUtil.hideView(VideoEditorFragment.this.mProgressingView);
                    break;
                case 1:
                    ToolsUtil.hideView(VideoEditorFragment.this.mProgressingView);
                    break;
                case 3:
                    ToolsUtil.hideView(VideoEditorFragment.this.mProgressingView);
                    break;
                case 200:
                    ToolsUtil.hideView(VideoEditorFragment.this.mProgressingView);
                    break;
                case 500:
                    VideoEditorFragment.this.handleNotSupportVideoFile();
                    break;
            }
            VideoEditorFragment.this.mVideoEditorHelper.updatePlayView();
        }

        public void onTimeChanged(int currenTime) {
            VideoEditorFragment.this.mDisplayWrapperView.showPlayProgress(true);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mVideoEditor = VideoEditor.create(getActivity().getApplicationContext(), "nex");
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_video_editor, null);
        this.mDisplayWrapperView = (DisplayWrapper) root.findViewById(R.id.displayer);
        this.mMenuView = root.findViewById(R.id.menu_panel);
        this.mProgressingView = (ProgressBar) root.findViewById(R.id.progressing);
        this.mMyStateChangeListener = new MyStateChangeListener(this, null);
        this.mVideoEditor.setDisplayWrapper(this.mDisplayWrapperView);
        loadData();
        calculationPreviewSize();
        this.mVideoEditorHelper = new VideoEditorHelper(container.getContext(), this);
        this.mVideoEditorHelper.showNavEditMenu();
        initListener();
        return root;
    }

    private void initListener() {
        this.mVideoEditor.addStateChangeListener(this.mMyStateChangeListener);
        this.mDisplayWrapperView.setIvPlayListener(new OnClickListener() {
            public void onClick(View v) {
                VideoEditorFragment.this.playVideoAction();
            }
        });
        this.mDisplayWrapperView.setAutoTrimListener(new OnClickListener() {
            public void onClick(View v) {
                VideoEditorFragment.this.AutoTrimAction(v);
            }
        });
        this.mVideoEditor.addStateChangeListener(new StateChangeListener() {
            public void onStateChanged(int state) {
            }

            public void onTimeChanged(int currenTime) {
                VideoEditorFragment.this.mCurrentTime = currenTime;
                if (VideoEditorFragment.this.mVideoEditor != null) {
                    VideoEditorFragment.this.mPlayProgress = (int) (VideoEditorFragment.this.mDisplayWrapperView.getViewWidth() * (((float) currenTime) / ((float) VideoEditorFragment.this.mVideoEditor.getProjectTotalTime())));
                    VideoEditorFragment.this.mDisplayWrapperView.updatePlayProgress(0, 0, VideoEditorFragment.this.mPlayProgress, 0);
                }
            }
        });
        this.mDisplayWrapperView.setClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (VideoEditorFragment.this.mVideoEditorHelper.isWaterMarkEditMenu()) {
                    if (VideoEditorFragment.this.mVideoEditor.getState() == 1) {
                        VideoEditorFragment.this.mVideoEditor.pause();
                    } else if (VideoEditorFragment.this.mVideoEditor.getState() == 2 || VideoEditorFragment.this.mVideoEditor.getState() == 0) {
                        VideoEditorFragment.this.mVideoEditor.resume();
                    }
                } else if (VideoEditorFragment.this.mVideoEditor.getState() == 1) {
                    VideoEditorFragment.this.mVideoEditor.pause();
                }
            }
        });
        this.mDisplayWrapperView.setIProgress(new IProgress() {
            int tempCurrentTime;

            public void onVideoProgressChanging(int layout, float percent) {
                boolean z = false;
                this.tempCurrentTime = VideoEditorFragment.this.mCurrentTime;
                if (VideoEditorFragment.this.mVideoEditor != null && percent > 0.0f) {
                    int dTime = (int) (((float) VideoEditorFragment.this.mVideoEditor.getProjectTotalTime()) * percent);
                    if (layout == DisplayWrapper.LEFT) {
                        if (VideoEditorFragment.this.mCurrentTime > 0) {
                            int i;
                            if (this.tempCurrentTime > dTime) {
                                i = this.tempCurrentTime - dTime;
                            } else {
                                i = 0;
                            }
                            this.tempCurrentTime = i;
                        } else {
                            return;
                        }
                    } else if (VideoEditorFragment.this.mCurrentTime < VideoEditorFragment.this.mVideoEditor.getProjectTotalTime()) {
                        this.tempCurrentTime += dTime;
                        if (this.tempCurrentTime > VideoEditorFragment.this.mVideoEditor.getProjectTotalTime()) {
                            this.tempCurrentTime = VideoEditorFragment.this.mVideoEditor.getProjectTotalTime();
                        }
                    } else {
                        return;
                    }
                    VideoEditorFragment.this.mVideoEditor.seek(this.tempCurrentTime, null);
                    VideoEditorFragment.this.mPlayProgress = (int) (VideoEditorFragment.this.mDisplayWrapperView.getViewWidth() * (((float) this.tempCurrentTime) / ((float) VideoEditorFragment.this.mVideoEditor.getProjectTotalTime())));
                    VideoEditorFragment.this.mDisplayWrapperView.updatePlayProgress(0, 0, VideoEditorFragment.this.mPlayProgress, 0);
                    DisplayWrapper access$600 = VideoEditorFragment.this.mDisplayWrapperView;
                    if (this.tempCurrentTime > 0) {
                        z = true;
                    }
                    access$600.showPlayProgress(z);
                }
            }

            public void onVideoProgressChanged() {
                VideoEditorFragment.this.mCurrentTime = this.tempCurrentTime;
            }
        });
    }

    private void playVideoAction() {
        if (this.mIsLoadSuccess) {
            this.mVideoEditorHelper.onPlayButtonClicked();
            switch (this.mVideoEditor.getState()) {
                case 0:
                    this.mVideoEditor.play();
                    return;
                case 2:
                    this.mVideoEditor.resume();
                    return;
                default:
                    return;
            }
        }
        Log.e("VideoEditorFragment", "the video has not loaded success.");
    }

    private void AutoTrimAction(final View v) {
        this.mVideoEditor.saveEditState();
        this.mVideoEditor.resetProject(new OnCompletedListener() {
            public void onCompleted() {
                VideoEditorFragment.this.mDisplayWrapperView.setAutoTrimEnable(false);
                VideoEditorFragment.this.mVideoEditorHelper.setVideoSaving(true);
                VideoEditorFragment.this.mIsLoadSuccess = false;
                AutoTrimProgressDialog.startAutoTrim(VideoEditorFragment.this.mVideoEditor, new AutoTrimProgressDialog.OnCompletedListener() {
                    public void onCompleted(boolean success, String outPutPath, int errorCode, String errorMsg) {
                        if (VideoEditorFragment.this.mVideoEditor == null) {
                            Log.d("VideoEditorFragment", "the video editor is null with auto trim. ");
                            return;
                        }
                        VideoEditorFragment.this.mDisplayWrapperView.setAutoTrimEnable(true);
                        VideoEditorFragment.this.mVideoEditorHelper.setVideoSaving(false);
                        if (success) {
                            Log.d("VideoEditorFragment", "AutoTrimAction is success.");
                            BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_autotrim_success");
                            TempFileCollector.add(outPutPath);
                            VideoEditorFragment.this.mVideoEditor.load(outPutPath, new MyVideoLoadCompletedListener(VideoEditorFragment.this, null));
                            return;
                        }
                        HashMap<String, String> params = new HashMap();
                        params.put("errormsg", String.valueOf(errorMsg));
                        BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_autotrim_failed", params);
                        ToastUtils.makeText(v.getContext(), v.getResources().getString(R.string.video_editor_encode_video_error));
                        Log.e("VideoEditorFragment", "AutoTrimAction is fail, and video encode error  msg :" + errorMsg);
                        VideoEditorFragment.this.mVideoEditor.load(VideoEditorFragment.this.mData.getPath(), new MyVideoLoadCompletedListener(VideoEditorFragment.this, null));
                    }
                }, VideoEditorFragment.this.getFragmentManager());
            }
        });
    }

    private void calculationPreviewSize() {
        int screenWidth = ScreenUtils.getScreenWidth();
        int height = (int) ((((((float) screenWidth) - (2.0f * getResources().getDimension(R.dimen.photo_editor_preview_padding))) / ((float) getResources().getInteger(R.integer.editor_preview_width_ratio))) * ((float) getResources().getInteger(R.integer.editor_preview_height_ratio))) + getResources().getDimension(R.dimen.photo_editor_preview_padding_top));
        int paddingBottom = (int) getResources().getDimension(R.dimen.photo_editor_preview_padding_bottom);
        View displayPanel = this.mDisplayWrapperView;
        LayoutParams displayLps = displayPanel.getLayoutParams();
        displayLps.width = screenWidth;
        displayLps.height = height + paddingBottom;
        displayPanel.setLayoutParams(displayLps);
        View menuPanel = this.mMenuView;
        LayoutParams menuLps = menuPanel.getLayoutParams();
        menuLps.width = screenWidth;
        menuLps.height = ScreenUtils.getScreenHeight() - displayLps.height;
        menuPanel.setLayoutParams(menuLps);
    }

    public void onResume() {
        super.onResume();
        if (this.mVideoEditor != null) {
            this.mVideoEditor.startPreview();
        }
        ImageLoader.getInstance().resume();
        this.mVideoEditorHelper.updatePlayView();
        BaseSamplingStatHelper.recordPageStart(this.mActivity, "video_editor");
    }

    public void onPause() {
        super.onPause();
        if (this.mVideoEditor != null) {
            this.mVideoEditor.pause();
        }
        ImageLoader.getInstance().pause();
        BaseSamplingStatHelper.recordPageEnd(getActivity(), "video_editor");
    }

    private void loadData() {
        this.mData = this.mActivity.getIntent().getData();
        if (this.mData == null || this.mData.getPath() == null) {
            handleNotSupportVideoFile();
        } else {
            this.mVideoEditor.load(this.mData.getPath(), new InitializeListener(this, null));
        }
    }

    public Uri getData() {
        return this.mData;
    }

    public void exit() {
        if (this.mVideoEditor != null && this.mVideoEditor.isInit()) {
            this.mVideoEditor.release();
        }
        TempFileCollector.deleteAllTempFile(GalleryApp.sGetAndroidContext());
        this.mActivity.finish();
    }

    public void onAttachMenuFragment(Fragment menu) {
        if (menu instanceof MenuFragment) {
            ((MenuFragment) menu).setCallBack(this.mMenuFragmentCallBack);
        }
    }

    private void handleNotSupportVideoFile() {
        ToastUtils.makeText(this.mActivity, (int) R.string.video_editor_not_support_tips);
        if (this.mData != null) {
            HashMap<String, String> params = new HashMap();
            params.put("file", this.mData.toString());
            BaseSamplingStatHelper.recordCountEvent("video_editor", "video_editor_not_support", params);
        }
        exit();
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mActivity = activity;
        if (this.mActivity instanceof VideoEditorActivity) {
            ((VideoEditorActivity) this.mActivity).setOnBackPressedListener(this);
        }
    }

    public VideoEditor getVideoEditor() {
        return this.mVideoEditor;
    }

    public int getEffectMenuContainerId() {
        if (this.mMenuView != null) {
            return this.mMenuView.getId();
        }
        return 0;
    }

    public void onDetach() {
        super.onDetach();
        if (this.mActivity instanceof VideoEditorActivity) {
            ((VideoEditorActivity) this.mActivity).setOnBackPressedListener(null);
        }
        this.mActivity = null;
    }

    public boolean onBackPressed() {
        return this.mVideoEditorHelper.onBackPressed();
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mVideoEditor != null) {
            this.mVideoEditor.removeStateChangeListener(this.mMyStateChangeListener);
            this.mVideoEditor = null;
        }
        if (this.mVideoEditorHelper != null) {
            this.mVideoEditorHelper.onDestroy();
        }
        TempFileCollector.deleteAllTempFile(GalleryApp.sGetAndroidContext());
    }
}
