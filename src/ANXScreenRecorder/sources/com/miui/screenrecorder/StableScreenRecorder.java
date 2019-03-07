package com.miui.screenrecorder;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.VirtualDisplay;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.media.projection.MediaProjection;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.MemoryFile;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Surface;
import android.widget.Toast;
import com.miui.screenrecorder.config.PhoneConfigInstance;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.miui.screenrecorder.glec.EGLRender;
import com.miui.screenrecorder.glec.EGLRender.onFrameCallBack;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.MediaFileUtils;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.xiaomi.stat.a.j;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;

public class StableScreenRecorder implements ScreenRecorder {
    private static final int AUDIO_BIT_RATE = 320000;
    private static final String AUDIO_MIME_TYPE = "audio/mp4a-latm";
    private static final int AUDIO_SAMPLE_RATE = 44100;
    private static final int AUDIO_SAMPLE_RATE_REMOTE_SUBMIX = 48000;
    private static final String FAIL_COUNT = "fail_count";
    private static final int IFRAME_INTERVAL = 10;
    private static final long LOG_INTERVAL = 35;
    private static final String MIME_TYPE = "video/avc";
    private static final long MIN_INTERVAL = 30;
    private static final int MSG_DESTROY = 4;
    private static final int MSG_RECORDING = 2;
    private static final int MSG_START = 1;
    private static final int MSG_STOP = 3;
    private static final String RECORDER_EXPER = "screenrecorder_experenice";
    private static final int SOUND_INNER_PCM = 2;
    private static final int SOUND_INNER_SUBMIX = 3;
    private static final int SOUND_MIC = 1;
    private static final int SOUND_NO = 0;
    private static final String SUCCESS_COUNT = "success_count";
    private static final String TAG = "StableScreenRecorderCore";
    private static final int TIMEOUT_US = 10000;
    private static final int VIRTUAL_DISPLAY_DPI = 1;
    private BufferInfo mAudioBufferInfo;
    private boolean mAudioChangedFormatDone;
    private MediaCodec mAudioEncoder;
    private AudioRecord mAudioRecord;
    private boolean mAudioRecordStarted;
    private int mAudioSource;
    private volatile AtomicBoolean mAudioStart;
    private AudioHandleThread mAudioThread;
    private int mAudioTrackIndex;
    private int mBitRate;
    private Context mContext;
    private MemoryFile mData;
    private EGLRender mEglRender;
    private String mFilePath;
    private int mFrameRate;
    private WorkHandler mHandler;
    private int mHeight;
    private final IBinder mICallBack;
    private ByteBuffer[] mInputBuffers;
    private boolean mIsFixedFrame;
    private MediaProjection mMediaProjection;
    private Object mMiuiAudioRecord;
    private MediaMuxer mMuxer;
    private boolean mMuxerStarted;
    private long mReadTime;
    private String mSavedFilePath;
    private long mStartTime;
    private Surface mSurface;
    private BufferInfo mVideoBufferInfo;
    private boolean mVideoChangedFormatDone;
    private MediaCodec mVideoEncoder;
    private volatile AtomicBoolean mVideoStart;
    private VideoHandleThread mVideoThread;
    private int mVideoTrackIndex;
    private VirtualDisplay mVirtualDisplay;
    private int mWidth;

    private class AudioHandleThread extends Thread {
        private AudioHandleThread() {
        }

        /* synthetic */ AudioHandleThread(StableScreenRecorder x0, AnonymousClass1 x1) {
            this();
        }

        public void run() {
            while (StableScreenRecorder.this.mAudioStart.get()) {
                if (StableScreenRecorder.this.mMuxerStarted || !StableScreenRecorder.this.mAudioChangedFormatDone) {
                    int index = StableScreenRecorder.this.mAudioEncoder.dequeueOutputBuffer(StableScreenRecorder.this.mAudioBufferInfo, 10000);
                    if (index >= 0 && StableScreenRecorder.this.mMuxerStarted) {
                        StableScreenRecorder.this.encodeToAudioTrack(index);
                        StableScreenRecorder.this.mAudioEncoder.releaseOutputBuffer(index, false);
                    } else if (index == -1) {
                        try {
                            Thread.sleep(10);
                        } catch (InterruptedException e) {
                            LogUtil.e(StableScreenRecorder.TAG, "Error when audio thread sleeping, e = " + e);
                        }
                    } else if (index == -2) {
                        LogUtil.v(StableScreenRecorder.TAG, "audio, the output format has changed, reset output format");
                        StableScreenRecorder.this.resetAudioOutputFormat();
                    } else if (index == -3) {
                        LogUtil.v(StableScreenRecorder.TAG, "audio, the output buffers have changed, refer to the new set of output buffers");
                    } else {
                        LogUtil.w(StableScreenRecorder.TAG, "audio, unhandled index, index = " + index);
                    }
                }
            }
        }
    }

