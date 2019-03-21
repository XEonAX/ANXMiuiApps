package com.meicam.sdk;

public class NvsAVFileInfo {
    static final int AUDIO_MAX_STREAM_COUNT = 4;
    public static final int AV_FILE_TYPE_AUDIO = 1;
    public static final int AV_FILE_TYPE_AUDIOVIDEO = 0;
    public static final int AV_FILE_TYPE_IMAGE = 2;
    public static final int AV_FILE_TYPE_UNKNOWN = -1;
    NvsAudioStreamInfo[] m_audioStreamInfo = new NvsAudioStreamInfo[4];
    long m_dataRate;
    long m_duration;
    int m_numAudioStreams;
    int m_numVideoStreams;
    int m_type;
    NvsVideoStreamInfo m_videoStreamInfo;

    public int getAVFileType() {
        return this.m_type;
    }

    public long getDuration() {
        return this.m_duration;
    }

    public long getDataRate() {
        return this.m_dataRate;
    }

    public int getVideoStreamCount() {
        return this.m_numVideoStreams;
    }

    public int getAudioStreamCount() {
        return this.m_numAudioStreams;
    }

    public long getVideoStreamDuration(int i) {
        if (i < this.m_numVideoStreams) {
            return this.m_videoStreamInfo.duration;
        }
        return 0;
    }

    public NvsSize getVideoStreamDimension(int i) {
        NvsSize nvsSize = new NvsSize(0, 0);
        if (i < this.m_numVideoStreams) {
            nvsSize.width = this.m_videoStreamInfo.imageWidth;
            nvsSize.height = this.m_videoStreamInfo.imageHeight;
        }
        return nvsSize;
    }

    public NvsRational getVideoStreamPixelAspectRatio(int i) {
        NvsRational nvsRational = new NvsRational(1, 1);
        if (i < this.m_numVideoStreams) {
            nvsRational.num = this.m_videoStreamInfo.pixelAspectRatio.num;
            nvsRational.den = this.m_videoStreamInfo.pixelAspectRatio.den;
        }
        return nvsRational;
    }

    public NvsRational getVideoStreamFrameRate(int i) {
        NvsRational nvsRational = new NvsRational(1, 1);
        if (i < this.m_numVideoStreams) {
            nvsRational.num = this.m_videoStreamInfo.frameRate.num;
            nvsRational.den = this.m_videoStreamInfo.frameRate.den;
        }
        return nvsRational;
    }

    public int getVideoStreamRotation(int i) {
        if (i < this.m_numVideoStreams) {
            return this.m_videoStreamInfo.displayRotation;
        }
        return 0;
    }

    public long getAudioStreamDuration(int i) {
        if (i < this.m_numAudioStreams) {
            return this.m_audioStreamInfo[i].duration;
        }
        return 0;
    }

    public int getAudioStreamSampleRate(int i) {
        if (i < this.m_numAudioStreams) {
            return this.m_audioStreamInfo[i].sampleRate;
        }
        return 0;
    }

    public int getAudioStreamChannelCount(int i) {
        if (i < this.m_numAudioStreams) {
            return this.m_audioStreamInfo[i].channelCount;
        }
        return 0;
    }

    void setAudioStreamInfo(int i, NvsAudioStreamInfo nvsAudioStreamInfo) {
        if (i < this.m_numAudioStreams) {
            this.m_audioStreamInfo[i] = nvsAudioStreamInfo;
        }
    }
}
