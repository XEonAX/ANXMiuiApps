package com.nexstreaming.nexeditorsdk;

import java.util.HashMap;
import java.util.Map;

public final class nexExportFormatBuilder {
    private static String TAG = "nexExportFormatBuilder";
    Map<String, String> formats = new HashMap();

    public nexExportFormatBuilder setType(String str) {
        this.formats.put(nexExportFormat.TAG_FORMAT_TYPE, str);
        return this;
    }

    public nexExportFormatBuilder setPath(String str) {
        this.formats.put(nexExportFormat.TAG_FORMAT_PATH, str);
        return this;
    }

    public nexExportFormatBuilder setWidth(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_WIDTH, "" + i);
        return this;
    }

    public nexExportFormatBuilder setHeight(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_HEIGHT, "" + i);
        return this;
    }

    public nexExportFormatBuilder setQuality(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_QUALITY, "" + i);
        return this;
    }

    public nexExportFormatBuilder setVideoCodec(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_VIDEO_CODEC, "" + i);
        return this;
    }

    public nexExportFormatBuilder setVideoBitrate(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_VIDEO_BITRATE, "" + i);
        return this;
    }

    public nexExportFormatBuilder setVideoProfile(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_VIDEO_PROFILE, "" + i);
        return this;
    }

    public nexExportFormatBuilder setVideoLevel(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_VIDEO_LEVEL, "" + i);
        return this;
    }

    public nexExportFormatBuilder setVideoRotate(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_VIDEO_ROTATE, "" + i);
        return this;
    }

    public nexExportFormatBuilder setVideoFPS(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_VIDEO_FPS, "" + i);
        return this;
    }

    public nexExportFormatBuilder setAudioCodec(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_AUDIO_CODEC, "" + i);
        return this;
    }

    public nexExportFormatBuilder setAudioBitrate(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_AUDIO_BITRATE, "" + i);
        return this;
    }

    public nexExportFormatBuilder setAudioSampleRate(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_AUDIO_SAMPLERATE, "" + i);
        return this;
    }

    public nexExportFormatBuilder setMaxFileSize(long j) {
        this.formats.put(nexExportFormat.TAG_FORMAT_MAX_FILESIZE, "" + j);
        return this;
    }

    public nexExportFormatBuilder setTagID(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_TAG, "" + i);
        return this;
    }

    public nexExportFormatBuilder setIntervalTime(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_INTERVAL_TIME, "" + i);
        return this;
    }

    public nexExportFormatBuilder setStartTime(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_START_TIME, "" + i);
        return this;
    }

    public nexExportFormatBuilder setEndTime(int i) {
        this.formats.put(nexExportFormat.TAG_FORMAT_END_TIME, "" + i);
        return this;
    }

    public nexExportFormatBuilder setUUID(String str) {
        this.formats.put(nexExportFormat.TAG_FORMAT_UUID, str);
        return this;
    }

    public nexExportFormatBuilder setUserField(String str, String str2) {
        this.formats.put(str, str2);
        return this;
    }

    public nexExportFormat build() {
        nexExportFormat nexexportformat = new nexExportFormat();
        for (String str : this.formats.keySet()) {
            nexexportformat.setString(str, (String) this.formats.get(str));
        }
        return nexexportformat;
    }

    public static nexExportFormatBuilder Builder() {
        return new nexExportFormatBuilder();
    }
}
