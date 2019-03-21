package com.xiaomi.push.mpcd;

import com.xiaomi.channel.commonutils.android.DataCryptUtils;
import com.xiaomi.channel.commonutils.string.Base64Coder;

public class CDataHelper {
    public static byte[] decryptData(String regSecret, byte[] data) {
        byte[] keyBytes = Base64Coder.decode(regSecret);
        try {
            parseKey(keyBytes);
            return DataCryptUtils.mipushDecrypt(keyBytes, data);
        } catch (Exception e) {
            return null;
        }
    }

    public static byte[] encryptData(String regSecret, byte[] data) {
        byte[] keyBytes = Base64Coder.decode(regSecret);
        try {
            parseKey(keyBytes);
            return DataCryptUtils.mipushEncrypt(keyBytes, data);
        } catch (Exception e) {
            return null;
        }
    }

    private static void parseKey(byte[] key) {
        if (key.length >= 2) {
            key[0] = (byte) 99;
            key[1] = (byte) 100;
        }
    }
}
