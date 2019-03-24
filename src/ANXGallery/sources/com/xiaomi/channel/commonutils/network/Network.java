package com.xiaomi.channel.commonutils.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.string.MD5;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;
import org.keyczar.Keyczar;

public class Network {
    public static final Pattern ContentTypePattern_Charset = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    public static final Pattern ContentTypePattern_MimeType = Pattern.compile("([^\\s;]+)(.*)");
    public static final Pattern ContentTypePattern_XmlEncoding = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    public static final class DoneHandlerInputStream extends FilterInputStream {
        private boolean done;

        public DoneHandlerInputStream(InputStream stream) {
            super(stream);
        }

        public int read(byte[] bytes, int offset, int count) throws IOException {
            if (!this.done) {
                int result = super.read(bytes, offset, count);
                if (result != -1) {
                    return result;
                }
            }
            this.done = true;
            return -1;
        }
    }

    public static class HttpHeaderInfo {
        public Map<String, String> AllHeaders;
        public int ResponseCode;

        public String toString() {
            return String.format("resCode = %1$d, headers = %2$s", new Object[]{Integer.valueOf(this.ResponseCode), this.AllHeaders.toString()});
        }
    }

    public static InputStream downloadXmlAsStream(Context context, URL url, boolean noEncryptUrl, String userAgent, String cookie) throws IOException {
        return downloadXmlAsStream(context, url, noEncryptUrl, userAgent, cookie, null, null);
    }

    public static InputStream downloadXmlAsStream(Context context, URL url, boolean noEncryptUrl, String userAgent, String cookie, Map<String, String> requestHdrs, HttpHeaderInfo responseHdrs) throws IOException {
        if (context == null) {
            throw new IllegalArgumentException("context");
        } else if (url == null) {
            throw new IllegalArgumentException("url");
        } else {
            URL newUrl = url;
            if (!noEncryptUrl) {
                newUrl = new URL(encryptURL(url.toString()));
            }
            try {
                HttpURLConnection.setFollowRedirects(true);
                HttpURLConnection conn = getHttpUrlConnection(context, newUrl);
                conn.setConnectTimeout(10000);
                conn.setReadTimeout(15000);
                if (!TextUtils.isEmpty(userAgent)) {
                    conn.setRequestProperty("User-Agent", userAgent);
                }
                if (cookie != null) {
                    conn.setRequestProperty("Cookie", cookie);
                }
                if (requestHdrs != null) {
                    for (String key : requestHdrs.keySet()) {
                        conn.setRequestProperty(key, (String) requestHdrs.get(key));
                    }
                }
                if (responseHdrs != null) {
                    if (url.getProtocol().equals("http") || url.getProtocol().equals("https")) {
                        responseHdrs.ResponseCode = conn.getResponseCode();
                        if (responseHdrs.AllHeaders == null) {
                            responseHdrs.AllHeaders = new HashMap();
                        }
                        int i = 0;
                        while (true) {
                            String name = conn.getHeaderFieldKey(i);
                            String value = conn.getHeaderField(i);
                            if (name == null && value == null) {
                                break;
                            }
                            if (!(TextUtils.isEmpty(name) || TextUtils.isEmpty(value))) {
                                responseHdrs.AllHeaders.put(name, value);
                            }
                            i++;
                        }
                    }
                }
                return new DoneHandlerInputStream(conn.getInputStream());
            } catch (IOException e) {
                throw new IOException("IOException:" + e.getClass().getSimpleName());
            } catch (Throwable e2) {
                IOException iOException = new IOException(e2.getMessage());
            }
        }
    }

    public static String downloadXml(Context context, URL url) throws IOException {
        return downloadXml(context, url, false, null, Keyczar.DEFAULT_ENCODING, null);
    }

