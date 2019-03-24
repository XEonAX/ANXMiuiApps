package miui.security;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.KeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;

public class CipherUtils {
    public static final String ALOGIRHTM_RSA = "RSA/ECB/PKCS1Padding";
    public static final String KEY_ALOGIRHTM_RSA = "RSA";

    private static class CipherStream extends InputStream {
        final Cipher Fe;
        final InputStream Ff;
        boolean Fg;
        byte[] Fh;
        byte[] Fi;
        int Fj;

        CipherStream(Cipher cipher, InputStream inputStream) throws IOException {
            this.Fe = cipher;
            this.Ff = inputStream;
            this.Fh = new byte[cipher.getBlockSize()];
            update();
        }

        public int available() throws IOException {
            if (this.Fi == null || this.Fi.length <= this.Fj) {
                return 0;
            }
            return (this.Fi.length - this.Fj) + this.Ff.available();
        }

        public int read() throws IOException {
            if (this.Fi == null) {
                return -1;
            }
            if (this.Fj < this.Fi.length) {
                byte[] bArr = this.Fi;
                int i = this.Fj;
                this.Fj = i + 1;
                return bArr[i];
            }
            this.Fi = null;
            if (this.Fg) {
                return -1;
            }
            update();
            return read();
        }

        private void update() throws IOException {
            int read = this.Ff.read(this.Fh);
            if (read > 0) {
                this.Fi = this.Fe.update(this.Fh, 0, read);
                this.Fj = 0;
                return;
            }
            this.Fg = true;
            try {
                this.Fi = this.Fe.doFinal();
                this.Fj = 0;
            } catch (Throwable e) {
                throw new RuntimeException("IllegalBlockSizeException", e);
            } catch (Throwable e2) {
                throw new RuntimeException("BadPaddingException", e2);
            }
        }
    }

