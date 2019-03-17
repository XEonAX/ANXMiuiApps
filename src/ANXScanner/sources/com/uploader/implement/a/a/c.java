package com.uploader.implement.a.a;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Pair;
import com.uploader.implement.a;
import com.uploader.implement.a.c.b;
import com.uploader.implement.a.e;
import com.uploader.implement.a.h;
import com.uploader.implement.b.a.f;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONObject;

/* compiled from: FileUploadActionRequest */
public class c implements e {
    private boolean a;
    private b b;
    private f c;
    private long d;
    private final Pair<Boolean, Pair<String, Integer>> e;
    private final int f = hashCode();
    private final h g;
    private final String h;
    private final com.uploader.implement.c i;

    public c(com.uploader.implement.c config, b description, String method, long offset, long length, boolean needFrameHeader) throws Exception {
        this.i = config;
        this.b = description;
        this.a = needFrameHeader;
        this.e = config.a.d();
        if (this.e == null) {
            throw new RuntimeException("currentUploadTarget is null");
        }
        this.h = (String) config.a.a().first;
        this.d = config.a.f();
        this.g = new h(description.b, description.k, offset, length, null, a(offset, length, method).getBytes("UTF-8"), offset < description.g ? "\r\n\r\n".getBytes() : null, description.l);
    }

    /* renamed from: c */
    public f a() {
        if (this.c != null) {
            return this.c;
        }
        f target = new f((String) ((Pair) this.e.second).first, ((Integer) ((Pair) this.e.second).second).intValue(), true, ((Boolean) this.e.first).booleanValue());
        this.c = target;
        return target;
    }

    public h b() {
        return this.g;
    }

