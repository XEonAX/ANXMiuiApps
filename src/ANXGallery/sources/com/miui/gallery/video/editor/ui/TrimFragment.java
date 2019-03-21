package com.miui.gallery.video.editor.ui;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.VideoEditor.OnCompletedListener;
import com.miui.gallery.video.editor.VideoEditor.OnVideoThumbnailChangedListener;
import com.miui.gallery.video.editor.VideoEditor.StateChangeListener;
import com.miui.gallery.video.editor.widget.EffectActionBar;
import com.miui.gallery.video.editor.widget.EffectActionBar.ActionListener;
import com.miui.gallery.video.editor.widget.rangeseekbar.VideoEditorRangeSeekBar;
import com.miui.gallery.video.editor.widget.rangeseekbar.VideoEditorRangeSeekBar.ISeekbarZooming;
import com.miui.gallery.video.editor.widget.rangeseekbar.VideoEditorRangeSeekBar.OnSeekBarChangeListener;
import com.miui.gallery.video.editor.widget.rangeseekbar.drawable.VideoThumbnailBackgroundDrawable.BitmapProvider;
import java.util.ArrayList;
import java.util.List;

public class TrimFragment extends MenuFragment implements OnSeekBarChangeListener {
    private EffectActionBar mBottomBar;
    private boolean mHasCliped;
    private boolean mIsModified = false;
    private VideoEditorRangeSeekBar mRangeSeekBar;
    private int mSavedEndRange = 0;
    private int mSavedStartRange = 0;
    private MyStateChangeListener mStateChangeListener = new MyStateChangeListener(this, null);
    private TextView mTvVideoTime;
    private boolean needResetTrimInfo = false;

    private class MyStateChangeListener implements StateChangeListener {
        private MyStateChangeListener() {
        }

        /* synthetic */ MyStateChangeListener(TrimFragment x0, AnonymousClass1 x1) {
            this();
        }

        public void onStateChanged(int state) {
            if (state == 1) {
                TrimFragment.this.mRangeSeekBar.setMax(TrimFragment.this.mVideoEditor.getProjectTotalTime());
                TrimFragment.this.updatePalyBtnView();
            }
        }

        public void onTimeChanged(int currenTime) {
            TrimFragment.this.mRangeSeekBar.setProgress(currenTime);
            TrimFragment.this.mRangeSeekBar.showProgressBar();
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.video_editor_trim_edit_menu, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Point p = new Point();
        this.mBottomBar = (EffectActionBar) view.findViewById(R.id.video_editor_effect_action_bar);
        this.mBottomBar.setTitle(this.mContext.getResources().getString(R.string.video_editor_trim));
        this.mRangeSeekBar = (VideoEditorRangeSeekBar) view.findViewById(R.id.video_editor_trim_range_seek_bar);
        this.mRangeSeekBar.setOnSeekBarChangeListener(this);
        this.mTvVideoTime = (TextView) view.findViewById(R.id.trim_tv_time);
        this.mRangeSeekBar.setTotal(this.mVideoEditor.getVideoTotalTime());
        this.mRangeSeekBar.setMax(this.mVideoEditor.getProjectTotalTime());
        this.mSavedStartRange = this.mRangeSeekBar.getStartRange();
        this.mSavedEndRange = this.mRangeSeekBar.getEndRange();
        this.needResetTrimInfo = true;
        this.mTvVideoTime.setText(getCurrentVideoTime(this.mVideoEditor.getProjectTotalTime()));
        this.mRangeSeekBar.setBitmapProvider(new BitmapProvider() {
            public Bitmap getBitmap(int location, int total) {
                return TrimFragment.this.mVideoEditor.pickThumbnail(location);
            }
        });
        this.mRangeSeekBar.setThumbnailAspectRatio(this.mVideoEditor.getCurrentDisplayRatio());
        this.mVideoEditor.addStateChangeListener(this.mStateChangeListener);
        this.mVideoEditor.setOnVideoThumbnailChangedListener(new OnVideoThumbnailChangedListener() {
            public void onVideoThumbnailChanged() {
                if (TrimFragment.this.mVideoEditor != null && TrimFragment.this.mRangeSeekBar != null) {
                    TrimFragment.this.mRangeSeekBar.setThumbnailAspectRatio(TrimFragment.this.mVideoEditor.getCurrentDisplayRatio());
                }
            }
        });
        updateAutoTrimView();
        initListener();
    }

    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        this.mRangeSeekBar.setTotal(this.mVideoEditor.getVideoTotalTime());
        this.mRangeSeekBar.setMax(this.mVideoEditor.getProjectTotalTime());
        this.mSavedStartRange = this.mRangeSeekBar.getStartRange();
        this.mSavedEndRange = this.mRangeSeekBar.getEndRange();
    }

