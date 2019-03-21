package com.miui.gallery.movie.ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.internal.WindowCompat;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.movie.MovieConfig;
import com.miui.gallery.movie.core.MovieManager;
import com.miui.gallery.movie.entity.ImageEntity;
import com.miui.gallery.movie.entity.MovieInfo;
import com.miui.gallery.movie.entity.MovieShareData;
import com.miui.gallery.movie.ui.factory.MovieFactory;
import com.miui.gallery.movie.ui.fragment.MovieEditorMenuFragment;
import com.miui.gallery.movie.ui.fragment.MoviePreviewMenuFragment;
import com.miui.gallery.movie.ui.fragment.MovieSavingFragment;
import com.miui.gallery.movie.ui.fragment.MovieSavingFragment.OnSavingFinishListener;
import com.miui.gallery.movie.ui.listener.MenuActivityListener;
import com.miui.gallery.movie.ui.listener.MenuFragmentListener;
import com.miui.gallery.movie.ui.listener.SingleClickListener;
import com.miui.gallery.movie.ui.view.MovieControllerView;
import com.miui.gallery.movie.ui.view.MovieControllerView.DeleteIconVisibleListener;
import com.miui.gallery.movie.ui.view.MovieControllerView.ProgressChangeListener;
import com.miui.gallery.movie.utils.AudioFocusHelper;
import com.miui.gallery.movie.utils.MovieStatUtils;
import com.miui.gallery.movie.utils.MovieUtils;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.util.SystemUiUtil;
import com.miui.gallery.util.ToastUtils;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import miui.view.animation.CubicEaseInInterpolator;
import miui.view.animation.CubicEaseInOutInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.animation.QuarticEaseInOutInterpolator;
import miui.view.animation.QuarticEaseOutInterpolator;

public class MovieActivity extends BaseActivity implements OnClickListener, MenuFragmentListener {
    private Activity mActivity;
    private AudioFocusHelper mAudioFocusHelper;
    private MovieEditorMenuFragment mEditorMenuFragment;
    private View mEditorMenuView;
    private LayoutParams mEditorMovieLps;
    private boolean mIsEditorPreview;
    private MenuActivityListener mMenuActivityListener;
    private MovieInfo mMovieInfo;
    private MovieManager mMovieManager;
    private MovieSavingFragment mMovieSavingFragment;
    private MovieShareData mMovieShareData;
    private MovieControllerView mMovieView;
    private MoviePreviewMenuFragment mPreviewMenuFragment;
    private View mPreviewMenuView;
    private LayoutParams mPreviewMovieLps;
    private ViewGroup mRootView;
    private int mShowMode = -1;
    private SingleClickListener mSingleClickListener = new SingleClickListener() {
        protected void onSingleClick(View v) {
            switch (v.getId()) {
                case R.id.movie_title /*2131886558*/:
                    MovieActivity.this.finish();
                    return;
                case R.id.movie_share /*2131886559*/:
                    MovieActivity.this.mMovieManager.pause();
                    if (MovieActivity.this.mMovieShareData == null) {
                        MovieActivity.this.mMovieShareData = new MovieShareData();
                        MovieActivity.this.mMovieShareData.setShortVideo(MovieActivity.this.mMovieInfo.isShortVideo);
                    }
                    String path = MovieActivity.this.mMovieShareData.getVideoPath();
                    if (TextUtils.isEmpty(path)) {
                        if (MovieActivity.this.mMovieSavingFragment == null) {
                            MovieActivity.this.mMovieSavingFragment = new MovieSavingFragment();
                        }
                        MovieActivity.this.mMovieSavingFragment.showAndShare(MovieActivity.this.mActivity, MovieActivity.this.mMovieManager, MovieActivity.this.mMovieInfo);
                        return;
                    }
                    MovieActivity.this.handleShareEvent(path);
                    return;
                default:
                    return;
            }
        }
    };
    private long mStoryMovieCardId;
    private ArrayList<String> mStorySha1List;

