package miui.net.http;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import miui.hybrid.Response;
import miui.net.http.Cache.Entry;
import miui.util.IOUtils;
import miui.util.Log;

public class HttpSession {
    private static final int Ds = 10000;
    private static final int Dt = 8192;
    private static final String Du = "Accept-Encoding";
    private static final String Dv = "gzip";
    private static final String TAG = "HttpSession";
    private int DA;
    private final Map<String, String> Dw = new HashMap();
    private String Dx;
    private Cache Dy = DiskBasedCache.getDefault();
    private RetryStrategy Dz = new BaseRetryStrategy();

    private static class CountingInputStream extends FilterInputStream {
        private ProgressListener DB;
        private long DC = 0;
        private long DD = 0;
        private long Db;

        public CountingInputStream(InputStream inputStream, long j, String str, ProgressListener progressListener) throws IOException {
            super(inputStream);
            this.Db = j;
            this.DB = progressListener;
            if (str != null && str.length() > 0) {
                Matcher matcher = Pattern.compile("bytes\\s+(\\d+)-(\\d+)/(\\d+)").matcher(str);
                if (matcher.matches() && matcher.groupCount() == 3) {
                    this.DC = Long.parseLong(matcher.group(1));
                    this.Db = Long.parseLong(matcher.group(3));
                }
            }
        }

        public int read(byte[] bArr) throws IOException {
            return read(bArr, 0, bArr.length);
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read > 0) {
                this.DC += (long) read;
                O(read);
            }
            return read;
        }

        public int read() throws IOException {
            int read = super.read();
            if (read > 0) {
                this.DC++;
                O(1);
            }
            return read;
        }

