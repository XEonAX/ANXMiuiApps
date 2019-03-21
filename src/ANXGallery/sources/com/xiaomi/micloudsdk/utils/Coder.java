package com.xiaomi.micloudsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.TreeMap;
import org.keyczar.Keyczar;

public class Coder {
    public static String hash4SHA1(String plain) {
        return hash4SHA1(plain, 2);
    }

    public static String hash4SHA1(String plain, int base64Flags) {
        if (plain == null) {
            return null;
        }
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(plain.getBytes(Keyczar.DEFAULT_ENCODING)), base64Flags);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        throw new IllegalStateException("failed to SHA1");
    }

    public static String generateSignature(String method, String requestUrl, Map<String, String> params, String security) {
        if (TextUtils.isEmpty(security)) {
            throw new InvalidParameterException("security is not nullable");
        }
        List<String> exps = new ArrayList();
        if (method != null) {
            exps.add(method.toUpperCase());
        }
        if (requestUrl != null) {
            exps.add(Uri.parse(requestUrl).getEncodedPath());
        }
        if (!(params == null || params.isEmpty())) {
            for (Entry<String, String> entry : new TreeMap(params).entrySet()) {
                exps.add(String.format("%s=%s", new Object[]{entry.getKey(), entry.getValue()}));
            }
        }
        exps.add(security);
        boolean first = true;
        StringBuilder sb = new StringBuilder();
        for (String s : exps) {
            if (!first) {
                sb.append('&');
            }
            sb.append(s);
            first = false;
        }
        return hash4SHA1(sb.toString());
    }

    public static String generateNonce(long serverTime) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        DataOutputStream dos = new DataOutputStream(bos);
        try {
            dos.writeLong(new Random().nextLong());
            dos.writeInt((int) (serverTime / 60000));
            dos.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return Base64.encodeToString(bos.toByteArray(), 2);
    }
}
