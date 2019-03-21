package cn.kuaipan.android.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;

public class RandomFileInputStream extends InputStream {
    private boolean closed = false;
    private final File file;
    private long markedPos = 0;
    private long pos = 0;
    private RandomAccessFile rFile;

    public RandomFileInputStream(File file) throws FileNotFoundException {
        this.file = file;
        this.rFile = new RandomAccessFile(file, "r");
    }

    public synchronized int read() throws IOException {
        int result;
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException();
        }
        result = this.rFile.read();
        if (result >= 0) {
            this.pos++;
        }
        return result;
    }

    public synchronized int available() throws IOException {
        return (int) (this.rFile.length() - this.pos);
    }

    public synchronized void close() throws IOException {
        this.rFile.close();
        this.closed = true;
    }

    public synchronized void moveToPos(long pos) throws IOException {
        if (pos < this.rFile.length()) {
            this.rFile.seek(pos);
            this.pos = pos;
        } else {
            throw new IOException("Seek possion is not availabel");
        }
    }

    public synchronized long getCurrentPos() {
        return this.pos;
    }

    public void mark(int readlimit) {
        if (!this.closed) {
            this.markedPos = this.pos;
        }
    }

    public boolean markSupported() {
        return true;
    }

    public synchronized int read(byte[] b) throws IOException {
        int result;
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException();
        }
        result = this.rFile.read(b);
        if (result > 0) {
            this.pos += (long) result;
        }
        return result;
    }

    public synchronized int read(byte[] b, int offset, int length) throws IOException {
        int result;
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException();
        }
        result = this.rFile.read(b, offset, length);
        if (result > 0) {
            this.pos += (long) result;
        }
        return result;
    }

    public synchronized void reset() throws IOException {
        if (this.closed) {
            this.closed = false;
            this.rFile = new RandomAccessFile(this.file, "r");
        }
        this.rFile.seek(this.markedPos);
        this.pos = this.markedPos;
    }

    public long skip(long count) throws IOException {
        if (count == 0) {
            return 0;
        }
        if (count < 0) {
            throw new IOException("Number of bytes to skip cannot be negative");
        }
        long skipped = 0;
        int chunk = count < 8192 ? (int) count : 8192;
        synchronized (this) {
            for (long i = count / ((long) chunk); i >= 0; i--) {
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                long numSkip = (long) this.rFile.skipBytes(chunk);
                skipped += numSkip;
                this.pos += numSkip;
                if (numSkip < ((long) chunk)) {
                    return skipped;
                }
            }
            return skipped;
        }
    }
}
