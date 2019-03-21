package cn.kuaipan.android.http;

import java.io.IOException;
import java.io.InputStream;

public class BufferInputStream extends InputStream {
    private static final byte[] tempBuf = new byte[8192];
    private RandomInputBuffer buf;
    private int markpos = -1;
    private int pos;

    public BufferInputStream(RandomInputBuffer buffer) {
        this.buf = buffer;
    }

    public int available() throws IOException {
        if (this.buf != null) {
            return this.buf.available(this.pos);
        }
        throw streamClosed();
    }

    private IOException streamClosed() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public void close() throws IOException {
        this.buf = null;
    }

    public synchronized void mark(int readlimit) {
        this.markpos = this.pos;
    }

    public boolean markSupported() {
        return true;
    }

    public synchronized int read() throws IOException {
        int result;
        RandomInputBuffer localIn = this.buf;
        if (localIn == null) {
            throw streamClosed();
        }
        result = localIn.read(this.pos);
        if (result >= 0) {
            this.pos++;
        }
        return result;
    }

    public synchronized int read(byte[] buffer, int offset, int length) throws IOException {
        int result;
        RandomInputBuffer localIn = this.buf;
        if (localIn == null) {
            throw streamClosed();
        }
        result = localIn.read(this.pos, buffer, offset, length);
        if (result > 0) {
            this.pos += result;
        }
        return result;
    }

    public synchronized void reset() throws IOException {
        if (this.buf == null) {
            throw new IOException("Stream is closed");
        } else if (-1 == this.markpos) {
            throw new IOException("Mark has been invalidated.");
        } else {
            this.pos = this.markpos;
        }
    }

    public synchronized long skip(long amount) throws IOException {
        long j;
        if (amount < 1) {
            j = 0;
        } else {
            RandomInputBuffer localIn = this.buf;
            if (localIn == null) {
                throw streamClosed();
            }
            long dest = ((long) this.pos) + amount;
            int result = 0;
            while (dest > ((long) this.pos)) {
                int len = localIn.read(this.pos, tempBuf, 0, (int) Math.min((long) tempBuf.length, dest - ((long) this.pos)));
                if (len < 0) {
                    break;
                }
                this.pos += len;
                result += len;
            }
            j = (long) result;
        }
        return j;
    }
}
