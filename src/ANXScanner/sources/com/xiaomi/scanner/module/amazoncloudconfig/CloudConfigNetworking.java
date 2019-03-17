package com.xiaomi.scanner.module.amazoncloudconfig;

import android.net.SSLCertificateSocketFactory;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public class CloudConfigNetworking {
    private static final int CORE_POOL_SIZE = Math.max(CPU_COUNT, 5);
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final String ENCODING = "UTF-8";
    private static final String ENCODING_ERROR_TAG = "ENCODING_ERROR_TAG:";
    public static final String LOCATION = "Location";
    private static final int MAX_REDIRECTS = 10;
    private static final String PROTOCOL = "https";
    private static final String PROTOCOL_ERROR_TAG = "PROTOCOL_ERROR_TAG:";
    private static final String REDIRECT_ERROR_TAG = "REDIRECT_ERROR_TAG:";
    private static final String REQUEST_METHOD = "GET";
    private static final Tag TAG = new Tag("CloudConfigNetworking");
    private static final int TASK_QUEUE_MAX_COUNT = 128;
    private static final int THREAD_KEEP_LIVE_TIME = 30;
    private static Executor mExecutor = initExecute();

    public static class CustomSSLSocketFactory extends SSLSocketFactory {
        private SSLSocketFactory mCertificateSocketFactory;

        private CustomSSLSocketFactory() {
        }

        public static CustomSSLSocketFactory getDefault(int handshakeTimeoutMillis) {
            CustomSSLSocketFactory factory = new CustomSSLSocketFactory();
            factory.mCertificateSocketFactory = SSLCertificateSocketFactory.getDefault(handshakeTimeoutMillis, null);
            return factory;
        }

        public Socket createSocket() throws IOException {
            Socket socket = this.mCertificateSocketFactory.createSocket();
            enableTlsIfAvailable(socket);
            return socket;
        }

        public Socket createSocket(String host, int i) throws IOException {
            Socket socket = this.mCertificateSocketFactory.createSocket(host, i);
            enableTlsIfAvailable(socket);
            return socket;
        }

        public Socket createSocket(String host, int port, InetAddress localhost, int localPort) throws IOException {
            Socket socket = this.mCertificateSocketFactory.createSocket(host, port, localhost, localPort);
            enableTlsIfAvailable(socket);
            return socket;
        }

        public Socket createSocket(InetAddress address, int port) throws IOException {
            Socket socket = this.mCertificateSocketFactory.createSocket(address, port);
            enableTlsIfAvailable(socket);
            return socket;
        }

        public Socket createSocket(InetAddress address, int port, InetAddress localhost, int localPort) throws IOException {
            Socket socket = this.mCertificateSocketFactory.createSocket(address, port, localhost, localPort);
            enableTlsIfAvailable(socket);
            return socket;
        }

        public String[] getDefaultCipherSuites() {
            return this.mCertificateSocketFactory.getDefaultCipherSuites();
        }

        public String[] getSupportedCipherSuites() {
            return this.mCertificateSocketFactory.getSupportedCipherSuites();
        }

        public Socket createSocket(Socket socketParam, String host, int port, boolean autoClose) throws IOException {
            Socket socket = this.mCertificateSocketFactory.createSocket(socketParam, host, port, autoClose);
            enableTlsIfAvailable(socket);
            return socket;
        }

        private void enableTlsIfAvailable(Socket socket) {
            if (socket instanceof SSLSocket) {
                SSLSocket sslSocket = (SSLSocket) socket;
                sslSocket.setEnabledProtocols(sslSocket.getSupportedProtocols());
            }
        }
    }

    public interface HttpListener {
        void onError(int i, CloudConfigNetworkError cloudConfigNetworkError);

        void onResponse(int i, HashMap<String, String> hashMap, InputStream inputStream, String str, int i2);
    }

    public static class Request {
        private byte[] mBody;
        private boolean mCanceled = false;
        private HashMap<String, String> mHeaders = new HashMap();
        private HttpListener mListener;
        private String mUrl;

        Request() {
        }

        public void putHeader(Map<String, String> headers) {
            if (headers != null && !headers.isEmpty()) {
                this.mHeaders.putAll(headers);
            }
        }

        public void setListener(HttpListener listener) {
            this.mListener = listener;
        }

        public void setUrl(String mUrl) {
            this.mUrl = mUrl;
        }

        public void setBody(byte[] body) {
            this.mBody = body;
        }
    }

    private static Executor initExecute() {
        ThreadPoolExecutor executor = new ThreadPoolExecutor(CORE_POOL_SIZE, CORE_POOL_SIZE, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(128), Executors.defaultThreadFactory());
        try {
            executor.allowCoreThreadTimeOut(true);
        } catch (Exception e) {
            Log.e(TAG, "stack_error:", e);
        } catch (NoSuchMethodError e2) {
            Log.e(TAG, "stack_error:", e2);
        }
        return executor;
    }

    public static Request get(String url) {
        return get(url, null);
    }

    public static Request get(String url, HttpListener listener) {
        return get(url, null, listener);
    }

    public static Request get(String url, String withParams, HttpListener listener) {
        Request request = new Request();
        request.setUrl(concatUrl(url, withParams));
        request.setListener(listener);
        return safeExecuteDoRequest(mExecutor, request) ? request : null;
    }

    public static Request post(String url, byte[] bodyByte, HttpListener listener) {
        return post(url, bodyByte, null, listener);
    }

    public static Request post(String url, byte[] bodyByte, Map<String, String> headersMap, HttpListener listener) {
        Request request = new Request();
        if (!(bodyByte == null || bodyByte.length == 0)) {
            request.setBody(bodyByte);
        }
        request.setUrl(url);
        request.setListener(listener);
        if (!(headersMap == null || headersMap.isEmpty())) {
            request.putHeader(headersMap);
        }
        return safeExecuteDoRequest(mExecutor, request) ? request : null;
    }

    private static boolean safeExecuteDoRequest(Executor executor, final Request request) {
        try {
            executor.execute(new Runnable() {
                public void run() {
                    try {
                        CloudConfigNetworking.doRequest(request);
                    } catch (Exception e) {
                        Log.e(CloudConfigNetworking.TAG, "stack_error:", e);
                    }
                }
            });
            return true;
        } catch (Exception e) {
            Log.e(TAG, "stack_error:", e);
            return false;
        }
    }

    public static String readString(InputStream inputStream, String encode) {
        try {
            byte[] data = readBytes(inputStream);
            if (data != null) {
                return new String(data, encode);
            }
        } catch (Exception e) {
            Log.e(TAG, "stack_error:", e);
        }
        return null;
    }

    public static byte[] readBytes(InputStream inputStream) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] buf = new byte[1024];
            while (true) {
                int n = inputStream.read(buf);
                if (n >= 0) {
                    bos.write(buf, 0, n);
                } else {
                    bos.flush();
                    return bos.toByteArray();
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "stack_error:", e);
            return null;
        }
    }

    public static String concatUrl(String baseUrl, String params) {
        if (TextUtils.isEmpty(params)) {
            return baseUrl;
        }
        if (baseUrl.trim().endsWith("?")) {
            return baseUrl + params;
        }
        return baseUrl + "?" + params;
    }

    private static void doRequest(@NonNull Request request) {
        HttpListener listener = request.mListener;
        int responseCode = -1;
        if (TextUtils.isEmpty(request.mUrl)) {
            notifyHttpError(listener, -1, CloudConfigNetworkError.URL_ERROR);
            return;
        }
        HttpURLConnection connection = null;
        InputStream is = null;
        try {
            connection = makeConnection(request);
            responseCode = connection.getResponseCode();
            if (responseCode == 200) {
                HashMap<String, String> respHeaders = new HashMap();
                int i = 1;
                while (true) {
                    int i2 = i;
                    i = i2 + 1;
                    String key = connection.getHeaderFieldKey(i2);
                    if (key == null) {
                        break;
                    }
                    respHeaders.put(key, connection.getHeaderField(key));
                }
                is = connection.getInputStream();
                String encode = parseCharset(connection.getContentType());
                if (listener != null) {
                    listener.onResponse(responseCode, respHeaders, is, encode, connection.getContentLength());
                } else {
                    readString(is, encode);
                    Log.d(TAG, "Discarded response data: doRequest");
                }
            } else {
                notifyHttpError(listener, responseCode, CloudConfigNetworkError.RESPONSE_ERROR);
            }
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    Log.e(TAG, "stack_error:", e);
                }
            }
            if (connection != null) {
                connection.disconnect();
            }
        } catch (SocketTimeoutException e2) {
            notifyHttpError(listener, responseCode, CloudConfigNetworkError.TIMEOUT_ERROR);
            if (is != null) {
                try {
                    is.close();
                } catch (Throwable e3) {
                    Log.e(TAG, "stack_error:", e3);
                }
            }
            if (connection != null) {
                connection.disconnect();
            }
        } catch (Throwable th) {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e4) {
                    Log.e(TAG, "stack_error:", e4);
                }
            }
            if (connection != null) {
                connection.disconnect();
            }
        }
    }

    private static void notifyHttpError(HttpListener listener, int responseCode, CloudConfigNetworkError error) {
        if (listener != null) {
            listener.onError(responseCode, error);
        }
    }

    public static String parseCharset(String contentType) {
        if (!TextUtils.isEmpty(contentType)) {
            String[] params = contentType.split(";");
            for (int i = 1; i < params.length; i++) {
                String[] pair = params[i].trim().split("=");
                if (pair.length == 2 && pair[0].equals("charset")) {
                    return pair[1];
                }
            }
        }
        return "UTF-8";
    }

    private static HttpURLConnection makeConnection(@NonNull Request request) throws Exception {
        URL url = new URL(request.mUrl);
        String protocolCur = url.getProtocol();
        int i = 0;
        Log.d(TAG, " makeConnection - redirectCount : " + 0);
        while (true) {
            int i2 = i;
            URL url2 = url;
            i = i2 + 1;
            if (i2 <= 10 && !request.mCanceled) {
                if ("https".equalsIgnoreCase(protocolCur) || "http".equalsIgnoreCase(protocolCur)) {
                    HttpURLConnection connection = openConnection(url2, request);
                    int responseCode = connection.getResponseCode();
                    Log.d(TAG, " makeConnection - connection responseCode - " + responseCode);
                    if (responseCode != 301 && responseCode != 302) {
                        return connection;
                    }
                    String location = connection.getHeaderField(LOCATION);
                    connection.disconnect();
                    url = new URL(url2, location);
                    protocolCur = url.getProtocol();
                } else {
                    Log.d(TAG, " makeConnection - : inside checks");
                    throw new Exception("PROTOCOL_ERROR_TAG:url = " + request.mUrl);
                }
            }
        }
        throw new Exception("REDIRECT_ERROR_TAG:max count = 10");
    }

    private static HttpURLConnection openConnection(@NonNull URL url, @NonNull Request request) throws IOException {
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setInstanceFollowRedirects(false);
        connection.setConnectTimeout(10000);
        connection.setReadTimeout(10000);
        connection.setUseCaches(false);
        connection.setDoInput(true);
        connection.setRequestMethod("GET");
        if ("https".equals(url.getProtocol())) {
            ((HttpsURLConnection) connection).setSSLSocketFactory(CustomSSLSocketFactory.getDefault(10000));
        }
        return connection;
    }
}
