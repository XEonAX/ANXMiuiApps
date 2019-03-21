package org.apache.thrift.transport;

import java.io.InputStream;
import java.io.OutputStream;

public class TIOStreamTransport extends TTransport {
    protected InputStream inputStream_ = null;
    protected OutputStream outputStream_ = null;

    protected TIOStreamTransport() {
    }

    public TIOStreamTransport(OutputStream os) {
        this.outputStream_ = os;
    }

    public int read(byte[] buf, int off, int len) throws TTransportException {
        if (this.inputStream_ == null) {
            throw new TTransportException(1, "Cannot read from null inputStream");
        }
        try {
            int bytesRead = this.inputStream_.read(buf, off, len);
            if (bytesRead >= 0) {
                return bytesRead;
            }
            throw new TTransportException(4);
        } catch (Throwable iox) {
            throw new TTransportException(0, iox);
        }
    }

    public void write(byte[] buf, int off, int len) throws TTransportException {
        if (this.outputStream_ == null) {
            throw new TTransportException(1, "Cannot write to null outputStream");
        }
        try {
            this.outputStream_.write(buf, off, len);
        } catch (Throwable iox) {
            throw new TTransportException(0, iox);
        }
    }
}
