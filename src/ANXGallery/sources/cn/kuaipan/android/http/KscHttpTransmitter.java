package cn.kuaipan.android.http;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import cn.kuaipan.android.exception.ErrorHelper;
import cn.kuaipan.android.http.client.KscHttpClient;
import cn.kuaipan.android.http.client.URIRedirector;
import cn.kuaipan.android.utils.ContextUtils;
import cn.kuaipan.android.utils.HttpUtils;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

public class KscHttpTransmitter {
    private final NetCacheManager mCacheManager;
    private final SparseArray<Pair<Long, ? extends HttpClient>> mClients;
    private final Context mContext;
    private final KscSpeedManager mDownloadSpeedManager = new KscSpeedManager(1800);
    private URIRedirector mRedirector;
    private final KscSpeedManager mUploadSpeedManager = new KscSpeedManager(1800);
    private final SparseArray<String> mUserAgents;

    public KscHttpTransmitter(Context context) {
        ContextUtils.init(context);
        this.mContext = context;
        this.mCacheManager = NetCacheManager.getInstance(context, true);
        this.mClients = new SparseArray(4);
        this.mUserAgents = new SparseArray(4);
    }

    public KscHttpResponse execute(KscHttpRequest request, int type) throws InterruptedException {
        KscSpeedMonitor downloadMonitor;
        HttpResponse response;
        IKscTransferListener listener = request.getListener();
        KscHttpResponse kscHttpResponse = new KscHttpResponse(this.mCacheManager);
        HttpContext context = new BasicHttpContext();
        try {
            HttpUriRequest req = request.getRequest();
            kscHttpResponse.setOrigRequest(req);
            HttpClient client = getClient(type);
            if (!((type & 1) == 0 || this.mRedirector == null)) {
                context.setAttribute("ksc.connect_redirector", this.mRedirector);
            }
            String host = getRequestHost(request.getRequest());
            KscSpeedMonitor uploadMonitor = this.mUploadSpeedManager.getMoniter(host);
            downloadMonitor = this.mDownloadSpeedManager.getMoniter(host);
            setMonitor(req, uploadMonitor, listener);
            long start = KscSpeedManager.current();
            response = client.execute(req, context);
            long end = KscSpeedManager.current();
            Object obj = context.getAttribute("ksc.message_list");
            if (obj instanceof List) {
                List<HttpMessage> messages = (List) obj;
                if (!(messages == null || messages.isEmpty())) {
                    kscHttpResponse.setMessage(messages);
                }
                long downloadSize = HttpUtils.getResponseSize(getResponse(messages)) + HttpUtils.getResponseSize(response, false);
                uploadMonitor.recode(start, end, HttpUtils.getRequestSize(getRequest(messages)));
                downloadMonitor.recode(start, end, downloadSize);
            }
        } catch (Throwable e) {
            Log.w("KscHttpTransmitter", "Failed get requestList from context.", e);
        } catch (Throwable e2) {
            ErrorHelper.handleInterruptException(e2);
            Log.w("KscHttpTransmitter", "Meet exception when execute a KscHttpRequest.", e2);
            kscHttpResponse.setError(e2);
        }
        setMonitor(response, downloadMonitor, listener);
        kscHttpResponse.handleResponse(request, response, (type & 4) == 0);
        return kscHttpResponse;
    }

    private static void setMonitor(HttpMessage httpMsg, KscSpeedMonitor monitor, IKscTransferListener listener) {
        HttpEntity entity;
        if (httpMsg instanceof HttpEntityEnclosingRequestBase) {
            HttpEntityEnclosingRequestBase entityReq = (HttpEntityEnclosingRequestBase) httpMsg;
            entity = entityReq.getEntity();
            if (entity != null) {
                entityReq.setEntity(new ProcessMonitorEntity(entity, monitor, listener, true));
            }
        } else if (httpMsg instanceof HttpResponse) {
            HttpResponse resp = (HttpResponse) httpMsg;
            entity = resp.getEntity();
            if (entity != null) {
                resp.setEntity(new ProcessMonitorEntity(entity, monitor, listener, false));
            }
        }
    }

    private static HttpResponse[] getResponse(List<HttpMessage> messages) {
        if (messages == null) {
            return null;
        }
        ArrayList<HttpResponse> result = new ArrayList();
        for (HttpMessage message : messages) {
            if (message instanceof HttpResponse) {
                result.add((HttpResponse) message);
            }
        }
        return (HttpResponse[]) result.toArray(new HttpResponse[result.size()]);
    }

    private HttpRequest[] getRequest(List<HttpMessage> messages) {
        if (messages == null) {
            return null;
        }
        ArrayList<HttpRequest> result = new ArrayList();
        for (HttpMessage message : messages) {
            if (message instanceof HttpRequest) {
                result.add((HttpRequest) message);
            }
        }
        return (HttpRequest[]) result.toArray(new HttpRequest[result.size()]);
    }

    public void setUserAgent(int type, String userAgent) {
        this.mUserAgents.put(type, userAgent);
        Pair<Long, ? extends HttpClient> pair = (Pair) this.mClients.get(type);
        if (pair != null && pair.second != null) {
            HttpProtocolParams.setUserAgent(((HttpClient) pair.second).getParams(), userAgent);
        }
    }

    private HttpClient getClient(int type) {
        type &= 7;
        long current = SystemClock.elapsedRealtime();
        Pair<Long, ? extends HttpClient> pair = (Pair) this.mClients.get(type);
        if (pair != null && current - ((Long) pair.first).longValue() <= 180000) {
            return (HttpClient) pair.second;
        }
        boolean inKss;
        HttpClient result;
        String userAgent = (String) this.mUserAgents.get(type);
        if ((type & 4) != 0) {
            inKss = true;
        } else {
            inKss = false;
        }
        if (inKss) {
            result = KscHttpClient.newKssInstance(userAgent);
        } else {
            result = KscHttpClient.newInstance(userAgent, (type & 2) == 0, (type & 1) != 0);
        }
        this.mClients.put(type, Pair.create(Long.valueOf(current), result));
        return result;
    }

    private static String getRequestHost(HttpUriRequest request) {
        if (request == null) {
            return null;
        }
        URI uri = request.getURI();
        if (uri != null) {
            return uri.getHost();
        }
        return null;
    }
}
