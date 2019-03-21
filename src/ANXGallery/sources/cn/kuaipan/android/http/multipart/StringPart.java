package cn.kuaipan.android.http.multipart;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.util.EncodingUtils;

public class StringPart extends PartBase {
    private byte[] content;
    private String value;

    public StringPart(String name, String value, String charset) {
        String str = "text/plain";
        if (charset == null) {
            charset = "US-ASCII";
        }
        super(name, str, charset, "8bit");
        if (value == null) {
            throw new IllegalArgumentException("Value may not be null");
        } else if (value.indexOf(0) != -1) {
            throw new IllegalArgumentException("NULs may not be present in string parts");
        } else {
            this.value = value;
        }
    }

    private byte[] getContent() {
        if (this.content == null) {
            this.content = EncodingUtils.getBytes(this.value, getCharSet());
        }
        return this.content;
    }

    protected void sendData(OutputStream out) throws IOException {
        out.write(getContent());
    }

    protected long lengthOfData() {
        return (long) getContent().length;
    }
}