    /* JADX WARNING: Missing block: B:27:0x0043, code:
            r6 = r15 - r0.available();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @NonNull
    public Pair<com.uploader.implement.a.f, Integer> a(Map<String, String> header, byte[] data, int offset, int length) {
        ByteArrayInputStream bis = new ByteArrayInputStream(data, offset, length);
        int sign = 0;
        int size = -1;
        while (true) {
            try {
                int c = bis.read();
                if (c != -1) {
                    if (c == 13) {
                        if (sign == 0 || sign == 2) {
                            sign++;
                        }
                    } else if (c == 10 && (sign == 1 || sign == 3)) {
                        sign++;
                        if (sign == 4) {
                            break;
                        }
                    }
                    if (sign != 0) {
                        sign = 0;
                    }
                }
            } catch (Exception e) {
                if (a.a(16)) {
                    a.a(16, "FileUploadActionRequest", this.f + " divide, exception", e);
                }
                try {
                    bis.close();
                } catch (IOException e2) {
                    if (a.a(8)) {
                        a.a(8, "FileUploadActionRequest", this.f + " divide", e2);
                    }
                }
            } catch (Throwable th) {
                try {
                    bis.close();
                } catch (IOException e22) {
                    if (a.a(8)) {
                        a.a(8, "FileUploadActionRequest", this.f + " divide", e22);
                    }
                }
                throw th;
            }
        }
        try {
            bis.close();
            break;
        } catch (IOException e222) {
            if (a.a(8)) {
                a.a(8, "FileUploadActionRequest", this.f + " divide", e222);
            }
        }
        if (size <= -1) {
            return new Pair(null, Integer.valueOf(0));
        }
        com.uploader.implement.a.f response = b(header, data, offset, size);
        if (response == null) {
            size = -1;
        }
        return new Pair(response, Integer.valueOf(size));
    }

    private com.uploader.implement.a.f b(Map<String, String> header, byte[] data, int offset, int length) {
        com.uploader.implement.a.f response;
        if (header == null) {
            header = new HashMap();
        }
        BufferedReader reader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(data, offset, length)));
        header.put("divided_length", Integer.toString(length));
        while (true) {
            try {
                String content = reader.readLine();
                if (content == null) {
                    try {
                        break;
                    } catch (IOException e) {
                    }
                } else if (!TextUtils.isEmpty(content)) {
                    int size = content.length();
                    int index = content.indexOf(SymbolExpUtil.SYMBOL_COLON);
                    if (index > 1) {
                        String key = content.substring(0, index);
                        if (index < size) {
                            Map<String, String> map = header;
                            map.put(key.trim(), b.a(content.substring(index + 1, size)));
                        }
                    } else {
                        index = content.indexOf(" ");
                        if (index > 1) {
                            String code = content.substring(0, index);
                            if (index < size) {
                                String msg = content.substring(index + 1, size);
                                header.put("response_code", code);
                                header.put("response_msg", msg);
                            }
                        }
                    }
                }
            } catch (IOException e2) {
                if (a.a(16)) {
                    a.a(16, "FileUploadActionRequest", this.f + " decode response header failed", e2);
                }
                try {
                    reader.close();
                    return null;
                } catch (IOException e3) {
                    return null;
                }
            } catch (Throwable th) {
                try {
                    reader.close();
                } catch (IOException e4) {
                }
                throw th;
            }
        }
        reader.close();
        if (header.get("x-arup-process") != null) {
            response = new com.uploader.implement.a.b.a(2, header);
        } else {
            if (header.get("x-arup-offset") != null) {
                response = new com.uploader.implement.a.b.a(3, header);
            } else {
                if (header.get("x-arup-file-status") != null) {
                    response = new com.uploader.implement.a.b.a(4, header);
                } else {
                    if (header.get("x-arup-error-code") != null) {
                        response = new com.uploader.implement.a.b.a(5, header);
                    } else {
                        if (header.get("x-arup-session-status") == null) {
                            return null;
                        }
                        response = new com.uploader.implement.a.b.a(6, header);
                    }
                }
            }
        }
        header.put("divided_length", Integer.toString(length));
        if (!a.a(4)) {
            return response;
        }
        a.a(4, "FileUploadActionRequest", this.f + " decode actionResponse header:" + header.toString());
        return response;
    }

    private final String a(long offset, long length, String method) throws Exception {
        StringBuilder bytesString = null;
        if (this.a) {
            String appKey = this.i.b.getCurrentElement().appKey;
            String utdid = this.i.b.getUtdid();
            String appVersion = this.i.b.getAppVersion();
            String timestamp = String.valueOf(this.d + (System.currentTimeMillis() / 1000));
            HashMap headers = new HashMap();
            headers.put(com.alipay.sdk.cons.c.f, "arup.alibaba.com");
            headers.put("content-type", "application/offset+octet-stream");
            headers.put("x-arup-version", "2.1");
            headers.put("x-arup-device-id", utdid);
            headers.put("x-arup-appkey", appKey);
            headers.put("x-arup-appversion", appVersion);
            headers.put("x-arup-file-count", Integer.toString(1));
            String userId = this.i.b.getUserId();
            if (!TextUtils.isEmpty(userId)) {
                headers.put("x-arup-userinfo", userId);
            }
            headers.put("x-arup-timestamp", timestamp);
            if ("patch".equals(method)) {
                StringBuilder offsetString = new StringBuilder(36);
                offsetString.append(this.b.e).append("=").append(offset);
                headers.put("x-arup-req-offset", offsetString.toString());
                offsetString.setLength(0);
                offsetString.append(this.b.e).append("=").append(String.valueOf(this.b.g));
                headers.put("x-arup-req-offset-file-length", offsetString.toString());
            }
            StringBuilder input = new StringBuilder(128);
            input.append(this.b.f).append("&");
            input.append(this.h).append("&");
            input.append(appKey).append("&");
            input.append(appVersion).append("&");
            input.append(utdid).append("&");
            input.append(timestamp);
            String sign = this.i.b.signature(input.toString());
            if (TextUtils.isEmpty(sign)) {
                if (a.a(16)) {
                    a.a(16, "FileUploadActionRequest", this.f + " compute upload sign failed.");
                }
                throw new Exception("compute api sign failed.");
            }
            headers.put("x-arup-sign", sign);
            bytesString = new StringBuilder(128);
            bytesString.append(method).append(" ").append("/").append("f").append("/").append(this.b.f).append("/").append(this.h).append(" ").append("HTTP/1.1").append("\r\n");
            for (Entry entry : headers.entrySet()) {
                bytesString.append((String) entry.getKey()).append(SymbolExpUtil.SYMBOL_COLON).append(b.b((String) entry.getValue())).append("\r\n");
            }
            bytesString.append("\r\n");
        }
        if (offset < this.b.g) {
            if (bytesString == null) {
                bytesString = new StringBuilder(128);
            }
            bytesString.append("--").append(this.b.e).append("--").append("\r\n");
            if (this.b.i != null && this.b.i.size() > 0) {
                JSONObject mate = new JSONObject();
                for (Entry entry2 : this.b.i.entrySet()) {
                    String key = (String) entry2.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        mate.put(key, entry2.getValue());
                    }
                }
                bytesString.append("x-arup-meta").append(SymbolExpUtil.SYMBOL_COLON).append(b.b(mate.toString())).append("\r\n");
            }
            bytesString.append("x-arup-file-md5").append(SymbolExpUtil.SYMBOL_COLON).append(b.b(this.b.h)).append("\r\n");
            bytesString.append("x-arup-file-name").append(SymbolExpUtil.SYMBOL_COLON).append(b.b(this.b.d)).append("\r\n");
            bytesString.append("x-arup-range").append(SymbolExpUtil.SYMBOL_COLON).append(offset).append(",").append(length).append("\r\n");
            bytesString.append("x-arup-file-length").append(SymbolExpUtil.SYMBOL_COLON).append(String.valueOf(this.b.g)).append("\r\n\r\n");
        }
        if (bytesString == null) {
            return null;
        }
        if (a.a(2)) {
            String s = bytesString.toString();
            String result = "";
            int start = 0;
            while (true) {
                int index = s.indexOf("\r\n", start);
                if (index == -1) {
                    break;
                }
                result = result + s.substring(start, index) + "\n";
                start = index + "\r\n".length();
            }
            a.a(2, "FileUploadActionRequest", this.f + " create upload header:" + result);
        }
        return bytesString.toString();
    }
}