    protected CipherUtils() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static PublicKey getPublicKey(KeySpec keySpec, String str) {
        StringBuilder stringBuilder;
        try {
            return KeyFactory.getInstance(str).generatePublic(keySpec);
        } catch (Throwable e) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("NoSuchAlgorithmException catched for algorithm ");
            stringBuilder.append(str);
            throw new RuntimeException(stringBuilder.toString(), e);
        } catch (Throwable e2) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("InvalidKeySpecException catched for keySpec ");
            stringBuilder.append(keySpec.getClass().getName());
            stringBuilder.append(":");
            stringBuilder.append(keySpec);
            throw new RuntimeException(stringBuilder.toString(), e2);
        }
    }

    public static PublicKey getRsaPublicKey(String str, String str2, int i) {
        return getPublicKey(new RSAPublicKeySpec(new BigInteger(str, i), new BigInteger(str2, i)), "RSA");
    }

    public static PrivateKey getPrivateKey(KeySpec keySpec, String str) {
        StringBuilder stringBuilder;
        try {
            return KeyFactory.getInstance(str).generatePrivate(keySpec);
        } catch (Throwable e) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("NoSuchAlgorithmException catched for algorithm ");
            stringBuilder.append(str);
            throw new RuntimeException(stringBuilder.toString(), e);
        } catch (Throwable e2) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("InvalidKeySpecException catched for keySpec ");
            stringBuilder.append(keySpec.getClass().getName());
            stringBuilder.append(":");
            stringBuilder.append(keySpec);
            throw new RuntimeException(stringBuilder.toString(), e2);
        }
    }

    public static PrivateKey getRsaPrivateKey(String str, String str2, int i) {
        return getPrivateKey(new RSAPrivateKeySpec(new BigInteger(str, i), new BigInteger(str2, i)), "RSA");
    }

    public static byte[] encrypt(byte[] bArr, Key key, AlgorithmParameterSpec algorithmParameterSpec, String str) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            InputStream encrypt = encrypt(new ByteArrayInputStream(bArr), key, algorithmParameterSpec, str);
            Object obj = new byte[1024];
            Object obj2 = new byte[(bArr.length * 2)];
            int i = 0;
            while (true) {
                int read = encrypt.read(obj);
                if (read == 0) {
                    return Arrays.copyOfRange(obj2, 0, i);
                }
                int i2 = read + i;
                if (i2 > obj2.length) {
                    Object obj3 = new byte[((obj2.length + read) * 2)];
                    System.arraycopy(obj2, 0, obj3, 0, i);
                    obj2 = obj3;
                }
                System.arraycopy(obj, 0, obj2, i, read);
                i = i2;
            }
        } catch (Throwable e) {
            throw new RuntimeException("IOException catched when using ByteArrayInputStream", e);
        }
    }

    public static InputStream encrypt(InputStream inputStream, Key key, AlgorithmParameterSpec algorithmParameterSpec, String str) throws IOException {
        StringBuilder stringBuilder;
        StringBuilder stringBuilder2;
        try {
            Cipher instance = Cipher.getInstance(str);
            instance.init(1, key, algorithmParameterSpec);
            return new CipherStream(instance, inputStream);
        } catch (Throwable e) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("NoSuchAlgorithmException catched for algorithm ");
            stringBuilder.append(str);
            throw new RuntimeException(stringBuilder.toString(), e);
        } catch (Throwable e2) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("NoSuchAlgorithmException catched for algorithm ");
            stringBuilder.append(str);
            throw new RuntimeException(stringBuilder.toString(), e2);
        } catch (Throwable e22) {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("InvalidKeyException catched for key ");
            stringBuilder2.append(key);
            throw new RuntimeException(stringBuilder2.toString(), e22);
        } catch (Throwable e222) {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("InvalidAlgorithmParameterException catched for algorithm parameter ");
            stringBuilder2.append(algorithmParameterSpec);
            throw new RuntimeException(stringBuilder2.toString(), e222);
        }
    }

    public static byte[] decrypt(byte[] bArr, Key key, AlgorithmParameterSpec algorithmParameterSpec, String str) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            InputStream decrypt = decrypt(new ByteArrayInputStream(bArr), key, algorithmParameterSpec, str);
            Object obj = new byte[1024];
            Object obj2 = new byte[(bArr.length * 2)];
            int i = 0;
            while (true) {
                int read = decrypt.read(obj);
                if (read == 0) {
                    return Arrays.copyOfRange(obj2, 0, i);
                }
                int i2 = read + i;
                if (i2 > obj2.length) {
                    Object obj3 = new byte[((obj2.length + read) * 2)];
                    System.arraycopy(obj2, 0, obj3, 0, i);
                    obj2 = obj3;
                }
                System.arraycopy(obj, 0, obj2, i, read);
                i = i2;
            }
        } catch (Throwable e) {
            throw new RuntimeException("IOException catched when using ByteArrayInputStream", e);
        }
    }

    public static InputStream decrypt(InputStream inputStream, Key key, AlgorithmParameterSpec algorithmParameterSpec, String str) throws IOException {
        StringBuilder stringBuilder;
        StringBuilder stringBuilder2;
        try {
            Cipher instance = Cipher.getInstance(str);
            instance.init(2, key, algorithmParameterSpec);
            return new CipherStream(instance, inputStream);
        } catch (Throwable e) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("NoSuchAlgorithmException catched for algorithm ");
            stringBuilder.append(str);
            throw new RuntimeException(stringBuilder.toString(), e);
        } catch (Throwable e2) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("NoSuchAlgorithmException catched for algorithm ");
            stringBuilder.append(str);
            throw new RuntimeException(stringBuilder.toString(), e2);
        } catch (Throwable e22) {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("InvalidKeyException catched for key ");
            stringBuilder2.append(key);
            throw new RuntimeException(stringBuilder2.toString(), e22);
        } catch (Throwable e222) {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("InvalidAlgorithmParameterException catched for algorithm parameter ");
            stringBuilder2.append(algorithmParameterSpec);
            throw new RuntimeException(stringBuilder2.toString(), e222);
        }
    }
}
