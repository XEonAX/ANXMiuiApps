package miui.hybrid;

import java.io.InputStream;

public class HybridResourceResponse {
    private String yw;
    private String yx;
    private InputStream yy;

    public HybridResourceResponse(String str, String str2, InputStream inputStream) {
        this.yw = str;
        this.yx = str2;
        this.yy = inputStream;
    }

    public void setMimeType(String str) {
        this.yw = str;
    }

    public String getMimeType() {
        return this.yw;
    }

    public void setEncoding(String str) {
        this.yx = str;
    }

    public String getEncoding() {
        return this.yx;
    }

    public void setData(InputStream inputStream) {
        this.yy = inputStream;
    }

    public InputStream getData() {
        return this.yy;
    }
}