    public static String downloadXml(Context context, URL url, boolean noEncryptUrl, String userAgent, String encoding, String cookie) throws IOException {
        InputStream responseStream = null;
        try {
            responseStream = downloadXmlAsStream(context, url, noEncryptUrl, userAgent, cookie);
            StringBuilder sbReponse = new StringBuilder(1024);
            BufferedReader reader = new BufferedReader(new InputStreamReader(responseStream, encoding));
            char[] line = new char[4096];
            while (true) {
                int len = reader.read(line);
                if (-1 == len) {
                    break;
                }
                sbReponse.append(line, 0, len);
            }
            return sbReponse.toString();
        } finally {
            IOUtils.closeQuietly(responseStream);
        }
    }

    public static String encryptURL(String strUrl) {
        if (TextUtils.isEmpty(strUrl)) {
            return null;
        }
        String str = new String();
        String strTemp = String.format("%sbe988a6134bc8254465424e5a70ef037", new Object[]{strUrl});
        return String.format("%s&key=%s", new Object[]{strUrl, MD5.MD5_32(strTemp)});
    }

    public static String uploadFile(String url, Map<String, String> headers, File file, String fileKey) throws IOException {
        IOException e;
        DataOutputStream dataOutputStream;
        Throwable th;
        Throwable e2;
        if (!file.exists()) {
            return null;
        }
        String filename = file.getName();
        String lineEnd = "\r\n";
        String twoHyphens = "--";
        String boundary = "*****";
        FileInputStream fileInputStream = null;
        BufferedReader rd = null;
        try {
            FileInputStream fileInputStream2;
            HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setReadTimeout(15000);
            conn.setConnectTimeout(10000);
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.setUseCaches(false);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Connection", "Keep-Alive");
            conn.setRequestProperty("Content-Type", "multipart/form-data;boundary=*****");
            if (headers != null) {
                for (Entry<String, String> entry : headers.entrySet()) {
                    conn.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            conn.setFixedLengthStreamingMode(((filename.length() + 77) + ((int) file.length())) + fileKey.length());
            DataOutputStream dos = new DataOutputStream(conn.getOutputStream());
            try {
                dos.writeBytes("--*****\r\n");
                dos.writeBytes("Content-Disposition: form-data; name=\"" + fileKey + "\";filename=\"" + file.getName() + "\"" + "\r\n");
                dos.writeBytes("\r\n");
                fileInputStream2 = new FileInputStream(file);
            } catch (IOException e3) {
                e = e3;
                dataOutputStream = dos;
                try {
                    throw new IOException("IOException:" + e.getClass().getSimpleName());
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(fileInputStream);
                    IOUtils.closeQuietly(rd);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream = dos;
                IOUtils.closeQuietly(fileInputStream);
                IOUtils.closeQuietly(rd);
                throw th;
            }
            try {
                byte[] buffer = new byte[1024];
                while (true) {
                    int bytesRead = fileInputStream2.read(buffer);
                    if (bytesRead == -1) {
                        break;
                    }
                    dos.write(buffer, 0, bytesRead);
                    dos.flush();
                }
                dos.writeBytes("\r\n");
                dos.writeBytes("--");
                dos.writeBytes("*****");
                dos.writeBytes("--");
                dos.writeBytes("\r\n");
                dos.flush();
                StringBuffer sb = new StringBuffer();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new DoneHandlerInputStream(conn.getInputStream())));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            sb.append(line);
                        } else {
                            String stringBuffer = sb.toString();
                            IOUtils.closeQuietly(fileInputStream2);
                            IOUtils.closeQuietly(bufferedReader);
                            return stringBuffer;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        rd = bufferedReader;
                        dataOutputStream = dos;
                        fileInputStream = fileInputStream2;
                        throw new IOException("IOException:" + e.getClass().getSimpleName());
                    } catch (Throwable th4) {
                        th = th4;
                        rd = bufferedReader;
                        dataOutputStream = dos;
                        fileInputStream = fileInputStream2;
                        IOUtils.closeQuietly(fileInputStream);
                        IOUtils.closeQuietly(rd);
                        throw th;
                    }
                }
            } catch (IOException e5) {
                e = e5;
                dataOutputStream = dos;
                fileInputStream = fileInputStream2;
                throw new IOException("IOException:" + e.getClass().getSimpleName());
            } catch (Throwable th5) {
                th = th5;
                dataOutputStream = dos;
                fileInputStream = fileInputStream2;
                IOUtils.closeQuietly(fileInputStream);
                IOUtils.closeQuietly(rd);
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            throw new IOException("IOException:" + e.getClass().getSimpleName());
        } catch (Throwable th6) {
            e2 = th6;
            throw new IOException(e2.getMessage());
        }
    }

