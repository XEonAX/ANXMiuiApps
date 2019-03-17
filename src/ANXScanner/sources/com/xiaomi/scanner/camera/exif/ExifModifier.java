package com.xiaomi.scanner.camera.exif;

import com.xiaomi.scanner.debug.Log.Tag;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

class ExifModifier {
    public static final boolean DEBUG = false;
    public static final Tag TAG = new Tag("ExifModifier");
    private final ByteBuffer mByteBuffer;
    private final ExifInterface mInterface;
    private int mOffsetBase;
    private final List<TagOffset> mTagOffsets = new ArrayList();
    private final ExifData mTagToModified;

    private static class TagOffset {
        final int mOffset;
        final ExifTag mTag;

        TagOffset(ExifTag tag, int offset) {
            this.mTag = tag;
            this.mOffset = offset;
        }
    }

    protected ExifModifier(ByteBuffer byteBuffer, ExifInterface iRef) throws IOException, ExifInvalidFormatException {
        Throwable th;
        this.mByteBuffer = byteBuffer;
        this.mOffsetBase = byteBuffer.position();
        this.mInterface = iRef;
        InputStream is = null;
        try {
            InputStream is2 = new ByteBufferInputStream(byteBuffer);
            try {
                ExifParser parser = ExifParser.parse(is2, this.mInterface);
                this.mTagToModified = new ExifData(parser.getByteOrder());
                this.mOffsetBase += parser.getTiffStartPosition();
                this.mByteBuffer.position(0);
                ExifInterface.closeSilently(is2);
            } catch (Throwable th2) {
                th = th2;
                is = is2;
                ExifInterface.closeSilently(is);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            ExifInterface.closeSilently(is);
            throw th;
        }
    }

    protected ByteOrder getByteOrder() {
        return this.mTagToModified.getByteOrder();
    }

    protected boolean commit() throws IOException, ExifInvalidFormatException {
        Throwable th;
        InputStream is = null;
        try {
            InputStream is2 = new ByteBufferInputStream(this.mByteBuffer);
            int flag = 0;
            try {
                IfdData[] ifdDatas = new IfdData[]{this.mTagToModified.getIfdData(0), this.mTagToModified.getIfdData(1), this.mTagToModified.getIfdData(2), this.mTagToModified.getIfdData(3), this.mTagToModified.getIfdData(4)};
                if (ifdDatas[0] != null) {
                    flag = 0 | 1;
                }
                if (ifdDatas[1] != null) {
                    flag |= 2;
                }
                if (ifdDatas[2] != null) {
                    flag |= 4;
                }
                if (ifdDatas[4] != null) {
                    flag |= 8;
                }
                if (ifdDatas[3] != null) {
                    flag |= 16;
                }
                ExifParser parser = ExifParser.parse(is2, flag, this.mInterface);
                IfdData currIfd = null;
                for (int event = parser.next(); event != 5; event = parser.next()) {
                    switch (event) {
                        case 0:
                            currIfd = ifdDatas[parser.getCurrentIfd()];
                            if (currIfd != null) {
                                break;
                            }
                            parser.skipRemainingTagsInCurrentIfd();
                            break;
                        case 1:
                            ExifTag oldTag = parser.getTag();
                            ExifTag newTag = currIfd.getTag(oldTag.getTagId());
                            if (newTag != null) {
                                if (newTag.getComponentCount() == oldTag.getComponentCount() && newTag.getDataType() == oldTag.getDataType()) {
                                    this.mTagOffsets.add(new TagOffset(newTag, oldTag.getOffset()));
                                    currIfd.removeTag(oldTag.getTagId());
                                    if (currIfd.getTagCount() != 0) {
                                        break;
                                    }
                                    parser.skipRemainingTagsInCurrentIfd();
                                    break;
                                }
                                ExifInterface.closeSilently(is2);
                                return false;
                            }
                            continue;
                            break;
                        default:
                            break;
                    }
                }
                int length = ifdDatas.length;
                int i = 0;
                while (i < length) {
                    IfdData ifd = ifdDatas[i];
                    if (ifd == null || ifd.getTagCount() <= 0) {
                        i++;
                    } else {
                        ExifInterface.closeSilently(is2);
                        return false;
                    }
                }
                modify();
                ExifInterface.closeSilently(is2);
                return true;
            } catch (Throwable th2) {
                th = th2;
                is = is2;
                ExifInterface.closeSilently(is);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            ExifInterface.closeSilently(is);
            throw th;
        }
    }

    private void modify() {
        this.mByteBuffer.order(getByteOrder());
        for (TagOffset tagOffset : this.mTagOffsets) {
            writeTagValue(tagOffset.mTag, tagOffset.mOffset);
        }
    }

    private void writeTagValue(ExifTag tag, int offset) {
        this.mByteBuffer.position(this.mOffsetBase + offset);
        byte[] buf;
        int n;
        int i;
        switch (tag.getDataType()) {
            case (short) 1:
            case (short) 7:
                buf = new byte[tag.getComponentCount()];
                tag.getBytes(buf);
                this.mByteBuffer.put(buf);
                return;
            case (short) 2:
                buf = tag.getStringByte();
                if (buf.length == tag.getComponentCount()) {
                    buf[buf.length - 1] = (byte) 0;
                    this.mByteBuffer.put(buf);
                    return;
                }
                this.mByteBuffer.put(buf);
                this.mByteBuffer.put((byte) 0);
                return;
            case (short) 3:
                n = tag.getComponentCount();
                for (i = 0; i < n; i++) {
                    this.mByteBuffer.putShort((short) ((int) tag.getValueAt(i)));
                }
                return;
            case (short) 4:
            case (short) 9:
                n = tag.getComponentCount();
                for (i = 0; i < n; i++) {
                    this.mByteBuffer.putInt((int) tag.getValueAt(i));
                }
                return;
            case (short) 5:
            case (short) 10:
                n = tag.getComponentCount();
                for (i = 0; i < n; i++) {
                    Rational v = tag.getRational(i);
                    this.mByteBuffer.putInt((int) v.getNumerator());
                    this.mByteBuffer.putInt((int) v.getDenominator());
                }
                return;
            default:
                return;
        }
    }

    public void modifyTag(ExifTag tag) {
        this.mTagToModified.addTag(tag);
    }
}
