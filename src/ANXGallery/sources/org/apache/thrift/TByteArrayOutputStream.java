package org.apache.thrift;

import java.io.ByteArrayOutputStream;

public class TByteArrayOutputStream extends ByteArrayOutputStream {
    public TByteArrayOutputStream(int size) {
        super(size);
    }

    public byte[] get() {
        return this.buf;
    }

    public int len() {
        return this.count;
    }
}
