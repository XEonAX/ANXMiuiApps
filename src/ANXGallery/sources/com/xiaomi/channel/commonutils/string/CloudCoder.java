package com.xiaomi.channel.commonutils.string;

import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.UnsupportedEncodingException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import org.keyczar.Keyczar;

public class CloudCoder {
    public static String hash4SHA1(String plain) {
        try {
            return String.valueOf(Base64Coder.encode(MessageDigest.getInstance("SHA1").digest(plain.getBytes(Keyczar.DEFAULT_ENCODING))));
        } catch (NoSuchAlgorithmException e) {
            MyLog.e("CloudCoder.hash4SHA1 ", e);
        } catch (UnsupportedEncodingException e2) {
            MyLog.e("CloudCoder.hash4SHA1 ", e2);
        } catch (Exception e3) {
            MyLog.e("CloudCoder.hash4SHA1 ", e3);
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
}
