package com.xiaomi.network;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.channel.commonutils.network.NameValuePair;
import com.xiaomi.channel.commonutils.network.Network;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.keyczar.Keyczar;

public abstract class HttpUtils {

    public static class DefaultHttpGetProcessor extends HttpProcessor {
        public DefaultHttpGetProcessor() {
            super(1);
        }

        public String visit(Context context, String url, List<NameValuePair> params) throws IOException {
            if (params == null) {
                return Network.downloadXml(context, new URL(url));
            }
            Builder uri = Uri.parse(url).buildUpon();
            for (NameValuePair pair : params) {
                uri.appendQueryParameter(pair.getName(), pair.getValue());
            }
            return Network.downloadXml(context, new URL(uri.toString()));
        }
    }

    public static String get(Context context, String url, List<NameValuePair> params) {
        return httpRequest(context, url, params, new DefaultHttpGetProcessor(), true);
    }

    public static String httpRequest(Context context, String url, List<NameValuePair> params, HttpProcessor processor, boolean useFallback) {
        if (Network.hasNetwork(context)) {
            try {
                ArrayList<String> urls = new ArrayList();
                Fallback fb = null;
                if (useFallback) {
                    fb = HostManager.getInstance().getFallbacksByURL(url);
                    if (fb != null) {
                        urls = fb.getUrls(url);
                    }
                }
                if (!urls.contains(url)) {
                    urls.add(url);
                }
                String result = null;
                Iterator it = urls.iterator();
                while (it.hasNext()) {
                    String newUrl = (String) it.next();
                    List<NameValuePair> newParams = params != null ? new ArrayList(params) : null;
                    long start = System.currentTimeMillis();
                    try {
                        if (!processor.prepare(context, newUrl, newParams)) {
                            return result;
                        }
                        result = processor.visit(context, newUrl, newParams);
                        if (TextUtils.isEmpty(result)) {
                            if (fb != null) {
                                fb.failedUrl(newUrl, System.currentTimeMillis() - start, (long) getTraffic(processor, newUrl, newParams, result), null);
                            }
                        } else if (fb == null) {
                            return result;
                        } else {
                            fb.succeedUrl(newUrl, System.currentTimeMillis() - start, (long) getTraffic(processor, newUrl, newParams, result));
                            return result;
                        }
                    } catch (IOException e) {
                        if (fb != null) {
                            fb.failedUrl(newUrl, System.currentTimeMillis() - start, (long) getTraffic(processor, newUrl, newParams, result), e);
                        }
                        e.printStackTrace();
                    }
                }
                return result;
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    private static int getTraffic(HttpProcessor processor, String url, List<NameValuePair> params, String result) {
        if (processor.getRequestType() == 1) {
            return getHttpGetTxtTraffic(url.length(), getStringUTF8Length(result));
        }
        if (processor.getRequestType() != 2) {
            return -1;
        }
        return getHttpPostTxtTraffic(url.length(), getPostDataLength(params), getStringUTF8Length(result));
    }

    static int getPostDataLength(List<NameValuePair> nameValuePairs) {
        int len = 0;
        for (NameValuePair nvp : nameValuePairs) {
            if (!TextUtils.isEmpty(nvp.getName())) {
                len += nvp.getName().length();
            }
            if (!TextUtils.isEmpty(nvp.getValue())) {
                len += nvp.getValue().length();
            }
        }
        return len * 2;
    }

    static int getStringUTF8Length(String str) {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return str.getBytes(Keyczar.DEFAULT_ENCODING).length;
        } catch (UnsupportedEncodingException e) {
            return i;
        }
    }

    static int getHttpGetTxtTraffic(int urlLen, int dataLen) {
        return (((((dataLen + 243) / 1448) * BaiduSceneResult.VARIOUS_TICKETS) + 1080) + urlLen) + dataLen;
    }

    static int getHttpPostTxtTraffic(int urlLen, int postDataLen, int retDateLen) {
        return ((((((postDataLen + 200) / 1448) * BaiduSceneResult.VARIOUS_TICKETS) + 1011) + postDataLen) + urlLen) + retDateLen;
    }
}
