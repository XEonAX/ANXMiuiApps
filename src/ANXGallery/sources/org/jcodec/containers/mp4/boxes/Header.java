package org.jcodec.containers.mp4.boxes;

import java.nio.ByteBuffer;
import org.jcodec.common.JCodecUtil2;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.platform.Platform;

public class Header {
    public static final byte[] FOURCC_FREE = new byte[]{(byte) 102, (byte) 114, (byte) 101, (byte) 101};
    private String fourcc;
    private boolean lng;
    private long size;

    public Header(String fourcc) {
        this.fourcc = fourcc;
    }

    public static Header createHeader(String fourcc, long size) {
        Header header = new Header(fourcc);
        header.size = size;
        return header;
    }

    public static Header newHeader(String fourcc, long size, boolean lng) {
        Header header = new Header(fourcc);
        header.size = size;
        header.lng = lng;
        return header;
    }

    public static Header read(ByteBuffer input) {
        long size = 0;
        while (input.remaining() >= 4) {
            size = Platform.unsignedInt(input.getInt());
            if (size != 0) {
                break;
            }
        }
        if (input.remaining() < 4) {
            return null;
        }
        if (size < 8 && size != 1) {
            return null;
        }
        String fourcc = NIOUtils.readString(input, 4);
        boolean lng = false;
        if (size == 1) {
            if (input.remaining() < 8) {
                return null;
            }
            lng = true;
            size = input.getLong();
        }
        return newHeader(fourcc, size, lng);
    }

    public long headerSize() {
        return (this.lng || this.size > 4294967296L) ? 16 : 8;
    }

    public static int estimateHeaderSize(int size) {
        return ((long) (size + 8)) > 4294967296L ? 16 : 8;
    }

    public String getFourcc() {
        return this.fourcc;
    }

    public long getBodySize() {
        return this.size - headerSize();
    }

    public void setBodySize(int length) {
        this.size = ((long) length) + headerSize();
    }

    public void write(ByteBuffer out) {
        if (this.size > 4294967296L) {
            out.putInt(1);
        } else {
            out.putInt((int) this.size);
        }
        byte[] bt = JCodecUtil2.asciiString(this.fourcc);
        if (bt == null || bt.length != 4) {
            out.put(FOURCC_FREE);
        } else {
            out.put(bt);
        }
        if (this.size > 4294967296L) {
            out.putLong(this.size);
        }
    }

    public long getSize() {
        return this.size;
    }

    public int hashCode() {
        return (this.fourcc == null ? 0 : this.fourcc.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        Header other = (Header) obj;
        if (this.fourcc == null) {
            if (other.fourcc != null) {
                return false;
            }
            return true;
        } else if (this.fourcc.equals(other.fourcc)) {
            return true;
        } else {
            return false;
        }
    }
}
