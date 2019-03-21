package com.miui.gallery.util;

import android.text.TextUtils;
import com.miui.gallery.util.MediaFile.MediaFileType;
import java.io.IOException;
import java.io.RandomAccessFile;

public class BaseFileMimeUtil {
    private static final Mime[] IMAGE_MIMES = new Mime[]{new Mime("image/jpeg", new byte[]{(byte) -1, (byte) -40}, new byte[]{(byte) -1, (byte) -39}), new Mime("image/jpeg", new byte[]{(byte) -1, (byte) -40}, new byte[]{(byte) 0, (byte) 0}), new Mime("image/png", new byte[]{(byte) -119, (byte) 80, (byte) 78, (byte) 71, (byte) 13, (byte) 10, (byte) 26, (byte) 10}, null), new Mime("image/tga", new byte[]{(byte) 0, (byte) 0, (byte) 2, (byte) 0, (byte) 0}, null), new Mime("image/tga", new byte[]{(byte) 0, (byte) 0, (byte) 16, (byte) 0, (byte) 0}, null), new Mime("image/gif", new byte[]{(byte) 71, (byte) 73, (byte) 70, (byte) 56, (byte) 55, (byte) 97}, null), new Mime("image/gif", new byte[]{(byte) 71, (byte) 73, (byte) 70, (byte) 56, (byte) 57, (byte) 97}, null), new Mime("image/bmp", new byte[]{(byte) 66, (byte) 77}, null), new Mime("image/tiff", new byte[]{(byte) 77, (byte) 77}, null), new Mime("image/tiff", new byte[]{(byte) 73, (byte) 73}, null), new Mime("image/webp", new byte[]{(byte) 82, (byte) 73}, null)};
    private static final int MAX_END_LENGTH;
    private static final int MAX_HEAD_LENGTH;
    protected static final Mime[] VIDEO_MIMES = new Mime[]{new Mime("video/3gpp", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 105, (byte) 115, (byte) 111, (byte) 109, (byte) 51, (byte) 103, (byte) 112, (byte) 52}, null), new Mime("video/mp4", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 24, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 105, (byte) 115, (byte) 111, (byte) 109}, null), new Mime("video/mp4", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 24, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 109, (byte) 112, (byte) 52, (byte) 50}, null), new Mime("video/mp4", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 24, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 51, (byte) 103, (byte) 112}, null), new Mime("video/3gp", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 28, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 51, (byte) 103, (byte) 112, (byte) 52}, null), new Mime("video/quicktime", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 20, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 113, (byte) 116}, null), new Mime("video/mp4", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 32, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 97, (byte) 118, (byte) 99, (byte) 49}, null), new Mime("video/quicktime", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 28, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 109, (byte) 112, (byte) 52, (byte) 50}, null), new Mime("video/mp4", new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 32, (byte) 102, (byte) 116, (byte) 121, (byte) 112, (byte) 105, (byte) 115, (byte) 111, (byte) 109}, null)};

    private static class Mime {
        private final byte[] mEnd;
        private final byte[] mHead;
        private final String mMime;

        public Mime(String mimeType, byte[] head, byte[] end) {
            this.mMime = mimeType;
            this.mHead = head;
            this.mEnd = end;
        }

        public boolean hasHead() {
            return this.mHead != null;
        }

        public boolean hasEnd() {
            return this.mEnd != null;
        }

        public String getMimeType() {
            return this.mMime;
        }

        public int getHeadLength() {
            return this.mHead.length;
        }

        public int getEndLength() {
            return this.mEnd.length;
        }

        public boolean isHeadRight(byte[] buf) {
            int length = this.mHead.length;
            for (int i = 0; i < length; i++) {
                if (buf[i] != this.mHead[i]) {
                    return false;
                }
            }
            return true;
        }

        public boolean isEndRight(byte[] buf) {
            int length = this.mEnd.length;
            int endIndex = 0;
            int bufIndex = buf.length - length;
            while (endIndex < length) {
                if (buf[bufIndex] != this.mEnd[endIndex]) {
                    return false;
                }
                endIndex++;
                bufIndex++;
            }
            return true;
        }
    }

    static {
        int h = 0;
        int e = 0;
        for (Mime mime : getMimes()) {
            if (mime.hasHead() && mime.getHeadLength() > h) {
                h = mime.getHeadLength();
            }
            if (mime.hasEnd() && mime.getEndLength() > e) {
                e = mime.getEndLength();
            }
        }
        MAX_HEAD_LENGTH = h;
        MAX_END_LENGTH = e;
    }

    protected static String rawGetMimeType(String path, Mime[] mimes) throws IOException {
        Throwable th;
        RandomAccessFile file = null;
        byte[] headBuffer = new byte[MAX_HEAD_LENGTH];
        byte[] endBuffer = new byte[MAX_END_LENGTH];
        try {
            RandomAccessFile file2 = new RandomAccessFile(path, "r");
            try {
                file2.seek(0);
                int headBufferedLength = file2.read(headBuffer, 0, headBuffer.length);
                long fileLength = file2.length();
                long endBufferedLength = Math.min((long) endBuffer.length, fileLength);
                if (endBufferedLength < 0 || endBufferedLength > 2147483647L) {
                    Log.e("BaseFileMimeUtil", String.format("unexpected error, endBufferedLength: %d, file length: %d", new Object[]{Long.valueOf(endBufferedLength), Long.valueOf(fileLength)}));
                    BaseMiscUtil.closeSilently(file2);
                    return null;
                } else if (endBufferedLength == 0) {
                    Log.d("BaseFileMimeUtil", "endBufferedLength is 0, just return null mime type");
                    BaseMiscUtil.closeSilently(file2);
                    return null;
                } else {
                    file2.seek(fileLength - endBufferedLength);
                    if (endBufferedLength != ((long) file2.read(endBuffer, 0, (int) endBufferedLength))) {
                        endBufferedLength = 0;
                    }
                    for (Mime mime : mimes) {
                        if ((!mime.hasHead() || (headBufferedLength >= mime.getHeadLength() && mime.isHeadRight(headBuffer))) && (!mime.hasEnd() || (endBufferedLength >= ((long) mime.getEndLength()) && mime.isEndRight(endBuffer)))) {
                            String mimeType = mime.getMimeType();
                            BaseMiscUtil.closeSilently(file2);
                            return mimeType;
                        }
                    }
                    BaseMiscUtil.closeSilently(file2);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                file = file2;
                BaseMiscUtil.closeSilently(file);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            BaseMiscUtil.closeSilently(file);
            throw th;
        }
    }

    private static Mime[] getMimes() {
        int length = IMAGE_MIMES.length + VIDEO_MIMES.length;
        Mime[] mimes = new Mime[length];
        for (int i = 0; i < length; i++) {
            if (i < IMAGE_MIMES.length) {
                mimes[i] = IMAGE_MIMES[i];
            } else {
                mimes[i] = VIDEO_MIMES[i - IMAGE_MIMES.length];
            }
        }
        return mimes;
    }

    public static String getMimeTypeByParseFile(String path) {
        String mimeType = "*/*";
        try {
            return rawGetMimeType(path, getMimes());
        } catch (Throwable e) {
            Log.w("BaseFileMimeUtil", e);
            return mimeType;
        }
    }

    public static String getMimeType(String path) {
        String mimeType = !TextUtils.isEmpty(path) ? MediaFile.getMimeTypeForFile(path) : "*/*";
        return TextUtils.isEmpty(mimeType) ? "*/*" : mimeType;
    }

    public static boolean isImageFromMimeType(String mimeType) {
        return TextUtils.isEmpty(mimeType) ? false : mimeType.startsWith("image");
    }

    public static boolean isVideoFromMimeType(String mimeType) {
        return TextUtils.isEmpty(mimeType) ? false : mimeType.startsWith("video");
    }

    public static boolean isGifFromMimeType(String mimeType) {
        return TextUtils.equals(mimeType, "image/gif");
    }

    public static boolean hasExif(String path) {
        MediaFileType fileType = MediaFile.getFileType(path);
        return fileType != null && fileType.fileType == 31;
    }
}
