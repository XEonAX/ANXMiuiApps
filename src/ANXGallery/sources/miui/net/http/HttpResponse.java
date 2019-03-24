package miui.net.http;

import java.io.InputStream;
import java.util.Map;

public interface HttpResponse {
    InputStream getContent();

    String getContentEncoding();

    long getContentLength();

    String getContentType();

    Map<String, String> getHeaders();

    int getStatusCode();

    void release();
}
