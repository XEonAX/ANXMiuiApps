package org.keyczar.util;

import com.google.gson_nex.Gson;
import com.google.gson_nex.GsonBuilder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.keyczar.exceptions.Base64DecodingException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.KeyTypeDeserializer;
import org.keyczar.interfaces.KeyType.KeyTypeSerializer;

public class Util {
    private static final ConcurrentLinkedQueue<MessageDigest> DIGEST_QUEUE = new ConcurrentLinkedQueue();
    private static final ThreadLocal<Gson> GSON_THREAD_LOCAL = new ThreadLocal<Gson>() {
        protected Gson initialValue() {
            return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().registerTypeAdapter(KeyType.class, new KeyTypeSerializer()).registerTypeAdapter(KeyType.class, new KeyTypeDeserializer()).create();
        }
    };
    private static final ConcurrentLinkedQueue<SecureRandom> RAND_QUEUE = new ConcurrentLinkedQueue();
    private static final int READ_BUF_SIZE = 8192;

    private Util() {
    }

    public static Gson gson() {
        return (Gson) GSON_THREAD_LOCAL.get();
    }

    public static byte[] stripLeadingZeros(byte[] bArr) {
        int i = 0;
        while (i < bArr.length && bArr[i] == (byte) 0) {
            i++;
        }
        if (i == 0) {
            return bArr;
        }
        Object obj = new byte[(bArr.length - i)];
        System.arraycopy(bArr, i, obj, 0, obj.length);
        return obj;
    }

    public static byte[] fromInt(int i) {
        byte[] bArr = new byte[4];
        writeInt(i, bArr, 0);
        return bArr;
    }

    public static byte[] fromLong(long j) {
        byte[] bArr = new byte[8];
        writeLong(j, bArr, 0);
        return bArr;
    }

    public static byte[] prefixHash(byte[]... bArr) throws KeyczarException {
        MessageDigest messageDigest = (MessageDigest) DIGEST_QUEUE.poll();
        if (messageDigest == null) {
            try {
                messageDigest = MessageDigest.getInstance("SHA-1");
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }
        for (byte[] bArr2 : bArr) {
            messageDigest.update(fromInt(bArr2.length));
            messageDigest.update(bArr2);
        }
        byte[] digest = messageDigest.digest();
        DIGEST_QUEUE.add(messageDigest);
        return digest;
    }

    public static byte[] lenPrefix(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return fromInt(0);
        }
        return ByteBuffer.allocate(bArr.length + 4).putInt(bArr.length).put(bArr).array();
    }

    public static byte[] lenPrefixPack(byte[]... bArr) {
        byte[] bArr2;
        int i = 0;
        int length = (bArr.length + 1) * 4;
        for (byte[] bArr22 : bArr) {
            length += bArr22.length;
        }
        byte[] bArr3 = new byte[length];
        ByteBuffer wrap = ByteBuffer.wrap(bArr3);
        wrap.putInt(bArr.length);
        int length2 = bArr.length;
        while (i < length2) {
            bArr22 = bArr[i];
            wrap.putInt(bArr22.length);
            wrap.put(bArr22);
            i++;
        }
        return bArr3;
    }

    public static byte[][] lenPrefixUnpack(byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int i = wrap.getInt();
        byte[][] bArr2 = new byte[i][];
        for (int i2 = 0; i2 < i; i2++) {
            byte[] bArr3 = new byte[wrap.getInt()];
            wrap.get(bArr3);
            bArr2[i2] = bArr3;
        }
        return bArr2;
    }

