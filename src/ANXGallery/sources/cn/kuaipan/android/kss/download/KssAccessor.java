package cn.kuaipan.android.kss.download;

import cn.kuaipan.android.utils.Encode;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.concurrent.locks.ReentrantLock;

public class KssAccessor {
    private boolean mClosed = false;
    private RandomAccessFile mFileAccessor;
    private FileLock mFilelocker;
    private final ReentrantLock mLocker = new ReentrantLock();

    public KssAccessor(File file) throws IOException {
        this.mFileAccessor = new RandomAccessFile(file, "rws");
        this.mFilelocker = this.mFileAccessor.getChannel().tryLock();
        if (this.mFilelocker == null) {
            throw new IOException("Failed Lock the target file: " + file);
        }
    }

    public void lock() {
        this.mLocker.lock();
    }

    public void unlock() {
        this.mLocker.unlock();
    }

    public String sha1(long start, long len) throws IOException {
        if (this.mClosed) {
            throw new IOException();
        }
        lock();
        try {
            String SHA1Encode = Encode.SHA1Encode(this.mFileAccessor, start, len);
            return SHA1Encode;
        } finally {
            unlock();
        }
    }

    public int write(byte[] buffer, int offset, int count, LoadRecorder recorder) throws IOException {
        if (this.mClosed) {
            throw new IOException();
        } else if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException();
        } else {
            lock();
            if (recorder != null) {
                try {
                    this.mFileAccessor.seek(recorder.getStart());
                    count = (int) Math.min((long) count, recorder.size());
                } catch (Throwable th) {
                    unlock();
                }
            }
            this.mFileAccessor.write(buffer, offset, count);
            if (recorder != null) {
                recorder.add(count);
            }
            unlock();
            return count;
        }
    }

    public void inflate(long targetSize) throws IOException {
        if (this.mClosed) {
            throw new IOException();
        }
        lock();
        try {
            this.mFileAccessor.seek(targetSize - 1);
            this.mFileAccessor.write(0);
        } finally {
            unlock();
        }
    }

    /* JADX WARNING: Missing block: B:17:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void close() throws IOException {
        if (!this.mClosed) {
            this.mClosed = true;
            try {
                if (this.mFilelocker != null) {
                    this.mFilelocker.release();
                    this.mFilelocker = null;
                }
                if (this.mFileAccessor != null) {
                    this.mFileAccessor.close();
                    this.mFileAccessor = null;
                }
            } catch (Throwable th) {
                if (this.mFileAccessor != null) {
                    this.mFileAccessor.close();
                    this.mFileAccessor = null;
                }
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }
}