    public static int getActiveNetworkType(Context context) {
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
            if (cm == null) {
                return -1;
            }
            try {
                NetworkInfo info = cm.getActiveNetworkInfo();
                if (info != null) {
                    return info.getType();
                }
                return -1;
            } catch (Exception e) {
                return -1;
            }
        } catch (Exception e2) {
            return -1;
        }
    }

    public static boolean isCtwap(Context context) {
        if (!"CN".equalsIgnoreCase(((TelephonyManager) context.getSystemService("phone")).getSimCountryIso())) {
            return false;
        }
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
            if (cm == null) {
                return false;
            }
            try {
                NetworkInfo info = cm.getActiveNetworkInfo();
                if (info == null) {
                    return false;
                }
                String extraInfo = info.getExtraInfo();
                if (TextUtils.isEmpty(extraInfo) || extraInfo.length() < 3 || !extraInfo.contains("ctwap")) {
                    return false;
                }
                return true;
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static HttpURLConnection getHttpUrlConnection(Context context, URL url) throws IOException {
        if (!"http".equals(url.getProtocol())) {
            return (HttpURLConnection) url.openConnection();
        }
        if (isCtwap(context)) {
            return (HttpURLConnection) url.openConnection(new Proxy(Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
        }
        return (HttpURLConnection) url.openConnection();
    }

    public static boolean hasNetwork(Context context) {
        return getActiveNetworkType(context) >= 0;
    }

    public static boolean isConnected(Context context) {
        NetworkInfo currentNetworkInfo = null;
        try {
            currentNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
        }
        return currentNetworkInfo != null && currentNetworkInfo.isConnected();
    }

    public static boolean isWIFIConnected(Context context) {
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
            if (cm == null) {
                return false;
            }
            try {
                NetworkInfo info = cm.getActiveNetworkInfo();
                if (info == null) {
                    return false;
                }
                boolean z;
                if (1 == info.getType()) {
                    z = true;
                } else {
                    z = false;
                }
                return z;
            } catch (Exception e) {
                return false;
            }
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean isUsingMobileDataConnection(Context context) {
        return is4GConnected(context) || is3GConnected(context) || is2GConnected(context);
    }

    public static boolean is4GConnected(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        if (info != null && info.getType() == 0 && 13 == info.getSubtype()) {
            return true;
        }
        return false;
    }

    public static boolean is3GConnected(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        if (info == null || info.getType() != 0) {
            return false;
        }
        String strSubTypeName = info.getSubtypeName();
        if ("TD-SCDMA".equalsIgnoreCase(strSubTypeName) || "CDMA2000".equalsIgnoreCase(strSubTypeName) || "WCDMA".equalsIgnoreCase(strSubTypeName)) {
            return true;
        }
        switch (info.getSubtype()) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return true;
            default:
                return false;
        }
    }

    public static boolean is2GConnected(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        if (info == null || info.getType() != 0) {
            return false;
        }
        switch (info.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return true;
            default:
                return false;
        }
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
            if (cm == null) {
                return null;
            }
            return cm.getActiveNetworkInfo();
        } catch (Exception e) {
            return null;
        }
    }

    public static String getActiveConnPoint(Context context) {
        if (isWIFIConnected(context)) {
            return "wifi";
        }
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
            if (cm == null) {
                return "";
            }
            try {
                NetworkInfo info = cm.getActiveNetworkInfo();
                if (info == null) {
                    return "";
                }
                return (info.getTypeName() + "-" + info.getSubtypeName() + "-" + info.getExtraInfo()).toLowerCase();
            } catch (Exception e) {
                return "";
            }
        } catch (Exception e2) {
            return "";
        }
    }

    public static HttpResponse doHttpPost(Context context, String url, Map<String, String> paramsMap) throws IOException {
        return httpRequest(context, url, "POST", null, fromParamsMapToString(paramsMap));
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x014b A:{ExcHandler: all (r5_2 'e' java.lang.Throwable), PHI: r10 r11 , Splitter: B:1:0x0008} */
    /* JADX WARNING: Missing block: B:40:0x014b, code:
            r5 = move-exception;
     */
    /* JADX WARNING: Missing block: B:42:?, code:
            r16 = new java.io.IOException(r5.getMessage());
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static HttpResponse httpRequest(Context context, String url, String httpMethod, Map<String, String> headers, String body) throws IOException {
        HttpResponse httpResponse = new HttpResponse();
        OutputStream outputStream = null;
        BufferedReader rd = null;
        HttpURLConnection conn;
        try {
            conn = getHttpUrlConnection(context, getDefaultStreamHandlerURL(url));
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(15000);
            if (httpMethod == null) {
                httpMethod = "GET";
            }
            conn.setRequestMethod(httpMethod);
            if (headers != null) {
                for (String key : headers.keySet()) {
                    conn.setRequestProperty(key, (String) headers.get(key));
                }
            }
            if (!TextUtils.isEmpty(body)) {
                conn.setDoOutput(true);
                byte[] b = body.getBytes();
                outputStream = conn.getOutputStream();
                outputStream.write(b, 0, b.length);
                outputStream.flush();
                outputStream.close();
                outputStream = null;
            }
            httpResponse.responseCode = conn.getResponseCode();
            Log.d("com.xiaomi.common.Network", "Http POST Response Code: " + httpResponse.responseCode);
            int i = 0;
            while (true) {
                String name = conn.getHeaderFieldKey(i);
                String value = conn.getHeaderField(i);
                if (name == null && value == null) {
                    break;
                }
                httpResponse.headers.put(name, value);
                i = (i + 1) + 1;
            }
            rd = new BufferedReader(new InputStreamReader(new DoneHandlerInputStream(conn.getInputStream())));
        } catch (IOException e) {
            rd = new BufferedReader(new InputStreamReader(new DoneHandlerInputStream(conn.getErrorStream())));
        } catch (IOException e2) {
            throw new IOException("err while request " + url + ":" + e2.getClass().getSimpleName());
        } catch (Throwable th) {
            IOUtils.closeQuietly(outputStream);
            IOUtils.closeQuietly(rd);
        }
        StringBuffer tempStr = new StringBuffer();
        String crlf = System.getProperty("line.separator");
        for (String tempLine = rd.readLine(); tempLine != null; tempLine = rd.readLine()) {
            tempStr.append(tempLine);
            tempStr.append(crlf);
        }
        httpResponse.responseString = tempStr.toString();
        rd.close();
        IOUtils.closeQuietly(outputStream);
        IOUtils.closeQuietly(null);
        return httpResponse;
    }

    public static String fromParamsMapToString(Map<String, String> paramsMap) {
        if (paramsMap == null || paramsMap.size() <= 0) {
            return null;
        }
        StringBuffer params = new StringBuffer();
        for (Entry<String, String> entry : paramsMap.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                try {
                    params.append(URLEncoder.encode((String) entry.getKey(), Keyczar.DEFAULT_ENCODING));
                    params.append("=");
                    params.append(URLEncoder.encode((String) entry.getValue(), Keyczar.DEFAULT_ENCODING));
                    params.append("&");
                } catch (UnsupportedEncodingException e) {
                    Log.d("com.xiaomi.common.Network", "Failed to convert from params map to string: " + e.toString());
                    Log.d("com.xiaomi.common.Network", "map: " + paramsMap.toString());
                    return null;
                }
            }
        }
        if (params.length() > 0) {
            params = params.deleteCharAt(params.length() - 1);
        }
        return params.toString();
    }

    private static URL getDefaultStreamHandlerURL(String url) throws MalformedURLException {
        return new URL(url);
    }
}
