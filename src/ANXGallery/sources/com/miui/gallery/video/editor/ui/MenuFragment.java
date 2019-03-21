package com.miui.gallery.video.editor.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.net.download.Request.Listener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.ConfirmDialog;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.VideoEditor;
import com.miui.gallery.video.editor.factory.VideoEditorModuleFactory;
import com.miui.gallery.video.editor.interfaces.IVideoEditorListener.IDownloadListener;
import com.miui.gallery.video.editor.interfaces.IVideoEditorListener.IMenuFragment;
import com.miui.gallery.video.editor.interfaces.IVideoEditorListener.IUnzipFileListener;
import com.miui.gallery.video.editor.interfaces.IVideoEditorListener.IVideoEditorFragmentCallback;
import com.miui.gallery.video.editor.manager.DownloadManager;
import com.miui.gallery.video.editor.manager.SamplerManager;
import com.miui.gallery.video.editor.manager.SmartVideoJudgeManager;
import com.miui.gallery.video.editor.manager.UnzipTaskManager;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import java.util.HashMap;
import java.util.List;
import miui.view.animation.CubicEaseOutInterpolator;

public abstract class MenuFragment extends Fragment implements IMenuFragment {
    private static int sAnimAppearDelay;
    private static int sAnimAppearDuration;
    private static int sAnimDisappearDuration;
    private static int sAnimOffset;
    protected IVideoEditorFragmentCallback mCallback;
    protected Context mContext;
    protected IDownloadListener mIDownloadListener = new IDownloadListener() {
        public String getDownloadPath(VideoEditorBaseModel data) {
            if (MenuFragment.this.mModuleFactory == null) {
                return "";
            }
            return MenuFragment.this.mModuleFactory.getTemplateDir(data.getId()) + ".zip";
        }

        public String getUnzipPath(VideoEditorBaseModel data) {
            return MenuFragment.this.mModuleFactory.getUnzipPath();
        }

        public void downloadResource(VideoEditorBaseModel data, int position, boolean isActiveNetworkMetered) {
            if (MenuFragment.this.mResourceDownloadManager == null) {
                MenuFragment.this.mResourceDownloadManager = new DownloadManager();
            }
            final long startTime = System.currentTimeMillis();
            Log.d("MenuFragment", "downloadResource start.");
            data.setDownloadState(18);
            final int i = position;
            final VideoEditorBaseModel videoEditorBaseModel = data;
            MenuFragment.this.mResourceDownloadManager.download(data, MenuFragment.this.mIDownloadListener, new Listener() {
                public void onStart() {
                    Log.d("MenuFragment", "downloadResource receive  download callback : %d ms", Long.valueOf(System.currentTimeMillis() - startTime));
                    MenuFragment.this.notifyDateSetChanged(i);
                }

                public void onProgressUpdate(int progress) {
                    Log.d("MenuFragment", "downloadResource onProgressUpdate:  %d", Integer.valueOf(progress));
                }

                public void onComplete(int resultCode) {
                    if (resultCode == 0) {
                        AnonymousClass2.this.unZipDownloadFile(videoEditorBaseModel, i);
                    } else {
                        ThreadManager.runOnMainThread(new Runnable() {
                            public void run() {
                                videoEditorBaseModel.setDownloadState(20);
                                MenuFragment.this.notifyDateSetChanged(i);
                                ToastUtils.makeText(MenuFragment.this.mContext, (int) R.string.video_editor_download_failed_for_notwork);
                                Log.e("MenuFragment", "the download task fail.");
                            }
                        });
                    }
                }
            }, isActiveNetworkMetered);
        }

        private void unZipDownloadFile(final VideoEditorBaseModel data, final int position) {
            MenuFragment.this.mUnzipTaskManager = new UnzipTaskManager(MenuFragment.this.mContext, data.isTemplate(), data, getDownloadPath(data), getUnzipPath(data), new IUnzipFileListener() {
                public void onUzipFileSuccess() {
                    MenuFragment.this.onDownlaodCompleted(data, position);
                }

                public void onUnzipFileFailed() {
                    data.setDownloadState(20);
                    ToastUtils.makeText(MenuFragment.this.mContext, (int) R.string.video_editor_unzip_file_fail);
                    MenuFragment.this.notifyDateSetChanged(position);
                }
            });
            MenuFragment.this.mUnzipTaskManager.execute(new Void[0]);
        }

        public void downloadResourceWithCheck(final VideoEditorBaseModel data, final int position) {
            if (!NetworkUtils.isNetworkConnected()) {
                ToastUtils.makeText(MenuFragment.this.mContext, (int) R.string.video_editor_download_failed_for_notwork);
            } else if (NetworkUtils.isActiveNetworkMetered()) {
                MenuFragment.this.showNetworkConfirmDialog(new ConfirmDialogInterface() {
                    public void onConfirm(DialogFragment dialog) {
                        dialog.dismiss();
                        AnonymousClass2.this.downloadResource(data, position, true);
                    }

                    public void onCancel(DialogFragment dialog) {
                        dialog.dismiss();
                    }
                });
            } else {
                downloadResource(data, position, false);
            }
        }
    };
    protected VideoEditorModuleFactory mModuleFactory;
    protected DownloadManager mResourceDownloadManager;
    private SamplerManager mSamplerManager;
    private UnzipTaskManager mUnzipTaskManager;
    protected VideoEditor mVideoEditor;

    public void onAttach(Context context) {
        super.onAttach(context);
        this.mContext = context;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initAnimatorData();
        this.mSamplerManager = SamplerManager.create();
    }

