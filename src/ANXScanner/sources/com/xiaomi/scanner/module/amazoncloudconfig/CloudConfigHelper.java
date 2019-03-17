package com.xiaomi.scanner.module.amazoncloudconfig;

import android.net.Uri;
import android.net.Uri.Builder;
import android.util.Base64;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.study.utils.DigestUtils;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.SortedSet;
import java.util.TreeSet;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CloudConfigHelper {
    public static final String AES = "AES";
    public static final String CIPHER = "AES/CBC/PKCS5Padding";
    private static final String KEY = "key";
    private static final String SIGN_KEY = "sign";
    private static final Tag TAG = new Tag("CloudConfigHelper");

    public static String wrapperUriWithParameter(String url, String signSalt, Map<String, String> params) {
        Log.d(TAG, "wrapperUriWithParameter");
        if (url == null || signSalt == null) {
            Log.e(TAG, "wrapperUriWithParameter - url == null OR signSalt == null");
            return null;
        }
        SortedSet<String> keys = new TreeSet(params.keySet());
        StringBuilder sb = new StringBuilder();
        for (String key : keys) {
            if (key != null) {
                sb.append(key).append("=").append((String) params.get(key)).append("&");
            }
        }
        sb.append(KEY).append("=").append(signSalt);
        String secretKey = DigestUtils.MD5_32(sb.toString());
        Builder builder = Uri.parse(url).buildUpon();
        for (Entry<String, String> param : params.entrySet()) {
            builder.appendQueryParameter((String) param.getKey(), (String) param.getValue());
        }
        builder.appendQueryParameter("sign", secretKey);
        return builder.build().toString();
    }

    public static byte[] encryptionBody(String secretKey, String time, String body) {
        try {
            time = time + "000";
            byte[] keyRaw = secretKey.getBytes();
            byte[] ivRaw = time.getBytes();
            SecretKeySpec keySpec = new SecretKeySpec(keyRaw, AES);
            Cipher cipher = Cipher.getInstance(CIPHER);
            cipher.init(1, keySpec, new IvParameterSpec(ivRaw));
            return Base64.encode(cipher.doFinal(body.getBytes()), 0);
        } catch (NoSuchAlgorithmException e) {
            Log.e(TAG, "encryptionBody error found ");
        } catch (InvalidKeyException e2) {
            Log.e(TAG, "encryptionBody error found ");
        } catch (InvalidAlgorithmParameterException e3) {
            Log.e(TAG, "encryptionBody error found ");
        } catch (NoSuchPaddingException e4) {
            Log.e(TAG, "encryptionBody error found ");
        } catch (IllegalBlockSizeException e5) {
            Log.e(TAG, "encryptionBody error found ");
        } catch (BadPaddingException e6) {
            Log.e(TAG, "encryptionBody error found ");
        } catch (Exception e7) {
            Log.e(TAG, "encryptionBody error found ");
        }
        return null;
    }
}