    public static void startPicker(Context context) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        intent.putExtra("pick-upper-bound", 20);
        intent.putExtra("pick-lower-bound", 3);
        intent.putExtra("pick_intent", new Intent(context, MovieActivity.class));
        intent.putExtra("pick_close_type", 3);
        intent.setPackage("com.miui.gallery");
        context.startActivity(intent);
    }

    public void onCreate(Bundle savedInstanceState) {
        setTheme(R.style.f165GalleryTheme.MovieTheme);
        if (savedInstanceState != null) {
            this.mMovieInfo = (MovieInfo) savedInstanceState.getParcelable("bundle_movie_info");
            this.mShowMode = savedInstanceState.getInt("bundle_show_mode");
        }
        if (parseIntent()) {
            this.mMovieManager = MovieFactory.createMovieManager(this);
            super.onCreate(savedInstanceState);
            this.mActivity = this;
            SystemUiUtil.setLayoutFullScreen(getWindow().getDecorView(), true);
            WindowCompat.setCutoutModeShortEdges(getWindow());
            configureActionBar();
            initStoryAlbumData();
            setContentView(R.layout.movie_activity);
            initView();
            initMode();
            this.mAudioFocusHelper = new AudioFocusHelper(this);
        }
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putParcelable("bundle_movie_info", this.mMovieInfo);
        outState.putInt("bundle_show_mode", this.mShowMode);
    }

    private void configureActionBar() {
        this.mActionBar.setDisplayShowCustomEnabled(true);
        this.mActionBar.setDisplayShowHomeEnabled(false);
        this.mActionBar.setDisplayShowTitleEnabled(false);
        this.mActionBar.setHomeButtonEnabled(true);
        this.mActionBar.setCustomView(R.layout.movie_fragment_top);
        View customView = this.mActionBar.getCustomView();
        ImageView mShareView = (ImageView) customView.findViewById(R.id.movie_share);
        ((TextView) customView.findViewById(R.id.movie_title)).setOnClickListener(this);
        mShareView.setOnClickListener(this.mSingleClickListener);
        this.mActionBar.hide();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.movie_title /*2131886558*/:
                finish();
                return;
            default:
                return;
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        initMovieViewLayout();
        setSystemBarVisible(this.mShowMode == 2);
    }

    public void onMultiWindowModeChanged(boolean isInMultiWindowMode, Configuration newConfig) {
        super.onMultiWindowModeChanged(isInMultiWindowMode, newConfig);
        if (!isInMultiWindowMode) {
            initMovieViewLayout();
            setSystemBarVisible(this.mShowMode == 2);
        }
    }

    protected void onResume() {
        if (this.mMovieView != null) {
            this.mMovieView.onResume();
        }
        super.onResume();
        ImageLoader.getInstance().resume();
        if (this.mAudioFocusHelper != null) {
            this.mAudioFocusHelper.requestAudioFocus();
        }
    }

    protected void onPause() {
        super.onPause();
        ImageLoader.getInstance().pause();
        if (this.mAudioFocusHelper != null) {
            this.mAudioFocusHelper.abandonAudioFocus();
        }
        if (this.mMovieView != null) {
            this.mMovieView.onPause();
        }
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            setSystemBarVisible(this.mShowMode == 2);
        }
    }

    private void initView() {
        this.mMovieView = (MovieControllerView) findViewById(R.id.movie_controller_view);
        this.mMovieView.init(this.mMovieManager);
        this.mMovieView.setMovieInfo(this.mMovieInfo);
        this.mMovieView.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (MovieActivity.this.mShowMode == 2) {
                    MovieActivity.this.mShowMode = 1;
                    MovieActivity.this.changeFullScreen(true);
                } else if (MovieActivity.this.mShowMode == 1) {
                    MovieActivity.this.mShowMode = 2;
                    MovieActivity.this.changeFullScreen(false);
                } else if (MovieActivity.this.mIsEditorPreview) {
                    MovieActivity.this.changeEditorPreview();
                } else {
                    MovieActivity.this.mMovieManager.pauseOrResume();
                }
            }
        });
        this.mMovieManager = this.mMovieView.getMovieManager();
        this.mPreviewMenuView = findViewById(R.id.preview_panel);
        this.mEditorMenuView = findViewById(R.id.editor_panel);
        this.mRootView = (ViewGroup) findViewById(R.id.movie_root);
        this.mMovieView.setIvPlayListener(new OnClickListener() {
            public void onClick(View v) {
                MovieActivity.this.mMovieManager.resume();
                MovieActivity.this.mMovieView.showDeleteIcon(false);
                if (MovieActivity.this.mMenuActivityListener != null) {
                    MovieActivity.this.mMenuActivityListener.onResumeClick();
                }
            }
        });
        this.mMovieView.setProgressChangeListener(new ProgressChangeListener() {
            public void onChanged(float percent, int time) {
                if (MovieActivity.this.mPreviewMenuFragment != null) {
                    MovieActivity.this.mPreviewMenuFragment.onProgressChange(percent, time);
                }
            }

            public void onStateChanged(int state) {
                if (MovieActivity.this.mPreviewMenuFragment != null) {
                    MovieActivity.this.mPreviewMenuFragment.onStateChanged(state);
                }
            }

            public void onPlaybackEOF() {
                if (MovieActivity.this.mPreviewMenuFragment != null) {
                    MovieActivity.this.mPreviewMenuFragment.onPlaybackEOF();
                }
                if (MovieActivity.this.mShowMode == 1) {
                    MovieActivity.this.mShowMode = 2;
                    MovieActivity.this.changeFullScreen(false);
                }
            }
        });
        this.mMovieView.setDeleteVisibleListener(new DeleteIconVisibleListener() {
            public void onChanged(boolean visible) {
                if (MovieActivity.this.mMenuActivityListener != null) {
                    MovieActivity.this.mMenuActivityListener.clearEditorAdapterSelected();
                }
            }
        });
        this.mMovieView.setPreviewBtnClickListener(new SingleClickListener() {
            protected void onSingleClick(View v) {
                MovieActivity.this.changeEditorPreview();
            }
        });
    }

    private void initMovieViewLayout() {
        int fullScreenHeight = ScreenUtils.getFullScreenHeight(this);
        int notchHeight = WindowCompat.getTopNotchHeight(this);
        float ration = (1.0f * ((float) ScreenUtils.getScreenWidth())) / ((float) fullScreenHeight);
        MovieConfig.setMovieRatio(ration);
        int height = (int) ((((((float) fullScreenHeight) - getResources().getDimension(R.dimen.movie_controller_height)) - getResources().getDimension(R.dimen.movie_editor_view_margin_top)) - getResources().getDimension(R.dimen.movie_editor_view_margin_bottom)) - ((float) notchHeight));
        this.mEditorMovieLps = new LayoutParams(this.mMovieView.getLayoutParams());
        this.mEditorMovieLps.width = (int) (((float) height) * ration);
        this.mEditorMovieLps.height = height;
        this.mEditorMovieLps.topMargin = ((int) getResources().getDimension(R.dimen.movie_editor_view_margin_top)) + notchHeight;
        this.mEditorMovieLps.addRule(14);
        this.mPreviewMovieLps = new LayoutParams(this.mMovieView.getLayoutParams());
        this.mPreviewMovieLps.width = ScreenUtils.getScreenWidth();
        this.mPreviewMovieLps.height = fullScreenHeight;
        this.mPreviewMovieLps.topMargin = 0;
        this.mPreviewMovieLps.addRule(14);
        LayoutParams lps;
        if (this.mShowMode == 3) {
            lps = (LayoutParams) this.mMovieView.getLayoutParams();
            lps.width = this.mEditorMovieLps.width;
            lps.height = this.mEditorMovieLps.height;
            lps.topMargin = this.mEditorMovieLps.topMargin;
            this.mMovieView.setLayoutParams(lps);
            return;
        }
        lps = (LayoutParams) this.mMovieView.getLayoutParams();
        lps.width = this.mPreviewMovieLps.width;
        lps.height = this.mPreviewMovieLps.height;
        lps.topMargin = this.mPreviewMovieLps.topMargin;
        this.mMovieView.setLayoutParams(lps);
    }

    private void initMode() {
        if (this.mShowMode == -1) {
            this.mShowMode = this.mMovieInfo.isFromStory ? 1 : 3;
        }
        if (this.mShowMode == 3) {
            this.mEditorMenuFragment = (MovieEditorMenuFragment) getFragmentManager().findFragmentById(R.id.editor_panel);
            if (this.mEditorMenuFragment == null) {
                this.mEditorMenuFragment = new MovieEditorMenuFragment();
                getFragmentManager().beginTransaction().add(R.id.editor_panel, this.mEditorMenuFragment).commit();
            }
        } else {
            this.mPreviewMenuFragment = (MoviePreviewMenuFragment) getFragmentManager().findFragmentById(R.id.preview_panel);
            if (this.mPreviewMenuFragment == null) {
                this.mPreviewMenuFragment = new MoviePreviewMenuFragment();
                getFragmentManager().beginTransaction().add(R.id.preview_panel, this.mPreviewMenuFragment).commit();
            }
            if (this.mShowMode == 1) {
                this.mPreviewMenuView.setVisibility(4);
            }
        }
        setForMode();
    }

    private void setSystemBarVisible(boolean visible) {
        if (visible) {
            SystemUiUtil.showSystemBars(getWindow().getDecorView());
            this.mActionBar.show();
            return;
        }
        SystemUiUtil.hideSystemBars(getWindow().getDecorView());
        this.mActionBar.hide();
    }

    private void setForMode() {
        if (this.mShowMode == 3) {
            this.mMovieView.setPlayProgressVisible(true);
            this.mMovieView.setShowPlayBtnMode(true);
            this.mMovieView.setTouchAvailable(true);
            this.mMovieView.setDeleteClickListener(new OnClickListener() {
                public void onClick(View v) {
                    if (MovieActivity.this.mMenuActivityListener != null) {
                        MovieActivity.this.mMenuActivityListener.onDeleteClick();
                    }
                }
            });
            this.mMovieView.showPreviewBtn(true);
            return;
        }
        this.mMovieView.setTouchAvailable(false);
        this.mMovieView.setPlayProgressVisible(false);
        this.mMovieView.setShowPlayBtnMode(false);
        this.mMovieView.showPreviewBtn(false);
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof MenuActivityListener) {
            this.mMenuActivityListener = (MenuActivityListener) fragment;
        }
    }

    private boolean parseIntent() {
        List imagePaths = MovieUtils.getImageFromClipData(this, getIntent());
        if (imagePaths == null || imagePaths.size() < 3) {
            ToastUtils.makeText(this.mActivity, (int) R.string.movie_delete_disable);
            finish();
            return false;
        }
        if (this.mMovieInfo == null) {
            this.mMovieInfo = new MovieInfo(imagePaths);
            this.mMovieInfo.isFromStory = getIntent().getBooleanExtra("movie_extra_preview_mode", false);
            this.mMovieInfo.title = getIntent().getStringExtra("card_title");
            this.mMovieInfo.subTitle = getIntent().getStringExtra("card_sub_title");
            int templateId = getIntent().getIntExtra("movie_extra_template", 0);
            this.mMovieInfo.template = MovieFactory.getTemplateNameById(templateId);
            MovieStatUtils.statEnter(imagePaths.size(), this.mMovieInfo.isFromStory);
        }
        return true;
    }

    private void initStoryAlbumData() {
        Intent storyAlbumIntent = getIntent();
        if (this.mMovieInfo.isFromStory && storyAlbumIntent != null) {
            this.mStoryMovieCardId = storyAlbumIntent.getLongExtra("card_id", 0);
            if (this.mStorySha1List == null) {
                this.mStorySha1List = new ArrayList();
            }
            ClipData clipData = storyAlbumIntent.getClipData();
            for (int i = 0; i < clipData.getItemCount(); i++) {
                String sha1 = clipData.getItemAt(i).getText().toString();
                if (!this.mStorySha1List.contains(sha1)) {
                    this.mStorySha1List.add(sha1);
                }
            }
        }
    }

    public MovieInfo getMovieInfo() {
        return this.mMovieInfo;
    }

    public MovieManager getMovieManager() {
        return this.mMovieManager;
    }

    public void changeEditor() {
        FragmentTransaction fragmentTransaction;
        if (this.mShowMode == 3) {
            this.mShowMode = 2;
            fragmentTransaction = getFragmentManager().beginTransaction();
            fragmentTransaction.hide(this.mEditorMenuFragment);
            this.mPreviewMenuFragment = (MoviePreviewMenuFragment) getFragmentManager().findFragmentById(R.id.preview_panel);
            if (this.mPreviewMenuFragment == null) {
                this.mPreviewMenuFragment = new MoviePreviewMenuFragment();
                fragmentTransaction.add(R.id.preview_panel, this.mPreviewMenuFragment);
            } else {
                fragmentTransaction.show(this.mPreviewMenuFragment);
            }
            fragmentTransaction.commit();
            this.mMovieView.postDelayed(new Runnable() {
                public void run() {
                    MovieActivity.this.setSystemBarVisible(true);
                }
            }, (long) getResources().getInteger(R.integer.movie_preview_appear_delay));
        } else {
            this.mShowMode = 3;
            fragmentTransaction = getFragmentManager().beginTransaction();
            fragmentTransaction.hide(this.mPreviewMenuFragment);
            this.mEditorMenuFragment = (MovieEditorMenuFragment) getFragmentManager().findFragmentById(R.id.editor_panel);
            if (this.mEditorMenuFragment == null) {
                this.mEditorMenuFragment = new MovieEditorMenuFragment();
                fragmentTransaction.add(R.id.editor_panel, this.mEditorMenuFragment);
                Bundle args = new Bundle();
                args.putLong("card_id", this.mStoryMovieCardId);
                this.mEditorMenuFragment.setArguments(args);
            } else {
                fragmentTransaction.show(this.mEditorMenuFragment);
            }
            fragmentTransaction.commit();
            setSystemBarVisible(false);
        }
        setForMode();
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setInterpolator(new QuarticEaseOutInterpolator());
        changeBounds.setStartDelay((long) getResources().getInteger(R.integer.movie_editor_appear_delay));
        changeBounds.setDuration((long) getResources().getInteger(R.integer.movie_editor_appear_duration));
        TransitionManager.beginDelayedTransition(this.mRootView, changeBounds);
        if (this.mShowMode == 3) {
            this.mMovieView.setLayoutParams(this.mEditorMovieLps);
        } else {
            this.mMovieView.setLayoutParams(this.mPreviewMovieLps);
        }
    }

    public void changeEditorPreview() {
        boolean z;
        if (this.mIsEditorPreview) {
            z = false;
        } else {
            z = true;
        }
        this.mIsEditorPreview = z;
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setInterpolator(new QuarticEaseInOutInterpolator());
        changeBounds.setDuration((long) getResources().getInteger(R.integer.movie_editor_preview_duration));
        TransitionManager.beginDelayedTransition(this.mRootView, changeBounds);
        if (this.mIsEditorPreview) {
            doEditorPreviewChangeAnimal(this.mEditorMenuView, false);
            this.mMovieView.showExtraContent(false);
            this.mMovieView.setLoopPlay(true);
            this.mMovieView.setSeekDisable(true);
            this.mMovieView.setLayoutParams(this.mPreviewMovieLps);
            this.mMovieView.setTouchAvailable(false);
            this.mMovieManager.replay();
            return;
        }
        doEditorPreviewChangeAnimal(this.mEditorMenuView, true);
        this.mMovieView.showExtraContent(true);
        this.mMovieView.setLoopPlay(false);
        this.mMovieView.setSeekDisable(false);
        this.mMovieView.setLayoutParams(this.mEditorMovieLps);
        this.mMovieView.setTouchAvailable(true);
        this.mMovieManager.pause();
    }

    public void changeFullScreen(boolean fullScreen) {
        boolean z;
        this.mShowMode = fullScreen ? 1 : 2;
        if (fullScreen) {
            z = false;
        } else {
            z = true;
        }
        setSystemBarVisible(z);
        if (fullScreen) {
            doFullScreenChangeAnimal(this.mPreviewMenuView, false);
        } else {
            doFullScreenChangeAnimal(this.mPreviewMenuView, true);
        }
    }

    private void doFullScreenChangeAnimal(final View view, boolean enter) {
        AnimatorSet animSet = new AnimatorSet();
        int height = view.getHeight();
        Animator translate;
        if (enter) {
            translate = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, new float[]{(float) height, 0.0f});
            animSet.playTogether(new Animator[]{translate});
            animSet.setInterpolator(new CubicEaseOutInterpolator());
            animSet.setDuration((long) getResources().getInteger(R.integer.movie_background_appear_duration));
            animSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationStart(Animator animation) {
                    view.setVisibility(0);
                }
            });
        } else {
            translate = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, new float[]{0.0f, (float) height});
            animSet.playTogether(new Animator[]{translate});
            animSet.setInterpolator(new CubicEaseInInterpolator());
            animSet.setDuration((long) getResources().getInteger(R.integer.movie_background_disappear_duration));
            animSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    view.setVisibility(8);
                }
            });
            animSet.setupStartValues();
        }
        animSet.start();
    }

    private void doEditorPreviewChangeAnimal(final View view, boolean visible) {
        AnimatorSet animSet = new AnimatorSet();
        int height = view.getHeight();
        Animator translate;
        if (visible) {
            translate = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, new float[]{(float) height, 0.0f});
            animSet.playTogether(new Animator[]{translate});
            animSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationStart(Animator animation) {
                    view.setVisibility(0);
                }
            });
        } else {
            translate = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, new float[]{0.0f, (float) height});
            animSet.playTogether(new Animator[]{translate});
            animSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    view.setVisibility(4);
                    MovieActivity.this.mMovieManager.play();
                }
            });
            animSet.setupStartValues();
        }
        animSet.setInterpolator(new CubicEaseInOutInterpolator());
        animSet.setDuration((long) getResources().getInteger(R.integer.movie_editor_preview_duration));
        animSet.start();
    }

    public void returnClick() {
        if (this.mIsEditorPreview) {
            changeEditorPreview();
        } else if (this.mShowMode == 3 && this.mMovieInfo.isFromStory) {
            setShowDeleteMode(false);
            changeEditor();
            if (this.mMenuActivityListener != null) {
                this.mMenuActivityListener.clearEditorAdapterSelected();
            }
        } else {
            finish();
        }
    }

    public void onBackPressed() {
        returnClick();
    }

    public void showLoadingView() {
        this.mMovieView.showLoadingView(true);
    }

    public void setDeleteVisible(boolean visible) {
        this.mMovieView.setShowDeleteMode(true);
        this.mMovieView.setDeleteVisible(visible);
    }

    public void setShowDeleteMode(boolean deleteMode) {
        this.mMovieView.setShowDeleteMode(deleteMode);
    }

    public void seekToIndex(int position) {
        int currentTime = this.mMovieManager.seekToIndex(position);
        float percent = ((float) currentTime) / ((float) this.mMovieManager.getTotalTime());
        this.mMovieView.setCurrentPlayTime(currentTime, percent);
        if (this.mPreviewMenuFragment != null) {
            this.mPreviewMenuFragment.onProgressChange(percent, currentTime);
        }
    }

    public void seek(int time) {
        this.mMovieManager.seek(time);
        this.mMovieView.setCurrentPlayTime(time, ((float) time) / ((float) this.mMovieManager.getTotalTime()));
    }

    public void export(boolean isPreviewPager) {
        if (this.mMovieSavingFragment == null) {
            this.mMovieSavingFragment = new MovieSavingFragment();
        }
        this.mMovieSavingFragment.show(this.mActivity, this.mMovieManager, this.mMovieInfo, isPreviewPager, new OnSavingFinishListener() {
            public void onFinish(boolean success, boolean isCancel, String outFile) {
                if (MovieActivity.this.isDestroyed()) {
                    Log.w("MovieActivity", "movie activity is finish on saving finish");
                } else if (MovieActivity.this.mMovieInfo.isFromStory) {
                    MovieActivity.this.finish();
                } else {
                    MovieActivity.this.setResult(-1);
                    MovieActivity.this.finish();
                    MovieUtils.goDetail(MovieActivity.this.mActivity, Uri.fromFile(new File(outFile)));
                }
            }
        });
    }

    protected void onDestroy() {
        super.onDestroy();
        this.mMovieShareData = null;
        if (this.mMovieManager != null) {
            this.mMovieManager.destroy();
        }
    }

    public void updateStorySha1Data() {
        if (this.mStorySha1List == null) {
            Log.e("MovieActivity", "mStorySha1List is null. ");
            return;
        }
        this.mStorySha1List.clear();
        for (int i = 0; i < this.mMovieInfo.imageList.size(); i++) {
            this.mStorySha1List.add(((ImageEntity) this.mMovieInfo.imageList.get(i)).sha1);
        }
    }

    public ArrayList<String> getStoryMovieSha1() {
        return this.mStorySha1List;
    }

    public void updateShareData(boolean isShortVideoTitle) {
        if (this.mMovieShareData != null) {
            this.mMovieShareData.setShortVideo(isShortVideoTitle);
        }
    }

    public void resetShareData() {
        if (this.mMovieShareData != null) {
            this.mMovieShareData.reset(this.mMovieInfo.isShortVideo);
        }
    }

    public void handleShareEvent(String outFilePath) {
        if (this.mMovieShareData != null) {
            this.mMovieShareData.setVideoPath(outFilePath, this.mMovieInfo.isShortVideo);
        }
        doShare(outFilePath);
    }

    private void doShare(String outFilePath) {
        if (TextUtils.isEmpty(outFilePath)) {
            Log.e("MovieActivity", "share outFilePath is null");
            return;
        }
        Uri shareUri = GalleryOpenProvider.translateToContent(outFilePath);
        Intent shareIntent = new Intent();
        shareIntent.setAction("android.intent.action.SEND");
        shareIntent.setType("video/*");
        shareIntent.putExtra("android.intent.extra.STREAM", shareUri);
        shareIntent.addFlags(268435456);
        shareIntent.addFlags(1);
        shareIntent.addFlags(134742016);
        List<ResolveInfo> resInfoList = this.mActivity.getPackageManager().queryIntentActivities(shareIntent, 65536);
        if (BaseMiscUtil.isValid(resInfoList)) {
            for (ResolveInfo resolveInfo : resInfoList) {
                this.mActivity.grantUriPermission(resolveInfo.activityInfo.packageName, shareUri, 1);
            }
            this.mActivity.startActivityForResult(Intent.createChooser(shareIntent, this.mActivity.getString(R.string.movie_preview_share_title)), 1);
            return;
        }
        Log.e("MovieActivity", "doShare: resInfoList is invalid.");
    }

    public void cancelExport() {
        this.mMovieManager.cancelExport();
    }
}
