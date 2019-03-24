package com.miui.internal.analytics;

import android.util.Base64;
import com.miui.internal.net.KeyValuePair;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import miui.security.DigestUtils;
import org.keyczar.Keyczar;

public class SaltGenerate {
    private static final String as = "8007236f-";
    private static final String at = "a2d6-4847-ac83-";
    private static final String au = "c49395ad6d65";

    private SaltGenerate() {
    }

    public static String getKeyFromParams(List<KeyValuePair> list) {
        Collections.sort(list, new Comparator<KeyValuePair>() {
            /* renamed from: a */
            public int compare(KeyValuePair keyValuePair, KeyValuePair keyValuePair2) {
                return keyValuePair.getKey().compareTo(keyValuePair2.getKey());
            }
        });
        StringBuilder stringBuilder = new StringBuilder();
        int i = 1;
        for (KeyValuePair keyValuePair : list) {
            if (i == 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append(keyValuePair.getKey());
            stringBuilder.append("=");
            stringBuilder.append(keyValuePair.getValue());
            i = 0;
        }
        stringBuilder.append("&");
        stringBuilder.append(as);
        stringBuilder.append(at);
        stringBuilder.append(au);
        return String.format("%1$032X", new Object[]{new BigInteger(1, DigestUtils.get(Base64.encodeToString(getBytes(stringBuilder.toString()), 2), "MD5"))});
    }

    private static byte[] getBytes(String str) {
        try {
            return str.getBytes(Keyczar.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }
}
