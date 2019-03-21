package com.cdv.io;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build.VERSION;
import android.util.Log;
import java.nio.ByteBuffer;

public class NvAndroidAudioFileReader {
    private static final int ERROR_EOF = 1;
    private static final int ERROR_FAIL = 2;
    private static final int ERROR_OK = 0;
    private static final String TAG = "NvAndroidAudioFileReader";
    private static final boolean m_verbose = false;
    private int m_audioTrackIndex;
    private BufferInfo m_bufferInfo;
    private int m_channelCount;
    private MediaCodec m_decoder;
    ByteBuffer[] m_decoderInputBuffers;
    ByteBuffer[] m_decoderOutputBuffers;
    private boolean m_decoderSetupFailed;
    private boolean m_decoderStarted;
    private long m_duration;
    private MediaExtractor m_extractor;
    private MediaFormat m_format;
    private boolean m_inputBufferQueued;
    private int m_pendingInputFrameCount;
    private int m_sampleRate;
    private boolean m_sawInputEOS;
    private boolean m_sawOutputEOS;

    public static class AudioFrame {
        ByteBuffer audioFrame;
        int channelCount;
        long pts;
        int retCode;
        int sampleCount;
        int sampleRate;
        int sampleSize;
    }

    NvAndroidAudioFileReader() {
        this.m_extractor = null;
        this.m_audioTrackIndex = -1;
        this.m_format = null;
        this.m_duration = 0;
        this.m_channelCount = 1;
        this.m_sampleRate = 44100;
        this.m_bufferInfo = null;
        this.m_decoder = null;
        this.m_decoderSetupFailed = false;
        this.m_decoderStarted = false;
        this.m_decoderInputBuffers = null;
        this.m_decoderOutputBuffers = null;
        this.m_inputBufferQueued = false;
        this.m_pendingInputFrameCount = 0;
        this.m_sawInputEOS = false;
        this.m_sawOutputEOS = false;
        this.m_bufferInfo = new BufferInfo();
    }

    public boolean openFile(String str, AssetManager assetManager) {
        if (isValid()) {
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
            int trackCount = this.m_extractor.getTrackCount();
            for (int i = 0; i < trackCount; i++) {
                if (this.m_extractor.getTrackFormat(i).getString("mime").startsWith("audio/")) {
                    this.m_audioTrackIndex = i;
                    break;
                }
            }
            if (this.m_audioTrackIndex < 0) {
                Log.e(TAG, "Failed to find a audio track from " + str);
                closeFile();
                return false;
            }
            this.m_extractor.selectTrack(this.m_audioTrackIndex);
            this.m_format = this.m_extractor.getTrackFormat(this.m_audioTrackIndex);
            if (VERSION.SDK_INT >= 23) {
            }
            this.m_duration = this.m_format.getLong("durationUs");
            String string = this.m_format.getString("mime");
            this.m_decoderSetupFailed = false;
            if (setupDecoder(string)) {
                return true;
            }
            this.m_decoderSetupFailed = true;
            closeFile();
            return false;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            closeFile();
            return false;
        }
    }

    public boolean hasDecoderSetupFailed() {
        return this.m_decoderSetupFailed;
    }

    public void closeFile() {
        cleanupDecoder();
        if (this.m_extractor != null) {
            this.m_extractor.release();
            this.m_extractor = null;
            this.m_audioTrackIndex = -1;
            this.m_format = null;
            this.m_duration = 0;
        }
    }

