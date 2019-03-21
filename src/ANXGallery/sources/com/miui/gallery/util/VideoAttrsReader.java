package com.miui.gallery.util;

import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import android.text.format.Time;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class VideoAttrsReader {
    private long mDateTaken = -1;
    private long mDuration = -1;
    private int mHeight = -1;
    private final String mPath;
    private String mTitle;
    private int mWidth = -1;

    public static class VideoAttrsUnretrivableException extends RuntimeException {
        public VideoAttrsUnretrivableException(String msg, Throwable t) {
            super(msg, t);
        }
    }

    public static VideoAttrsReader read(String path) throws IOException {
        return new VideoAttrsReader(path);
    }

    private VideoAttrsReader(String path) throws IOException {
        this.mPath = path;
        initByMediaMediaPlayer(this.mPath);
    }

    public String getTitle() {
        return this.mTitle;
    }

    public int getVideoWidth() {
        return this.mWidth;
    }

    public int getVideoHeight() {
        return this.mHeight;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public long getDateTaken() {
        return this.mDateTaken;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0079 A:{SYNTHETIC, Splitter: B:22:0x0079} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void initByMediaMediaPlayer(String path) throws IOException {
        RuntimeException e;
        Throwable th;
        MediaMetadataRetriever attrsRetriver = null;
        try {
            MediaMetadataRetriever attrsRetriver2 = new MediaMetadataRetriever();
            try {
                attrsRetriver2.setDataSource(path);
                this.mTitle = attrsRetriver2.extractMetadata(7);
                this.mWidth = parseIntSafely(attrsRetriver2.extractMetadata(18));
                this.mHeight = parseIntSafely(attrsRetriver2.extractMetadata(19));
                this.mDuration = parseLongSafely(attrsRetriver2.extractMetadata(9));
                this.mDateTaken = calculateTaken(attrsRetriver2.extractMetadata(5));
                if (attrsRetriver2 != null) {
                    try {
                        attrsRetriver2.release();
                    } catch (RuntimeException e2) {
                    }
                }
                if (TextUtils.isEmpty(this.mTitle)) {
                    this.mTitle = FileUtils.getFileTitle(FileUtils.getFileName(path));
                }
                if (this.mDateTaken <= 0) {
                    this.mDateTaken = new File(path).lastModified();
                }
                dump("final result");
            } catch (RuntimeException e3) {
                e = e3;
                attrsRetriver = attrsRetriver2;
                try {
                    throw new VideoAttrsUnretrivableException(path, e);
                } catch (Throwable th2) {
                    th = th2;
                    if (attrsRetriver != null) {
                        try {
                            attrsRetriver.release();
                        } catch (RuntimeException e4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                attrsRetriver = attrsRetriver2;
                if (attrsRetriver != null) {
                }
                throw th;
            }
        } catch (RuntimeException e5) {
            e = e5;
            throw new VideoAttrsUnretrivableException(path, e);
        }
    }

    private long calculateTaken(String dateStr) {
        Date date = null;
        if (!TextUtils.isEmpty(dateStr)) {
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd'T'HHmmss.SSS'Z'");
            format.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                date = format.parse(dateStr);
            } catch (Exception e) {
                Log.i("VideoAttrsReader", "simple format error %s", (Object) dateStr);
                return new Time(dateStr).toMillis(true);
            }
        }
        if (date == null) {
            return 0;
        }
        return date.getTime();
    }

    private int parseIntSafely(String value) {
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private long parseLongSafely(String value) {
        try {
            return Long.parseLong(value);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private void dump(String msg) {
        StringBuilder sb = new StringBuilder();
        sb.append("msg=").append(msg).append("\r\n").append("file=").append(this.mPath).append("\r\n").append("title=").append(this.mTitle).append("\r\n").append("width=").append(this.mWidth).append("\r\n").append("height=").append(this.mHeight).append("\r\n").append("duration=").append(this.mDuration).append("\r\n").append("datataken=").append(this.mDateTaken);
        Log.d("VideoAttrsReader", sb.toString());
    }
}
