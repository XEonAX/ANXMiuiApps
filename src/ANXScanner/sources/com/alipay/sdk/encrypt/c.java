package com.alipay.sdk.encrypt;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public final class c {
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0025 A:{SYNTHETIC, Splitter: B:17:0x0025} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x002a A:{SYNTHETIC, Splitter: B:20:0x002a} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x002f A:{SYNTHETIC, Splitter: B:23:0x002f} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0025 A:{SYNTHETIC, Splitter: B:17:0x0025} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x002a A:{SYNTHETIC, Splitter: B:20:0x002a} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x002f A:{SYNTHETIC, Splitter: B:23:0x002f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a(byte[] bArr) throws IOException {
        Throwable th;
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayOutputStream byteArrayOutputStream = null;
        GZIPOutputStream gZIPOutputStream;
        try {
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
            try {
                OutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                    try {
                        byte[] bArr2 = new byte[4096];
                        while (true) {
                            int read = byteArrayInputStream2.read(bArr2);
                            if (read == -1) {
                                break;
                            }
                            gZIPOutputStream.write(bArr2, 0, read);
                        }
                        gZIPOutputStream.flush();
                        gZIPOutputStream.finish();
                        bArr2 = byteArrayOutputStream2.toByteArray();
                        try {
                            byteArrayInputStream2.close();
                        } catch (Exception e) {
                        }
                        try {
                            byteArrayOutputStream2.close();
                        } catch (Exception e2) {
                        }
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception e3) {
                        }
                        return bArr2;
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        byteArrayInputStream = byteArrayInputStream2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream = null;
                    OutputStream byteArrayOutputStream3 = byteArrayOutputStream2;
                    byteArrayInputStream = byteArrayInputStream2;
                    if (byteArrayInputStream != null) {
                    }
                    if (byteArrayOutputStream3 != null) {
                    }
                    if (gZIPOutputStream != null) {
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                gZIPOutputStream = null;
                byteArrayInputStream = byteArrayInputStream2;
                if (byteArrayInputStream != null) {
                }
                if (byteArrayOutputStream3 != null) {
                }
                if (gZIPOutputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            gZIPOutputStream = null;
            byteArrayInputStream = null;
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Exception e4) {
                }
            }
            if (byteArrayOutputStream3 != null) {
                try {
                    byteArrayOutputStream3.close();
                } catch (Exception e5) {
                }
            }
            if (gZIPOutputStream != null) {
                try {
                    gZIPOutputStream.close();
                } catch (Exception e6) {
                }
            }
            throw th;
        }
    }

    public static byte[] b(byte[] bArr) throws IOException {
        Throwable th;
        ByteArrayInputStream byteArrayInputStream;
        InputStream byteArrayInputStream2;
        ByteArrayOutputStream byteArrayOutputStream = null;
        GZIPInputStream gZIPInputStream;
        try {
            InputStream byteArrayInputStream3 = new ByteArrayInputStream(bArr);
            try {
                gZIPInputStream = new GZIPInputStream(byteArrayInputStream3);
                try {
                    byte[] bArr2 = new byte[4096];
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    while (true) {
                        try {
                            int read = gZIPInputStream.read(bArr2, 0, 4096);
                            if (read == -1) {
                                break;
                            }
                            byteArrayOutputStream2.write(bArr2, 0, read);
                        } catch (Throwable th2) {
                            th = th2;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            byteArrayInputStream2 = byteArrayInputStream3;
                        }
                    }
                    byteArrayOutputStream2.flush();
                    bArr2 = byteArrayOutputStream2.toByteArray();
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Exception e) {
                    }
                    try {
                        gZIPInputStream.close();
                    } catch (Exception e2) {
                    }
                    try {
                        byteArrayInputStream3.close();
                    } catch (Exception e3) {
                    }
                    return bArr2;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayInputStream2 = byteArrayInputStream3;
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e4) {
                    }
                    try {
                        gZIPInputStream.close();
                    } catch (Exception e5) {
                    }
                    try {
                        byteArrayInputStream2.close();
                    } catch (Exception e6) {
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                gZIPInputStream = null;
                byteArrayInputStream2 = byteArrayInputStream3;
                byteArrayOutputStream.close();
                gZIPInputStream.close();
                byteArrayInputStream2.close();
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            gZIPInputStream = null;
            byteArrayInputStream2 = null;
            byteArrayOutputStream.close();
            gZIPInputStream.close();
            byteArrayInputStream2.close();
            throw th;
        }
    }
}
