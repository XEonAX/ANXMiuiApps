package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.AuthFailureError;
import com.android.volley.Cache.Entry;
import com.android.volley.ClientError;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class BasicNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;
    private final BaseHttpStack mBaseHttpStack;
    @Deprecated
    protected final HttpStack mHttpStack;
    protected final ByteArrayPool mPool;

    public BasicNetwork(BaseHttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack httpStack, ByteArrayPool pool) {
        this.mBaseHttpStack = httpStack;
        this.mHttpStack = httpStack;
        this.mPool = pool;
    }

    /* JADX WARNING: Removed duplicated region for block: B:70:0x0117 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00d7  */
    /* JADX WARNING: Missing block: B:18:0x008e, code:
            throw new java.io.IOException();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        Throwable e;
        NetworkResponse networkResponse;
        long requestStart = SystemClock.elapsedRealtime();
        while (true) {
            HttpResponse httpResponse = null;
            List responseHeaders = Collections.emptyList();
            byte[] responseContents;
            try {
                httpResponse = this.mBaseHttpStack.executeRequest(request, getCacheHeaders(request.getCacheEntry()));
                int statusCode = httpResponse.getStatusCode();
                responseHeaders = httpResponse.getHeaders();
                if (statusCode == 304) {
                    Entry entry = request.getCacheEntry();
                    if (entry == null) {
                        responseContents = null;
                        return new NetworkResponse(304, null, true, SystemClock.elapsedRealtime() - requestStart, responseHeaders);
                    }
                    responseContents = null;
                    return new NetworkResponse(304, entry.data, true, SystemClock.elapsedRealtime() - requestStart, combineHeaders(responseHeaders, entry));
                }
                InputStream inputStream = httpResponse.getContent();
                if (inputStream != null) {
                    responseContents = inputStreamToBytes(inputStream, httpResponse.getContentLength());
                } else {
                    responseContents = new byte[0];
                }
                try {
                    logSlowRequests(SystemClock.elapsedRealtime() - requestStart, request, responseContents, statusCode);
                    if (statusCode >= 200 && statusCode <= 299) {
                        return new NetworkResponse(statusCode, responseContents, false, SystemClock.elapsedRealtime() - requestStart, responseHeaders);
                    }
                } catch (SocketTimeoutException e2) {
                } catch (MalformedURLException e3) {
                    e = e3;
                } catch (IOException e4) {
                    e = e4;
                    if (httpResponse == null) {
                        statusCode = httpResponse.getStatusCode();
                        VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode), request.getUrl());
                        if (responseContents != null) {
                            networkResponse = new NetworkResponse(statusCode, responseContents, false, SystemClock.elapsedRealtime() - requestStart, responseHeaders);
                            if (statusCode == 401 || statusCode == 403) {
                                attemptRetryOnException("auth", request, new AuthFailureError(networkResponse));
                            } else if (statusCode >= 400 && statusCode <= 499) {
                                throw new ClientError(networkResponse);
                            } else if (statusCode < 500 || statusCode > 599) {
                                throw new ServerError(networkResponse);
                            } else if (request.shouldRetryServerErrors()) {
                                attemptRetryOnException("server", request, new ServerError(networkResponse));
                            } else {
                                throw new ServerError(networkResponse);
                            }
                        }
                        attemptRetryOnException("network", request, new NetworkError());
                    } else {
                        throw new NoConnectionError(e);
                    }
                }
            } catch (SocketTimeoutException e5) {
                responseContents = null;
            } catch (MalformedURLException e6) {
                e = e6;
                responseContents = null;
            } catch (IOException e7) {
                e = e7;
                responseContents = null;
                if (httpResponse == null) {
                }
            }
        }
        throw new ServerError(networkResponse);
        attemptRetryOnException("socket", request, new TimeoutError());
        throw new RuntimeException("Bad URL " + request.getUrl(), e);
    }

    private void logSlowRequests(long requestLifetime, Request<?> request, byte[] responseContents, int statusCode) {
        if (DEBUG || requestLifetime > 3000) {
            String str = "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]";
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(requestLifetime);
            objArr[2] = responseContents != null ? Integer.valueOf(responseContents.length) : "null";
            objArr[3] = Integer.valueOf(statusCode);
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d(str, objArr);
        }
    }

    private static void attemptRetryOnException(String logPrefix, Request<?> request, VolleyError exception) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int oldTimeout = request.getTimeoutMs();
        try {
            retryPolicy.retry(exception);
            request.addMarker(String.format("%s-retry [timeout=%s]", new Object[]{logPrefix, Integer.valueOf(oldTimeout)}));
        } catch (VolleyError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", new Object[]{logPrefix, Integer.valueOf(oldTimeout)}));
            throw e;
        }
    }

    private Map<String, String> getCacheHeaders(Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        Map<String, String> headers = new HashMap();
        if (entry.etag != null) {
            headers.put("If-None-Match", entry.etag);
        }
        if (entry.lastModified <= 0) {
            return headers;
        }
        headers.put("If-Modified-Since", HttpHeaderParser.formatEpochAsRfc1123(entry.lastModified));
        return headers;
    }

    private byte[] inputStreamToBytes(InputStream in, int contentLength) throws IOException, ServerError {
        PoolingByteArrayOutputStream bytes = new PoolingByteArrayOutputStream(this.mPool, contentLength);
        if (in == null) {
            try {
                throw new ServerError();
            } catch (Throwable th) {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.mPool.returnBuf(null);
                bytes.close();
            }
        } else {
            byte[] buffer = this.mPool.getBuf(1024);
            while (true) {
                int count = in.read(buffer);
                if (count == -1) {
                    break;
                }
                bytes.write(buffer, 0, count);
            }
            byte[] toByteArray = bytes.toByteArray();
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e2) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.mPool.returnBuf(buffer);
            bytes.close();
            return toByteArray;
        }
    }

    private static List<Header> combineHeaders(List<Header> responseHeaders, Entry entry) {
        Set<String> headerNamesFromNetworkResponse = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!responseHeaders.isEmpty()) {
            for (Header header : responseHeaders) {
                headerNamesFromNetworkResponse.add(header.getName());
            }
        }
        List<Header> combinedHeaders = new ArrayList(responseHeaders);
        if (entry.allResponseHeaders != null) {
            if (!entry.allResponseHeaders.isEmpty()) {
                for (Header header2 : entry.allResponseHeaders) {
                    if (!headerNamesFromNetworkResponse.contains(header2.getName())) {
                        combinedHeaders.add(header2);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> header3 : entry.responseHeaders.entrySet()) {
                if (!headerNamesFromNetworkResponse.contains(header3.getKey())) {
                    combinedHeaders.add(new Header((String) header3.getKey(), (String) header3.getValue()));
                }
            }
        }
        return combinedHeaders;
    }
}
