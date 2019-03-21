package cn.kuaipan.android.http;

import android.util.Log;
import cn.kuaipan.android.utils.HttpUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpUriRequest;

public class KscHttpResponse {
    private final NetCacheManager mCache;
    private Throwable mError;
    private List<HttpMessage> mMessages;
    private HttpUriRequest mOrigRequest;
    private HttpResponse mResponse;

    public KscHttpResponse(NetCacheManager cache) {
        this.mCache = cache;
    }

    void setOrigRequest(HttpUriRequest request) {
        this.mOrigRequest = request;
    }

    void setMessage(List<HttpMessage> messages) {
        this.mMessages = messages;
    }

    void handleResponse(KscHttpRequest request, HttpResponse response, boolean toRepeatable) {
        this.mOrigRequest = request.getRequest();
        this.mResponse = response;
        IKscDecoder decoder = request.getDecoder();
        HttpEntity entity = response.getEntity();
        if (entity == null) {
            return;
        }
        if (toRepeatable) {
            response.setEntity(KscHttpEntity.getRepeatableEntity(entity, decoder, this.mCache));
        } else if (decoder != null) {
            response.setEntity(new KscHttpEntity(entity, decoder));
        }
    }

    void setError(Throwable e) {
        this.mError = e;
    }

    public Throwable getError() {
        return this.mError;
    }

    public HttpResponse getResponse() {
        return this.mResponse;
    }

    public InputStream getContent() throws IllegalStateException, IOException {
        HttpEntity entity = this.mResponse == null ? null : this.mResponse.getEntity();
        if (entity == null) {
            return null;
        }
        InputStream result = entity.getContent();
        Header header = entity.getContentEncoding();
        String encoding = header == null ? null : header.getValue();
        if (encoding == null || !encoding.contains("gzip")) {
            return result;
        }
        return new GZIPInputStream(result);
    }

    public int getStatusCode() {
        if (this.mResponse == null) {
            return -1;
        }
        StatusLine line = this.mResponse.getStatusLine();
        if (line != null) {
            return line.getStatusCode();
        }
        return -1;
    }

    public void release() throws IOException {
        if (this.mResponse != null && this.mResponse.getEntity() != null) {
            try {
                this.mResponse.getEntity().consumeContent();
                this.mResponse = null;
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                Log.w("KscHttpResponse", "Meet exception when release a KscHttpResponse.", e2);
                this.mResponse = null;
            } catch (Throwable th) {
                this.mResponse = null;
            }
        }
    }

    public String dump() {
        StringBuilder builder = new StringBuilder();
        int i = 0;
        int j = 0;
        if (this.mMessages != null) {
            for (HttpMessage message : this.mMessages) {
                if (message instanceof HttpRequest) {
                    int i2 = i + 1;
                    builder.append("[Request " + i + "]\n");
                    builder.append(HttpUtils.toString((HttpRequest) message));
                    i = i2;
                } else if (message instanceof HttpResponse) {
                    int j2 = j + 1;
                    builder.append("[Response " + j + "]\n");
                    builder.append(HttpUtils.toString((HttpResponse) message));
                    j = j2;
                }
            }
        }
        if (builder.length() <= 0) {
            builder.append("[Origin Request]\n");
            builder.append(HttpUtils.toString(this.mOrigRequest));
        }
        builder.append("\n[Response " + j + "]\n");
        builder.append(HttpUtils.toString(this.mResponse));
        if (this.mError != null) {
            builder.append("\n[Error]\n");
            builder.append(Log.getStackTraceString(this.mError));
        }
        return builder.toString().replaceAll("password=.*&", "password=[secData]&");
    }
}
