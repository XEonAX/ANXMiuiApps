package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;

@RestrictTo({Scope.LIBRARY_GROUP})
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = ".font";
    private static final String TAG = "TypefaceCompatUtil";

    private TypefaceCompatUtil() {
    }

    public static File getTempFile(Context context) {
        String prefix = CACHE_FILE_PREFIX + Process.myPid() + "-" + Process.myTid() + "-";
        int i = 0;
        while (i < 100) {
            File file = new File(context.getCacheDir(), prefix + i);
            try {
                if (file.createNewFile()) {
                    return file;
                }
                i++;
            } catch (IOException e) {
            }
        }
        return null;
    }

    @RequiresApi(19)
    private static ByteBuffer mmap(File file) {
        Throwable th;
        Throwable th2;
        try {
            FileInputStream fis = new FileInputStream(file);
            Throwable th3 = null;
            try {
                FileChannel channel = fis.getChannel();
                ByteBuffer map = channel.map(MapMode.READ_ONLY, 0, channel.size());
                if (fis == null) {
                    return map;
                }
                if (null != null) {
                    try {
                        fis.close();
                        return map;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                        return map;
                    }
                }
                fis.close();
                return map;
            } catch (Throwable th42) {
                Throwable th5 = th42;
                th42 = th2;
                th2 = th5;
            }
            if (fis != null) {
                if (th42 != null) {
                    try {
                        fis.close();
                    } catch (Throwable th6) {
                        th42.addSuppressed(th6);
                    }
                } else {
                    fis.close();
                }
            }
            throw th2;
            throw th2;
        } catch (IOException e) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x004e A:{Splitter: B:4:0x000b, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x004e A:{Splitter: B:4:0x000b, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x004e A:{Splitter: B:4:0x000b, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0041  */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:17:0x0034, code:
            r2 = move-exception;
     */
    /* JADX WARNING: Missing block: B:19:?, code:
            r10.addSuppressed(r2);
     */
    /* JADX WARNING: Missing block: B:26:0x0041, code:
            if (r2 != null) goto L_0x0043;
     */
    /* JADX WARNING: Missing block: B:28:?, code:
            r8.close();
     */
    /* JADX WARNING: Missing block: B:35:0x004e, code:
            r1 = th;
     */
    /* JADX WARNING: Missing block: B:36:0x004f, code:
            r2 = r11;
     */
    /* JADX WARNING: Missing block: B:52:0x0068, code:
            r3 = move-exception;
     */
    /* JADX WARNING: Missing block: B:53:0x0069, code:
            r2.addSuppressed(r3);
     */
    /* JADX WARNING: Missing block: B:55:0x0071, code:
            r3 = move-exception;
     */
    /* JADX WARNING: Missing block: B:57:?, code:
            r2.addSuppressed(r3);
     */
    /* JADX WARNING: Missing block: B:58:0x0076, code:
            r8.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @RequiresApi(19)
    public static ByteBuffer mmap(Context context, CancellationSignal cancellationSignal, Uri uri) {
        Throwable th;
        Throwable th2;
        Throwable th3;
        try {
            ParcelFileDescriptor pfd = context.getContentResolver().openFileDescriptor(uri, "r", cancellationSignal);
            Throwable th4 = null;
            try {
                FileInputStream fis = new FileInputStream(pfd.getFileDescriptor());
                Throwable th5 = null;
                try {
                    FileChannel channel = fis.getChannel();
                    ByteBuffer map = channel.map(MapMode.READ_ONLY, 0, channel.size());
                    if (fis != null) {
                        if (th5 != null) {
                            fis.close();
                        } else {
                            fis.close();
                        }
                    }
                    if (pfd == null) {
                        return map;
                    }
                    if (th4 != null) {
                        try {
                            pfd.close();
                            return map;
                        } catch (Throwable th6) {
                            th4.addSuppressed(th6);
                            return map;
                        }
                    }
                    pfd.close();
                    return map;
                } catch (Throwable th62) {
                    th3 = th62;
                    th62 = th2;
                    th2 = th3;
                }
                if (fis != null) {
                    if (th62 != null) {
                        fis.close();
                    } else {
                        fis.close();
                    }
                }
                throw th2;
                throw th2;
                throw th2;
                if (pfd != null) {
                }
                throw th2;
            } catch (Throwable th622) {
                th3 = th622;
                th622 = th2;
                th2 = th3;
            }
        } catch (IOException e) {
            return null;
        }
    }

    @RequiresApi(19)
    public static ByteBuffer copyToDirectBuffer(Context context, Resources res, int id) {
        ByteBuffer byteBuffer = null;
        File tmpFile = getTempFile(context);
        if (tmpFile != null) {
            try {
                if (copyToFile(tmpFile, res, id)) {
                    byteBuffer = mmap(tmpFile);
                    tmpFile.delete();
                }
            } finally {
                tmpFile.delete();
            }
        }
        return byteBuffer;
    }

    public static boolean copyToFile(File file, InputStream is) {
        IOException e;
        Throwable th;
        FileOutputStream os = null;
        try {
            FileOutputStream os2 = new FileOutputStream(file, false);
            try {
                byte[] buffer = new byte[1024];
                while (true) {
                    int readLen = is.read(buffer);
                    if (readLen != -1) {
                        os2.write(buffer, 0, readLen);
                    } else {
                        closeQuietly(os2);
                        os = os2;
                        return true;
                    }
                }
            } catch (IOException e2) {
                e = e2;
                os = os2;
                try {
                    Log.e(TAG, "Error copying resource contents to temp file: " + e.getMessage());
                    closeQuietly(os);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(os);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                os = os2;
                closeQuietly(os);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            Log.e(TAG, "Error copying resource contents to temp file: " + e.getMessage());
            closeQuietly(os);
            return false;
        }
    }

    public static boolean copyToFile(File file, Resources res, int id) {
        InputStream is = null;
        try {
            is = res.openRawResource(id);
            boolean copyToFile = copyToFile(file, is);
            return copyToFile;
        } finally {
            closeQuietly(is);
        }
    }

    public static void closeQuietly(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (IOException e) {
            }
        }
    }
}
