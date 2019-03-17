package com.ali.auth.third.core.rpc.a;

import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.Base64;
import com.ali.auth.third.core.util.Base64URLSafe;
import com.xiaomi.scanner.module.amazoncloudconfig.CloudConfigHelper;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a {
    private static ThreadLocal<a> a = new ThreadLocal();
    private static final byte[] b = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0};
    private IvParameterSpec c = null;
    private Cipher d = null;

    private a() {
        b();
    }

    public static a a() {
        if (a.get() == null) {
            a.set(new a());
        }
        return (a) a.get();
    }

    private void b() {
        Throwable e;
        if (this.d == null) {
            try {
                this.d = Cipher.getInstance(CloudConfigHelper.CIPHER);
                this.c = new IvParameterSpec(b);
                return;
            } catch (NoSuchAlgorithmException e2) {
                e = e2;
            } catch (NoSuchPaddingException e3) {
                e = e3;
            }
        } else {
            return;
        }
        SDKLogger.e("auth.AESCrypto", "AES:generateCipher:generate cipher error", e);
    }

    public String a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            byte[] a = a(str.getBytes("UTF-8"), str2.getBytes("UTF-8"));
            return a != null ? Base64.encode(a) : null;
        } catch (Throwable e) {
            SDKLogger.e("auth.AESCrypto", "AES:encrypt:" + str + ":String to Byte Array Error", e);
            return null;
        }
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        Throwable e;
        if (bArr == null || bArr2 == null) {
            return null;
        }
        try {
            this.d.init(1, new SecretKeySpec(bArr2, CloudConfigHelper.AES), this.c);
            return this.d.doFinal(bArr);
        } catch (IllegalBlockSizeException e2) {
            e = e2;
        } catch (BadPaddingException e3) {
            e = e3;
        } catch (InvalidKeyException e4) {
            e = e4;
        } catch (InvalidAlgorithmParameterException e5) {
            e = e5;
        }
        SDKLogger.e("auth.AESCrypto", "AES:encrypt:" + bArr + ":encrypt data error", e);
        return null;
    }

    public String b(String str, String str2) {
        String trim = str.trim();
        int intValue = Integer.valueOf(trim.substring(0, 8), 16).intValue();
        trim = intValue == trim.length() + -8 ? trim.substring(8) : trim.substring(8, intValue + 8);
        intValue = trim.length() % 4;
        if (intValue == 1) {
            trim = trim + "===";
        } else if (intValue == 2) {
            trim = trim + "==";
        } else if (intValue == 3) {
            trim = trim + "=";
        }
        return c(trim, str2);
    }

    public byte[] b(byte[] bArr, byte[] bArr2) {
        Throwable e;
        if (bArr == null) {
            return null;
        }
        try {
            this.d.init(2, new SecretKeySpec(bArr2, CloudConfigHelper.AES), this.c);
            return this.d.doFinal(bArr);
        } catch (IllegalBlockSizeException e2) {
            e = e2;
        } catch (BadPaddingException e3) {
            e = e3;
        } catch (InvalidKeyException e4) {
            e = e4;
        } catch (InvalidAlgorithmParameterException e5) {
            e = e5;
        }
        SDKLogger.e("auth.AESCrypto", "AES:decrypt:" + bArr + ":decrypt data error", e);
        return null;
    }

    public String c(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            byte[] b = b(Base64URLSafe.decode(str), str2.getBytes("UTF-8"));
            if (b != null) {
                return new String(b, "UTF-8");
            }
        } catch (Throwable e) {
            SDKLogger.e("auth.AESCrypto", "AES:decrypt:" + str + ":String to Byte Array Error", e);
        }
        return null;
    }
}
