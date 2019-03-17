package com.xiaomi.scanner.util;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileUtil {
    private static final Tag TAG = new Tag("FileUtil");

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0063 A:{SYNTHETIC, Splitter: B:37:0x0063} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0068 A:{Catch:{ IOException -> 0x006c }} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0030 A:{SYNTHETIC, Splitter: B:18:0x0030} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0035 A:{Catch:{ IOException -> 0x0055 }} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0063 A:{SYNTHETIC, Splitter: B:37:0x0063} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0068 A:{Catch:{ IOException -> 0x006c }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] readFileToByteArray(File file) {
        IOException e;
        byte[] bArr;
        Throwable th;
        FileInputStream fis = null;
        ByteArrayOutputStream bos = null;
        try {
            ByteArrayOutputStream bos2;
            FileInputStream fis2 = new FileInputStream(file);
            try {
                bos2 = new ByteArrayOutputStream((int) file.length());
            } catch (IOException e2) {
                e = e2;
                fis = fis2;
                try {
                    Log.e(TAG, e.getMessage(), e);
                    bArr = null;
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e3) {
                            Log.e(TAG, e3.getMessage(), e3);
                        }
                    }
                    if (bos != null) {
                        bos.close();
                    }
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    if (fis != null) {
                    }
                    if (bos != null) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fis = fis2;
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e32) {
                        Log.e(TAG, e32.getMessage(), e32);
                        throw th;
                    }
                }
                if (bos != null) {
                    bos.close();
                }
                throw th;
            }
            try {
                byte[] b = new byte[8192];
                while (true) {
                    int n = fis2.read(b);
                    if (n == -1) {
                        break;
                    }
                    bos2.write(b, 0, n);
                }
                bArr = bos2.toByteArray();
                if (fis2 != null) {
                    try {
                        fis2.close();
                    } catch (IOException e322) {
                        Log.e(TAG, e322.getMessage(), e322);
                    }
                }
                if (bos2 != null) {
                    bos2.close();
                }
                bos = bos2;
                fis = fis2;
            } catch (IOException e4) {
                e322 = e4;
                bos = bos2;
                fis = fis2;
            } catch (Throwable th4) {
                th = th4;
                bos = bos2;
                fis = fis2;
                if (fis != null) {
                }
                if (bos != null) {
                }
                throw th;
            }
        } catch (IOException e5) {
            e322 = e5;
            Log.e(TAG, e322.getMessage(), e322);
            bArr = null;
            if (fis != null) {
            }
            if (bos != null) {
            }
            return bArr;
        }
        return bArr;
    }

    public static byte[] readFileToByteArray(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            Log.w(TAG, "readFileToByteArray error, null path");
            return null;
        }
        File file = new File(filePath);
        if (file.isFile()) {
            return readFileToByteArray(file);
        }
        return null;
    }

    public static boolean copyToFile(InputStream inputStream, File destFile) {
        FileOutputStream out;
        try {
            if (destFile.exists() && !destFile.delete()) {
                return false;
            }
            out = new FileOutputStream(destFile);
            byte[] buffer = new byte[4096];
            while (true) {
                int bytesRead = inputStream.read(buffer);
                if (bytesRead < 0) {
                    break;
                }
                out.write(buffer, 0, bytesRead);
            }
            out.flush();
            try {
                out.getFD().sync();
            } catch (IOException e) {
                Log.e(TAG, "out sync fail", e);
            }
            out.close();
            return true;
        } catch (IOException e2) {
            Log.e(TAG, "copyToFile fail", e2);
            return false;
        } catch (Throwable th) {
            out.flush();
            try {
                out.getFD().sync();
            } catch (IOException e22) {
                Log.e(TAG, "out sync fail", e22);
            }
            out.close();
        }
    }

    public static String getTempFilePath(Context context) {
        File file = context.getFilesDir();
        if (file != null) {
            return file.getPath() + "/temp.jpg";
        }
        Log.w(TAG, "getTempFile fail");
        return null;
    }
}
