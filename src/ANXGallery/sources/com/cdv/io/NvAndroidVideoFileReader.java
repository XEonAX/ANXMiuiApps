package com.cdv.io;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.concurrent.Semaphore;

public class NvAndroidVideoFileReader implements OnFrameAvailableListener {
    private static final int ERROR_EOF = 1;
    private static final int ERROR_FAIL = 2;
    private static final int ERROR_OK = 0;
    private static final String TAG = "NvAndroidVideoFileReader";
    private static Method m_setOnFrameAvailableListener2;
    private static final boolean m_verbose = false;
    private BufferInfo m_bufferInfo = null;
    private MediaCodec m_decoder = null;
    ByteBuffer[] m_decoderInputBuffers = null;
    private boolean m_decoderSetupFailed = false;
    private boolean m_decoderStarted = false;
    private long m_duration = 0;
    private MediaExtractor m_extractor = null;
    private boolean m_extractorInOriginalState = true;
    private boolean m_firstPlaybackTexFrameUnconsumed = false;
    private MediaFormat m_format = null;
    private boolean m_frameAvailable = false;
    private Object m_frameSyncObject = new Object();
    private Handler m_handler = null;
    private boolean m_inputBufferQueued = false;
    private long m_lastSeekActualTimestamp = Long.MIN_VALUE;
    private long m_lastSeekTimestamp = Long.MIN_VALUE;
    private int m_pendingInputFrameCount = 0;
    private boolean m_sawInputEOS = false;
    private boolean m_sawOutputEOS = false;
    private Surface m_surface = null;
    private SurfaceTexture m_surfaceTexture = null;
    private Semaphore m_surfaceTextureCreationSemaphore;
    private long m_temporalLayerEndTime = -1;
    private int m_texId;
    private long m_timestampOfCurTexFrame = Long.MIN_VALUE;
    private long m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
    private int m_usedTemporalLayer = -1;
    private int m_videoTrackIndex = -1;

    static {
        m_setOnFrameAvailableListener2 = null;
        if (VERSION.SDK_INT >= 21) {
            try {
                m_setOnFrameAvailableListener2 = SurfaceTexture.class.getDeclaredMethod("setOnFrameAvailableListener", new Class[]{OnFrameAvailableListener.class, Handler.class});
                Log.d(TAG, "New SurfaceTexture.setOnFrameAvailableListener() method is available!");
            } catch (Exception e) {
                m_setOnFrameAvailableListener2 = null;
            }
        }
    }

    NvAndroidVideoFileReader(Handler handler) {
        this.m_handler = handler;
        this.m_bufferInfo = new BufferInfo();
    }

