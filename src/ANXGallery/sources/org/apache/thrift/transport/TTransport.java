package org.apache.thrift.transport;

public abstract class TTransport {
    public abstract int read(byte[] bArr, int i, int i2) throws TTransportException;

    public abstract void write(byte[] bArr, int i, int i2) throws TTransportException;

    public int readAll(byte[] buf, int off, int len) throws TTransportException {
        int got = 0;
        while (got < len) {
            int ret = read(buf, off + got, len - got);
            if (ret <= 0) {
                throw new TTransportException("Cannot read. Remote side has closed. Tried to read " + len + " bytes, but only got " + got + " bytes.");
            }
            got += ret;
        }
        return got;
    }

    public byte[] getBuffer() {
        return null;
    }

    public int getBufferPosition() {
        return 0;
    }

    public int getBytesRemainingInBuffer() {
        return -1;
    }

    public void consumeBuffer(int len) {
    }
}
