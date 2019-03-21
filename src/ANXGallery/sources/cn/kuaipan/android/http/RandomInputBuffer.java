package cn.kuaipan.android.http;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;

public class RandomInputBuffer {
    private byte[] buf;
    private File bufFile;
    private final NetCacheManager cache;
    private boolean eof;
    private RandomAccessFile file;
    private boolean fileAssigned;
    private InputStream in;
    private int pos;

    public RandomInputBuffer(InputStream in, NetCacheManager cache) {
        if (cache == null || in == null) {
            throw new IllegalArgumentException("InputStream & NetCacheManager can not be null.");
        }
        this.in = in;
        this.cache = cache;
        this.buf = new byte[8192];
        this.pos = 0;
        this.eof = false;
    }

    public synchronized int available(int pos) throws IOException {
        int result;
        if (this.in == null) {
            throw new IOException("RandomInputBuffer has been closed.");
        } else if (this.eof) {
            result = this.pos - pos;
        } else {
            result = (this.in.available() + this.pos) - pos;
        }
        return result;
    }

    public synchronized void close() throws IOException {
        if (this.in != null) {
            this.in.close();
            this.in = null;
        }
        if (this.file != null) {
            this.file.close();
            this.file = null;
        }
        if (this.bufFile != null) {
            this.cache.releaseCache(this.bufFile);
            this.bufFile = null;
        }
        this.buf = null;
        this.pos = 0;
        this.eof = false;
    }

    public int read(int from) throws IOException {
        byte[] result = new byte[1];
        if (read(from, result) > 0) {
            return result[0];
        }
        return -1;
    }

    public int read(int from, byte[] buffer) throws IOException {
        return read(from, buffer, 0, buffer.length);
    }

    public synchronized int read(int from, byte[] buffer, int offset, int length) throws IOException {
        int i;
        if (this.in == null) {
            throw new IOException("RandomInputBuffer has been closed.");
        } else if (buffer == null) {
            throw new NullPointerException("buffer == null");
        } else if ((offset | length) < 0 || offset > buffer.length - length) {
            throw new IndexOutOfBoundsException();
        } else if (length == 0) {
            i = 0;
        } else {
            int dest = from + length;
            if (dest > this.pos) {
                fillBuf(dest);
            }
            i = readFromBuf(from, buffer, offset, length);
        }
        return i;
    }

    private int readFromBuf(int from, byte[] buffer, int offset, int length) throws IOException {
        if (length == 0) {
            return 0;
        }
        if (this.eof && from >= this.pos) {
            return -1;
        }
        if (from > this.pos) {
            throw new IndexOutOfBoundsException("from > pos");
        } else if (from == this.pos) {
            return 0;
        } else {
            int result = Math.min(this.pos - from, length);
            if (this.file == null) {
                System.arraycopy(this.buf, from, buffer, offset, result);
                return result;
            }
            this.file.seek((long) from);
            return this.file.read(buffer, offset, result);
        }
    }

    private void fillBuf(int dest) throws IOException {
        if (!this.eof && dest > this.pos) {
            if (dest % 8192 != 0) {
                dest = ((dest / 8192) * 8192) + 8192;
            }
            if (!this.fileAssigned && dest > this.buf.length) {
                this.fileAssigned = true;
                try {
                    this.bufFile = this.cache.assignCache();
                    if (this.bufFile != null) {
                        this.file = new RandomAccessFile(this.bufFile, "rw");
                        this.file.write(this.buf, 0, this.pos);
                    }
                } catch (InterruptedIOException e) {
                    throw e;
                } catch (Exception e2) {
                    try {
                        if (this.file != null) {
                            this.file.close();
                        }
                    } catch (InterruptedIOException e1) {
                        throw e1;
                    } catch (Exception e3) {
                    }
                    this.file = null;
                }
            }
            int bytesread;
            if (this.file == null) {
                if (dest > this.buf.length) {
                    int newLength = this.buf.length * 2;
                    while (newLength < dest) {
                        newLength *= 2;
                    }
                    byte[] newbuf = new byte[newLength];
                    System.arraycopy(this.buf, 0, newbuf, 0, this.buf.length);
                    this.buf = newbuf;
                }
                bytesread = this.in.read(this.buf, this.pos, Math.min(this.buf.length - this.pos, dest - this.pos));
                if (bytesread >= 0) {
                    this.pos += bytesread;
                    return;
                } else {
                    this.eof = true;
                    return;
                }
            }
            bytesread = this.in.read(this.buf, 0, Math.min(this.buf.length, dest - this.pos));
            if (bytesread >= 0) {
                this.file.seek((long) this.pos);
                this.file.write(this.buf, 0, bytesread);
                this.pos += bytesread;
                return;
            }
            this.eof = true;
        }
    }
}
