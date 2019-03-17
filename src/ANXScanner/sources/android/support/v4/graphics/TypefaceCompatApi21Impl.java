package android.support.v4.graphics;

import android.content.Context;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.provider.FontsContractCompat.FontInfo;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@RequiresApi(21)
@RestrictTo({Scope.LIBRARY_GROUP})
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String TAG = "TypefaceCompatApi21Impl";

    TypefaceCompatApi21Impl() {
    }

    private File getFile(ParcelFileDescriptor fd) {
        try {
            String path = Os.readlink("/proc/self/fd/" + fd.getFd());
            if (OsConstants.S_ISREG(Os.stat(path).st_mode)) {
                return new File(path);
            }
            return null;
        } catch (ErrnoException e) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x0061 A:{Splitter: B:7:0x0019, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0061 A:{Splitter: B:7:0x0019, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0061 A:{Splitter: B:7:0x0019, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:35:0x0051, code:
            r7 = move-exception;
     */
    /* JADX WARNING: Missing block: B:36:0x0052, code:
            r10 = r7;
            r7 = r6;
            r6 = r10;
     */
    /* JADX WARNING: Missing block: B:45:0x0061, code:
            r6 = th;
     */
    /* JADX WARNING: Missing block: B:46:0x0062, code:
            r7 = r8;
     */
    /* JADX WARNING: Missing block: B:53:0x006b, code:
            if (r3 != null) goto L_0x006d;
     */
    /* JADX WARNING: Missing block: B:54:0x006d, code:
            if (r7 != null) goto L_0x006f;
     */
    /* JADX WARNING: Missing block: B:56:?, code:
            r3.close();
     */
    /* JADX WARNING: Missing block: B:59:0x0073, code:
            r9 = move-exception;
     */
    /* JADX WARNING: Missing block: B:60:0x0074, code:
            r7.addSuppressed(r9);
     */
    /* JADX WARNING: Missing block: B:61:0x0078, code:
            r3.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, @NonNull FontInfo[] fonts, int style) {
        ParcelFileDescriptor pfd;
        Throwable th;
        Throwable th2;
        if (fonts.length < 1) {
            return null;
        }
        FontInfo bestFont = findBestInfo(fonts, style);
        try {
            pfd = context.getContentResolver().openFileDescriptor(bestFont.getUri(), "r", cancellationSignal);
            th = null;
            try {
                File file = getFile(pfd);
                Typeface createFromInputStream;
                if (file == null || !file.canRead()) {
                    FileInputStream fis = new FileInputStream(pfd.getFileDescriptor());
                    th2 = null;
                    createFromInputStream = super.createFromInputStream(context, fis);
                    if (fis != null) {
                        if (th2 != null) {
                            fis.close();
                        } else {
                            fis.close();
                        }
                    }
                    if (pfd == null) {
                        return createFromInputStream;
                    }
                    if (th != null) {
                        try {
                            pfd.close();
                            return createFromInputStream;
                        } catch (Throwable th22) {
                            th.addSuppressed(th22);
                            return createFromInputStream;
                        }
                    }
                    pfd.close();
                    return createFromInputStream;
                }
                createFromInputStream = Typeface.createFromFile(file);
                if (pfd == null) {
                    return createFromInputStream;
                }
                if (th != null) {
                    try {
                        pfd.close();
                        return createFromInputStream;
                    } catch (Throwable th222) {
                        th.addSuppressed(th222);
                        return createFromInputStream;
                    }
                }
                pfd.close();
                return createFromInputStream;
            } catch (Throwable th3) {
            }
        } catch (IOException e) {
            return null;
        }
        if (pfd != null) {
            if (th222 != null) {
                try {
                    pfd.close();
                } catch (Throwable th4) {
                    th222.addSuppressed(th4);
                }
            } else {
                pfd.close();
            }
        }
        throw th;
        throw th;
    }
}
