package com.miui.gallery.net.download;

import com.miui.gallery.util.Log;
import java.security.MessageDigest;
import java.util.Arrays;

public abstract class Verifier {
    private String mAlgorithm;
    private byte[] mHash;

    public static final class Sha1 extends Verifier {
        public Sha1(String hex) {
            super("SHA-1", Verifier.decode(hex, 40));
        }
    }

    public Verifier(String algorithm, byte[] hash) {
        this.mAlgorithm = algorithm;
        this.mHash = hash;
    }

    public final boolean verify(byte[] hash) {
        return Arrays.equals(hash, this.mHash);
    }

    public MessageDigest getInstance() {
        try {
            return MessageDigest.getInstance(this.mAlgorithm);
        } catch (Throwable e) {
            Log.w("Verifier", e);
            return null;
        }
    }

    private static byte[] decode(String hex, int hexCount) {
        if (hex.length() != hexCount) {
            throw new IllegalArgumentException();
        }
        byte[] raw = new byte[(hex.length() / 2)];
        for (int i = 0; i < hex.length(); i++) {
            int digit = Character.digit(hex.charAt(i), 16);
            if (digit == -1) {
                throw new IllegalArgumentException(hex + " is not a hex string");
            }
            int i2;
            int i3 = i / 2;
            byte b = raw[i3];
            if (i % 2 == 0) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            raw[i3] = (byte) ((digit << i2) | b);
        }
        return raw;
    }
}
