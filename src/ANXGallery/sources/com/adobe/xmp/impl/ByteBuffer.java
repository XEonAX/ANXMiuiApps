package com.adobe.xmp.impl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.keyczar.Keyczar;

public class ByteBuffer {
    private byte[] buffer;
    private String encoding;
    private int length;

    public ByteBuffer(int initialCapacity) {
        this.encoding = null;
        this.buffer = new byte[initialCapacity];
        this.length = 0;
    }

    public ByteBuffer(byte[] buffer) {
        this.encoding = null;
        this.buffer = buffer;
        this.length = buffer.length;
    }

    public ByteBuffer(InputStream in) throws IOException {
        this.encoding = null;
        this.length = 0;
        this.buffer = new byte[16384];
        while (true) {
            int read = in.read(this.buffer, this.length, 16384);
            if (read > 0) {
                this.length += read;
                if (read == 16384) {
                    ensureCapacity(this.length + 16384);
                } else {
                    return;
                }
            }
            return;
        }
    }

    public InputStream getByteStream() {
        return new ByteArrayInputStream(this.buffer, 0, this.length);
    }

    public int length() {
        return this.length;
    }

    public int charAt(int index) {
        if (index < this.length) {
            return this.buffer[index] & 255;
        }
        throw new IndexOutOfBoundsException("The index exceeds the valid buffer area");
    }

    public void append(byte b) {
        ensureCapacity(this.length + 1);
        byte[] bArr = this.buffer;
        int i = this.length;
        this.length = i + 1;
        bArr[i] = b;
    }

    public void append(byte[] bytes, int offset, int len) {
        ensureCapacity(this.length + len);
        System.arraycopy(bytes, offset, this.buffer, this.length, len);
        this.length += len;
    }

    public void append(byte[] bytes) {
        append(bytes, 0, bytes.length);
    }

    public String getEncoding() {
        if (this.encoding == null) {
            if (this.length < 2) {
                this.encoding = Keyczar.DEFAULT_ENCODING;
            } else if (this.buffer[0] == (byte) 0) {
                if (this.length < 4 || this.buffer[1] != (byte) 0) {
                    this.encoding = "UTF-16BE";
                } else if ((this.buffer[2] & 255) == 254 && (this.buffer[3] & 255) == 255) {
                    this.encoding = "UTF-32BE";
                } else {
                    this.encoding = "UTF-32";
                }
            } else if ((this.buffer[0] & 255) < 128) {
                if (this.buffer[1] != (byte) 0) {
                    this.encoding = Keyczar.DEFAULT_ENCODING;
                } else if (this.length < 4 || this.buffer[2] != (byte) 0) {
                    this.encoding = "UTF-16LE";
                } else {
                    this.encoding = "UTF-32LE";
                }
            } else if ((this.buffer[0] & 255) == 239) {
                this.encoding = Keyczar.DEFAULT_ENCODING;
            } else if ((this.buffer[0] & 255) == 254) {
                this.encoding = "UTF-16";
            } else if (this.length < 4 || this.buffer[2] != (byte) 0) {
                this.encoding = "UTF-16";
            } else {
                this.encoding = "UTF-32";
            }
        }
        return this.encoding;
    }

    private void ensureCapacity(int requestedLength) {
        if (requestedLength > this.buffer.length) {
            byte[] oldBuf = this.buffer;
            this.buffer = new byte[(oldBuf.length * 2)];
            System.arraycopy(oldBuf, 0, this.buffer, 0, oldBuf.length);
        }
    }
}