    private void initAnimatorData() {
        if (sAnimOffset == 0) {
            sAnimOffset = getActivity().getResources().getDimensionPixelSize(R.dimen.video_editor_enter_sub_editor_main_menu_offset);
        }
        if (sAnimAppearDuration == 0) {
            sAnimAppearDuration = getActivity().getResources().getInteger(R.integer.video_editor_sub_editor_sub_menu_appear_duration);
        }
        if (sAnimDisappearDuration == 0) {
            sAnimDisappearDuration = getActivity().getResources().getInteger(R.integer.video_editor_sub_editor_sub_menu_disappear_duration);
        }
        if (sAnimAppearDelay == 0) {
            sAnimAppearDelay = getActivity().getResources().getInteger(R.integer.video_editor_sub_editor_sub_menu_appear_delay);
        }
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        updatePalyBtnView();
    }

    public Animator onCreateAnimator(int transit, boolean enter, int nextAnim) {
        ObjectAnimator anim = new ObjectAnimator();
        PropertyValuesHolder alpha;
        if (enter) {
            PropertyValuesHolder y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) sAnimOffset, 0.0f});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setInterpolator(new CubicEaseOutInterpolator());
            if (getView() != null) {
                getView().setVisibility(4);
            }
            anim.setStartDelay((long) sAnimAppearDelay);
            anim.setDuration((long) sAnimAppearDuration);
            anim.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animator) {
                    if (MenuFragment.this.getView() != null) {
                        MenuFragment.this.getView().setVisibility(0);
                    }
                }

                public void onAnimationEnd(Animator animator) {
                }

                public void onAnimationCancel(Animator animator) {
                }

                public void onAnimationRepeat(Animator animator) {
                }
            });
        } else {
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
            anim.setInterpolator(new CubicEaseOutInterpolator());
            anim.setValues(new PropertyValuesHolder[]{alpha});
            anim.setDuration((long) sAnimDisappearDuration);
        }
        return anim;
    }

    protected void recordEventWithEffectChanged() {
        BaseSamplingStatHelper.recordCountEvent(mapIdToStatCate(getEffectId()), "enter");
    }

    private void showNetworkConfirmDialog(ConfirmDialogInterface confirmDialogInterface) {
        ConfirmDialog.showConfirmDialog(getFragmentManager(), getResources().getString(R.string.video_editor_download_with_metered_network_title), getResources().getString(R.string.video_editor_download_with_metered_network_msg), getResources().getString(R.string.video_editor_cancel_download), getResources().getString(R.string.video_editor_download), confirmDialogInterface);
    }

    private String mapIdToStatCate(int id) {
        switch (id) {
            case R.id.video_editor_audio /*2131886128*/:
                return "video_editor_audio";
            case R.id.video_editor_filter /*2131886129*/:
                return "video_editor_filter";
            case R.id.video_editor_smart_effect /*2131886133*/:
                return "video_editor_smart_effect";
            case R.id.video_editor_trim /*2131886134*/:
                return "video_editor_clip";
            case R.id.video_editor_water_mark /*2131886136*/:
                return "video_editor_text";
            default:
                return "video_editor_unknown";
        }
    }

    public void cancelRequest() {
        if (this.mUnzipTaskManager != null) {
            this.mUnzipTaskManager.setListener(null);
            this.mUnzipTaskManager = null;
        }
        if (this.mResourceDownloadManager != null) {
            this.mResourceDownloadManager.cancelAll();
            this.mResourceDownloadManager = null;
        }
    }

    protected void onExitMode() {
        if (this.mCallback != null) {
            this.mCallback.showNavEditMenu();
        }
    }

    public void setCallBack(IVideoEditorFragmentCallback callBack) {
        this.mCallback = callBack;
        this.mVideoEditor = this.mCallback.getVideoEditor();
    }

    protected void recordEventWithApply() {
        HashMap<String, String> args = new HashMap();
        List<String> effects = getCurrentEffect();
        if (effects == null || effects.isEmpty()) {
            args.put("effect", "none");
            BaseSamplingStatHelper.recordCountEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
            if (SmartVideoJudgeManager.isAvailable()) {
                this.mSamplerManager.recordEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
            }
        } else {
            for (String effect : effects) {
                args.put("effect", effect);
                BaseSamplingStatHelper.recordCountEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
                if (SmartVideoJudgeManager.isAvailable()) {
                    this.mSamplerManager.recordEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
                }
            }
        }
        BaseSamplingStatHelper.recordCountEvent(mapIdToStatCate(getEffectId()), "save");
    }

    protected void recordEventWithCancel() {
        HashMap<String, String> args = new HashMap();
        List<String> effects = getCurrentEffect();
        if (effects == null || effects.isEmpty()) {
            args.put("effect", "none");
            BaseSamplingStatHelper.recordCountEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
            if (SmartVideoJudgeManager.isAvailable()) {
                this.mSamplerManager.recordEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
            }
        } else {
            for (String effect : effects) {
                args.put("effect", effect);
                BaseSamplingStatHelper.recordCountEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
                if (SmartVideoJudgeManager.isAvailable()) {
                    this.mSamplerManager.recordEvent(mapIdToStatCate(getEffectId()), "save_detail", args);
                }
            }
        }
        BaseSamplingStatHelper.recordCountEvent(mapIdToStatCate(getEffectId()), "save");
    }

    public void updatePalyBtnView() {
        if (this.mCallback != null) {
            this.mCallback.updatePalyBtnView();
        }
    }

    public void onDetach() {
        super.onDetach();
        this.mCallback = null;
    }

    public void onPlayButtonClicked() {
    }

    public void onVideoLoadCompleted() {
    }

    public void notifyDateSetChanged(int position) {
    }

    public void onDownlaodCompleted(VideoEditorBaseModel data, int position) {
    }

    public void updateLastFragment(MenuFragment lastFragment) {
    }

    public void loadResourceData() {
    }

    public void updateVoiceState(boolean enable) {
    }
}
