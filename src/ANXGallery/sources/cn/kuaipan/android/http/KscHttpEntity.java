package cn.kuaipan.android.http;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

public class KscHttpEntity extends HttpEntityWrapper {
    private final IKscDecoder mDecoder;

    public KscHttpEntity(HttpEntity wrapped, IKscDecoder decoder) {
        super(wrapped);
        this.mDecoder = decoder;
    }

    public InputStream getContent() throws IOException {
        if (this.mDecoder == null) {
            return super.getContent();
        }
        return new DecoderInputStream(super.getContent(), this.mDecoder);
    }

    public void writeTo(OutputStream outstream) throws IOException {
        if (outstream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        InputStream instream = getContent();
        byte[] tmp = new byte[4096];
        while (true) {
            int l = instream.read(tmp);
            if (l != -1) {
                outstream.write(tmp, 0, l);
            } else {
                return;
            }
        }
    }

    public static KscHttpEntity getRepeatableEntity(HttpEntity entity, IKscDecoder decoder, NetCacheManager cache) {
        if (entity == null) {
            return null;
        }
        return new KscHttpEntity(getRepeatable(entity, cache), decoder);
    }

    private static HttpEntity getRepeatable(HttpEntity entity, NetCacheManager cache) {
        return (entity == null || entity.isRepeatable()) ? entity : new KscBufferedHttpEntity(entity, cache);
    }
}
