package com.xiaomi.micloudsdk.utils;

import android.util.Base64;
import com.xiaomi.micloudsdk.exception.CipherException;
import java.security.SecureRandom;

public class AESWithIVCoder implements CryptCoder {
    private final int IV_LENGTH = 16;
    protected String aesKey;
    private AESCoder coder;
    private byte[] ivRaw;
    private long threadId = 0;

    public AESWithIVCoder(String aesKey) {
        this.aesKey = aesKey;
        this.coder = new AESCoder(aesKey) {
            protected byte[] getInitalVector() {
                return AESWithIVCoder.this.ivRaw;
            }
        };
        initThreadInfo();
    }

    private void initThreadInfo() {
        this.threadId = Thread.currentThread().getId();
    }

    public String decrypt(String data) throws CipherException {
        checkThreadIdThrow();
        try {
            AESStringDef aesDef = AESStringDef.getInstance(data);
            if (aesDef.getVersion().equals("1")) {
                this.ivRaw = Base64.decode(aesDef.getIV(), 11);
                return this.coder.decrypt(aesDef.getData());
            }
            throw new CipherException("aes encrypt format version is wrong" + data);
        } catch (Throwable e) {
            throw new CipherException(e);
        }
    }

    public String encrypt(String data) throws CipherException {
        checkThreadIdThrow();
        try {
            this.ivRaw = new byte[16];
            new SecureRandom().nextBytes(this.ivRaw);
            return AESStringDef.getInstance("1", Base64.encodeToString(this.ivRaw, 11), this.coder.encrypt(data)).toString();
        } catch (Throwable e) {
            throw new CipherException(e);
        }
    }

    protected void checkThreadIdThrow() {
        if (Thread.currentThread().getId() != this.threadId) {
            throw new IllegalAccessError("this method can not call concurrently");
        }
    }
}
