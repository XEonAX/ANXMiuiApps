package com.nexstreaming.nexeditorsdk;

import java.util.HashMap;
import java.util.Map;

public final class nexExportFormat {
    private static String TAG = "nexExportFormat";
    public static final String TAG_FORMAT_AUDIO_BITRATE = "audiobitrate";
    public static final String TAG_FORMAT_AUDIO_CODEC = "audiocodec";
    public static final String TAG_FORMAT_AUDIO_SAMPLERATE = "audiosamplerate";
    public static final String TAG_FORMAT_END_TIME = "endtime";
    public static final String TAG_FORMAT_HEIGHT = "height";
    public static final String TAG_FORMAT_INTERVAL_TIME = "intervaltime";
    public static final String TAG_FORMAT_MAX_FILESIZE = "maxfilesize";
    public static final String TAG_FORMAT_PATH = "path";
    public static final String TAG_FORMAT_QUALITY = "quality";
    public static final String TAG_FORMAT_START_TIME = "starttime";
    public static final String TAG_FORMAT_TAG = "tag";
    public static final String TAG_FORMAT_TYPE = "type";
    public static final String TAG_FORMAT_UUID = "uuid";
    public static final String TAG_FORMAT_VIDEO_BITRATE = "videobitrate";
    public static final String TAG_FORMAT_VIDEO_CODEC = "videocodec";
    public static final String TAG_FORMAT_VIDEO_FPS = "videofps";
    public static final String TAG_FORMAT_VIDEO_LEVEL = "videolevel";
    public static final String TAG_FORMAT_VIDEO_PROFILE = "videoprofile";
    public static final String TAG_FORMAT_VIDEO_ROTATE = "videorotate";
    public static final String TAG_FORMAT_WIDTH = "width";
    Map<String, String> formats = new HashMap();

    public final float getFloat(String str) {
        if (this.formats.containsKey(str)) {
            return Float.parseFloat((String) this.formats.get(str));
        }
        return 0.0f;
    }

    public final int getInteger(String str) {
        if (this.formats.containsKey(str)) {
            return Integer.parseInt((String) this.formats.get(str));
        }
        return 0;
    }

    public final long getLong(String str) {
        if (this.formats.containsKey(str)) {
            return Long.parseLong((String) this.formats.get(str));
        }
        return 0;
    }

    public final String getString(String str) {
        if (this.formats.containsKey(str)) {
            return (String) this.formats.get(str);
        }
        return "";
    }

    public final void setFloat(String str, float f) {
        this.formats.put(str, "" + f);
    }

    public final void setInteger(String str, int i) {
        this.formats.put(str, "" + i);
    }

    public final void setLong(String str, long j) {
        this.formats.put(str, "" + j);
    }

    public final void setString(String str, String str2) {
        this.formats.put(str, str2);
    }
}
