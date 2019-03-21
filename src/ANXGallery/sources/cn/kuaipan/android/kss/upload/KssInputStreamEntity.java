package cn.kuaipan.android.kss.upload;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.InputStreamEntity;

public class KssInputStreamEntity extends InputStreamEntity {
    private final InputStream content;

    public KssInputStreamEntity(InputStream instream, long length) {
        super(instream, length);
        instream.mark((int) Math.min(2147483647L, length));
        this.content = instream;
    }

    public boolean isRepeatable() {
        return super.isRepeatable() || this.content.markSupported();
    }

    public InputStream getContent() throws IOException {
        this.content.reset();
        return super.getContent();
    }

    public void writeTo(OutputStream outstream) throws IOException {
        this.content.reset();
        super.writeTo(outstream);
    }
}
