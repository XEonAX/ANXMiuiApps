package mtopsdk.network.domain;

import java.io.IOException;
import java.io.OutputStream;
import mtopsdk.network.util.NetworkUtils;

public abstract class RequestBody {
    public abstract String contentType();

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    public long contentLength() throws IOException {
        return -1;
    }

    public static RequestBody create(String str, String str2) throws Exception {
        if (str2 != null) {
            return create(str, str2.getBytes());
        }
        throw new NullPointerException("content == null");
    }

    public static RequestBody create(final String str, final byte[] bArr) throws Exception {
        if (bArr != null) {
            return new RequestBody() {
                public final String contentType() {
                    return str;
                }

                public final long contentLength() throws IOException {
                    return (long) bArr.length;
                }

                public final void writeTo(OutputStream outputStream) throws IOException {
                    outputStream.write(bArr);
                }
            };
        }
        throw new NullPointerException("content == null");
    }

    public static RequestBody create(final String str, final byte[] bArr, final int i, final int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        NetworkUtils.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        return new RequestBody() {
            public final String contentType() {
                return str;
            }

            public final long contentLength() {
                return (long) i2;
            }

            public final void writeTo(OutputStream outputStream) throws IOException {
                outputStream.write(bArr, i, i2);
            }
        };
    }
}