    public boolean OpenFile(String str, int i, AssetManager assetManager, int i2) {
        if (IsValid()) {
            Log.e(TAG, "You can't call OpenFile() twice!");
            return false;
        }
        try {
            this.m_extractor = new MediaExtractor();
            if (assetManager == null) {
                this.m_extractor.setDataSource(str);
            } else {
                AssetFileDescriptor openFd = assetManager.openFd(str);
                this.m_extractor.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                openFd.close();
            }
            this.m_extractorInOriginalState = true;
            int trackCount = this.m_extractor.getTrackCount();
            for (int i3 = 0; i3 < trackCount; i3++) {
                if (this.m_extractor.getTrackFormat(i3).getString("mime").startsWith("video/")) {
                    this.m_videoTrackIndex = i3;
                    break;
                }
            }
            if (this.m_videoTrackIndex < 0) {
                Log.e(TAG, "Failed to find a video track from " + str);
                CloseFile();
                return false;
            }
            this.m_extractor.selectTrack(this.m_videoTrackIndex);
            this.m_format = this.m_extractor.getTrackFormat(this.m_videoTrackIndex);
            if (VERSION.SDK_INT == 16) {
                this.m_format.setInteger("max-input-size", 0);
            }
            if (VERSION.SDK_INT >= 23 && i2 >= 0) {
                MediaFormat mediaFormat = this.m_format;
                String str2 = "operating-rate";
                if (i2 <= 0) {
                    i2 = BaiduSceneResult.MOTORCYCLE;
                }
                mediaFormat.setInteger(str2, i2);
            }
            this.m_duration = this.m_format.getLong("durationUs");
            String string = this.m_format.getString("mime");
            try {
                if (m_setOnFrameAvailableListener2 != null) {
                    this.m_surfaceTexture = new SurfaceTexture(i);
                    m_setOnFrameAvailableListener2.invoke(this.m_surfaceTexture, new Object[]{this, this.m_handler});
                } else {
                    this.m_surfaceTextureCreationSemaphore = new Semaphore(0);
                    this.m_texId = i;
                    this.m_handler.post(new Runnable() {
                        public void run() {
                            try {
                                NvAndroidVideoFileReader.this.m_surfaceTexture = new SurfaceTexture(NvAndroidVideoFileReader.this.m_texId);
                                NvAndroidVideoFileReader.this.m_surfaceTextureCreationSemaphore.release();
                            } catch (Exception e) {
                                Log.e(NvAndroidVideoFileReader.TAG, "" + e.getMessage());
                                e.printStackTrace();
                            }
                        }
                    });
                    this.m_surfaceTextureCreationSemaphore.acquire();
                    this.m_surfaceTextureCreationSemaphore = null;
                    this.m_texId = 0;
                    if (this.m_surfaceTexture == null) {
                        CloseFile();
                        return false;
                    }
                    this.m_surfaceTexture.setOnFrameAvailableListener(this);
                }
                this.m_surface = new Surface(this.m_surfaceTexture);
                this.m_decoderSetupFailed = false;
                if (SetupDecoder(string)) {
                    this.m_usedTemporalLayer = -1;
                    this.m_temporalLayerEndTime = -1;
                    return true;
                }
                this.m_decoderSetupFailed = true;
                CloseFile();
                return false;
            } catch (Exception e) {
                Log.e(TAG, "" + e.getMessage());
                e.printStackTrace();
                CloseFile();
                return false;
            }
        } catch (Exception e2) {
            Log.e(TAG, "" + e2.getMessage());
            e2.printStackTrace();
            CloseFile();
            return false;
        }
    }

    public boolean hasDecoderSetupFailed() {
        return this.m_decoderSetupFailed;
    }

    public void CloseFile() {
        InvalidLastSeekTimestamp();
        CleanupDecoder();
        if (this.m_surface != null) {
            this.m_surface.release();
            this.m_surface = null;
        }
        if (this.m_surfaceTexture != null) {
            this.m_surfaceTexture.release();
            this.m_surfaceTexture = null;
        }
        if (this.m_extractor != null) {
            this.m_extractor.release();
            this.m_extractor = null;
            this.m_videoTrackIndex = -1;
            this.m_format = null;
            this.m_duration = 0;
            this.m_extractorInOriginalState = true;
        }
        this.m_usedTemporalLayer = -1;
        this.m_temporalLayerEndTime = -1;
    }

    public void SetDecodeTemporalLayer(int i, long j) {
        if (i != this.m_usedTemporalLayer) {
            this.m_temporalLayerEndTime = j;
            this.m_usedTemporalLayer = i;
        }
    }

    public int SeekVideoFrame(long j, long j2) {
        if (!IsValid()) {
            return 1;
        }
        long max = Math.max(j, 0);
        if (max >= this.m_duration) {
            if (max >= this.m_duration + 25000) {
                return 1;
            }
            max = this.m_duration - 1;
        }
        if (this.m_timestampOfCurTexFrame != Long.MIN_VALUE && Math.abs(max - this.m_timestampOfCurTexFrame) <= j2) {
            return 0;
        }
        int SeekInternal = SeekInternal(max, j2);
        if (SeekInternal == 0) {
            this.m_lastSeekTimestamp = max;
            this.m_lastSeekActualTimestamp = this.m_timestampOfCurTexFrame;
        } else {
            InvalidLastSeekTimestamp();
        }
        return SeekInternal;
    }

