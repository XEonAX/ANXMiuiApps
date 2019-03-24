package miui.net.http;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

class a implements HttpResponse {
    private int CT;
    private InputStream CW;
    private String CX;
    private String Da;
    private long Db;
    private Map<String, String> Dc;

    public a(int i, Map<String, String> map, InputStream inputStream, long j, String str, String str2) {
        this.CT = i;
        this.CW = inputStream;
        this.Db = j;
        this.CX = str;
        this.Da = str2;
        this.Dc = map;
    }

    public void a(InputStream inputStream, long j) {
        this.CW = inputStream;
        this.Db = j;
    }

    public int getStatusCode() {
        return this.CT;
    }

    public InputStream getContent() {
        return this.CW;
    }

    public long getContentLength() {
        return this.Db;
    }

    public String getContentType() {
        return this.CX;
    }

    public String getContentEncoding() {
        return this.Da;
    }

    public Map<String, String> getHeaders() {
        return this.Dc;
    }

    public void release() {
        try {
            if (this.CW != null) {
                this.CW.close();
            }
        } catch (IOException e) {
        }
        this.CW = null;
    }
}
