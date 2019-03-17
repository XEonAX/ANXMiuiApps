package com.xiaomi.scanner.camera.exif;

import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class ExifData {
    private static final Tag TAG = new Tag("ExifData");
    private static final byte[] USER_COMMENT_ASCII = new byte[]{(byte) 65, (byte) 83, (byte) 67, (byte) 73, (byte) 73, (byte) 0, (byte) 0, (byte) 0};
    private static final byte[] USER_COMMENT_JIS = new byte[]{(byte) 74, (byte) 73, (byte) 83, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0};
    private static final byte[] USER_COMMENT_UNICODE = new byte[]{(byte) 85, (byte) 78, (byte) 73, (byte) 67, (byte) 79, (byte) 68, (byte) 69, (byte) 0};
    private final ByteOrder mByteOrder;
    private final IfdData[] mIfdDatas = new IfdData[5];
    private ArrayList<byte[]> mStripBytes = new ArrayList();
    private byte[] mThumbnail;

    ExifData(ByteOrder order) {
        this.mByteOrder = order;
    }

    protected byte[] getCompressedThumbnail() {
        return this.mThumbnail;
    }

    protected void setCompressedThumbnail(byte[] thumbnail) {
        this.mThumbnail = thumbnail;
    }

    protected boolean hasCompressedThumbnail() {
        return this.mThumbnail != null;
    }

    protected void setStripBytes(int index, byte[] strip) {
        if (index < this.mStripBytes.size()) {
            this.mStripBytes.set(index, strip);
            return;
        }
        for (int i = this.mStripBytes.size(); i < index; i++) {
            this.mStripBytes.add(null);
        }
        this.mStripBytes.add(strip);
    }

    protected int getStripCount() {
        return this.mStripBytes.size();
    }

    protected byte[] getStrip(int index) {
        return (byte[]) this.mStripBytes.get(index);
    }

    protected boolean hasUncompressedStrip() {
        return this.mStripBytes.size() != 0;
    }

    protected ByteOrder getByteOrder() {
        return this.mByteOrder;
    }

    protected IfdData getIfdData(int ifdId) {
        if (ExifTag.isValidIfd(ifdId)) {
            return this.mIfdDatas[ifdId];
        }
        return null;
    }

    protected void addIfdData(IfdData data) {
        this.mIfdDatas[data.getId()] = data;
    }

    protected IfdData getOrCreateIfdData(int ifdId) {
        IfdData ifdData = this.mIfdDatas[ifdId];
        if (ifdData != null) {
            return ifdData;
        }
        ifdData = new IfdData(ifdId);
        this.mIfdDatas[ifdId] = ifdData;
        return ifdData;
    }

    protected ExifTag getTag(short tag, int ifd) {
        IfdData ifdData = this.mIfdDatas[ifd];
        return ifdData == null ? null : ifdData.getTag(tag);
    }

    protected ExifTag addTag(ExifTag tag) {
        if (tag != null) {
            return addTag(tag, tag.getIfd());
        }
        return null;
    }

    protected ExifTag addTag(ExifTag tag, int ifdId) {
        if (tag == null || !ExifTag.isValidIfd(ifdId)) {
            return null;
        }
        return getOrCreateIfdData(ifdId).setTag(tag);
    }

    protected void clearThumbnailAndStrips() {
        this.mThumbnail = null;
        this.mStripBytes.clear();
    }

    protected void removeThumbnailData() {
        clearThumbnailAndStrips();
        this.mIfdDatas[1] = null;
    }

    protected void removeTag(short tagId, int ifdId) {
        IfdData ifdData = this.mIfdDatas[ifdId];
        if (ifdData != null) {
            ifdData.removeTag(tagId);
        }
    }

    protected String getUserComment() {
        IfdData ifdData = this.mIfdDatas[0];
        if (ifdData == null) {
            return null;
        }
        ExifTag tag = ifdData.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_USER_COMMENT));
        if (tag == null || tag.getComponentCount() < 8) {
            return null;
        }
        byte[] buf = new byte[tag.getComponentCount()];
        tag.getBytes(buf);
        byte[] code = new byte[8];
        System.arraycopy(buf, 0, code, 0, 8);
        try {
            if (Arrays.equals(code, USER_COMMENT_ASCII)) {
                return new String(buf, 8, buf.length - 8, "US-ASCII");
            }
            if (Arrays.equals(code, USER_COMMENT_JIS)) {
                return new String(buf, 8, buf.length - 8, "EUC-JP");
            }
            if (Arrays.equals(code, USER_COMMENT_UNICODE)) {
                return new String(buf, 8, buf.length - 8, "UTF-16");
            }
            return null;
        } catch (UnsupportedEncodingException e) {
            Log.w(TAG, "Failed to decode the user comment");
            return null;
        }
    }

    protected List<ExifTag> getAllTags() {
        ArrayList<ExifTag> ret = new ArrayList();
        for (IfdData d : this.mIfdDatas) {
            if (d != null) {
                ExifTag[] tags = d.getAllTags();
                if (tags != null) {
                    for (ExifTag t : tags) {
                        ret.add(t);
                    }
                }
            }
        }
        return ret;
    }

    protected List<ExifTag> getAllTagsForIfd(int ifd) {
        IfdData d = this.mIfdDatas[ifd];
        if (d == null) {
            return null;
        }
        ExifTag[] tags = d.getAllTags();
        if (tags == null) {
            return null;
        }
        List<ExifTag> ret = new ArrayList(tags.length);
        for (ExifTag t : tags) {
            ret.add(t);
        }
        if (ret.size() == 0) {
            return null;
        }
        return ret;
    }

    protected List<ExifTag> getAllTagsForTagId(short tag) {
        ArrayList<ExifTag> ret = new ArrayList();
        for (IfdData d : this.mIfdDatas) {
            if (d != null) {
                ExifTag t = d.getTag(tag);
                if (t != null) {
                    ret.add(t);
                }
            }
        }
        if (ret.size() == 0) {
            return null;
        }
        return ret;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof ExifData)) {
            return false;
        }
        ExifData data = (ExifData) obj;
        if (data.mByteOrder != this.mByteOrder || data.mStripBytes.size() != this.mStripBytes.size() || !Arrays.equals(data.mThumbnail, this.mThumbnail)) {
            return false;
        }
        int i;
        for (i = 0; i < this.mStripBytes.size(); i++) {
            if (!Arrays.equals((byte[]) data.mStripBytes.get(i), (byte[]) this.mStripBytes.get(i))) {
                return false;
            }
        }
        for (i = 0; i < 5; i++) {
            IfdData ifd1 = data.getIfdData(i);
            IfdData ifd2 = getIfdData(i);
            if (ifd1 != ifd2 && ifd1 != null && !ifd1.equals(ifd2)) {
                return false;
            }
        }
        return true;
    }
}
