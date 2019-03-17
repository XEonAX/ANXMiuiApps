package okhttp3.internal.http;

import javax.annotation.Nullable;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    @Nullable
    private final String contentTypeString;
    private final BufferedSource source;

    public RealResponseBody(@Nullable String contentTypeString, long contentLength, BufferedSource source) {
        this.contentTypeString = contentTypeString;
        this.contentLength = contentLength;
        this.source = source;
    }

    public MediaType contentType() {
        return this.contentTypeString != null ? MediaType.parse(this.contentTypeString) : null;
    }

    public long contentLength() {
        return this.contentLength;
    }

    public BufferedSource source() {
        return this.source;
    }
}
