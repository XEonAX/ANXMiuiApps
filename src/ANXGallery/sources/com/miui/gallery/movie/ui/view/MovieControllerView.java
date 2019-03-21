package com.miui.gallery.movie.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.movie.core.MovieManager;
import com.miui.gallery.movie.core.MovieManager.StateChangeListener;
import com.miui.gallery.movie.entity.MovieInfo;
import com.miui.gallery.movie.ui.factory.MovieFactory;
import com.miui.gallery.movie.ui.view.BaseMovieView.IProgressChangeListener;

public class MovieControllerView extends BaseMovieView {
    private boolean isLoopPlay;
    private int mCurrentTime;
    private boolean mDeleteVisible;
    private DeleteIconVisibleListener mDeleteVisibleListener;
    private boolean mIgnoreProgressHide;
    private boolean mIsSeekDisable;
    private MovieManager mMovieManager;
    private boolean mPlayProgressVisible;
    private ProgressChangeListener mProgressChangeListener;
    private boolean mShowDeleteMode;
    private boolean mShowPlayBtnMode;

    public interface ProgressChangeListener {
        void onChanged(float f, int i);

        void onPlaybackEOF();

        void onStateChanged(int i);
    }

    public interface DeleteIconVisibleListener {
        void onChanged(boolean z);
    }

    public MovieControllerView(Context context) {
        super(context);
    }

    public MovieControllerView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public MovieControllerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void init(MovieManager movieManager) {
        this.mMovieManager = movieManager;
        init();
    }

