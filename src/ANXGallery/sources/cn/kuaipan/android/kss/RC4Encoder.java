package cn.kuaipan.android.kss;

import cn.kuaipan.android.http.IKscDecoder;
import cn.kuaipan.android.utils.RC4;
import java.security.InvalidKeyException;

public class RC4Encoder implements IKscDecoder {
    private byte[] buf;
    private int bufUsed = 0;
    private final byte[] key;
    private final RC4 rc4;

    public RC4Encoder(byte[] key) throws InvalidKeyException {
        this.key = key;
        this.rc4 = new RC4();
        this.rc4.makeKey(key);
        this.buf = new byte[8192];
    }

    public void init() {
        try {
            this.rc4.makeKey(this.key);
            this.bufUsed = 0;
        } catch (InvalidKeyException e) {
        }
    }

    public boolean supportRepeat() {
        return true;
    }

    public void skip(long size) {
        try {
            this.rc4.makeKey(this.key);
            this.bufUsed = 0;
            this.rc4.skip(size);
        } catch (InvalidKeyException e) {
        }
    }

    public void end() {
        this.bufUsed = 0;
    }

    public int needFill() {
        return Math.max(8192 - this.bufUsed, 0);
    }

    public synchronized void fillData(byte[] input, int inputOffset, int inputLen) {
        int needSize = this.bufUsed + inputLen;
        if (needSize > this.buf.length) {
            byte[] old = this.buf;
            int newSize = old.length << 1;
            while (needSize > newSize) {
                newSize <<= 1;
            }
            this.buf = new byte[newSize];
            System.arraycopy(old, 0, this.buf, 0, this.bufUsed);
        }
        this.rc4.genRC4(input, inputOffset, inputLen, input, inputOffset);
        System.arraycopy(input, inputOffset, this.buf, this.bufUsed, inputLen);
        this.bufUsed = needSize;
    }

    public synchronized int readDecodeData(byte[] output, int outputOffset, int outputLen) {
        int len = 0;
        synchronized (this) {
            if (this.bufUsed > 0) {
                len = Math.min(Math.min(this.bufUsed, outputLen), output.length - outputOffset);
                System.arraycopy(this.buf, 0, output, outputOffset, len);
                int rel = this.bufUsed - len;
                if (rel > 0) {
                    System.arraycopy(this.buf, len, this.buf, 0, rel);
                }
                this.bufUsed = rel;
            }
        }
        return len;
    }

    public boolean canEnd() {
        return true;
    }

    public RC4Encoder clone() {
        try {
            return new RC4Encoder(this.key);
        } catch (InvalidKeyException e) {
            return null;
        }
    }
}
