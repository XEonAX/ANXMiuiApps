package com.miui.gallery.video.editor.fragment;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.adapter.VideoNavAdapter;
import com.miui.gallery.video.editor.manager.SmartVideoJudgeManager;
import com.miui.gallery.video.editor.model.MenuFragmentData;
import com.miui.gallery.video.editor.ui.MenuFragment;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.video.editor.util.ToolsUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.animation.QuarticEaseOutInterpolator;

public class VideoNavFragment extends MenuFragment {
    private static int sAnimAppearDelay;
    private static int sAnimAppearDuration;
    private static int sAnimDisappearDuration;
    private static int sAnimOffset;
    private VideoNavAdapter mAdapter;
    private Dialog mDialog;
    private SimpleRecyclerView mNavRecyclerView;
    private List<MenuFragmentData> mNavigatorDataList = new ArrayList();
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
            if (VideoNavFragment.this.mCallback.isLoadSuccess()) {
                MenuFragmentData navigatorData = (MenuFragmentData) VideoNavFragment.this.mNavigatorDataList.get(position);
                if (navigatorData != null) {
                    VideoNavFragment.this.mCallback.changeEditMenu(navigatorData);
                }
                return true;
            }
            ToastUtils.makeText(VideoNavFragment.this.mContext, (int) R.string.video_editor_video_loading);
            return false;
        }
    };
    private TextView mTvDiscard;
    private TextView mTvExport;
    private int mVideoFrames = 0;
    private VideoFramesManager mVideoFramesManager;
    private boolean showAnimate = false;

    private static class VideoFramesManager {
        private WeakReference<VideoNavFragment> mFragmentRef;
        private Future<Void> mFuture;
        private FutureHandler<Void> mFutureHandler = new FutureHandler<Void>() {
            public void onPostExecute(Future<Void> future) {
                VideoNavFragment fragment = VideoFramesManager.this.getFragment();
                if (!future.isCancelled() && fragment != null) {
                    fragment.initRecylerView();
                }
            }
        };
        private Job mVideoFramesJob = new Job() {
            public Object run(JobContext jc) {
                VideoNavFragment fragment = VideoFramesManager.this.getFragment();
                if (!(jc.isCancelled() || fragment == null)) {
                    fragment.mVideoFrames = ToolsUtil.getVideoFrameRate(fragment.mVideoEditor.getVideoPath());
                }
                return null;
            }
        };

        public VideoFramesManager(VideoNavFragment videoNavEditMenu) {
            this.mFragmentRef = new WeakReference(videoNavEditMenu);
        }

        public void handleVideoFrames() {
            if (getFragment() == null) {
                Log.d("VideoNavFragment", "the mFragmentRef is null. ");
                return;
            }
            if (this.mFuture != null) {
                this.mFuture.cancel();
            }
            this.mFuture = ThreadManager.getMiscPool().submit(this.mVideoFramesJob, this.mFutureHandler);
        }

        private VideoNavFragment getFragment() {
            return this.mFragmentRef == null ? null : (VideoNavFragment) this.mFragmentRef.get();
        }

        public void onDestroy() {
            if (this.mFuture != null) {
                this.mFuture.cancel();
                this.mFuture = null;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initAnimatorData();
        this.mVideoFramesManager = new VideoFramesManager(this);
    }

    private void initAnimatorData() {
        if (sAnimOffset == 0) {
            sAnimOffset = getActivity().getResources().getDimensionPixelSize(R.dimen.video_editor_enter_sub_editor_main_menu_offset);
        }
        if (sAnimAppearDuration == 0) {
            sAnimAppearDuration = getActivity().getResources().getInteger(R.integer.video_editor_sub_editor_main_menu_appear_duration);
        }
        if (sAnimDisappearDuration == 0) {
            sAnimDisappearDuration = getActivity().getResources().getInteger(R.integer.video_editor_sub_editor_main_menu_disappear_duration);
        }
        if (sAnimAppearDelay == 0) {
            sAnimAppearDelay = getActivity().getResources().getInteger(R.integer.video_editor_sub_editor_main_menu_appear_delay);
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.video_editor_fragment_nav, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mNavRecyclerView = (SimpleRecyclerView) view.findViewById(R.id.navigator);
        this.mTvExport = (TextView) view.findViewById(R.id.export);
        this.mTvDiscard = (TextView) view.findViewById(R.id.discard);
        TextView textView = this.mTvExport;
        boolean z = this.mVideoEditor != null && this.mVideoEditor.hasEdit();
        textView.setEnabled(z);
        initListener();
        if (SmartVideoJudgeManager.isAvailable() && this.mVideoFrames == 0) {
            this.mVideoFramesManager.handleVideoFrames();
        } else {
            initRecylerView();
        }
    }

    private void initRecylerView() {
        initData();
        this.mAdapter = new VideoNavAdapter(this.mNavigatorDataList);
        this.mNavRecyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(this.mOnItemClickListener);
        int count = this.mAdapter.getItemCount();
        int start = (int) getResources().getDimension(R.dimen.video_editor_nav__start);
        this.mNavRecyclerView.addItemDecoration(new BlankDivider(start, start, ((ScreenUtils.getScreenWidth() - (start * 2)) - (getResources().getDimensionPixelSize(R.dimen.photo_editor_navigator_menu_item_width) * count)) / (count - 1), 0, 0, 0));
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mNavRecyclerView);
    }

    private void initListener() {
        this.mTvExport.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                VideoNavFragment.this.doApply();
            }
        });
        this.mTvDiscard.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                VideoNavFragment.this.doCancel();
            }
        });
    }

    public Animator onCreateAnimator(int transit, boolean enter, int nextAnim) {
        Animator anim = null;
        if (this.showAnimate && !(8194 == transit && enter)) {
            anim = new ObjectAnimator();
            PropertyValuesHolder y;
            PropertyValuesHolder alpha;
            if (enter) {
                y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) sAnimOffset, 0.0f});
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
                        if (VideoNavFragment.this.getView() != null) {
                            VideoNavFragment.this.getView().setVisibility(0);
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
                y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{0.0f, (float) (-sAnimOffset)});
                alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
                anim.setValues(new PropertyValuesHolder[]{alpha});
                anim.setInterpolator(new QuarticEaseOutInterpolator());
                anim.setDuration((long) sAnimDisappearDuration);
            }
        }
        return anim;
    }

    private void initData() {
        Log.d("VideoNavFragment", "the video fps is: %s", Integer.valueOf(this.mVideoFrames));
        this.mNavigatorDataList = this.mCallback.getNavigatorData(this.mVideoFrames);
    }

    public boolean doApply() {
        if (this.mCallback == null) {
            return false;
        }
        this.mCallback.onSave();
        return true;
    }

    public List<String> getCurrentEffect() {
        return null;
    }

    public boolean doCancel() {
        if (this.mCallback == null) {
            return false;
        }
        this.mCallback.onCancel();
        return true;
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mDialog != null) {
            this.mDialog.dismiss();
            this.mDialog = null;
        }
        if (this.mVideoFramesManager != null) {
            this.mVideoFramesManager.onDestroy();
        }
    }

    public void updateLastFragment(MenuFragment lastFragment) {
        if (lastFragment == null) {
            this.showAnimate = false;
        } else {
            this.showAnimate = true;
        }
    }

    public int getEffectId() {
        return R.id.video_editor_nav;
    }
}
