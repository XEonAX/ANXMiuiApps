package cn.kuaipan.android.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;

public class HttpUtils {
    public static StringBuffer toString(HttpRequest request) {
        if (request == null) {
            return null;
        }
        StringBuffer builder = new StringBuffer();
        builder.append(request.getRequestLine());
        builder.append("\n");
        for (Header header : request.getAllHeaders()) {
            builder.append(header.toString().trim());
            builder.append("\n");
        }
        if (!(request instanceof HttpEntityEnclosingRequest)) {
            return builder;
        }
        HttpEntity entity = ((HttpEntityEnclosingRequest) request).getEntity();
        if (entity == null) {
            return builder;
        }
        builder.append("Content:\n");
        try {
            if (entity.isRepeatable()) {
                builder.append(entityToString(entity, 1024));
            } else {
                builder.append(" [DATA CAN NOT REPEAT]");
            }
        } catch (Exception e) {
            builder.append(" [FAILED OUTPUT DATA]");
        }
        builder.append("\n");
        return builder;
    }

    private static String entityToString(HttpEntity entity, int maxLength) throws IOException {
        long len;
        long length = entity.getContentLength();
        if (length < 0) {
            len = 2147483647L;
        } else {
            len = length;
        }
        ByteArrayOutputStream outstream = new ByteArrayOutputStream((int) Math.min(len, (long) maxLength));
        boolean fullOutput = length >= 0 && length <= ((long) maxLength);
        int readed = 0;
        if (fullOutput) {
            entity.writeTo(outstream);
        } else {
            InputStream instream = entity.getContent();
            try {
                byte[] tmp = new byte[1024];
                int pos = 0;
                while (true) {
                    int l = instream.read(tmp);
                    if (l == -1 || pos >= maxLength) {
                        readed = pos;
                        instream.close();
                    } else {
                        outstream.write(tmp, 0, Math.min(l, maxLength - pos));
                        pos += l;
                    }
                }
                readed = pos;
                instream.close();
            } catch (Throwable th) {
                instream.close();
            }
        }
        StringBuilder append = new StringBuilder().append(outstream.toString());
        String str = (fullOutput || readed < maxLength) ? "" : "\n [TOO MUCH DATA TO INCLUDE, SIZE=" + length + "]";
        return append.append(str).toString();
    }

    public static StringBuffer toString(HttpResponse response) {
        if (response == null) {
            return null;
        }
        StringBuffer builder = new StringBuffer();
        builder.append(response.getStatusLine());
        builder.append("\n");
        for (Header header : response.getAllHeaders()) {
            builder.append(header.toString().trim());
            builder.append("\n");
        }
        HttpEntity entity = response.getEntity();
        if (entity == null) {
            return builder;
        }
        builder.append("Content:\n");
        try {
            if (entity.isRepeatable()) {
                builder.append(entityToString(entity, 1024));
            } else {
                builder.append(" [DATA CAN NOT REPEAT]");
            }
        } catch (Exception e) {
            builder.append(" [FAILED OUTPUT DATA]");
        }
        builder.append("\n");
        return builder;
    }

    public static long getHeaderSize(Header[] headers) {
        if (headers == null || headers.length <= 0) {
            return 0;
        }
        long size = 0;
        for (Header header : headers) {
            size += (long) (header.toString().getBytes().length + 1);
        }
        return size;
    }

    public static long getRequestSize(HttpRequest... requests) {
        if (requests == null) {
            return 0;
        }
        long size = 0;
        for (HttpRequest request : requests) {
            size += getRequestSize(request, true);
        }
        return size;
    }

    public static long getRequestSize(HttpRequest request, boolean includeContent) {
        if (request == null) {
            return 0;
        }
        return (((long) (request.getRequestLine().toString().getBytes().length + 1)) + getHeaderSize(request.getAllHeaders())) + 0;
    }

    public static long getResponseSize(HttpResponse... responses) {
        if (responses == null) {
            return 0;
        }
        long size = 0;
        for (HttpResponse response : responses) {
            size += getResponseSize(response, true);
        }
        return size;
    }

    public static long getResponseSize(HttpResponse response, boolean includeContent) {
        if (response == null) {
            return 0;
        }
        return (((long) (response.getStatusLine().toString().getBytes().length + 1)) + getHeaderSize(response.getAllHeaders())) + 0;
    }
}
