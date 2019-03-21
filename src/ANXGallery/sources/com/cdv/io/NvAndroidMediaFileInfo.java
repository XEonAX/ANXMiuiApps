package com.cdv.io;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import com.nexstreaming.nexeditorsdk.nexExportFormat;

public class NvAndroidMediaFileInfo {

    public static class MediaInfo {
        long audioStreamDurationUs = 0;
        int channelCount = 0;
        int frameRate = 0;
        boolean hasAudioStream = false;
        boolean hasVideoStream = false;
        int height = 0;
        int rotation = 0;
        int sampleRate = 0;
        long videoStreamDurationUs = 0;
        int width = 0;

        MediaInfo() {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00cd  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static MediaInfo getMediaInfoFromFile(String str, AssetManager assetManager) {
        MediaExtractor mediaExtractor;
        Exception e;
        Throwable th;
        MediaExtractor mediaExtractor2 = null;
        try {
            MediaExtractor mediaExtractor3 = new MediaExtractor();
            if (assetManager == null) {
                try {
                    mediaExtractor3.setDataSource(str);
                } catch (Exception e2) {
                    Exception exception = e2;
                    mediaExtractor = mediaExtractor3;
                    e = exception;
                    try {
                        e.printStackTrace();
                        if (mediaExtractor != null) {
                            mediaExtractor.release();
                        }
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        mediaExtractor2 = mediaExtractor;
                        if (mediaExtractor2 != null) {
                            mediaExtractor2.release();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    mediaExtractor2 = mediaExtractor3;
                    th = th3;
                    if (mediaExtractor2 != null) {
                    }
                    throw th;
                }
            }
            AssetFileDescriptor openFd = assetManager.openFd(str);
            mediaExtractor3.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
            openFd.close();
            int trackCount = mediaExtractor3.getTrackCount();
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < trackCount; i3++) {
                String string = mediaExtractor3.getTrackFormat(i3).getString("mime");
                if (string.startsWith("video/")) {
                    i2 = i3;
                } else if (string.startsWith("audio/")) {
                    i = i3;
                }
            }
            MediaInfo mediaInfo = new MediaInfo();
            if (i2 >= 0) {
                MediaFormat trackFormat = mediaExtractor3.getTrackFormat(i2);
                mediaInfo.videoStreamDurationUs = trackFormat.getLong("durationUs");
                mediaInfo.width = trackFormat.getInteger(nexExportFormat.TAG_FORMAT_WIDTH);
                mediaInfo.height = trackFormat.getInteger(nexExportFormat.TAG_FORMAT_HEIGHT);
                if (trackFormat.containsKey("rotation-degrees")) {
                    mediaInfo.rotation = trackFormat.getInteger("rotation-degrees");
                }
                if (trackFormat.containsKey("frame-rate")) {
                    mediaInfo.frameRate = trackFormat.getInteger("frame-rate");
                }
                mediaInfo.hasVideoStream = true;
            }
            if (i >= 0) {
                MediaFormat trackFormat2 = mediaExtractor3.getTrackFormat(i);
                mediaInfo.audioStreamDurationUs = trackFormat2.getLong("durationUs");
                mediaInfo.channelCount = trackFormat2.getInteger("channel-count");
                mediaInfo.sampleRate = trackFormat2.getInteger("sample-rate");
                mediaInfo.hasAudioStream = true;
            }
            if (mediaExtractor3 != null) {
                mediaExtractor3.release();
            }
            return mediaInfo;
        } catch (Exception e3) {
            e = e3;
            mediaExtractor = null;
            e.printStackTrace();
            if (mediaExtractor != null) {
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            if (mediaExtractor2 != null) {
            }
            throw th;
        }
    }
}