    public void onVideoLoadCompleted() {
        super.onVideoLoadCompleted();
        if (this.mVideoEditor != null && this.mRangeSeekBar != null) {
            this.mRangeSeekBar.setTotal(this.mVideoEditor.getVideoTotalTime());
            this.mRangeSeekBar.setMax(this.mVideoEditor.getProjectTotalTime());
            this.mSavedEndRange = this.mVideoEditor.getVideoTotalTime();
            this.mSavedStartRange = 0;
            this.mRangeSeekBar.setStartRange(0);
            this.mRangeSeekBar.setEndRange(this.mVideoEditor.getVideoTotalTime());
            this.mRangeSeekBar.lockRangeTo(0, this.mVideoEditor.getVideoTotalTime(), null);
            this.mTvVideoTime.setText(getCurrentVideoTime(this.mVideoEditor.getProjectTotalTime()));
            updateAutoTrimView();
        }
    }

    private void initListener() {
        this.mBottomBar.setActionListener(new ActionListener() {
            public void onCancelAction() {
                TrimFragment.this.doCancel();
            }

            public void onApplyAction() {
                TrimFragment.this.doApply();
            }
        });
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.mVideoEditor.removeStateChangeListener(this.mStateChangeListener);
        this.mRangeSeekBar = null;
        if (this.mBottomBar != null) {
            this.mBottomBar.removeListener();
        }
        updateAutoTrimView();
    }