    public int StartPlayback(long j, long j2) {
        if (!IsValid()) {
            return 1;
        }
        long max = Math.max(j, 0);
        if (max >= this.m_duration) {
            return 1;
        }
        if (!(this.m_lastSeekTimestamp == Long.MIN_VALUE || max != this.m_lastSeekTimestamp || this.m_lastSeekActualTimestamp == Long.MIN_VALUE)) {
            max = this.m_lastSeekActualTimestamp;
        }
        if (max == this.m_timestampOfCurTexFrame && this.m_timestampOfCurTexFrame == this.m_timestampOfLastDecodedFrame) {
            this.m_firstPlaybackTexFrameUnconsumed = true;
            return 0;
        }
        int SeekInternal = SeekInternal(max, j2);
        InvalidLastSeekTimestamp();
        if (SeekInternal != 0) {
            return SeekInternal;
        }
        this.m_firstPlaybackTexFrameUnconsumed = true;
        return 0;
    }

    public int GetNextVideoFrameForPlayback() {
        if (!IsValid()) {
            return 1;
        }
        if (this.m_firstPlaybackTexFrameUnconsumed) {
            this.m_firstPlaybackTexFrameUnconsumed = false;
        } else {
            int DecodeToFrame = DecodeToFrame(Long.MIN_VALUE, 0);
            InvalidLastSeekTimestamp();
            if (DecodeToFrame != 0) {
                return DecodeToFrame;
            }
        }
        return 0;
    }

    public long GetTimestampOfCurrentTextureFrame() {
        return this.m_timestampOfCurTexFrame;
    }

