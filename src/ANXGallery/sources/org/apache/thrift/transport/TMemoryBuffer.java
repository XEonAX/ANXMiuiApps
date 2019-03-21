package org.apache.thrift.transport;

import org.apache.thrift.TByteArrayOutputStream;

public class TMemoryBuffer extends TTransport {
    private TByteArrayOutputStream arr_;
    private int pos_;

    public TMemoryBuffer(int size) {
        this.arr_ = new TByteArrayOutputStream(size);
    }

    public int read(byte[] buf, int off, int len) {
        int amtToRead;
        byte[] src = this.arr_.get();
        if (len > this.arr_.len() - this.pos_) {
            amtToRead = this.arr_.len() - this.pos_;
        } else {
            amtToRead = len;
        }
        if (amtToRead > 0) {
            System.arraycopy(src, this.pos_, buf, off, amtToRead);
            this.pos_ += amtToRead;
        }
        return amtToRead;
    }

    public void write(byte[] buf, int off, int len) {
        this.arr_.write(buf, off, len);
    }

    public int length() {
        return this.arr_.size();
    }
}
