package mtopsdk.common.util;

import android.os.Looper;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import mtopsdk.mtop.global.SDKConfig;

public final class MtopUtils {
    private static final String TAG = "mtopsdk.MtopUtils";
    private static AtomicInteger counter = new AtomicInteger();
    private static final int mask = Integer.MAX_VALUE;

    private MtopUtils() {
    }

    public static int createIntSeqNo() {
        return counter.incrementAndGet() & Integer.MAX_VALUE;
    }

    public static boolean isMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static boolean isApkDebug() {
        try {
            if ((SDKConfig.getInstance().getGlobalContext().getApplicationInfo().flags & 2) != 0) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:? A:{SYNTHETIC, RETURN, Catch:{ Throwable -> 0x002c, all -> 0x004d }} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0047 A:{SYNTHETIC, Splitter: B:18:0x0047} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0051 A:{SYNTHETIC, Splitter: B:24:0x0051} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0047 A:{SYNTHETIC, Splitter: B:18:0x0047} */
    /* JADX WARNING: Removed duplicated region for block: B:33:? A:{SYNTHETIC, RETURN, Catch:{ Throwable -> 0x002c, all -> 0x004d }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Serializable readObject(File file, String str) {
        Throwable th;
        Throwable th2;
        FileInputStream fileInputStream;
        Serializable serializable;
        try {
            File file2 = new File(file, str);
            if (!file2.exists()) {
                return null;
            }
            ObjectInputStream objectInputStream;
            fileInputStream = new FileInputStream(file2);
            try {
                objectInputStream = new ObjectInputStream(new BufferedInputStream(fileInputStream));
                serializable = (Serializable) objectInputStream.readObject();
            } catch (Throwable th3) {
                Throwable th4 = th3;
                serializable = null;
                th2 = th4;
                try {
                    TBSdkLog.w(TAG, String.format("readObject error.fileDir={%s},fileName={%s}", new Object[]{file, str}), th2);
                    if (fileInputStream == null) {
                    }
                } catch (Throwable th5) {
                    th3 = th5;
                    if (fileInputStream != null) {
                    }
                    throw th3;
                }
            }
            try {
                objectInputStream.close();
                try {
                    fileInputStream.close();
                    return serializable;
                } catch (IOException e) {
                    return serializable;
                }
            } catch (Throwable th6) {
                th2 = th6;
                TBSdkLog.w(TAG, String.format("readObject error.fileDir={%s},fileName={%s}", new Object[]{file, str}), th2);
                if (fileInputStream == null) {
                    return serializable;
                }
                try {
                    fileInputStream.close();
                    return serializable;
                } catch (IOException e2) {
                    return serializable;
                }
            }
        } catch (Throwable th7) {
            th3 = th7;
            fileInputStream = null;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e3) {
                }
            }
            throw th3;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0073 A:{SYNTHETIC, Splitter: B:22:0x0073} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:41:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0073 A:{SYNTHETIC, Splitter: B:22:0x0073} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:41:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x007e A:{SYNTHETIC, Splitter: B:29:0x007e} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean writeObject(Serializable serializable, File file, String str) {
        Throwable th;
        File file2;
        OutputStream outputStream;
        FileOutputStream outputStream2 = null;
        boolean z = true;
        try {
            OutputStream fileOutputStream;
            if (!file.exists()) {
                file.mkdirs();
            }
            File file3 = new File(file, str + new Random().nextInt(10));
            try {
                fileOutputStream = new FileOutputStream(file3);
            } catch (Throwable th2) {
                th = th2;
                file2 = file3;
                try {
                    TBSdkLog.w(TAG, String.format("writeObject error.fileDir={%s},fileName={%s},object={%s}", new Object[]{file, str, serializable}), th);
                    if (outputStream2 != null) {
                    }
                    if (z) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (outputStream2 != null) {
                        try {
                            outputStream2.close();
                        } catch (IOException e) {
                        }
                    }
                    throw th;
                }
            }
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(fileOutputStream));
                objectOutputStream.writeObject(serializable);
                objectOutputStream.flush();
                objectOutputStream.close();
                try {
                    fileOutputStream.close();
                    file2 = file3;
                } catch (IOException e2) {
                    file2 = file3;
                }
            } catch (Throwable th4) {
                th = th4;
                outputStream2 = fileOutputStream;
                if (outputStream2 != null) {
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            file2 = null;
            TBSdkLog.w(TAG, String.format("writeObject error.fileDir={%s},fileName={%s},object={%s}", new Object[]{file, str, serializable}), th);
            if (outputStream2 != null) {
                try {
                    outputStream2.close();
                    z = false;
                } catch (IOException e3) {
                    z = false;
                }
            } else {
                z = false;
            }
            if (z) {
            }
        }
        if (z) {
            return file2.renameTo(new File(file, str));
        }
        return z;
    }
}