    public void GetTransformMatrixOfSurfaceTexture(float[] fArr) {
        if (this.m_surfaceTexture != null) {
            this.m_surfaceTexture.getTransformMatrix(fArr);
        }
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.m_frameSyncObject) {
            if (this.m_frameAvailable) {
                Log.e(TAG, "m_frameAvailable already set, frame could be dropped!");
            }
            this.m_frameAvailable = true;
            this.m_frameSyncObject.notifyAll();
        }
    }

    private boolean IsValid() {
        return this.m_decoder != null;
    }

    private boolean SetupDecoder(String str) {
        try {
            this.m_decoder = MediaCodec.createDecoderByType(str);
            this.m_decoder.configure(this.m_format, this.m_surface, null, 0);
            this.m_decoder.start();
            this.m_decoderStarted = true;
            this.m_decoderInputBuffers = this.m_decoder.getInputBuffers();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CleanupDecoder();
            return false;
        }
    }

    private void CleanupDecoder() {
        if (this.m_decoder != null) {
            if (this.m_decoderStarted) {
                try {
                    if (this.m_sawInputEOS && !this.m_sawOutputEOS) {
                        DrainOutputBuffers();
                    }
                    if (this.m_inputBufferQueued) {
                        try {
                            this.m_decoder.flush();
                        } catch (Exception e) {
                        }
                        this.m_inputBufferQueued = false;
                    }
                    this.m_decoder.stop();
                } catch (Exception e2) {
                    Log.e(TAG, "" + e2.getMessage());
                    e2.printStackTrace();
                }
                this.m_decoderStarted = false;
                this.m_decoderInputBuffers = null;
            }
            this.m_decoder.release();
            this.m_decoder = null;
        }
        this.m_timestampOfLastDecodedFrame = Long.MIN_VALUE;
        this.m_timestampOfCurTexFrame = Long.MIN_VALUE;
        this.m_firstPlaybackTexFrameUnconsumed = false;
        this.m_pendingInputFrameCount = 0;
        this.m_sawInputEOS = false;
        this.m_sawOutputEOS = false;
    }

    private int SeekInternal(long j, long j2) {
        Object obj = 1;
        if ((this.m_timestampOfLastDecodedFrame == Long.MIN_VALUE || j <= this.m_timestampOfLastDecodedFrame || j >= this.m_timestampOfLastDecodedFrame + 1500000) && (!this.m_extractorInOriginalState || j >= 1500000)) {
            obj = null;
        }
        if (obj == null) {
            try {
                this.m_extractor.seekTo(j, 0);
                if (this.m_sawInputEOS || this.m_sawOutputEOS) {
                    CleanupDecoder();
                    if (!SetupDecoder(this.m_format.getString("mime"))) {
                        return 2;
                    }
                } else if (this.m_inputBufferQueued) {
                    try {
                        this.m_decoder.flush();
                    } catch (Exception e) {
                    }
                    this.m_inputBufferQueued = false;
                    this.m_pendingInputFrameCount = 0;
                }
            } catch (Exception e2) {
                Log.e(TAG, "" + e2.getMessage());
                e2.printStackTrace();
                return 2;
            }
        }
        return DecodeToFrame(j, j2);
    }

    private int DecodeToFrame(long j, long j2) {
        try {
            return DoDecodeToFrame(j, j2);
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            CleanupDecoder();
            return 2;
        }
    }

    private int DoDecodeToFrame(long j, long j2) {
        int max = Math.max(this.m_decoderInputBuffers.length / 3, 2);
        int i = 0;
        while (true) {
            int i2 = i;
            if (!this.m_sawOutputEOS) {
                int readSampleData;
                if (!this.m_sawInputEOS) {
                    int dequeueInputBuffer = this.m_decoder.dequeueInputBuffer(4000);
                    if (dequeueInputBuffer >= 0) {
                        ByteBuffer byteBuffer = this.m_decoderInputBuffers[dequeueInputBuffer];
                        while (true) {
                            readSampleData = this.m_extractor.readSampleData(byteBuffer, 0);
                            if (readSampleData < 0) {
                                this.m_decoder.queueInputBuffer(dequeueInputBuffer, 0, 0, 0, 4);
                                this.m_sawInputEOS = true;
                                break;
                            }
                            if (this.m_extractor.getSampleTrackIndex() != this.m_videoTrackIndex) {
                                Log.w(TAG, "WEIRD: got sample from track " + this.m_extractor.getSampleTrackIndex() + ", expected " + this.m_videoTrackIndex);
                            }
                            long sampleTime = this.m_extractor.getSampleTime();
                            if (((this.m_extractor.getSampleFlags() & 1) != 0 ? 1 : null) == null && canSkipFrame(byteBuffer, sampleTime)) {
                                this.m_extractor.advance();
                                this.m_extractorInOriginalState = false;
                            } else {
                                this.m_decoder.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, sampleTime, 0);
                                this.m_inputBufferQueued = true;
                                this.m_pendingInputFrameCount++;
                                this.m_extractor.advance();
                                this.m_extractorInOriginalState = false;
                            }
                        }
                    }
                }
                if (this.m_pendingInputFrameCount > max || this.m_sawInputEOS) {
                    i = 4000;
                } else {
                    i = 0;
                }
                readSampleData = this.m_decoder.dequeueOutputBuffer(this.m_bufferInfo, (long) i);
                i = i2 + 1;
                if (!(readSampleData == -1 || readSampleData == -3)) {
                    if (readSampleData == -2) {
                        this.m_decoder.getOutputFormat();
                    } else if (readSampleData < 0) {
                        Log.e(TAG, "Unexpected result from decoder.dequeueOutputBuffer: " + readSampleData);
                        return 2;
                    } else {
                        if ((this.m_bufferInfo.flags & 4) != 0) {
                            this.m_sawOutputEOS = true;
                        }
                        boolean z = false;
                        Object obj = null;
                        if (!this.m_sawOutputEOS) {
                            this.m_timestampOfLastDecodedFrame = this.m_bufferInfo.presentationTimeUs;
                            this.m_pendingInputFrameCount--;
                            if (j != Long.MIN_VALUE) {
                                boolean z2 = this.m_timestampOfLastDecodedFrame >= j - j2;
                                if (z2 || this.m_timestampOfLastDecodedFrame < this.m_duration - 100000) {
                                    boolean z3 = z2;
                                    i = 0;
                                    z = z3;
                                } else {
                                    i = 0;
                                    z = true;
                                    obj = 1;
                                }
                            } else {
                                i = 0;
                                z = true;
                            }
                        }
                        if (z) {
                            synchronized (this.m_frameSyncObject) {
                                this.m_frameAvailable = false;
                            }
                        }
                        this.m_decoder.releaseOutputBuffer(readSampleData, z);
                        if (z) {
                            if (AwaitNewImage()) {
                                this.m_timestampOfCurTexFrame = this.m_bufferInfo.presentationTimeUs;
                                if (obj == null) {
                                    return 0;
                                }
                            }
                            Log.e(TAG, "Render decoded frame to surface texture failed!");
                            return 2;
                        }
                    }
                }
                if (i > 100) {
                    Log.e(TAG, "We have tried too many times and can't decode a frame!");
                    return 2;
                }
            } else if (j == Long.MIN_VALUE || this.m_timestampOfCurTexFrame == Long.MIN_VALUE || this.m_timestampOfCurTexFrame < this.m_duration - 100000) {
                return 1;
            } else {
                return 0;
            }
        }
        while (true) {
        }
    }

    private boolean canSkipFrame(ByteBuffer byteBuffer, long j) {
        if (byteBuffer == null || this.m_usedTemporalLayer < 0 || j >= this.m_temporalLayerEndTime) {
            return false;
        }
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        position = bArr[4] & 31;
        if (bArr[0] != (byte) 0 || bArr[1] != (byte) 0 || bArr[2] != (byte) 0 || bArr[3] != (byte) 1) {
            return false;
        }
        if (position != 14 && position != 20) {
            return false;
        }
        if (((bArr[5] & 255) >> 7) > 0) {
            position = 1;
        } else {
            boolean z = false;
        }
        if (position == 0 || (((bArr[7] & 255) >> 5) & 7) <= this.m_usedTemporalLayer) {
            return false;
        }
        return true;
    }

    private boolean AwaitNewImage() {
        synchronized (this.m_frameSyncObject) {
            do {
                if (this.m_frameAvailable) {
                    this.m_frameAvailable = false;
                    try {
                        this.m_surfaceTexture.updateTexImage();
                        return true;
                    } catch (Exception e) {
                        Log.e(TAG, "" + e.getMessage());
                        e.printStackTrace();
                        return false;
                    }
                }
                try {
                    this.m_frameSyncObject.wait(3000);
                } catch (InterruptedException e2) {
                    Log.e(TAG, "" + e2.getMessage());
                    e2.printStackTrace();
                    return false;
                }
            } while (this.m_frameAvailable);
            Log.e(TAG, "Frame wait timed out!");
            return false;
        }
    }

    private void DrainOutputBuffers() {
        if (this.m_sawInputEOS && !this.m_sawOutputEOS) {
            int i = 0;
            while (!this.m_sawOutputEOS) {
                int dequeueOutputBuffer = this.m_decoder.dequeueOutputBuffer(this.m_bufferInfo, 5000);
                i++;
                if (!(dequeueOutputBuffer == -1 || dequeueOutputBuffer == -3 || dequeueOutputBuffer == -2)) {
                    if (dequeueOutputBuffer < 0) {
                        Log.e(TAG, "DrainDecoderBuffers(): Unexpected result from decoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                        return;
                    }
                    if ((this.m_bufferInfo.flags & 4) != 0) {
                        this.m_sawOutputEOS = true;
                    }
                    this.m_decoder.releaseOutputBuffer(dequeueOutputBuffer, false);
                    i = 0;
                }
                if (i > 100) {
                    Log.e(TAG, "DrainDecoderBuffers(): We have tried too many times and can't decode a frame!");
                    return;
                }
            }
        }
    }

    private void InvalidLastSeekTimestamp() {
        this.m_lastSeekTimestamp = Long.MIN_VALUE;
        this.m_lastSeekActualTimestamp = Long.MIN_VALUE;
    }
}