    public int startPlayback(long j) {
        if (!isValid()) {
            return 1;
        }
        long max = Math.max(j, 0);
        if (max >= this.m_duration) {
            return 1;
        }
        try {
            this.m_extractor.seekTo(max, 0);
            if (this.m_sawInputEOS || this.m_sawOutputEOS) {
                cleanupDecoder();
                if (!setupDecoder(this.m_format.getString("mime"))) {
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
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, "" + e2.getMessage());
            e2.printStackTrace();
            return 2;
        }
    }

    public AudioFrame getNextAudioFrameForPlayback() {
        if (isValid()) {
            try {
                return decodeNextFrame();
            } catch (Exception e) {
                Log.e(TAG, "" + e.getMessage());
                e.printStackTrace();
                cleanupDecoder();
                return null;
            }
        }
        AudioFrame audioFrame = new AudioFrame();
        audioFrame.retCode = 1;
        return audioFrame;
    }

    private boolean isValid() {
        return this.m_decoder != null;
    }

    private boolean setupDecoder(String str) {
        try {
            this.m_decoder = MediaCodec.createDecoderByType(str);
            this.m_decoder.configure(this.m_format, null, null, 0);
            this.m_decoder.start();
            this.m_decoderStarted = true;
            this.m_decoderInputBuffers = this.m_decoder.getInputBuffers();
            this.m_decoderOutputBuffers = this.m_decoder.getOutputBuffers();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
            cleanupDecoder();
            return false;
        }
    }

    private void cleanupDecoder() {
        if (this.m_decoder != null) {
            if (this.m_decoderStarted) {
                try {
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
        this.m_pendingInputFrameCount = 0;
        this.m_sawInputEOS = false;
        this.m_sawOutputEOS = false;
    }

    private AudioFrame decodeNextFrame() {
        int max = Math.max(this.m_decoderInputBuffers.length / 3, 2);
        AudioFrame audioFrame = new AudioFrame();
        int i = 0;
        while (!this.m_sawOutputEOS) {
            int readSampleData;
            int i2;
            if (!this.m_sawInputEOS) {
                int dequeueInputBuffer = this.m_decoder.dequeueInputBuffer(500);
                if (dequeueInputBuffer >= 0) {
                    readSampleData = this.m_extractor.readSampleData(this.m_decoderInputBuffers[dequeueInputBuffer], 0);
                    if (readSampleData < 0) {
                        this.m_decoder.queueInputBuffer(dequeueInputBuffer, 0, 0, 0, 4);
                        this.m_sawInputEOS = true;
                    } else {
                        if (this.m_extractor.getSampleTrackIndex() != this.m_audioTrackIndex) {
                            Log.w(TAG, "WEIRD: got sample from track " + this.m_extractor.getSampleTrackIndex() + ", expected " + this.m_audioTrackIndex);
                        }
                        this.m_decoder.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, this.m_extractor.getSampleTime(), 0);
                        this.m_inputBufferQueued = true;
                        this.m_pendingInputFrameCount++;
                        this.m_extractor.advance();
                    }
                }
            }
            if (this.m_pendingInputFrameCount > max || this.m_sawInputEOS) {
                i2 = 500;
            } else {
                i2 = 0;
            }
            readSampleData = this.m_decoder.dequeueOutputBuffer(this.m_bufferInfo, (long) i2);
            i2 = i + 1;
            if (readSampleData != -1) {
                if (readSampleData == -3) {
                    this.m_decoderOutputBuffers = this.m_decoder.getOutputBuffers();
                } else if (readSampleData == -2) {
                    parseMediaFormat(this.m_decoder.getOutputFormat());
                } else if (readSampleData < 0) {
                    Log.e(TAG, "Unexpected result from decoder.dequeueOutputBuffer: " + readSampleData);
                    return null;
                } else {
                    boolean z;
                    if ((this.m_bufferInfo.flags & 4) != 0) {
                        this.m_sawOutputEOS = true;
                    } else {
                        this.m_pendingInputFrameCount--;
                    }
                    if (this.m_bufferInfo.size != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        audioFrame.channelCount = this.m_channelCount;
                        audioFrame.sampleRate = this.m_sampleRate;
                        audioFrame.sampleSize = 16;
                        audioFrame.sampleCount = this.m_bufferInfo.size / ((audioFrame.sampleSize / 8) * audioFrame.channelCount);
                        try {
                            ByteBuffer byteBuffer = this.m_decoderOutputBuffers[readSampleData];
                            byteBuffer.position(0);
                            byteBuffer.limit(this.m_bufferInfo.size);
                            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.m_bufferInfo.size);
                            allocateDirect.put(byteBuffer);
                            audioFrame.audioFrame = allocateDirect;
                            audioFrame.pts = this.m_bufferInfo.presentationTimeUs;
                            audioFrame.retCode = 0;
                        } catch (Exception e) {
                            e.printStackTrace();
                            audioFrame.retCode = 2;
                            z = false;
                        }
                    }
                    this.m_decoder.releaseOutputBuffer(readSampleData, false);
                    if (z) {
                        return audioFrame;
                    }
                }
            }
            if (i2 > 100) {
                Log.e(TAG, "We have tried too many times and can't decode a frame!");
                return null;
            }
            i = i2;
        }
        audioFrame.retCode = 1;
        return audioFrame;
    }

    private void parseMediaFormat(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("channel-count")) {
            this.m_channelCount = mediaFormat.getInteger("channel-count");
        }
        if (mediaFormat.containsKey("sample-rate")) {
            this.m_sampleRate = mediaFormat.getInteger("sample-rate");
        }
    }
}