        private void O(int i) {
            if (this.Db > 0 && this.DB != null) {
                long j = (this.DC * 10) / this.Db;
                if (this.DD != j || i > 1024) {
                    this.DD = j;
                    this.DB.onProgress(this.Db, this.DC);
                }
            }
        }
    }

    public interface ProgressListener {
        void onProgress(long j, long j2);
    }

    public static HttpSession getDefault() {
        return new HttpSession();
    }

    public void setUserAgent(String str) {
        throw new UnsupportedOperationException();
    }

    public void setTimeout(int i) {
        this.DA = i;
    }

    public void addHeader(String str, String str2) {
        this.Dw.put(str, str2);
    }

    public void setBasicAuth(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    public void setRetryStrategy(RetryStrategy retryStrategy) {
        this.Dz = retryStrategy;
    }

    public void setCache(Cache cache) {
        if (this.Dy != cache) {
            this.Dy = cache;
        }
    }

    public void removeCacheContent(String str) {
        if (this.Dy != null) {
            this.Dy.remove(str);
        }
    }

    public void clearCacheContent() {
        if (this.Dy != null) {
            this.Dy.clear();
        }
    }

    public void download(File file, String str, Map<String, String> map, HttpRequestParams httpRequestParams, ProgressListener progressListener) throws IOException {
        Throwable th;
        b(map);
        if (httpRequestParams != null) {
            this.Dx = httpRequestParams.getParamString();
        }
        long j = 0;
        if (file.exists()) {
            j = file.length();
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("bytes=");
        stringBuilder.append(j);
        stringBuilder.append("-");
        addHeader("RANGE", stringBuilder.toString());
        HttpResponse a = a(str, httpRequestParams, progressListener);
        Closeable closeable = null;
        OutputStream outputStream;
        try {
            String str2 = (String) a.getHeaders().get("content-range");
            if (str2 != null) {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("bytes ");
                stringBuilder2.append(j);
                if (str2.startsWith(stringBuilder2.toString())) {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    RandomAccessFile randomAccessFile2;
                    try {
                        randomAccessFile.seek(j);
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = a.getContent().read(bArr);
                            if (read == -1) {
                                break;
                            }
                            randomAccessFile.write(bArr, 0, read);
                        }
                        randomAccessFile.close();
                        randomAccessFile2 = randomAccessFile;
                        outputStream = null;
                        closeable = randomAccessFile2;
                        IOUtils.closeQuietly(closeable);
                        IOUtils.closeQuietly(outputStream);
                        a.release();
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile2 = randomAccessFile;
                        outputStream = null;
                        closeable = randomAccessFile2;
                        IOUtils.closeQuietly(closeable);
                        IOUtils.closeQuietly(outputStream);
                        a.release();
                        throw th;
                    }
                }
            }
            outputStream = new FileOutputStream(file);
            try {
                IOUtils.copy(a.getContent(), outputStream);
                outputStream.close();
                IOUtils.closeQuietly(closeable);
                IOUtils.closeQuietly(outputStream);
                a.release();
            } catch (Throwable th3) {
                th = th3;
                IOUtils.closeQuietly(closeable);
                IOUtils.closeQuietly(outputStream);
                a.release();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
            IOUtils.closeQuietly(closeable);
            IOUtils.closeQuietly(outputStream);
            a.release();
            throw th;
        }
    }

    public HttpResponse get(String str, Map<String, String> map, HttpRequestParams httpRequestParams, ProgressListener progressListener) throws IOException {
        b(map);
        if (httpRequestParams != null) {
            this.Dx = httpRequestParams.getParamString();
        }
        return a(str, httpRequestParams, progressListener);
    }

    public HttpResponse post(String str, Map<String, String> map, HttpRequestParams httpRequestParams, ProgressListener progressListener) throws IOException {
        throw new UnsupportedOperationException();
    }

    public HttpResponse put(String str, Map<String, String> map, HttpRequestParams httpRequestParams, ProgressListener progressListener) throws IOException {
        throw new UnsupportedOperationException();
    }

    public HttpResponse delete(String str, Map<String, String> map, HttpRequestParams httpRequestParams, ProgressListener progressListener) throws IOException {
        throw new UnsupportedOperationException();
    }

    private a a(String str, HttpRequestParams httpRequestParams, ProgressListener progressListener) throws IOException {
        Entry F = F(a(str, httpRequestParams));
        if (F == null || F.softTtl <= System.currentTimeMillis()) {
            if (progressListener != null) {
                progressListener.onProgress(-1, -1);
            }
            if (F != null) {
                a(F);
            }
            if (!this.Dw.containsKey(Du)) {
                this.Dw.put(Du, Dv);
            }
            RetryStrategy retryStrategy = this.Dz;
            while (retryStrategy != null) {
                try {
                    setTimeout(retryStrategy.getCurrentTimeout());
                    break;
                } catch (Throwable e) {
                    if (retryStrategy == null || !retryStrategy.retry(e)) {
                        throw e;
                    }
                } catch (Throwable e2) {
                    if (retryStrategy == null || !retryStrategy.retry(e2)) {
                        throw e2;
                    }
                }
            }
            return a(str, F, progressListener);
        }
        a aVar = new a(Response.CODE_GENERIC_ERROR, F.responseHeaders, F.data, F.length, F.contentType, F.contentEncoding);
        if (progressListener != null) {
            progressListener.onProgress(F.length, F.length);
        }
        return aVar;
    }

    private a a(String str, Entry entry, ProgressListener progressListener) throws IOException {
        Entry entry2 = entry;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setDoInput(true);
        httpURLConnection.setReadTimeout(this.DA);
        httpURLConnection.setConnectTimeout(this.DA);
        if (this.Dw != null && this.Dw.keySet().size() > 0) {
            for (String str2 : this.Dw.keySet()) {
                httpURLConnection.setRequestProperty(str2, (String) this.Dw.get(str2));
            }
        }
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 304) {
            return new a(Response.CODE_GENERIC_ERROR, entry2.responseHeaders, entry2.data, entry2.length, entry2.contentType, entry2.contentEncoding);
        }
        if (responseCode < Response.CODE_GENERIC_ERROR || responseCode > 299) {
            throw new IOException(httpURLConnection.getResponseMessage());
        }
        String str3;
        a aVar;
        long contentLength = (long) httpURLConnection.getContentLength();
        String contentType = httpURLConnection.getContentType();
        String contentEncoding = httpURLConnection.getContentEncoding();
        InputStream inputStream = httpURLConnection.getInputStream();
        Map c = c(httpURLConnection.getHeaderFields());
        InputStream countingInputStream = new CountingInputStream(inputStream, contentLength, httpURLConnection.getHeaderField("content-range"), progressListener);
        if (contentType != null) {
            contentType = contentType.toLowerCase();
        }
        String str4 = contentType;
        if (contentEncoding != null) {
            contentType = contentEncoding.toLowerCase();
            if (contentType.equalsIgnoreCase(Dv)) {
                inputStream = new GZIPInputStream(countingInputStream);
                str3 = "";
                aVar = new a(responseCode, c, inputStream, contentLength, str4, str3);
                a(httpURLConnection.getURL().toURI().toString(), aVar);
                return aVar;
            }
            str3 = contentType;
        } else {
            str3 = contentEncoding;
        }
        inputStream = countingInputStream;
        aVar = new a(responseCode, c, inputStream, contentLength, str4, str3);
        try {
            a(httpURLConnection.getURL().toURI().toString(), aVar);
        } catch (URISyntaxException e) {
            Log.d(TAG, e.getMessage());
        }
        return aVar;
    }

    private void a(String str, a aVar) {
        Cache cache = this.Dy;
        if (cache != null) {
            Entry a = b.a(aVar);
            if (a != null && cache.put(str, a)) {
                aVar.a(a.data, a.length);
            }
        }
    }

    private Entry F(String str) {
        Cache cache = this.Dy;
        if (cache == null) {
            return null;
        }
        return cache.get(str.toString());
    }

    private void b(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            for (Map.Entry entry : map.entrySet()) {
                this.Dw.put(entry.getKey(), entry.getValue());
            }
        }
    }

    private void a(Entry entry) {
        if (entry.etag != null) {
            addHeader("If-None-Match", entry.etag);
        }
        if (entry.serverDate > 0) {
            addHeader("If-Modified-Since", DateUtils.formatDate(new Date(entry.serverDate)));
        }
    }

    private static Map<String, String> c(Map<String, List<String>> map) {
        Map<String, String> hashMap = new HashMap();
        if (map != null) {
            for (String str : map.keySet()) {
                String str2 = (String) ((List) map.get(str)).get(0);
                if (!(str == null || str2 == null)) {
                    hashMap.put(str.toLowerCase(), str2.toLowerCase());
                }
            }
        }
        return hashMap;
    }

    private static String a(String str, HttpRequestParams httpRequestParams) {
        if (httpRequestParams == null) {
            return str;
        }
        String paramString = httpRequestParams.getParamString();
        if (paramString == null || paramString.length() <= 0) {
            return str;
        }
        StringBuilder stringBuilder;
        if (str.indexOf(63) >= 0) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("?");
            stringBuilder.append(paramString);
            return stringBuilder.toString();
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("&");
        stringBuilder.append(paramString);
        return stringBuilder.toString();
    }
}
