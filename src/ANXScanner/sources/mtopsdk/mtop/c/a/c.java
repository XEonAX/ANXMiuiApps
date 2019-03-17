package mtopsdk.mtop.c.a;

import java.io.IOException;
import java.io.OutputStream;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.network.domain.RequestBody;

/* compiled from: Api4NetworkConverter */
final class c extends RequestBody {
    private /* synthetic */ byte[] a;

    c(b bVar, byte[] bArr) {
        this.a = bArr;
    }

    public final String contentType() {
        return HttpHeaderConstant.FORM_CONTENT_TYPE;
    }

    public final void writeTo(OutputStream outputStream) throws IOException {
        if (outputStream != null && this.a != null) {
            outputStream.write(this.a);
        }
    }
}
