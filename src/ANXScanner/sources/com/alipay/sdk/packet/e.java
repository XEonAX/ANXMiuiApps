package com.alipay.sdk.packet;

import com.alipay.sdk.cons.a;
import com.alipay.sdk.encrypt.c;
import com.alipay.sdk.encrypt.d;
import com.alipay.sdk.util.l;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.Locale;

public final class e {
    private boolean a;
    private String b = l.d();

    public e(boolean z) {
        this.a = z;
    }

    public final c a(b bVar, boolean z) {
        byte[] a;
        byte[] bytes = bVar.a.getBytes();
        byte[] bytes2 = bVar.b.getBytes();
        if (z) {
            try {
                bytes2 = c.a(bytes2);
            } catch (Exception e) {
                z = false;
            }
        }
        if (this.a) {
            byte[] a2 = d.a(this.b, a.c);
            bytes2 = com.alipay.sdk.encrypt.e.a(this.b, bytes2);
            a = a(bytes, a2, bytes2);
        } else {
            a = a(bytes, bytes2);
        }
        return new c(z, a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0060 A:{SYNTHETIC, Splitter: B:27:0x0060} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0055 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x006e A:{SYNTHETIC, Splitter: B:35:0x006e} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0060 A:{SYNTHETIC, Splitter: B:27:0x0060} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0055 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x007a A:{ExcHandler: all (th java.lang.Throwable), Splitter: B:4:0x0009} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:28:?, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:29:0x0063, code:
            r1 = null;
     */
    /* JADX WARNING: Missing block: B:31:0x0066, code:
            r1 = null;
     */
    /* JADX WARNING: Missing block: B:36:?, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:40:0x007a, code:
            r0 = th;
     */
    /* JADX WARNING: Missing block: B:44:0x0081, code:
            r1 = null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final b a(c cVar) {
        String str;
        String str2;
        ByteArrayInputStream byteArrayInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(cVar.b);
            try {
                String str3;
                byte[] bArr = new byte[5];
                byteArrayInputStream.read(bArr);
                byte[] bArr2 = new byte[Integer.parseInt(new String(bArr))];
                byteArrayInputStream.read(bArr2);
                str = new String(bArr2);
                bArr2 = new byte[5];
                byteArrayInputStream.read(bArr2);
                int parseInt = Integer.parseInt(new String(bArr2));
                if (parseInt > 0) {
                    byte[] b;
                    bArr2 = new byte[parseInt];
                    byteArrayInputStream.read(bArr2);
                    if (this.a) {
                        bArr2 = com.alipay.sdk.encrypt.e.b(this.b, bArr2);
                    }
                    if (cVar.a) {
                        b = c.b(bArr2);
                    } else {
                        b = bArr2;
                    }
                    str3 = new String(b);
                } else {
                    str3 = null;
                }
                try {
                    byteArrayInputStream.close();
                    str2 = str3;
                } catch (Exception e) {
                    str2 = str3;
                }
            } catch (Exception e2) {
                str = null;
                if (byteArrayInputStream != null) {
                }
                if (str == null) {
                }
                return new b(str, str2);
            } catch (Throwable th) {
            }
        } catch (Exception e3) {
            byteArrayInputStream = null;
            str = null;
            if (byteArrayInputStream != null) {
            }
            if (str == null) {
            }
            return new b(str, str2);
        } catch (Throwable th2) {
            Throwable th3 = th2;
            byteArrayInputStream = null;
            Throwable th4 = th3;
            if (byteArrayInputStream != null) {
            }
            throw th4;
        }
        if (str == null || str2 != null) {
            return new b(str, str2);
        }
        return null;
    }

    private static byte[] a(String str, String str2) {
        return d.a(str, str2);
    }

    private static byte[] a(String str, byte[] bArr) {
        return com.alipay.sdk.encrypt.e.a(str, bArr);
    }

    private static byte[] b(String str, byte[] bArr) {
        return com.alipay.sdk.encrypt.e.b(str, bArr);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x004e A:{SYNTHETIC, Splitter: B:20:0x004e} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0053 A:{SYNTHETIC, Splitter: B:23:0x0053} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0060 A:{SYNTHETIC, Splitter: B:29:0x0060} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0065 A:{SYNTHETIC, Splitter: B:32:0x0065} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x004e A:{SYNTHETIC, Splitter: B:20:0x004e} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0053 A:{SYNTHETIC, Splitter: B:23:0x0053} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0060 A:{SYNTHETIC, Splitter: B:29:0x0060} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0065 A:{SYNTHETIC, Splitter: B:32:0x0065} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] a(byte[]... bArr) {
        Throwable th;
        int i = 0;
        byte[] bArr2 = null;
        if (bArr.length != 0) {
            ByteArrayOutputStream byteArrayOutputStream;
            DataOutputStream dataOutputStream;
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    while (i < bArr.length) {
                        try {
                            int length = bArr[i].length;
                            dataOutputStream.write(String.format(Locale.getDefault(), "%05d", new Object[]{Integer.valueOf(length)}).getBytes());
                            dataOutputStream.write(bArr[i]);
                            i++;
                        } catch (Exception e) {
                            if (byteArrayOutputStream != null) {
                            }
                            if (dataOutputStream != null) {
                            }
                            return bArr2;
                        } catch (Throwable th2) {
                            th = th2;
                            if (byteArrayOutputStream != null) {
                            }
                            if (dataOutputStream != null) {
                            }
                            throw th;
                        }
                    }
                    dataOutputStream.flush();
                    bArr2 = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e2) {
                    }
                    try {
                        dataOutputStream.close();
                    } catch (Exception e3) {
                    }
                } catch (Exception e4) {
                    dataOutputStream = null;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e5) {
                        }
                    }
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (Exception e6) {
                        }
                    }
                    return bArr2;
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    dataOutputStream = null;
                    th = th4;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e7) {
                        }
                    }
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (Exception e8) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e9) {
                dataOutputStream = null;
                byteArrayOutputStream = null;
                if (byteArrayOutputStream != null) {
                }
                if (dataOutputStream != null) {
                }
                return bArr2;
            } catch (Throwable th32) {
                byteArrayOutputStream = null;
                th = th32;
                dataOutputStream = null;
                if (byteArrayOutputStream != null) {
                }
                if (dataOutputStream != null) {
                }
                throw th;
            }
        }
        return bArr2;
    }

    private static String a(int i) {
        return String.format(Locale.getDefault(), "%05d", new Object[]{Integer.valueOf(i)});
    }

    private static int a(String str) {
        return Integer.parseInt(str);
    }
}
