package cn.kuaipan.android.http;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

public class KscBufferedHttpEntity extends HttpEntityWrapper {
    private final RandomInputBuffer buffer;
    private final IOException err;

    public KscBufferedHttpEntity(HttpEntity entity, NetCacheManager cache) {
        super(entity);
        IOException err = null;
        if (!entity.isRepeatable() || entity.getContentLength() < 0) {
            RandomInputBuffer buffer = null;
            try {
                buffer = new RandomInputBuffer(entity.getContent(), cache);
            } catch (IOException e) {
                err = e;
            }
            this.buffer = buffer;
        } else {
            this.buffer = null;
        }
        this.err = err;
    }

    public long getContentLength() {
        return this.wrappedEntity.getContentLength();
    }

    public InputStream getContent() throws IOException {
        if (this.buffer != null) {
            return new BufferInputStream(this.buffer);
        }
        if (this.err == null) {
            return this.wrappedEntity.getContent();
        }
        throw this.err;
    }

    public boolean isChunked() {
        return this.buffer == null && this.wrappedEntity.isChunked();
    }

    public boolean isRepeatable() {
        return true;
    }

    public void writeTo(OutputStream outstream) throws IOException {
        if (outstream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        } else if (this.buffer != null) {
            InputStream instream = null;
            try {
                instream = getContent();
                byte[] tmp = new byte[4096];
                while (true) {
                    int l = instream.read(tmp);
                    if (l == -1) {
                        break;
                    }
                    outstream.write(tmp, 0, l);
                }
            } finally {
                if (instream != null) {
                    instream.close();
                }
            }
        } else {
            this.wrappedEntity.writeTo(outstream);
        }
    }

    public boolean isStreaming() {
        return this.buffer == null && this.wrappedEntity.isStreaming();
    }

    public void consumeContent() throws IOException {
        if (this.buffer != null) {
            this.buffer.close();
        }
        super.consumeContent();
    }
}
