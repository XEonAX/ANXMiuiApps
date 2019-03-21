package com.miui.gallery.widget;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.AudioAttributes;
import android.media.AudioAttributes.Builder;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View.MeasureSpec;
import com.miui.gallery.util.Log;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

public class GalleryVideoView extends TextureView {
    private AudioAttributes mAudioAttributes;
    private int mAudioFocusType;
    private AudioManager mAudioManager;
    private int mAudioSession;
    private OnBufferingUpdateListener mBufferingUpdateListener;
    private OnCompletionListener mCompletionListener;
    private Context mContext;
    private int mCurrentBufferPercentage;
    private int mCurrentState;
    private int mDefaultHeight;
    private int mDefaultWidth;
    private OnErrorListener mErrorListener;
    private long mFileLength;
    private long mFileOffset;
    private String mFilePath;
    private Map<String, String> mHeaders;
    private OnInfoListener mInfoListener;
    private MediaPlayer mMediaPlayer;
    private OnCompletionListener mOnCompletionListener;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private OnPreparedListener mOnPreparedListener;
    OnPreparedListener mPreparedListener;
    private int mSeekWhenPrepared;
    OnVideoSizeChangedListener mSizeChangedListener;
    private SurfaceTexture mSurfaceTexture;
    SurfaceTextureListener mSurfaceTextureListener;
    private int mTargetState;
    private boolean mTransformApply;
    private Uri mUri;
    private int mVideoHeight;
    private int mVideoWidth;
    private float mVolume;

    public GalleryVideoView(Context context) {
        this(context, null);
    }

