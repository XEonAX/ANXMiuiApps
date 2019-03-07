package com.xiaomi.stat.d;

import android.content.Context;
import android.os.Build.VERSION;
import android.security.KeyPairGeneratorSpec.Builder;
import android.util.Base64;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.crypto.Cipher;
import javax.security.auth.x500.X500Principal;

public class b {
    private static final String a = "AndroidKeyStoreUtils";
    private static final String b = "AndroidKeyStore";
    private static final String c = "RSA/ECB/PKCS1Padding";
    private static final String d = "RSA_KEY";

    public static synchronized String a(Context context, String str) throws Exception {
        String str2 = null;
        synchronized (b.class) {
            Cipher instance = Cipher.getInstance(c);
            KeyStore instance2 = KeyStore.getInstance(b);
            instance2.load(null);
            a(context, instance2);
            Certificate certificate = instance2.getCertificate(d);
            if (certificate != null) {
                instance.init(1, certificate.getPublicKey());
                str2 = Base64.encodeToString(instance.doFinal(str.getBytes("UTF-8")), 0);
            }
        }
        return str2;
    }

    public static synchronized String b(Context context, String str) throws Exception {
        String str2;
        synchronized (b.class) {
            Cipher instance = Cipher.getInstance(c);
            KeyStore instance2 = KeyStore.getInstance(b);
            instance2.load(null);
            a(context, instance2);
            instance.init(2, (PrivateKey) instance2.getKey(d, null));
            str2 = new String(instance.doFinal(Base64.decode(str, 0)), "UTF-8");
        }
        return str2;
    }

    private static void a(Context context, KeyStore keyStore) {
        try {
            if (!keyStore.containsAlias(d) && VERSION.SDK_INT >= 18) {
                if (VERSION.SDK_INT < 23) {
                    a(context);
                } else {
                    a();
                }
            }
        } catch (Throwable e) {
            k.e(a, "createKey e", e);
        }
    }

    private static void a(Context context) throws KeyStoreException, NoSuchProviderException, NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        Calendar gregorianCalendar = new GregorianCalendar();
        Calendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.add(1, 1);
        AlgorithmParameterSpec build = new Builder(context).setAlias(d).setSubject(new X500Principal("CN=RSA_KEY")).setSerialNumber(BigInteger.valueOf(1337)).setStartDate(gregorianCalendar.getTime()).setEndDate(gregorianCalendar2.getTime()).build();
        KeyPairGenerator instance = KeyPairGenerator.getInstance("RSA", b);
        instance.initialize(build);
        instance.generateKeyPair();
    }

    private static void a() throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, InstantiationException, NoSuchMethodException, InvalidAlgorithmParameterException, NoSuchProviderException, NoSuchAlgorithmException {
        Class cls = Class.forName("android.security.keystore.KeyGenParameterSpec$Builder");
        if (cls != null) {
            Constructor constructor = cls.getConstructor(new Class[]{String.class, Integer.TYPE});
            Class cls2 = Class.forName("android.security.keystore.KeyProperties");
            int i = cls2.getDeclaredField("PURPOSE_ENCRYPT").getInt(null);
            int i2 = cls2.getDeclaredField("PURPOSE_DECRYPT").getInt(null);
            Object newInstance = constructor.newInstance(new Object[]{d, Integer.valueOf(i | i2)});
            Method method = cls.getMethod("setDigests", new Class[]{String[].class});
            String str = (String) cls2.getDeclaredField("DIGEST_SHA256").get(null);
            String str2 = (String) cls2.getDeclaredField("DIGEST_SHA512").get(null);
            Object[] objArr = new Object[1];
            objArr[0] = new String[]{str, str2};
            method.invoke(newInstance, objArr);
            Method method2 = cls.getMethod("setEncryptionPaddings", new Class[]{String[].class});
            Object[] objArr2 = new Object[1];
            objArr2[0] = new String[]{(String) cls2.getDeclaredField("ENCRYPTION_PADDING_RSA_PKCS1").get(null)};
            method2.invoke(newInstance, objArr2);
            Object invoke = cls.getMethod("build", new Class[0]).invoke(newInstance, new Object[0]);
            cls = Class.forName("java.security.KeyPairGenerator");
            if (cls != null) {
                KeyPairGenerator keyPairGenerator = (KeyPairGenerator) cls.getMethod("getInstance", new Class[]{String.class, String.class}).invoke(null, new Object[]{"RSA", b});
                cls.getMethod("initialize", new Class[]{AlgorithmParameterSpec.class}).invoke(keyPairGenerator, new Object[]{invoke});
                keyPairGenerator.generateKeyPair();
            }
        }
    }
}