    public static byte[] hash(byte[]... bArr) throws KeyczarException {
        MessageDigest messageDigest = (MessageDigest) DIGEST_QUEUE.poll();
        if (messageDigest == null) {
            try {
                messageDigest = MessageDigest.getInstance("SHA-1");
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        }
        for (byte[] update : bArr) {
            messageDigest.update(update);
        }
        byte[] digest = messageDigest.digest();
        DIGEST_QUEUE.add(messageDigest);
        return digest;
    }

    public static void rand(byte[] bArr) {
        SecureRandom secureRandom = (SecureRandom) RAND_QUEUE.poll();
        if (secureRandom == null) {
            secureRandom = new SecureRandom();
        }
        secureRandom.nextBytes(bArr);
        RAND_QUEUE.add(secureRandom);
    }

    public static byte[] rand(int i) {
        byte[] bArr = new byte[i];
        rand(bArr);
        return bArr;
    }

    static int readInt(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (0 | ((bArr[i] & 255) << 24)) | ((bArr[i2] & 255) << 16);
        i2 = i3 + 1;
        i4 |= (bArr[i3] & 255) << 8;
        i3 = i2 + 1;
        return i4 | (bArr[i2] & 255);
    }

    static long readLong(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        i2 = i3 + 1;
        i3 = i2 + 1;
        i2 = i3 + 1;
        i3 = i2 + 1;
        i2 = i3 + 1;
        i3 = i2 + 1;
        return (((((((0 | ((((long) bArr[i]) & 255) << 56)) | ((((long) bArr[i2]) & 255) << 48)) | ((((long) bArr[i3]) & 255) << 40)) | ((((long) bArr[i2]) & 255) << 32)) | ((((long) bArr[i3]) & 255) << 24)) | ((((long) bArr[i2]) & 255) << 16)) | ((((long) bArr[i3]) & 255) << 8)) | (((long) bArr[i2]) & 255);
    }

    public static int toInt(byte[] bArr) {
        return readInt(bArr, 0);
    }

    public static long toLong(byte[] bArr) {
        return readLong(bArr, 0);
    }

    static void writeInt(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >> 16);
        i3 = i4 + 1;
        bArr[i4] = (byte) (i >> 8);
        i4 = i3 + 1;
        bArr[i3] = (byte) i;
    }

    static void writeLong(long j, byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = (byte) ((int) (j >> 56));
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((int) (j >> 48));
        i2 = i3 + 1;
        bArr[i3] = (byte) ((int) (j >> 40));
        i3 = i2 + 1;
        bArr[i2] = (byte) ((int) (j >> 32));
        i2 = i3 + 1;
        bArr[i3] = (byte) ((int) (j >> 24));
        i3 = i2 + 1;
        bArr[i2] = (byte) ((int) (j >> 16));
        i2 = i3 + 1;
        bArr[i3] = (byte) ((int) (j >> 8));
        i3 = i2 + 1;
        bArr[i2] = (byte) ((int) j);
    }

    public static boolean safeArrayEquals(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            if (bArr == bArr2) {
                return true;
            }
            return false;
        } else if (bArr.length != bArr2.length) {
            return false;
        } else {
            int i = 0;
            for (int i2 = 0; i2 < bArr.length; i2++) {
                i = (byte) (i | (bArr[i2] ^ bArr2[i2]));
            }
            if (i != 0) {
                return false;
            }
            return true;
        }
    }

    public static byte[] cat(byte[]... bArr) {
        int i = 0;
        for (byte[] length : bArr) {
            i += length.length;
        }
        Object obj = new byte[i];
        i = 0;
        for (Object obj2 : bArr) {
            System.arraycopy(obj2, 0, obj, i, obj2.length);
            i += obj2.length;
        }
        return obj;
    }

    public static List<String> split(String str, int i) {
        List<String> arrayList = new ArrayList();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            arrayList.add(str.substring(i2, Math.min(length, i2 + i)));
            i2 += i;
        }
        return arrayList;
    }

    public static byte[] readStreamFully(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static String encodeBigInteger(BigInteger bigInteger) {
        return Base64Coder.encodeWebSafe(bigInteger.toByteArray());
    }

    public static BigInteger decodeBigInteger(String str) throws Base64DecodingException {
        return new BigInteger(Base64Coder.decodeWebSafe(str));
    }

    public static KeyPair generateKeyPair(String str, int i) throws KeyczarException {
        try {
            KeyPairGenerator instance = KeyPairGenerator.getInstance(str);
            instance.initialize(i);
            return instance.generateKeyPair();
        } catch (Throwable e) {
            throw new KeyczarException(e);
        }
    }
}