    public GalleryVideoView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public GalleryVideoView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mMediaPlayer = null;
        this.mAudioFocusType = 1;
        this.mVolume = -1.0f;
        this.mSizeChangedListener = new OnVideoSizeChangedListener() {
            public void onVideoSizeChanged(MediaPlayer mp, int width, int height) {
                GalleryVideoView.this.mVideoWidth = mp.getVideoWidth();
                GalleryVideoView.this.mVideoHeight = mp.getVideoHeight();
                if (GalleryVideoView.this.mVideoWidth != 0 && GalleryVideoView.this.mVideoHeight != 0) {
                    GalleryVideoView.this.requestLayout();
                }
            }
        };
        this.mPreparedListener = new OnPreparedListener() {
            public void onPrepared(MediaPlayer mp) {
                GalleryVideoView.this.mCurrentState = 2;
                if (GalleryVideoView.this.mOnPreparedListener != null) {
                    GalleryVideoView.this.mOnPreparedListener.onPrepared(GalleryVideoView.this.mMediaPlayer);
                }
                GalleryVideoView.this.mVideoWidth = mp.getVideoWidth();
                GalleryVideoView.this.mVideoHeight = mp.getVideoHeight();
                int seekToPosition = GalleryVideoView.this.mSeekWhenPrepared;
                if (seekToPosition != 0) {
                    GalleryVideoView.this.seekTo(seekToPosition);
                }
                if (GalleryVideoView.this.mTargetState == 3) {
                    GalleryVideoView.this.start();
                }
            }
        };
        this.mCompletionListener = new OnCompletionListener() {
            public void onCompletion(MediaPlayer mp) {
                GalleryVideoView.this.mCurrentState = 5;
                GalleryVideoView.this.mTargetState = 5;
                if (GalleryVideoView.this.mOnCompletionListener != null) {
                    GalleryVideoView.this.mOnCompletionListener.onCompletion(GalleryVideoView.this.mMediaPlayer);
                }
                if (GalleryVideoView.this.mAudioFocusType != 0) {
                    GalleryVideoView.this.mAudioManager.abandonAudioFocus(null);
                }
            }
        };
        this.mInfoListener = new OnInfoListener() {
            public boolean onInfo(MediaPlayer mp, int arg1, int arg2) {
                if (GalleryVideoView.this.mOnInfoListener != null) {
                    GalleryVideoView.this.mOnInfoListener.onInfo(mp, arg1, arg2);
                }
                return true;
            }
        };
        this.mErrorListener = new OnErrorListener() {
            public boolean onError(MediaPlayer mp, int framework_err, int impl_err) {
                Log.d("GalleryVideoView", "Error: " + framework_err + "," + impl_err);
                GalleryVideoView.this.mCurrentState = -1;
                GalleryVideoView.this.mTargetState = -1;
                if (GalleryVideoView.this.mOnErrorListener == null || GalleryVideoView.this.mOnErrorListener.onError(GalleryVideoView.this.mMediaPlayer, framework_err, impl_err)) {
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new OnBufferingUpdateListener() {
            public void onBufferingUpdate(MediaPlayer mp, int percent) {
                GalleryVideoView.this.mCurrentBufferPercentage = percent;
            }
        };
        this.mSurfaceTextureListener = new SurfaceTextureListener() {
            public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
                GalleryVideoView.this.mSurfaceTexture = surface;
                GalleryVideoView.this.openVideo();
            }

            public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
            }

            public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
                GalleryVideoView.this.mSurfaceTexture = null;
                GalleryVideoView.this.release(true);
                Log.d("GalleryVideoView", "surfaceDestroyed");
                return true;
            }

            public void onSurfaceTextureUpdated(SurfaceTexture surface) {
            }
        };
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mContext = context;
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        if (VERSION.SDK_INT >= 21) {
            this.mAudioAttributes = new Builder().setUsage(1).setContentType(3).build();
        }
        setSurfaceTextureListener(this.mSurfaceTextureListener);
        this.mCurrentState = 0;
        this.mTargetState = 0;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int targetWidth = this.mDefaultWidth;
        int targetHeight = this.mDefaultHeight;
        if (this.mVideoWidth > 0 && this.mVideoHeight > 0) {
            targetWidth = this.mVideoWidth;
            targetHeight = this.mVideoHeight;
        }
        int width = getDefaultSize(targetWidth, widthMeasureSpec);
        int height = getDefaultSize(targetHeight, heightMeasureSpec);
        if (targetWidth > 0 && targetHeight > 0 && !this.mTransformApply) {
            int widthSpecMode = MeasureSpec.getMode(widthMeasureSpec);
            int widthSpecSize = MeasureSpec.getSize(widthMeasureSpec);
            int heightSpecMode = MeasureSpec.getMode(heightMeasureSpec);
            int heightSpecSize = MeasureSpec.getSize(heightMeasureSpec);
            if (widthSpecMode == 1073741824 && heightSpecMode == 1073741824) {
                width = widthSpecSize;
                height = heightSpecSize;
                if (targetWidth * height < width * targetHeight) {
                    width = (height * targetWidth) / targetHeight;
                } else if (targetWidth * height > width * targetHeight) {
                    height = (width * targetHeight) / targetWidth;
                }
            } else if (widthSpecMode == 1073741824) {
                width = widthSpecSize;
                height = (width * targetHeight) / targetWidth;
                if (heightSpecMode == Integer.MIN_VALUE && height > heightSpecSize) {
                    height = heightSpecSize;
                }
            } else if (heightSpecMode == 1073741824) {
                height = heightSpecSize;
                width = (height * targetWidth) / targetHeight;
                if (widthSpecMode == Integer.MIN_VALUE && width > widthSpecSize) {
                    width = widthSpecSize;
                }
            } else {
                width = targetWidth;
                height = targetHeight;
                if (heightSpecMode == Integer.MIN_VALUE && height > heightSpecSize) {
                    height = heightSpecSize;
                    width = (height * targetWidth) / targetHeight;
                }
                if (widthSpecMode == Integer.MIN_VALUE && width > widthSpecSize) {
                    width = widthSpecSize;
                    height = (width * targetHeight) / targetWidth;
                }
            }
        }
        setMeasuredDimension(width, height);
    }

    public CharSequence getAccessibilityClassName() {
        return GalleryVideoView.class.getName();
    }

    public void setTransform(Matrix transform) {
        if (transform == null || transform.isIdentity()) {
            this.mTransformApply = false;
            return;
        }
        super.setTransform(transform);
        this.mTransformApply = true;
    }

    public void setVolume(float volume) {
        this.mVolume = volume;
        if (volume >= 0.0f && this.mMediaPlayer != null) {
            this.mMediaPlayer.setVolume(volume, volume);
        }
    }

    public void setVideoPath(String path) {
        setVideoURI(Uri.parse(path));
    }

    public void setVideoURI(Uri uri) {
        setVideoURI(uri, null);
    }

    public void setVideoURI(Uri uri, Map<String, String> headers) {
        this.mUri = uri;
        this.mHeaders = headers;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public void setVideoFilePath(String path) {
        setVideoFilePath(path, 0, 576460752303423487L);
    }

    public void setVideoFilePath(String path, long offset) {
        setVideoFilePath(path, offset, 576460752303423487L);
    }

    public void setVideoFilePath(String path, long offset, long length) {
        this.mFilePath = path;
        this.mFileOffset = offset;
        this.mFileLength = length;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public void requestAudioFocus(int focusGain) {
        setAudioFocusRequest(focusGain);
        if (focusGain != 0) {
            this.mAudioManager.requestAudioFocus(null, 3, focusGain);
        }
    }

    public void setAudioFocusRequest(int focusGain) {
        if (focusGain == 0 || focusGain == 1 || focusGain == 2 || focusGain == 3 || focusGain == 4) {
            this.mAudioFocusType = focusGain;
            return;
        }
        throw new IllegalArgumentException("Illegal audio focus type " + focusGain);
    }

    public void setAudioAttributes(AudioAttributes attributes) {
        if (attributes == null) {
            throw new IllegalArgumentException("Illegal null AudioAttributes");
        }
        this.mAudioAttributes = attributes;
    }

    public void stopPlayback() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            this.mTargetState = 0;
            this.mAudioManager.abandonAudioFocus(null);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:73:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0149 A:{SYNTHETIC, Splitter: B:50:0x0149} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x015b A:{SYNTHETIC, Splitter: B:56:0x015b} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void openVideo() {
        IOException ex;
        Throwable th;
        IllegalArgumentException ex2;
        if ((this.mUri != null || !TextUtils.isEmpty(this.mFilePath)) && this.mSurfaceTexture != null) {
            release(false);
            if (this.mAudioFocusType != 0) {
                this.mAudioManager.requestAudioFocus(null, 3, this.mAudioFocusType);
            }
            FileInputStream inputStream = null;
            try {
                this.mMediaPlayer = new MediaPlayer();
                if (this.mAudioSession != 0) {
                    this.mMediaPlayer.setAudioSessionId(this.mAudioSession);
                } else {
                    this.mAudioSession = this.mMediaPlayer.getAudioSessionId();
                }
                this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
                this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
                this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
                this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
                this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
                this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
                this.mCurrentBufferPercentage = 0;
                if (this.mUri != null) {
                    this.mMediaPlayer.setDataSource(this.mContext, this.mUri, this.mHeaders);
                } else if (!TextUtils.isEmpty(this.mFilePath)) {
                    FileInputStream inputStream2 = new FileInputStream(this.mFilePath);
                    try {
                        this.mMediaPlayer.setDataSource(inputStream2.getFD(), this.mFileOffset, this.mFileLength);
                        inputStream = inputStream2;
                    } catch (IOException e) {
                        ex = e;
                        inputStream = inputStream2;
                        try {
                            Log.w("GalleryVideoView", "Unable to open content: " + this.mUri, ex);
                            this.mCurrentState = -1;
                            this.mTargetState = -1;
                            this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    return;
                                } catch (IOException e2) {
                                    Log.w("GalleryVideoView", "close stream error", e2);
                                    return;
                                }
                            }
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e22) {
                                    Log.w("GalleryVideoView", "close stream error", e22);
                                }
                            }
                            throw th;
                        }
                    } catch (IllegalArgumentException e3) {
                        ex2 = e3;
                        inputStream = inputStream2;
                        Log.w("GalleryVideoView", "Unable to open content: " + this.mUri, ex2);
                        this.mCurrentState = -1;
                        this.mTargetState = -1;
                        this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
                        if (inputStream == null) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                        }
                        throw th;
                    }
                }
                this.mMediaPlayer.setSurface(new Surface(this.mSurfaceTexture));
                if (VERSION.SDK_INT >= 21) {
                    this.mMediaPlayer.setAudioAttributes(this.mAudioAttributes);
                }
                this.mMediaPlayer.setScreenOnWhilePlaying(true);
                if (this.mVolume >= 0.0f) {
                    this.mMediaPlayer.setVolume(this.mVolume, this.mVolume);
                }
                this.mMediaPlayer.prepareAsync();
                this.mCurrentState = 1;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e222) {
                        Log.w("GalleryVideoView", "close stream error", e222);
                    }
                }
            } catch (IOException e4) {
                ex = e4;
            } catch (IllegalArgumentException e5) {
                ex2 = e5;
                Log.w("GalleryVideoView", "Unable to open content: " + this.mUri, ex2);
                this.mCurrentState = -1;
                this.mTargetState = -1;
                this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
                if (inputStream == null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2222) {
                        Log.w("GalleryVideoView", "close stream error", e2222);
                    }
                }
            }
        }
    }

    public void setOnPreparedListener(OnPreparedListener l) {
        this.mOnPreparedListener = l;
    }

    public void setOnCompletionListener(OnCompletionListener l) {
        this.mOnCompletionListener = l;
    }

    public void setOnErrorListener(OnErrorListener l) {
        this.mOnErrorListener = l;
    }

    public void setOnInfoListener(OnInfoListener l) {
        this.mOnInfoListener = l;
    }

    private void release(boolean cleartargetstate) {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            if (cleartargetstate) {
                this.mTargetState = 0;
            }
            if (this.mAudioFocusType != 0) {
                this.mAudioManager.abandonAudioFocus(null);
            }
        }
    }

    public void start() {
        if (isInPlaybackState()) {
            this.mMediaPlayer.start();
            this.mCurrentState = 3;
        }
        this.mTargetState = 3;
    }

    public void pause() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
            this.mCurrentState = 4;
        }
        this.mTargetState = 4;
    }

    public int getDuration() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getDuration();
        }
        return -1;
    }

    public int getCurrentPosition() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public void seekTo(int msec) {
        if (isInPlaybackState()) {
            this.mMediaPlayer.seekTo(msec);
            this.mSeekWhenPrepared = 0;
            return;
        }
        this.mSeekWhenPrepared = msec;
    }

    public boolean isPlaying() {
        return isInPlaybackState() && this.mMediaPlayer.isPlaying();
    }

    public int getBufferPercentage() {
        if (this.mMediaPlayer != null) {
            return this.mCurrentBufferPercentage;
        }
        return 0;
    }

    private boolean isInPlaybackState() {
        return (this.mMediaPlayer == null || this.mCurrentState == -1 || this.mCurrentState == 0 || this.mCurrentState == 1) ? false : true;
    }

    public int getAudioSessionId() {
        if (this.mAudioSession == 0) {
            MediaPlayer foo = new MediaPlayer();
            this.mAudioSession = foo.getAudioSessionId();
            foo.release();
        }
        return this.mAudioSession;
    }
}
