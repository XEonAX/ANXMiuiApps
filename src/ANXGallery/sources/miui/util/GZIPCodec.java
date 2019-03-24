package miui.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public final class GZIPCodec {
    protected GZIPCodec() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static String getID() {
        return "gzip";
    }

    public static byte[] encode(byte[] bArr) throws IOException {
        Throwable th;
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStream outputStream = null;
        try {
            OutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                IOUtils.closeQuietly(gZIPOutputStream);
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th2) {
                th = th2;
                outputStream = gZIPOutputStream;
                IOUtils.closeQuietly(outputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(outputStream);
            throw th;
        }
    }

    public static byte[] decode(byte[] bArr) throws IOException {
        Throwable th;
        InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        InputStream inputStream = null;
        try {
            InputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            try {
                bArr = IOUtils.toByteArray(gZIPInputStream);
                IOUtils.closeQuietly(gZIPInputStream);
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                inputStream = gZIPInputStream;
                IOUtils.closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(inputStream);
            throw th;
        }
    }
}
