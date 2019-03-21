package cn.kuaipan.android.http;

import cn.kuaipan.android.utils.RandomFileInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.zip.DataFormatException;

public class DecoderInputStream extends FilterInputStream {
    private final byte[] buf;
    private boolean closed;
    private final IKscDecoder decoder;
    private boolean eof;
    private long markPos;
    private final long startPos;

    public DecoderInputStream(InputStream is, IKscDecoder decoder) {
        this(is, decoder, 512);
    }

    public DecoderInputStream(InputStream is, IKscDecoder decoder, int bsize) {
        super(is);
        this.markPos = -1;
        if (is == null || decoder == null) {
            throw new NullPointerException();
        } else if (bsize <= 0) {
            throw new IllegalArgumentException();
        } else {
            decoder.init();
            this.decoder = decoder;
            this.buf = new byte[bsize];
            if (this.in instanceof RandomFileInputStream) {
                this.startPos = ((RandomFileInputStream) this.in).getCurrentPos();
            } else {
                this.startPos = 0;
            }
        }
    }

    public int read() throws IOException {
        byte[] b = new byte[1];
        if (read(b, 0, 1) == -1) {
            return -1;
        }
        return b[0] & 255;
    }

    public int read(byte[] buffer, int off, int nbytes) throws IOException {
        if (this.closed) {
            throw new IOException("Stream is closed");
        } else if (buffer == null) {
            throw new NullPointerException();
        } else if (off < 0 || nbytes < 0 || off + nbytes > buffer.length) {
            throw new IndexOutOfBoundsException();
        } else if (nbytes == 0) {
            return 0;
        } else {
            if (off > buffer.length || nbytes < 0 || off < 0 || buffer.length - off < nbytes) {
                throw new ArrayIndexOutOfBoundsException();
            }
            try {
                fill();
                int result = this.decoder.readDecodeData(buffer, off, nbytes);
                if (result > 0) {
                    return result;
                }
                if (this.eof && this.decoder.canEnd()) {
                    return -1;
                }
                if (this.eof) {
                    throw new EOFException();
                }
                throw ((IOException) new IOException().initCause(new DataFormatException("Failed read data from decoder.")));
            } catch (DataFormatException e) {
                if (this.eof) {
                    throw new EOFException();
                }
                throw ((IOException) new IOException().initCause(e));
            }
        }
    }

    private void fill() throws IOException, DataFormatException {
        if (this.closed) {
            throw new IOException("Stream is closed");
        }
        int lastlen = Integer.MAX_VALUE;
        while (!this.eof) {
            int len = this.decoder.needFill();
            if (len <= 0) {
                return;
            }
            if (len > lastlen) {
                throw new DataFormatException("Needed data is increased");
            }
            lastlen = len;
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            len = this.in.read(this.buf, 0, Math.min(len, this.buf.length));
            if (len >= 0) {
                this.decoder.fillData(this.buf, 0, len);
            } else {
                this.eof = true;
            }
        }
    }

    public long skip(long nbytes) throws IOException {
        if (nbytes >= 0) {
            long count = 0;
            while (count < nbytes) {
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                long rem = nbytes - count;
                int x = read(this.buf, 0, rem > ((long) this.buf.length) ? this.buf.length : (int) rem);
                if (x == -1) {
                    break;
                }
                count += (long) x;
            }
            return count;
        }
        throw new IllegalArgumentException();
    }

    public int available() throws IOException {
        if (this.closed) {
            throw new IOException("Stream is closed");
        } else if (this.eof) {
            return 0;
        } else {
            return 1;
        }
    }

    public void close() throws IOException {
        if (!this.closed) {
            try {
                this.decoder.end();
            } finally {
                this.closed = true;
                this.eof = true;
                super.close();
            }
        }
    }

    public void mark(int readlimit) {
        if (this.in instanceof RandomFileInputStream) {
            this.markPos = ((RandomFileInputStream) this.in).getCurrentPos();
        }
    }

    public void reset() throws IOException {
        if (!markSupported()) {
            throw new IOException();
        } else if (this.markPos >= 0) {
            if (((RandomFileInputStream) this.in).getCurrentPos() > this.markPos) {
                this.eof = false;
            }
            ((RandomFileInputStream) this.in).moveToPos(this.markPos);
            this.decoder.init();
            this.decoder.skip(this.markPos - this.startPos);
        }
    }

    public boolean markSupported() {
        return (this.in instanceof RandomFileInputStream) && this.decoder.supportRepeat();
    }
}
