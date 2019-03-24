package com.miui.internal.analytics;

import android.content.MiuiIntent;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.miui.internal.net.KeyValuePair;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.vip.utils.AuthHttpRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import miui.hybrid.Response;
import miui.util.SoftReferenceSingleton;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public class XiaomiServer {
    private static final String C = "http://tracking.miui.com/tracks";
    private static final String SUBJECT = "miui_apps";
    private static final String TAG = "XIAOMI_SERVER";
    private static final String TYPE = "t";
    private static final String VALUE = "value";
    private static final String aL = "https://tracking.miui.com/tracks";
    private static final String aM = "s";
    private static final SoftReferenceSingleton<XiaomiServer> s = new SoftReferenceSingleton<XiaomiServer>() {
        /* renamed from: i */
        protected XiaomiServer createInstance() {
            return new XiaomiServer();
        }
    };

    /* synthetic */ XiaomiServer(AnonymousClass1 anonymousClass1) {
        this();
    }

    private XiaomiServer() {
    }

    public static XiaomiServer getInstance() {
        return (XiaomiServer) s.get();
    }

    public void init() {
    }

    public void close() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x00e9 A:{SYNTHETIC, Splitter: B:56:0x00e9} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00db A:{SYNTHETIC, Splitter: B:50:0x00db} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00cd A:{SYNTHETIC, Splitter: B:44:0x00cd} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00f0 A:{SYNTHETIC, Splitter: B:60:0x00f0} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean send(Map<String, Object> map) {
        Throwable e;
        boolean z = false;
        if (map == null) {
            return false;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            String str;
            String encodeToString = Base64.encodeToString(new JSONObject(map).toString().getBytes(), 2);
            if (DeviceHelper.IS_INTERNATIONAL_BUILD) {
                str = aL;
            } else {
                str = C;
            }
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            OutputStream outputStream;
            try {
                List linkedList = new LinkedList();
                linkedList.add(new KeyValuePair(TYPE, SUBJECT));
                linkedList.add(new KeyValuePair("value", encodeToString));
                linkedList.add(new KeyValuePair(aM, SaltGenerate.getKeyFromParams(linkedList)));
                httpURLConnection2.setRequestMethod(AuthHttpRequest.METHOD_POST);
                Object fromParamListToString = fromParamListToString(linkedList);
                if (!TextUtils.isEmpty(fromParamListToString)) {
                    httpURLConnection2.setDoOutput(true);
                    byte[] bytes = fromParamListToString.getBytes();
                    outputStream = httpURLConnection2.getOutputStream();
                    outputStream.write(bytes, 0, bytes.length);
                    outputStream.flush();
                    outputStream.close();
                }
                if (httpURLConnection2.getResponseCode() == Response.CODE_GENERIC_ERROR) {
                    encodeToString = new JSONObject(readResponseContent(httpURLConnection2.getInputStream())).getString("status");
                    if (encodeToString.equals(MiuiIntent.COMMAND_ICON_PANEL_OK)) {
                        z = true;
                    } else {
                        Log.i(TAG, encodeToString);
                    }
                }
                if (httpURLConnection2 != null) {
                    try {
                        httpURLConnection2.disconnect();
                    } catch (Exception e2) {
                    }
                }
            } catch (UnsupportedEncodingException e3) {
                e = e3;
                httpURLConnection = httpURLConnection2;
                Log.e(TAG, "UnsupportedEncodingException catched when sending data", e);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return z;
            } catch (IOException e4) {
                e = e4;
                httpURLConnection = httpURLConnection2;
                Log.e(TAG, "IOException catched when sending data", e);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return z;
            } catch (Exception e5) {
                e = e5;
                httpURLConnection = httpURLConnection2;
                try {
                    Log.e(TAG, "Exception catched when sending data", e);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return z;
                } catch (Throwable th) {
                    e = th;
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                    }
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
                if (httpURLConnection2 != null) {
                    try {
                        httpURLConnection2.disconnect();
                    } catch (Exception e6) {
                    }
                }
                throw e;
            }
        } catch (UnsupportedEncodingException e7) {
            e = e7;
            Log.e(TAG, "UnsupportedEncodingException catched when sending data", e);
            if (httpURLConnection != null) {
            }
            return z;
        } catch (IOException e8) {
            e = e8;
            Log.e(TAG, "IOException catched when sending data", e);
            if (httpURLConnection != null) {
            }
            return z;
        } catch (Exception e9) {
            e = e9;
            Log.e(TAG, "Exception catched when sending data", e);
            if (httpURLConnection != null) {
            }
            return z;
        }
        return z;
    }

    public static String readResponseContent(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            String str = new String(byteArrayOutputStream.toByteArray(), Keyczar.DEFAULT_ENCODING);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception e2) {
            }
            return str;
        } catch (Exception e3) {
            e3.printStackTrace();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e4) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception e5) {
            }
            return null;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e6) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (Exception e7) {
            }
        }
    }

    public static String fromParamListToString(List<KeyValuePair> list) {
        StringBuffer stringBuffer = new StringBuffer();
        if (list != null) {
            for (KeyValuePair keyValuePair : list) {
                try {
                    if (keyValuePair.getValue() != null) {
                        stringBuffer.append(URLEncoder.encode(keyValuePair.getKey(), Keyczar.DEFAULT_ENCODING));
                        stringBuffer.append("=");
                        stringBuffer.append(URLEncoder.encode(keyValuePair.getValue(), Keyczar.DEFAULT_ENCODING));
                        stringBuffer.append("&");
                    }
                } catch (Exception e) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Failed to convert from param list to string: ");
                    stringBuilder.append(e.toString());
                    Log.i(str, stringBuilder.toString());
                    String str2 = TAG;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("pair: ");
                    stringBuilder2.append(keyValuePair.toString());
                    Log.i(str2, stringBuilder2.toString());
                    return null;
                }
            }
        }
        if (stringBuffer.length() > 0) {
            stringBuffer = stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }
}
