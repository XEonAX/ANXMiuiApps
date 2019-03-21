package com.xiaomi.micloudsdk.request.utils;

import android.util.Base64;
import android.util.Log;
import com.xiaomi.micloudsdk.exception.CipherException;
import com.xiaomi.micloudsdk.utils.AESWithIVCoder;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public class CloudAESWithIVCoder extends AESWithIVCoder {
    public CloudAESWithIVCoder(String aesKey) {
        super(aesKey);
    }

    public String decrypt(String responseBody) throws CipherException {
        checkThreadIdThrow();
        try {
            JSONObject result = new JSONObject(responseBody);
            String edata = result.getString("D");
            String[] elems = result.getString("S").split(":");
            if (elems.length != 2) {
                throw new SecurityException("not 2 columns in security info");
            }
            String nonce = elems[0];
            String returnHash = elems[1];
            String realHash = Base64.encodeToString(encryptHMACSha1(String.format("%s:%s", new Object[]{nonce, new String(edata)}).getBytes(Keyczar.DEFAULT_ENCODING), Base64.decode(this.aesKey, 0)), 11);
            if (returnHash.equals(realHash)) {
                return super.decrypt(edata);
            }
            throw new CipherException("server hash " + returnHash + " and local hash " + realHash + " dismatch");
        } catch (JSONException e) {
            Log.e("CloudAESWithIVCoder", "decrypt error", e);
            throw new CipherException("decrypt error", e);
        } catch (UnsupportedEncodingException e2) {
            Log.e("CloudAESWithIVCoder", "decrypt error", e2);
            throw new CipherException("decrypt error", e2);
        } catch (IllegalArgumentException e3) {
            Log.e("CloudAESWithIVCoder", "decrypt error", e3);
            throw new CipherException("decrypt error", e3);
        } catch (NullPointerException e4) {
            Log.e("CloudAESWithIVCoder", "decrypt error", e4);
            throw new CipherException("decrypt error", e4);
        }
    }

    public static byte[] encryptHMACSha1(byte[] data, byte[] key) {
        String HMAC_SHA1 = "HmacSHA1";
        SecretKeySpec signingKey = new SecretKeySpec(key, "HmacSHA1");
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(signingKey);
            mac.update(data);
            return mac.doFinal();
        } catch (InvalidKeyException e) {
            Log.e("CloudAESWithIVCoder", "encryptHMACSha1 error", e);
        } catch (NoSuchAlgorithmException e2) {
            Log.e("CloudAESWithIVCoder", "encryptHMACSha1 error", e2);
        }
        return null;
    }
}
