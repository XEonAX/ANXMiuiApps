package mtopsdk.network.domain;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.network.util.NetworkUtils;

public abstract class ResponseBody {
    private static final String TAG = "mtopsdk.ResponseBody";
    private byte[] bodyBytes = null;

    public abstract InputStream byteStream();

    public abstract long contentLength() throws IOException;

    public abstract String contentType();

    public byte[] getBytes() throws IOException {
        if (this.bodyBytes == null) {
            this.bodyBytes = readBytes();
        }
        return this.bodyBytes;
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:42:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:42:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:42:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] readBytes() throws IOException {
        Closeable dataInputStream;
        Closeable byteArrayOutputStream;
        Throwable e;
        byte[] bArr;
        Throwable th;
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
        try {
            dataInputStream = new DataInputStream(byteStream());
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Exception e2) {
                e = e2;
                byteArrayOutputStream = null;
                try {
                    TBSdkLog.e(TAG, "[readBytes] read bytes from byteStream error.", e);
                    NetworkUtils.closeQuietly(dataInputStream);
                    NetworkUtils.closeQuietly(byteArrayOutputStream);
                    bArr = null;
                    if (bArr != null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    NetworkUtils.closeQuietly(dataInputStream);
                    NetworkUtils.closeQuietly(byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable e3) {
                byteArrayOutputStream = null;
                th = e3;
                NetworkUtils.closeQuietly(dataInputStream);
                NetworkUtils.closeQuietly(byteArrayOutputStream);
                throw th;
            }
            try {
                bArr = new byte[1024];
                while (true) {
                    int read = dataInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                bArr = byteArrayOutputStream.toByteArray();
                NetworkUtils.closeQuietly(dataInputStream);
                NetworkUtils.closeQuietly(byteArrayOutputStream);
            } catch (Exception e4) {
                e3 = e4;
                TBSdkLog.e(TAG, "[readBytes] read bytes from byteStream error.", e3);
                NetworkUtils.closeQuietly(dataInputStream);
                NetworkUtils.closeQuietly(byteArrayOutputStream);
                bArr = null;
                if (bArr != null) {
                }
            }
        } catch (Exception e5) {
            e3 = e5;
            byteArrayOutputStream = null;
            dataInputStream = null;
            TBSdkLog.e(TAG, "[readBytes] read bytes from byteStream error.", e3);
            NetworkUtils.closeQuietly(dataInputStream);
            NetworkUtils.closeQuietly(byteArrayOutputStream);
            bArr = null;
            if (bArr != null) {
            }
        } catch (Throwable e32) {
            byteArrayOutputStream = null;
            dataInputStream = null;
            th = e32;
            NetworkUtils.closeQuietly(dataInputStream);
            NetworkUtils.closeQuietly(byteArrayOutputStream);
            throw th;
        }
        if (bArr != null) {
            return null;
        }
        if (contentLength == -1 || contentLength == ((long) bArr.length)) {
            return bArr;
        }
        throw new IOException("Content-Length and stream length disagree");
    }
}
