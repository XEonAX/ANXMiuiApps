package cn.kuaipan.android.http.multipart;

import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.util.EncodingUtils;

public class FilePart extends PartBase {
    private static final byte[] FILE_NAME_BYTES = EncodingUtils.getAsciiBytes("; filename=");
    private PartSource source;

    public FilePart(String name, PartSource partSource, String contentType, String charset) {
        if (contentType == null) {
            contentType = "application/octet-stream";
        }
        if (charset == null) {
            charset = "ISO-8859-1";
        }
        super(name, contentType, charset, "binary");
        if (partSource == null) {
            throw new IllegalArgumentException("Source may not be null");
        }
        this.source = partSource;
    }

    public FilePart(String name, File file) throws FileNotFoundException {
        this(name, new FilePartSource(file), null, null);
    }

    public FilePart(String name, String fileName, byte[] data) {
        this(name, new ByteArrayPartSource(fileName, data), null, null);
    }

    protected void sendDispositionHeader(OutputStream out) throws IOException {
        super.sendDispositionHeader(out);
        String filename = this.source.getFileName();
        if (filename != null) {
            out.write(FILE_NAME_BYTES);
            out.write(QUOTE_BYTES);
            out.write(EncodingUtils.getAsciiBytes(filename));
            out.write(QUOTE_BYTES);
        }
    }

    protected void sendData(OutputStream out) throws IOException {
        if (lengthOfData() == 0) {
            Log.d("FilePart", "No data to send.");
            return;
        }
        byte[] tmp = new byte[4096];
        InputStream instream = this.source.createInputStream();
        while (true) {
            try {
                int len = instream.read(tmp);
                if (len < 0) {
                    break;
                }
                out.write(tmp, 0, len);
            } finally {
                instream.close();
            }
        }
    }

    protected long lengthOfData() {
        return this.source.getLength();
    }
}
