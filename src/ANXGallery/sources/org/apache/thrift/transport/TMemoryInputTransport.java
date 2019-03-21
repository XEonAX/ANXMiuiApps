package org.apache.thrift.transport;

public final class TMemoryInputTransport extends TTransport {
    private byte[] buf_;
    private int endPos_;
    private int pos_;

    public void reset(byte[] buf) {
        reset(buf, 0, buf.length);
    }

    public void reset(byte[] buf, int offset, int length) {
        this.buf_ = buf;
        this.pos_ = offset;
        this.endPos_ = offset + length;
    }

    public int read(byte[] buf, int off, int len) throws TTransportException {
        int amtToRead;
        int bytesRemaining = getBytesRemainingInBuffer();
        if (len > bytesRemaining) {
            amtToRead = bytesRemaining;
        } else {
            amtToRead = len;
        }
        if (amtToRead > 0) {
            System.arraycopy(this.buf_, this.pos_, buf, off, amtToRead);
            consumeBuffer(amtToRead);
        }
        return amtToRead;
    }

    public void write(byte[] buf, int off, int len) throws TTransportException {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    public byte[] getBuffer() {
        return this.buf_;
    }

    public int getBufferPosition() {
        return this.pos_;
    }

    public int getBytesRemainingInBuffer() {
        return this.endPos_ - this.pos_;
    }

    public void consumeBuffer(int len) {
        this.pos_ += len;
    }
}
