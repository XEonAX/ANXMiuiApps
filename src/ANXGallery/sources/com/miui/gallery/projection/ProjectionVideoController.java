package com.miui.gallery.projection;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.projection.ConnectController.MediaPlayListener;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.Log;

public class ProjectionVideoController extends RelativeLayout implements OnClickListener, OnSeekBarChangeListener, MediaPlayListener {
    private ConnectController mConnectControl;
    private boolean mDragging;
    private OnFinishListener mFinishListener;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 100:
                    int pos = ProjectionVideoController.this.showProgress();
                    Log.i("RemoteVideoControl", "show progress %s pos %d", Boolean.valueOf(ProjectionVideoController.this.mDragging), Integer.valueOf(pos));
                    if (!ProjectionVideoController.this.mDragging && ProjectionVideoController.this.mConnectControl.isPlaying()) {
                        msg = obtainMessage(100);
                        removeMessages(100);
                        sendMessageDelayed(msg, (long) (1000 - (pos % 1000)));
                        break;
                    }
            }
            super.handleMessage(msg);
        }
    };
    private ImageView mIvPause;
    private LinearLayout mLayoutQuit;
    private SeekBar mSbSeek;
    private TextView mTvCurPos;
    private TextView mTvDuration;

    public interface OnFinishListener {
        void onFinish();
    }

    public ProjectionVideoController(Context context) {
        super(context);
    }

    public ProjectionVideoController(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public ProjectionVideoController(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void initView() {
        this.mConnectControl = ConnectController.getInstance();
        this.mLayoutQuit = (LinearLayout) findViewById(R.id.layout_quit);
        this.mLayoutQuit.setOnClickListener(this);
        this.mIvPause = (ImageView) findViewById(R.id.iv_pause);
        this.mIvPause.setOnClickListener(this);
        this.mTvCurPos = (TextView) findViewById(R.id.tv_cur_time);
        this.mTvDuration = (TextView) findViewById(R.id.tv_duration);
        this.mSbSeek = (SeekBar) findViewById(R.id.sb_seek);
        this.mSbSeek.setOnSeekBarChangeListener(this);
    }

    public void setOnFinishListener(OnFinishListener listener) {
        this.mFinishListener = listener;
    }

    private int showProgress() {
        if (this.mConnectControl == null || this.mDragging) {
            return 0;
        }
        int position = this.mConnectControl.getCurrentPosition();
        int duration = this.mConnectControl.getDuration();
        updateStatus();
        Log.v("RemoteVideoControl", "position %d, duration %d", Integer.valueOf(position), Integer.valueOf(duration));
        if (duration == -1) {
            return 0;
        }
        if (this.mSbSeek != null && duration > 0) {
            long pos = (100 * ((long) position)) / ((long) duration);
            this.mSbSeek.setProgress((int) pos);
            Log.v("RemoteVideoControl", "seek set %d", Long.valueOf(pos));
        }
        if (duration == 0) {
            return position;
        }
        if (this.mTvDuration != null) {
            this.mTvDuration.setText(FormatUtil.formatVideoDuration((long) (duration / 1000)));
        }
        if (this.mTvCurPos == null) {
            return position;
        }
        this.mTvCurPos.setText(FormatUtil.formatVideoDuration((long) (position / 1000)));
        return position;
    }

    protected void clearStatus() {
        if (this.mTvDuration != null) {
            this.mTvDuration.setText("");
        }
        if (this.mTvCurPos != null) {
            this.mTvCurPos.setText("");
        }
        if (this.mSbSeek != null) {
            this.mSbSeek.setProgress(0);
        }
        updateStatus();
    }

    public void startPlay(String filePath, String title, String deviceName) {
        clearStatus();
        this.mConnectControl.playVideo(filePath, title, deviceName);
        this.mConnectControl.resume();
        this.mConnectControl.registMediaPlayListener(this);
        this.mHandler.removeMessages(100);
        this.mHandler.sendEmptyMessage(100);
    }

    protected void onDetachedFromWindow() {
        stopPlay();
        super.onDetachedFromWindow();
    }

    public void stopPlay() {
        this.mConnectControl.stop();
        clearStatus();
        this.mHandler.removeMessages(100);
        if (this.mFinishListener != null) {
            this.mFinishListener.onFinish();
        }
    }

    public void updateStatus() {
        if (this.mConnectControl.isPlaying()) {
            this.mIvPause.setImageResource(getPauseImageResId());
            this.mHandler.removeMessages(100);
            this.mHandler.sendEmptyMessage(100);
            return;
        }
        this.mIvPause.setImageResource(getPlayImageResId());
        this.mHandler.removeMessages(100);
    }

    protected int getPauseImageResId() {
        return R.drawable.projection_video_pause;
    }

    protected int getPlayImageResId() {
        return R.drawable.projection_video_play;
    }

    public void onClick(View v) {
        if (v == this.mLayoutQuit) {
            stopPlay();
        } else if (v == this.mIvPause) {
            if (this.mConnectControl.isPlaying()) {
                this.mConnectControl.pause();
            } else {
                this.mConnectControl.resume();
            }
            updateStatus();
        }
    }

    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        if (seekBar == this.mSbSeek && fromUser) {
            long currentPosition = (long) this.mConnectControl.getCurrentPosition();
            long newposition = (((long) progress) * ((long) this.mConnectControl.getDuration())) / 100;
            this.mConnectControl.seekTo((int) newposition);
            if (this.mTvCurPos != null) {
                this.mTvCurPos.setText(FormatUtil.formatVideoDuration(newposition / 1000));
            }
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        if (seekBar == this.mSbSeek) {
            this.mDragging = true;
            this.mConnectControl.pause();
            updateStatus();
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (seekBar == this.mSbSeek) {
            this.mDragging = false;
            this.mConnectControl.resume();
            updateStatus();
        }
    }

    public void onLoading() {
    }

    public void onPlaying() {
        updateStatus();
    }

    public void onStopped() {
        updateStatus();
        stopPlay();
    }

    public void onPaused() {
        updateStatus();
    }
}