    public void onPlayButtonClicked() {
        if (this.mVideoEditor != null) {
            switch (this.mVideoEditor.getState()) {
                case 0:
                case 2:
                    if (this.mIsModified) {
                        int start = this.mRangeSeekBar.getStartRange();
                        int end = this.mRangeSeekBar.getEndRange();
                        if (start >= end || end - start <= 1000) {
                            ToastUtils.makeText(this.mContext, (int) R.string.video_editor_invalid_trim_arguments);
                            return;
                        }
                        this.mVideoEditor.setTrimInfo(start, end);
                        this.mVideoEditor.apply(new OnCompletedListener() {
                            public void onCompleted() {
                                TrimFragment.this.needResetTrimInfo = true;
                                TrimFragment.this.mVideoEditor.play();
                            }
                        });
                        this.mIsModified = false;
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public List<String> getCurrentEffect() {
        return new ArrayList();
    }

    public boolean doApply() {
        if (this.mRangeSeekBar != null && this.mRangeSeekBar.isTouching()) {
            return false;
        }
        if (this.mVideoEditor == null) {
            Log.d("TrimFragment", "doApply: videoEditor is null.");
            return false;
        }
        final int start = this.mRangeSeekBar.getStartRange();
        final int end = this.mRangeSeekBar.getEndRange();
        if (start >= end || end - start <= 1000) {
            ToastUtils.makeText(this.mRangeSeekBar.getContext(), (int) R.string.video_editor_invalid_trim_arguments);
            onExitMode();
        } else {
            this.mVideoEditor.setTrimInfo(start, end);
            this.mRangeSeekBar.lockRangeTo(start, end, new ISeekbarZooming() {
                public void onAnimationEnd() {
                    TrimFragment.this.mVideoEditor.apply(new OnCompletedListener() {
                        public void onCompleted() {
                            if (TrimFragment.this.mVideoEditor != null) {
                                TrimFragment.this.mSavedStartRange = start;
                                TrimFragment.this.mSavedEndRange = end;
                                TrimFragment.this.needResetTrimInfo = true;
                                TrimFragment.this.mIsModified = false;
                                TrimFragment.this.mVideoEditor.play();
                                TrimFragment.this.recordEventWithApply();
                                TrimFragment.this.onExitMode();
                            }
                        }
                    });
                }
            });
        }
        return true;
    }

    public boolean doCancel() {
        if (this.mVideoEditor == null) {
            Log.d("TrimFragment", "doCancel: videoEditor is null.");
            return false;
        } else if (this.mRangeSeekBar == null || this.mRangeSeekBar.isZooming() || this.mRangeSeekBar.isTouching()) {
            return false;
        } else {
            if (this.mHasCliped) {
                this.mVideoEditor.setTrimInfo(this.mSavedStartRange, this.mSavedEndRange);
                return this.mVideoEditor.apply(new OnCompletedListener() {
                    public void onCompleted() {
                        if (TrimFragment.this.mVideoEditor != null) {
                            TrimFragment.this.needResetTrimInfo = true;
                            TrimFragment.this.mVideoEditor.play();
                            TrimFragment.this.mRangeSeekBar.setStartRange(TrimFragment.this.mSavedStartRange);
                            TrimFragment.this.mRangeSeekBar.setEndRange(TrimFragment.this.mSavedEndRange);
                            TrimFragment.this.mIsModified = false;
                            TrimFragment.this.recordEventWithCancel();
                            TrimFragment.this.onExitMode();
                        }
                    }
                });
            }
            onExitMode();
            return true;
        }
    }

    public int getEffectId() {
        return R.id.video_editor_trim;
    }

    public void onProgressChanged(VideoEditorRangeSeekBar seekBar, int direction, int progress, boolean fromUser) {
        int timeGap = this.mRangeSeekBar.getEndRange() - this.mRangeSeekBar.getStartRange();
        this.mRangeSeekBar.setStopSlide("00:01".equals(getCurrentVideoTime(timeGap)));
        this.mVideoEditor.seek(this.mVideoEditor.getVideoStartTime() + progress, null);
        this.mIsModified = true;
        this.mRangeSeekBar.hideProgressBar();
        this.mTvVideoTime.setText(getCurrentVideoTime(timeGap));
        this.mHasCliped = true;
    }

    public void onProgressPreview(VideoEditorRangeSeekBar seekBar, int direction, int progress, boolean fromUser) {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.seek((int) ((((double) progress) * ((double) this.mVideoEditor.getProjectTotalTime())) / ((double) this.mVideoEditor.getVideoTotalTime())), null);
        }
    }

    public void onStartTrackingTouch(VideoEditorRangeSeekBar seekBar, final int direction, int progress) {
        if (this.needResetTrimInfo) {
            this.mVideoEditor.setTrimInfo(0, this.mVideoEditor.getVideoTotalTime());
            this.mVideoEditor.apply(new OnCompletedListener() {
                public void onCompleted() {
                    if (TrimFragment.this.mVideoEditor != null) {
                        TrimFragment.this.needResetTrimInfo = false;
                        TrimFragment.this.mIsModified = true;
                        TrimFragment.this.mVideoEditor.seek(TrimFragment.this.mVideoEditor.getVideoStartTime() + direction == 0 ? TrimFragment.this.mRangeSeekBar.getStartRange() : TrimFragment.this.mRangeSeekBar.getEndRange(), null);
                    }
                }
            });
        }
        recordEventWithEffectChanged();
    }

    private String getCurrentVideoTime(int millisecond) {
        String timeAll = "";
        int minutes = millisecond / 60000;
        int seconds = (millisecond - ((minutes * 60) * 1000)) / 1000;
        if (minutes >= 10) {
            timeAll = minutes + "";
        } else if (minutes > 0) {
            timeAll = "0" + minutes;
        } else {
            timeAll = "00";
        }
        if (seconds >= 10) {
            return timeAll + ":" + seconds;
        }
        if (seconds >= 1) {
            return timeAll + ":0" + seconds;
        }
        return timeAll + ":01";
    }

    private void updateAutoTrimView() {
        if (this.mCallback != null) {
            this.mCallback.updateAutoTrimView();
        }
    }
}
