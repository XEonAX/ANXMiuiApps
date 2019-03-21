package com.nexstreaming.app.common.nexasset.assetpackage.security.provider;

import com.google.gson_nex.Gson;
import com.nexstreaming.app.common.nexasset.assetpackage.security.a;
import com.nexstreaming.app.common.nexasset.assetpackage.security.b;
import com.nexstreaming.app.common.util.m;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import org.keyczar.Crypter;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;

public class BasicEncryptionProvider implements b {
    private final int[] a;
    private final String[] b;
    private KeyczarReader c = new KeyczarReader() {
        public String getKey(int i) throws KeyczarException {
            return BasicEncryptionProvider.this.a(i);
        }

        public String getKey() throws KeyczarException {
            return BasicEncryptionProvider.this.a(1);
        }

        public String getMetadata() throws KeyczarException {
            return BasicEncryptionProvider.this.a(0);
        }
    };

    private class ProviderSpecificDataJSON {
        List<String> f;
        int v;

        private ProviderSpecificDataJSON() {
        }
    }

    public BasicEncryptionProvider(int[] iArr, String[] strArr) {
        this.a = iArr;
        this.b = strArr;
    }

    private int a(String str, int i, int i2) {
        int length = str.length();
        int i3 = 0;
        while (i < i2 && i < length) {
            char charAt = str.charAt(i);
            i3 *= 16;
            if (charAt >= '0' && charAt <= '9') {
                i3 += charAt - 48;
            } else if (charAt >= 'a' && charAt <= 'f') {
                i3 += (charAt - 97) + 10;
            } else if (charAt >= 'A' && charAt <= 'F') {
                i3 += (charAt - 65) + 10;
            }
            i++;
        }
        return i3;
    }

    private String a(int i) {
        int i2 = 0;
        String str = this.b[i];
        int a = a(str, 0, 2) ^ 32;
        byte[] bArr = new byte[((str.length() - 2) / 2)];
        while (i2 < bArr.length) {
            byte a2 = (byte) a(str, (i2 * 2) + 2, (i2 * 2) + 4);
            bArr[i2] = (byte) ((((a2 << 4) & 240) | ((a2 >> 4) & 15)) ^ a);
            i2++;
        }
        return new String(bArr);
    }

    private String a(String str, String str2) {
        String substring = str.substring(str.indexOf(str2));
        substring = substring.substring(substring.indexOf(":"));
        substring = substring.substring(substring.indexOf("\"") + 1);
        return substring.substring(0, substring.indexOf("\""));
    }

    private String b(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.US_ASCII);
        String format = String.format("%02X", new Object[]{Integer.valueOf((new Random().nextInt(238) + 17) ^ 32)});
        String str2 = format;
        for (byte b : bytes) {
            byte b2 = (byte) (b2 ^ r4);
            b2 = (byte) (((b2 << 4) & 240) | ((b2 >> 4) & 15));
            str2 = str2 + String.format("%02X", new Object[]{Byte.valueOf(b2)});
        }
        return str2;
    }

    public String[] b() {
        String[] strArr = new String[12];
        int i = 0;
        int i2 = 0;
        while (i < 6) {
            try {
                String key = this.c.getKey(i + 1);
                String a = a(key, "hmacKeyString");
                if (a.length() > 16) {
                    a = a.substring(a.length() - 16, a.length());
                }
                int i3 = i2 + 1;
                strArr[i2] = b(a);
                a = a(key, "aesKeyString");
                if (a.length() > 16) {
                    a = a.substring(a.length() - 16, a.length());
                }
                i2 = i3 + 1;
                strArr[i3] = b(a);
                i++;
            } catch (KeyczarException e) {
            }
        }
        return strArr;
    }

    public String a() {
        char[] cArr = new char[this.a.length];
        for (int i = 0; i < this.a.length; i++) {
            cArr[i] = (char) (this.a[i] ^ 90);
        }
        return new String(cArr);
    }

    public a a(String str) {
        ProviderSpecificDataJSON providerSpecificDataJSON = (ProviderSpecificDataJSON) new Gson().fromJson(str, ProviderSpecificDataJSON.class);
        final Set hashSet = new HashSet();
        hashSet.addAll(providerSpecificDataJSON.f);
        int i = providerSpecificDataJSON.v;
        try {
            final Crypter crypter = new Crypter(this.c);
            return new a() {
                ByteArrayOutputStream a = new ByteArrayOutputStream();

                public InputStream a(InputStream inputStream, String str) throws IOException {
                    if (hashSet.contains(str)) {
                        this.a.reset();
                        m.a(inputStream, this.a);
                        inputStream.close();
                        try {
                            synchronized (this) {
                                inputStream = new ByteArrayInputStream(crypter.decrypt(this.a.toByteArray()));
                            }
                        } catch (KeyczarException e) {
                            throw new IllegalStateException();
                        }
                    }
                    return inputStream;
                }

                public boolean a(String str) {
                    return !hashSet.contains(str);
                }
            };
        } catch (KeyczarException e) {
            throw new IllegalStateException();
        }
    }
}