    private static class SingletonHolder {
        private static final StableScreenRecorder INSTANCE = new StableScreenRecorder(ScreenRecorderApplication.getContext(), null);

        private SingletonHolder() {
        }
    }

    private class VideoHandleThread extends Thread {
        private VideoHandleThread() {
        }

        /* synthetic */ VideoHandleThread(StableScreenRecorder x0, AnonymousClass1 x1) {
            this();
        }

        public void run() {
            while (StableScreenRecorder.this.mVideoStart.get()) {
                if (StableScreenRecorder.this.mMuxerStarted || !StableScreenRecorder.this.mVideoChangedFormatDone) {
                    try {
                        int index = StableScreenRecorder.this.mVideoEncoder.dequeueOutputBuffer(StableScreenRecorder.this.mVideoBufferInfo, 10000);
                        if (index >= 0 && StableScreenRecorder.this.mMuxerStarted) {
                            StableScreenRecorder.this.encodeToVideoTrack(index);
                            StableScreenRecorder.this.mVideoEncoder.releaseOutputBuffer(index, false);
                            if ((StableScreenRecorder.this.mVideoBufferInfo.flags & 4) != 0) {
                                LogUtil.v(StableScreenRecorder.TAG, "video, received end-of-stream, stop recording");
                                StableScreenRecorder.this.stop();
                            }
                        } else if (index == -1) {
                            Thread.sleep(10);
                        } else if (index == -2) {
                            LogUtil.v(StableScreenRecorder.TAG, "video, the output format has changed, reset output format");
                            StableScreenRecorder.this.resetVideoOutputFormat();
                        } else if (index == -3) {
                            LogUtil.v(StableScreenRecorder.TAG, "video, the output buffers have changed, refer to the new set of output buffers");
                        } else {
                            LogUtil.w(StableScreenRecorder.TAG, "video, unhandled index, index = " + index);
                        }
                    } catch (InterruptedException e) {
                        LogUtil.e(StableScreenRecorder.TAG, "Error when audio thread sleeping, e = " + e);
                    } catch (Exception e2) {
                        LogUtil.e(StableScreenRecorder.TAG, "Error in VideoHandleThread loop, mVideoStart =" + StableScreenRecorder.this.mVideoStart.get(), e2);
                        if (StableScreenRecorder.this.mHandler != null) {
                            StableScreenRecorder.this.mHandler.sendEmptyMessage(3);
                            StableScreenRecorder.this.sendResultBroadcast(false);
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    private class WorkHandler extends Handler {
        WorkHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message msg) {
            if (msg == null) {
                LogUtil.w(StableScreenRecorder.TAG, "handleMessage, msg is null, return");
                return;
            }
            switch (msg.what) {
                case 1:
                    if (!hasMessages(3) && TextUtils.isEmpty(StableScreenRecorder.this.mSavedFilePath)) {
                        StableScreenRecorder.this.mSavedFilePath = StableScreenRecorder.this.mFilePath;
                    }
                    removeMessages(1);
                    removeMessages(2);
                    StableScreenRecorder.this.mStartTime = StableScreenRecorder.this.getSystemTimeMillisWithMode();
                    LogUtil.v(StableScreenRecorder.TAG, "main working thread start");
                    try {
                        StableScreenRecorder.this.prepareEncoder();
                        StableScreenRecorder.this.prepareMediaMuxer();
                        StableScreenRecorder.this.prepareVirtualDisplay();
                        StableScreenRecorder.this.runEncoder();
                        if (hasMessages(3)) {
                            LogUtil.d(StableScreenRecorder.TAG, "find message to order us stop when starting");
                            return;
                        }
                        LogUtil.d(StableScreenRecorder.TAG, "send message to start recording");
                        sendEmptyMessage(2);
                        return;
                    } catch (Exception e) {
                        LogUtil.e(StableScreenRecorder.TAG, "Error when start recording", e);
                        sendEmptyMessage(3);
                        StableScreenRecorder.this.sendResultBroadcast(false);
                        return;
                    }
                case 2:
                    try {
                        if (MediaFileUtils.isOverMaxFileSize(StableScreenRecorder.this.mFilePath).booleanValue()) {
                            sendEmptyMessage(3);
                        } else {
                            StableScreenRecorder.this.recording();
                        }
                        if (hasMessages(3)) {
                            LogUtil.d(StableScreenRecorder.TAG, "find message to order us stop when recording");
                            return;
                        } else {
                            sendEmptyMessage(2);
                            return;
                        }
                    } catch (Exception e2) {
                        LogUtil.e(StableScreenRecorder.TAG, "Error when recording", e2);
                        sendEmptyMessage(3);
                        StableScreenRecorder.this.sendResultBroadcast(false);
                        return;
                    }
                case 3:
                    removeMessages(2);
                    removeMessages(3);
                    StableScreenRecorder.this.mVideoStart.set(false);
                    StableScreenRecorder.this.mAudioStart.set(false);
                    try {
                        StableScreenRecorder.this.release(false);
                        StableScreenRecorder.this.sendResultBroadcast(true);
                        return;
                    } catch (Exception e22) {
                        LogUtil.e(StableScreenRecorder.TAG, "Error when releasing", e22);
                        StableScreenRecorder.this.sendResultBroadcast(false);
                        return;
                    }
                case 4:
                    try {
                        StableScreenRecorder.this.release(true);
                    } catch (Exception e222) {
                        LogUtil.e(StableScreenRecorder.TAG, "release failed in onDestroy!", e222);
                    }
                    StableScreenRecorder.this.mHandler.removeMessages(1);
                    StableScreenRecorder.this.mHandler.removeMessages(2);
                    StableScreenRecorder.this.mHandler.removeMessages(3);
                    return;
                default:
                    LogUtil.w(StableScreenRecorder.TAG, "can not handle this message, msg = " + msg.what);
                    return;
            }
        }
    }

    /* synthetic */ StableScreenRecorder(Context x0, AnonymousClass1 x1) {
        this(x0);
    }

    private StableScreenRecorder(Context context) {
        this.mSavedFilePath = "";
        this.mVideoTrackIndex = -1;
        this.mVideoBufferInfo = new BufferInfo();
        this.mVideoChangedFormatDone = false;
        this.mAudioTrackIndex = -1;
        this.mAudioBufferInfo = new BufferInfo();
        this.mAudioChangedFormatDone = false;
        this.mAudioRecordStarted = false;
        this.mInputBuffers = null;
        this.mICallBack = new Binder();
        this.mMuxerStarted = false;
        this.mAudioStart = new AtomicBoolean(false);
        this.mVideoStart = new AtomicBoolean(false);
        this.mContext = context;
        LogUtil.d(TAG, "init handler and working thread");
        HandlerThread workThread = new HandlerThread("ScreenRecorderThread");
        workThread.start();
        this.mHandler = new WorkHandler(workThread.getLooper());
    }

    public static final StableScreenRecorder getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void setResolution(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
    }

    public void setFilePath(String path) {
        if (TextUtils.isEmpty(path)) {
            LogUtil.e(TAG, "the set file path is null!");
        }
        this.mFilePath = path;
    }

    public void setBitRate(int bitRate) {
        this.mBitRate = bitRate;
    }

    public void setFrameRate(int frameRate) {
        this.mFrameRate = frameRate;
    }

    public void setAudioSource(int audioSource) {
        this.mAudioSource = audioSource;
    }

    public void setFixedFrame(boolean isFixedFrame) {
        this.mIsFixedFrame = isFixedFrame;
    }

    public void start(MediaProjection mediaProjection) {
        LogUtil.v(TAG, "Screen Recorder start");
        this.mMediaProjection = mediaProjection;
        this.mHandler.sendEmptyMessage(1);
    }

    public void stop() {
        LogUtil.v(TAG, "Screen Recorder stop");
        this.mHandler.sendEmptyMessage(3);
    }

    public void onDestroy() {
        LogUtil.v(TAG, "Screen Recorder onDestroy");
        this.mHandler.sendEmptyMessage(4);
    }

    private void sendResultBroadcast(boolean isSuccess) {
        Intent intent;
        if (isSuccess) {
            intent = new Intent(ScreenRecorderConfig.RECORD_SUCCESS_BROADCAST);
            intent.putExtra(ScreenRecorderConfig.DISPLAY_NAME, ScreenRecorderUtils.getLastPackageName(this.mContext));
            intent.putExtra(ScreenRecorderConfig.DURATION, ScreenRecorderUtils.millTurnToSeconds(getSystemTimeMillisWithMode() - this.mStartTime));
            if (TextUtils.isEmpty(this.mSavedFilePath) && this.mFilePath != null) {
                this.mSavedFilePath = this.mFilePath;
            }
            String newFilePath = MediaFileUtils.convertTmpFile(this.mSavedFilePath);
            this.mSavedFilePath = "";
            MediaFileUtils.scanFile(this.mContext, newFilePath);
            intent.putExtra(ScreenRecorderConfig.FILE_PATH, newFilePath);
            if (MediaFileUtils.isOverMaxFileSize(newFilePath).booleanValue()) {
                intent.putExtra(ScreenRecorderConfig.IS_OVER_MAX_SIZE, true);
            } else {
                intent.putExtra(ScreenRecorderConfig.IS_OVER_MAX_SIZE, false);
            }
        } else {
            intent = new Intent(ScreenRecorderConfig.RECORD_FAIL_BROADCAST);
            if (TextUtils.isEmpty(this.mSavedFilePath) && this.mFilePath != null) {
                this.mSavedFilePath = this.mFilePath;
            }
            File file = new File(this.mSavedFilePath);
            MediaFileUtils.deleteFile(file);
            this.mSavedFilePath = "";
        }
        LogUtil.v(TAG, "send result to outside, record result = " + isSuccess);
        this.mContext.sendBroadcast(intent);
    }

    private void prepareEncoder() {
        prepareVideoEncoder();
        if (this.mAudioSource == 1) {
            prepareAudioEncoder(AUDIO_SAMPLE_RATE, 1);
        } else if (this.mAudioSource == 3) {
            prepareAudioEncoder(AUDIO_SAMPLE_RATE_REMOTE_SUBMIX, 1);
        } else if (this.mAudioSource == 2) {
            prepareInnerAudioEncoder();
        }
    }

    private void prepareVideoEncoder() {
        MediaFormat format = MediaFormat.createVideoFormat(MIME_TYPE, this.mWidth, this.mHeight);
        format.setInteger("color-format", 2130708361);
        format.setInteger("bitrate", this.mBitRate);
        format.setInteger("frame-rate", this.mFrameRate);
        format.setInteger("i-frame-interval", 10);
        LogUtil.v(TAG, "create video format: " + format);
        try {
            this.mVideoEncoder = MediaCodec.createEncoderByType(MIME_TYPE);
            this.mVideoEncoder.configure(format, null, null, 1);
            if (this.mIsFixedFrame) {
                long offsetTime = 0;
                if (this.mAudioSource == 1) {
                    offsetTime = PhoneConfigInstance.INSTANCE.getInstance().getMicOffset();
                } else if (this.mAudioSource == 2 || this.mAudioSource == 3) {
                    offsetTime = PhoneConfigInstance.INSTANCE.getInstance().getInnerOffset();
                }
                this.mEglRender = new EGLRender(this.mVideoEncoder.createInputSurface(), this.mWidth, this.mHeight, this.mFrameRate, offsetTime);
                this.mEglRender.setCallBack(new onFrameCallBack() {
                    public void onError() {
                    }

                    public void onStop() {
                        LogUtil.i(StableScreenRecorder.TAG, "EglRender onStop!");
                        StableScreenRecorder.this.mEglRender.releaseResource();
                        StableScreenRecorder.this.mEglRender = null;
                    }
                });
            } else {
                this.mSurface = this.mVideoEncoder.createInputSurface();
            }
            this.mVideoEncoder.start();
            LogUtil.v(TAG, "video encoder start success");
        } catch (IOException e) {
            LogUtil.v(TAG, "unable to create video encoder, " + e);
        }
    }

    @TargetApi(23)
    private void prepareAudioEncoder(int sampleRate, int channelCount) {
        MediaFormat format = MediaFormat.createAudioFormat(AUDIO_MIME_TYPE, sampleRate, channelCount);
        format.setInteger("aac-profile", 2);
        format.setInteger("channel-mask", 16);
        format.setInteger("bitrate", AUDIO_BIT_RATE);
        if (VERSION.SDK_INT > 21) {
            format.setInteger(j.k, 0);
        }
        LogUtil.v(TAG, "create audio format: " + format);
        try {
            this.mAudioEncoder = MediaCodec.createEncoderByType(AUDIO_MIME_TYPE);
            this.mAudioEncoder.configure(format, null, null, 1);
            this.mAudioEncoder.start();
            LogUtil.v(TAG, "audio encoder start success");
        } catch (IOException e) {
            LogUtil.e(TAG, "unable to create audio encoder, " + e);
        }
    }

    private void prepareInnerAudioEncoder() {
        try {
            IBinder b2;
            this.mData = new MemoryFile("screenRecord", (int) 10240);
            FileDescriptor fileDescriptor = (FileDescriptor) this.mData.getClass().getDeclaredMethod("getFileDescriptor", new Class[0]).invoke(this.mData, new Object[0]);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) ParcelFileDescriptor.class.getConstructor(new Class[]{FileDescriptor.class}).newInstance(new Object[]{fileDescriptor});
            Class<?> smClazz = Class.forName("android.os.ServiceManager");
            IBinder binder = (IBinder) smClazz.getDeclaredMethod("getService", new Class[]{String.class}).invoke(smClazz.newInstance(), new Object[]{"audio"});
            Class<?> asStubClazz = Class.forName("android.media.IAudioService$Stub");
            Object as = asStubClazz.getDeclaredMethod("asInterface", new Class[]{IBinder.class}).invoke(asStubClazz, new Object[]{binder});
            Class<?> asClazz = as.getClass();
            try {
                b2 = (IBinder) asClazz.getDeclaredMethod("createAudioRecordForLoopbackCb", new Class[]{ParcelFileDescriptor.class, Long.TYPE, IBinder.class}).invoke(as, new Object[]{parcelFileDescriptor, Long.valueOf(10240), this.mICallBack});
            } catch (Exception e) {
                b2 = (IBinder) asClazz.getDeclaredMethod("createAudioRecordForLoopback", new Class[]{ParcelFileDescriptor.class, Long.TYPE}).invoke(as, new Object[]{parcelFileDescriptor, Long.valueOf(10240)});
            }
            Class<?> arClazz = Class.forName("android.media.IMiuiAudioRecord$Stub");
            this.mMiuiAudioRecord = arClazz.getDeclaredMethod("asInterface", new Class[]{IBinder.class}).invoke(arClazz, new Object[]{b2});
            Bundle bundle = (Bundle) this.mMiuiAudioRecord.getClass().getDeclaredMethod("getMetaData", new Class[0]).invoke(this.mMiuiAudioRecord, new Object[0]);
            if (bundle != null) {
                prepareAudioEncoder(bundle.getInt("sample-rate"), bundle.getInt("channel-count"));
            }
        } catch (Exception e2) {
            LogUtil.e(TAG, "Exception occur about MiuiAudiorecord :" + e2);
        }
    }

    private void prepareMediaMuxer() {
        try {
            this.mMuxer = new MediaMuxer(this.mFilePath, 0);
        } catch (IOException e) {
            LogUtil.v(TAG, "Error when create muxer, " + e);
            this.mMuxer = null;
        }
        LogUtil.v(TAG, "create muxer success, file = " + this.mFilePath);
    }

    private void prepareVirtualDisplay() {
        this.mVirtualDisplay = this.mMediaProjection.createVirtualDisplay("StableScreenRecorderCore-display", this.mWidth, this.mHeight, 1, 1, this.mIsFixedFrame ? this.mEglRender.getDecodeSurface() : this.mSurface, null, null);
        LogUtil.v(TAG, "create virtual display success, virtual display = " + this.mVirtualDisplay);
    }

    private boolean startAudioRecording() {
        int audioSource;
        int sampleRateInHz = AUDIO_SAMPLE_RATE;
        if (this.mAudioSource == 1) {
            audioSource = 1;
        } else {
            audioSource = 8;
            sampleRateInHz = AUDIO_SAMPLE_RATE_REMOTE_SUBMIX;
        }
        int bufferSizeInBytes = AudioRecord.getMinBufferSize(sampleRateInHz, 16, 2);
        LogUtil.v(TAG, "audio, AudioRecord, min buffer size = " + bufferSizeInBytes);
        this.mAudioRecord = new AudioRecord(audioSource, sampleRateInHz, 16, 2, bufferSizeInBytes);
        if (this.mAudioRecord.getState() != 1) {
            Toast.makeText(this.mContext, this.mContext.getString(R.string.recording_without_mic), 0).show();
            LogUtil.e(TAG, "audio, AudioRecord initial failed");
            return false;
        }
        if (this.mAudioSource == 3) {
            audioSetForceUse("FOR_LOOPBACK", "FORCE_SPEAKER");
        }
        this.mAudioRecord.startRecording();
        if (this.mAudioRecord.getRecordingState() != 3) {
            Toast.makeText(this.mContext, this.mContext.getString(R.string.recording_without_mic), 0).show();
            this.mAudioSource = 0;
            if (this.mAudioEncoder != null) {
                this.mAudioEncoder.stop();
                this.mAudioEncoder.release();
                this.mAudioEncoder = null;
            }
            return false;
        }
        this.mAudioRecordStarted = true;
        LogUtil.v(TAG, "start audio recording");
        return true;
    }

    private boolean startInnerAudioRecording() {
        boolean isStartSusses = false;
        try {
            long startTime = getSystemTimeNanosWithMode() / 1000;
            return ((Boolean) this.mMiuiAudioRecord.getClass().getDeclaredMethod("start", new Class[]{Long.TYPE}).invoke(this.mMiuiAudioRecord, new Object[]{Long.valueOf(startTime)})).booleanValue();
        } catch (Exception e) {
            LogUtil.e(TAG, "mMiuiAudioRecord start fail in start()", e);
            return isStartSusses;
        }
    }

    private void runEncoder() {
        if (this.mIsFixedFrame) {
            this.mEglRender.setStartTimeNs(getSystemTimeNanosWithMode());
            this.mEglRender.start();
            LogUtil.v(TAG, "Encoder running");
        }
        Process.setThreadPriority(-19);
        if ((this.mAudioSource == 1 || this.mAudioSource == 3) && startAudioRecording()) {
            this.mInputBuffers = this.mAudioEncoder.getInputBuffers();
        }
        if (this.mAudioSource == 2 && startInnerAudioRecording()) {
            this.mInputBuffers = this.mAudioEncoder.getInputBuffers();
        }
    }

    private void recording() {
        switch (this.mAudioSource) {
            case 0:
                handleVideoRecording();
                return;
            case 1:
            case 3:
                if (!this.mVideoStart.get()) {
                    this.mVideoThread = new VideoHandleThread(this, null);
                    this.mVideoStart.set(true);
                    this.mVideoThread.start();
                }
                handleAudioRecording(this.mInputBuffers);
                return;
            case 2:
                if (!this.mVideoStart.get()) {
                    this.mVideoThread = new VideoHandleThread(this, null);
                    this.mVideoStart.set(true);
                    this.mVideoThread.start();
                }
                transferAudioDataToEncoder(this.mInputBuffers);
                if (!this.mAudioStart.get()) {
                    this.mAudioThread = new AudioHandleThread(this, null);
                    this.mAudioStart.set(true);
                    this.mAudioThread.start();
                    return;
                }
                return;
            default:
                LogUtil.e(TAG, "error sound type!");
                return;
        }
    }

    private void transferAudioDataToEncoder(ByteBuffer[] inputBuffers) {
        if (this.mAudioSource == 1 || this.mAudioSource == 3) {
            transferMicAudioDataToEncoder(inputBuffers);
        } else if (this.mAudioSource == 2) {
            transferInnerAudioDataToEncoder(inputBuffers);
        }
    }

    private void transferMicAudioDataToEncoder(ByteBuffer[] inputBuffers) {
        int inputBufferIndex = this.mAudioEncoder.dequeueInputBuffer(10000);
        if (inputBufferIndex >= 0) {
            ByteBuffer inputBuffer = inputBuffers[inputBufferIndex];
            byte[] input = new byte[inputBuffer.capacity()];
            int inputReadResult = this.mAudioRecord.read(input, 0, inputBuffer.capacity());
            long delayTime = 0;
            long duration = getSystemTimeMillisWithMode() - this.mReadTime;
            if (duration < LOG_INTERVAL) {
                LogUtil.d(TAG, "duration " + duration);
            }
            if (duration < MIN_INTERVAL) {
                delayTime = MIN_INTERVAL - duration;
            }
            this.mReadTime = getSystemTimeMillisWithMode() + delayTime;
            if (inputReadResult == -2 || inputReadResult == -3) {
                LogUtil.e(TAG, "AudioRecord read failed, return");
                return;
            }
            inputBuffer.clear();
            inputBuffer.put(input, 0, inputReadResult);
            this.mAudioEncoder.queueInputBuffer(inputBufferIndex, 0, inputBuffer.position(), (getSystemTimeNanosWithMode() / 1000) + (1000 * delayTime), 0);
        }
    }

    private void transferInnerAudioDataToEncoder(ByteBuffer[] inputBuffers) {
        int inputBufferIndex = this.mAudioEncoder.dequeueInputBuffer(10000);
        if (inputBufferIndex >= 0) {
            ByteBuffer inputBuffer = inputBuffers[inputBufferIndex];
            byte[] input = new byte[inputBuffer.capacity()];
            long pts = 0;
            try {
                Bundle info = (Bundle) this.mMiuiAudioRecord.getClass().getDeclaredMethod("fillBuffer", new Class[]{Integer.TYPE, Integer.TYPE}).invoke(this.mMiuiAudioRecord, new Object[]{Integer.valueOf(0), Integer.valueOf(inputBuffer.capacity())});
                if (info != null) {
                    int memorySize = (int) info.getLong("size");
                    pts = info.getLong("presentationTimeUs");
                    int inputReadResult = this.mData.readBytes(input, 0, 0, memorySize);
                    inputBuffer.clear();
                    inputBuffer.put(input, 0, inputReadResult);
                }
                this.mAudioEncoder.queueInputBuffer(inputBufferIndex, 0, inputBuffer.position(), pts, 0);
            } catch (Exception e) {
                LogUtil.e(TAG, "MiuiAudioRecord read data failed,return", e);
            }
        }
    }

    private void encodeToAudioTrack(int index) {
        ByteBuffer encodedData = this.mAudioEncoder.getOutputBuffer(index);
        if ((this.mAudioBufferInfo.flags & 2) != 0) {
            this.mAudioBufferInfo.size = 0;
        }
        if (this.mAudioBufferInfo.size == 0) {
            encodedData = null;
        }
        if (encodedData != null) {
            encodedData.position(this.mAudioBufferInfo.offset);
            encodedData.limit(this.mAudioBufferInfo.offset + this.mAudioBufferInfo.size);
            this.mMuxer.writeSampleData(this.mAudioTrackIndex, encodedData, this.mAudioBufferInfo);
        }
    }

    private void encodeToVideoTrack(int index) {
        ByteBuffer encodedData = this.mVideoEncoder.getOutputBuffer(index);
        if ((this.mVideoBufferInfo.flags & 2) != 0) {
            this.mVideoBufferInfo.size = 0;
        }
        if (this.mVideoBufferInfo.size == 0) {
            encodedData = null;
        }
        if (encodedData != null) {
            encodedData.position(this.mVideoBufferInfo.offset);
            encodedData.limit(this.mVideoBufferInfo.offset + this.mVideoBufferInfo.size);
            this.mMuxer.writeSampleData(this.mVideoTrackIndex, encodedData, this.mVideoBufferInfo);
        }
    }

    private void resetVideoOutputFormat() {
        if (this.mMuxerStarted) {
            throw new IllegalStateException("output format already changed!");
        }
        MediaFormat newVedioFormat = this.mVideoEncoder.getOutputFormat();
        LogUtil.v(TAG, "video output format changed. new format = " + newVedioFormat);
        this.mVideoTrackIndex = this.mMuxer.addTrack(newVedioFormat);
        this.mVideoChangedFormatDone = true;
        startMuxer();
    }

    private void resetAudioOutputFormat() {
        if (this.mMuxerStarted) {
            throw new IllegalStateException("output format already changed!");
        }
        MediaFormat newAudioFormat = this.mAudioEncoder.getOutputFormat();
        LogUtil.v(TAG, "audio output format changed. new format = " + newAudioFormat);
        this.mAudioTrackIndex = this.mMuxer.addTrack(newAudioFormat);
        this.mAudioChangedFormatDone = true;
        startMuxer();
    }

    private void startMuxer() {
        if (!this.mVideoChangedFormatDone) {
            return;
        }
        if (this.mAudioSource == 0 || this.mAudioChangedFormatDone) {
            this.mMuxer.start();
            this.mMuxerStarted = true;
            LogUtil.v(TAG, "start media muxer success, and recording is really to start now. video index = " + this.mVideoTrackIndex + ", audio index = " + this.mAudioTrackIndex);
        }
    }

    private synchronized void release(boolean isStopMediaProjection) {
        if (this.mFilePath == null) {
            LogUtil.e(TAG, "mFilePath is Null here before release!");
        }
        this.mVideoChangedFormatDone = false;
        this.mAudioChangedFormatDone = false;
        this.mReadTime = 0;
        this.mSavedFilePath = "";
        this.mVideoBufferInfo = new BufferInfo();
        this.mAudioBufferInfo = new BufferInfo();
        this.mAudioStart = new AtomicBoolean(false);
        this.mVideoStart = new AtomicBoolean(false);
        if (this.mEglRender != null) {
            this.mEglRender.stop();
        }
        if (this.mVideoThread != null) {
            try {
                this.mVideoThread.join();
            } catch (InterruptedException e) {
                LogUtil.e(TAG, "mAudioThread join get Exception:" + e);
            }
        }
        if (this.mAudioSource == 3) {
            audioSetForceUse("FOR_LOOPBACK", "FORCE_NONE");
        }
        if (this.mVideoEncoder != null) {
            this.mVideoEncoder.stop();
            this.mVideoEncoder.release();
            this.mVideoEncoder = null;
        }
        if (this.mAudioThread != null) {
            try {
                this.mAudioThread.join();
            } catch (InterruptedException e2) {
                LogUtil.e(TAG, "mAudioThread join get Exception:" + e2);
            }
        }
        if (this.mAudioRecord != null && this.mAudioRecordStarted) {
            this.mAudioRecord.release();
            this.mAudioRecordStarted = false;
            this.mAudioRecord = null;
        }
        if (this.mAudioEncoder != null) {
            this.mAudioEncoder.stop();
            this.mAudioEncoder.release();
            this.mAudioEncoder = null;
        }
        if (this.mMiuiAudioRecord != null) {
            try {
                this.mMiuiAudioRecord.getClass().getDeclaredMethod("stop", new Class[0]).invoke(this.mMiuiAudioRecord, new Object[0]);
            } catch (Exception e3) {
                LogUtil.e(TAG, "Error when stopping mMiuiAudioRecord", e3);
            }
            this.mMiuiAudioRecord = null;
            this.mAudioRecordStarted = false;
        }
        if (this.mVirtualDisplay != null) {
            this.mVirtualDisplay.release();
            this.mVirtualDisplay = null;
        }
        if (isStopMediaProjection && this.mMediaProjection != null) {
            LogUtil.d(TAG, "stop media projection");
            this.mMediaProjection.stop();
            this.mMediaProjection = null;
        }
        if (this.mMuxer != null) {
            if (this.mMuxerStarted) {
                try {
                    this.mMuxer.stop();
                    this.mMuxerStarted = false;
                } catch (Exception e32) {
                    LogUtil.e(TAG, "Error when stopping MediaMuxer", e32);
                    this.mMuxerStarted = false;
                    this.mMuxer = null;
                }
            }
            this.mMuxer.release();
            this.mMuxer = null;
        }
        if (this.mFilePath == null) {
            LogUtil.e(TAG, "mFilePath is Null here after release!");
        }
        LogUtil.v(TAG, "release all things");
        return;
    }

    private void handleAudioRecording(ByteBuffer[] inputBuffers) {
        int index;
        transferAudioDataToEncoder(inputBuffers);
        while (true) {
            index = this.mAudioEncoder.dequeueOutputBuffer(this.mAudioBufferInfo, 10000);
            if (index >= 0 && this.mMuxerStarted) {
                encodeToAudioTrack(index);
                this.mAudioEncoder.releaseOutputBuffer(index, false);
            }
        }
        if (index == -1) {
            sleep(10);
        } else if (index == -2) {
            LogUtil.v(TAG, "audio, the output format has changed, reset output format");
            resetAudioOutputFormat();
        } else if (index == -3) {
            LogUtil.v(TAG, "audio, the output buffers have changed, refer to the new set of output buffers");
        } else {
            this.mAudioEncoder.releaseOutputBuffer(index, false);
            LogUtil.w(TAG, "audio, unhandled index, index = " + index);
        }
    }

    private void handleVideoRecording() {
        int index = this.mVideoEncoder.dequeueOutputBuffer(this.mVideoBufferInfo, 10000);
        if (index >= 0 && this.mMuxerStarted) {
            encodeToVideoTrack(index);
            this.mVideoEncoder.releaseOutputBuffer(index, false);
            if ((this.mVideoBufferInfo.flags & 4) != 0) {
                LogUtil.v(TAG, "video, received end-of-stream, stop recording");
                stop();
            }
        } else if (index == -1) {
            sleep(10);
        } else if (index == -2) {
            LogUtil.v(TAG, "video, the output format has changed, reset output format");
            resetVideoOutputFormat();
        } else if (index == -3) {
            LogUtil.v(TAG, "video, the output buffers have changed, refer to the new set of output buffers");
        } else {
            this.mVideoEncoder.releaseOutputBuffer(index, false);
            LogUtil.w(TAG, "video, unhandled index, index = " + index);
        }
    }

    private void sleep(long time) {
        try {
            Thread.sleep(time);
        } catch (InterruptedException e) {
            LogUtil.e(TAG, "Error when audio thread sleeping, e = " + e);
        }
    }

    private void audioSetForceUse(String use, String conf) {
        try {
            Class<?> asClazz = Class.forName("android.media.ANXAudioSystem");
            Method sfuMethod = asClazz.getMethod("setForceUse", new Class[]{Integer.TYPE, Integer.TYPE});
            int usage = asClazz.getDeclaredField(use).getInt(null);
            int config = asClazz.getDeclaredField(conf).getInt(null);
            sfuMethod.invoke(asClazz, new Object[]{Integer.valueOf(usage), Integer.valueOf(config)});
        } catch (Exception e) {
            LogUtil.e(TAG, "error while in setForceUsage", e);
        }
    }

    private long getSystemTimeMillisWithMode() {
        return this.mIsFixedFrame ? SystemClock.elapsedRealtime() : System.currentTimeMillis();
    }

    private long getSystemTimeNanosWithMode() {
        return this.mIsFixedFrame ? SystemClock.elapsedRealtimeNanos() : System.nanoTime();
    }
}
