package com.uploader.implement.a.c;

import android.text.TextUtils;
import android.util.Pair;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.uploader.export.IUploaderTask;
import com.uploader.implement.c.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import mtopsdk.common.util.SymbolExpUtil;

/* compiled from: ProtocolUtils */
public class b {
    public static Pair<a, com.uploader.implement.a.a.b> a(IUploaderTask task) {
        if (task != null) {
            try {
                if (!(TextUtils.isEmpty(task.getFilePath()) || TextUtils.isEmpty(task.getBizType()))) {
                    com.uploader.implement.a.a.b description = new com.uploader.implement.a.a.b();
                    description.a = task.getFilePath();
                    description.f = task.getBizType();
                    description.i = task.getMetaInfo();
                    description.c = task.getFileType();
                    File file = new File(description.a);
                    if (!file.exists()) {
                        return new Pair(new a("200", "3", "!file.exists()", false), null);
                    }
                    if (file.length() == 0) {
                        return new Pair(new a("200", "9", "file.length() == 0", false), null);
                    }
                    description.b = file;
                    description.d = file.getName();
                    Pair pair = a(file);
                    description.h = (String) pair.first;
                    description.l = (byte[]) pair.second;
                    description.e = UUID.randomUUID().toString().replaceAll("-", "");
                    description.g = file.length();
                    description.k = file.lastModified();
                    return new Pair(null, description);
                }
            } catch (Exception e) {
                if (com.uploader.implement.a.a(16)) {
                    com.uploader.implement.a.a(16, "ProtocolUtils", "createFileDescription", e);
                }
                return new Pair(new a("200", AlibcJsResult.NO_PERMISSION, e.toString(), false), null);
            }
        }
        return new Pair(new a("200", AlibcJsResult.NO_PERMISSION, "task getFilePath == null || getBizType == null", false), null);
    }

    public static String a(String origin) {
        if (TextUtils.isEmpty(origin)) {
            return origin;
        }
        try {
            return URLDecoder.decode(origin, SymbolExpUtil.CHARSET_UTF8);
        } catch (UnsupportedEncodingException e) {
            return origin;
        }
    }

    public static String b(String origin) {
        if (TextUtils.isEmpty(origin)) {
            return origin;
        }
        try {
            return URLEncoder.encode(origin, SymbolExpUtil.CHARSET_UTF8);
        } catch (UnsupportedEncodingException e) {
            return origin;
        }
    }

    public static Pair<String, byte[]> a(File inputFile) throws Exception {
        ByteBuffer buffer;
        NoSuchAlgorithmException e;
        Throwable th;
        Exception e2;
        FileInputStream fis = null;
        try {
            buffer = ByteBuffer.allocate(204800);
        } catch (OutOfMemoryError e3) {
            buffer = ByteBuffer.allocate(131072);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fis2 = new FileInputStream(inputFile);
            int count = 0;
            while (true) {
                try {
                    int readLength = fis2.getChannel().read(buffer);
                    if (readLength <= 0) {
                        break;
                    }
                    messageDigest.update(buffer.array(), buffer.arrayOffset(), readLength);
                    buffer.clear();
                    count++;
                } catch (NoSuchAlgorithmException e4) {
                    e = e4;
                    fis = fis2;
                    try {
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e5) {
                    e2 = e5;
                    fis = fis2;
                    throw e2;
                } catch (Throwable th3) {
                    th = th3;
                    fis = fis2;
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (Exception e6) {
                        }
                    }
                    throw th;
                }
            }
            Pair<String, byte[]> pair = new Pair(a(messageDigest.digest()), count == 1 ? buffer.array() : null);
            if (fis2 != null) {
                try {
                    fis2.close();
                } catch (Exception e7) {
                }
            }
            return pair;
        } catch (NoSuchAlgorithmException e8) {
            e = e8;
            throw e;
        } catch (Exception e9) {
            e2 = e9;
            throw e2;
        }
    }

    private static String a(byte[] byteArray) {
        char[] hexDigits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] resultCharArray = new char[(byteArray.length * 2)];
        int index = 0;
        for (byte b : byteArray) {
            int i = index + 1;
            resultCharArray[index] = hexDigits[(b >>> 4) & 15];
            index = i + 1;
            resultCharArray[i] = hexDigits[b & 15];
        }
        return new String(resultCharArray);
    }
}