    public void init() {
        if (this.mMovieManager == null) {
            this.mMovieManager = MovieFactory.createMovieManager(getContext());
        }
        super.init();
        setProgressChangeListener(new IProgressChangeListener() {
            int tempCurrentTime;

            public void onVideoProgressChanging(int layout, float percent) {
                if (!MovieControllerView.this.mIsSeekDisable) {
                    this.tempCurrentTime = MovieControllerView.this.mCurrentTime;
                    if (percent > 0.0f) {
                        int dTime = (int) (((float) MovieControllerView.this.mMovieManager.getTotalTime()) * percent);
                        if (layout == 0) {
                            if (MovieControllerView.this.mCurrentTime > 0) {
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
                        } else if (MovieControllerView.this.mCurrentTime < MovieControllerView.this.mMovieManager.getTotalTime()) {
                            this.tempCurrentTime += dTime;
                            if (this.tempCurrentTime > MovieControllerView.this.mMovieManager.getTotalTime()) {
                                this.tempCurrentTime = MovieControllerView.this.mMovieManager.getTotalTime();
                            }
                        } else {
                            return;
                        }
                        MovieControllerView.this.mMovieManager.seek(this.tempCurrentTime);
                        float percentForTotal = ((float) this.tempCurrentTime) / ((float) MovieControllerView.this.mMovieManager.getTotalTime());
                        MovieControllerView.this.updatePlayProgress(percentForTotal);
                        MovieControllerView.this.setDuration(this.tempCurrentTime / 1000);
                        MovieControllerView.this.setDeleteVisible(false);
                        if (MovieControllerView.this.mProgressChangeListener != null) {
                            MovieControllerView.this.mProgressChangeListener.onChanged(percentForTotal, this.tempCurrentTime);
                        }
                    }
                }
            }

            public void onVideoProgressChanged() {
                MovieControllerView.this.mCurrentTime = this.tempCurrentTime;
                MovieControllerView.this.mMovieManager.pause();
            }
        });
        this.mMovieManager.addStateChangeListener(new StateChangeListener() {
            public void onStateChanged(int state) {
                MovieControllerView.this.mMovieManager.setState(state);
                if (MovieControllerView.this.mIgnoreProgressHide) {
                    MovieControllerView.this.mIgnoreProgressHide = false;
                } else if (state == 2) {
                    MovieControllerView.this.showPlayBtn(true);
                } else {
                    MovieControllerView.this.showPlayBtn(false);
                }
                if (state != 3) {
                    MovieControllerView.this.setDeleteVisible(false);
                }
                if (MovieControllerView.this.mProgressChangeListener != null) {
                    MovieControllerView.this.mProgressChangeListener.onStateChanged(state);
                }
            }

            public void onPlaybackEOF() {
                onPlaybackTimeChanged(0);
                if (MovieControllerView.this.isLoopPlay) {
                    MovieControllerView.this.mMovieManager.replay();
                } else {
                    MovieControllerView.this.mIgnoreProgressHide = true;
                    MovieControllerView.this.mMovieManager.seek(0);
                    MovieControllerView.this.mMovieManager.pause();
                }
                if (MovieControllerView.this.mProgressChangeListener != null) {
                    MovieControllerView.this.mProgressChangeListener.onPlaybackEOF();
                }
            }

            public void onPlaybackTimeChanged(int currentTime) {
                float percent = ((float) currentTime) / ((float) MovieControllerView.this.mMovieManager.getTotalTime());
                MovieControllerView.this.setCurrentPlayTime(currentTime, percent);
                if (MovieControllerView.this.mProgressChangeListener != null) {
                    MovieControllerView.this.mProgressChangeListener.onChanged(percent, currentTime);
                }
            }

            public void onPlaybackPreloadingCompletion() {
                MovieControllerView.this.showLoadingView(false);
            }
        });
    }

    public void setCurrentPlayTime(int currentTime, float percent) {
        this.mCurrentTime = currentTime;
        updatePlayProgress(percent);
        setDuration(currentTime / 1000);
    }

    public void showPlayBtn(boolean show) {
        if (this.mShowPlayBtnMode) {
            super.showPlayBtn(show);
        } else {
            super.showPlayBtn(false);
        }
    }

    protected View createDisplayView() {
        return this.mMovieManager.getDisplayView();
    }

    public void onResume() {
        this.mMovieManager.onResume();
    }

    public void onPause() {
        this.mMovieManager.onPause();
    }

    public MovieManager getMovieManager() {
        return this.mMovieManager;
    }

    public void setPlayProgressVisible(boolean playProgressVisible) {
        if (this.mPlayProgressVisible != playProgressVisible) {
            this.mPlayProgressVisible = playProgressVisible;
            showPlayProgress(this.mPlayProgressVisible);
        }
    }

    public void setShowPlayBtnMode(boolean showPlayBtnMode) {
        if (this.mShowPlayBtnMode != showPlayBtnMode) {
            this.mShowPlayBtnMode = showPlayBtnMode;
            if (showPlayBtnMode) {
                int state = this.mMovieManager.getState();
                if (state == 2 || state == 3) {
                    showPlayBtn(true);
                    return;
                }
                return;
            }
            showPlayBtn(false);
        }
    }

    public void setShowDeleteMode(boolean showDeleteMode) {
        if (this.mShowDeleteMode != showDeleteMode) {
            this.mShowDeleteMode = showDeleteMode;
            if (!showDeleteMode) {
                showDeleteIcon(false);
                showDuration(true);
            } else if (this.mDeleteVisible) {
                showDeleteIcon(true);
                showDuration(false);
            }
        }
    }

    public void setProgressChangeListener(ProgressChangeListener progressChangeListener) {
        this.mProgressChangeListener = progressChangeListener;
    }

    public void setDeleteVisible(boolean visible) {
        if (this.mDeleteVisible != visible) {
            if (this.mDeleteVisibleListener != null) {
                this.mDeleteVisibleListener.onChanged(visible);
            }
            this.mDeleteVisible = visible;
            if (visible && this.mShowDeleteMode) {
                showDeleteIcon(true);
                showDuration(false);
                return;
            }
            showDeleteIcon(false);
            showDuration(true);
        }
    }

    public void setDeleteVisibleListener(DeleteIconVisibleListener deleteVisibleListener) {
        this.mDeleteVisibleListener = deleteVisibleListener;
    }

    public void setMovieInfo(MovieInfo movieInfo) {
        this.mMovieManager.setInfo(movieInfo);
    }

    public void setLoopPlay(boolean loopPlay) {
        this.isLoopPlay = loopPlay;
    }

    public void setSeekDisable(boolean seekDisable) {
        this.mIsSeekDisable = seekDisable;
    }
}
