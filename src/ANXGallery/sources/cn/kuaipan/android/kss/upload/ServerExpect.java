package cn.kuaipan.android.kss.upload;

import android.util.Log;
import cn.kuaipan.android.http.KscHttpResponse;
import cn.kuaipan.android.kss.KssDef;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

public class ServerExpect implements KssDef {
    public boolean factoryMode = false;
    public long nextChunkSize = -1;
    public int uploadDelay = -1;

    public static ServerExpect getServerExpect(KscHttpResponse kscResp) {
        boolean z = true;
        HttpResponse resp = kscResp == null ? null : kscResp.getResponse();
        if (resp == null) {
            return null;
        }
        boolean hasExpect = false;
        ServerExpect result = new ServerExpect();
        Header header = resp.getFirstHeader("X-Factory-Mode");
        if (header != null) {
            hasExpect = true;
            if (getInt(header) != 1) {
                z = false;
            }
            result.factoryMode = z;
        }
        header = resp.getFirstHeader("X-Upload-Delay");
        if (header != null) {
            hasExpect = true;
            result.uploadDelay = getInt(header);
        }
        header = resp.getFirstHeader("X-Next-Chunk-Size");
        if (header != null) {
            hasExpect = true;
            result.nextChunkSize = (long) getInt(header);
        }
        if (!hasExpect) {
            result = null;
        }
        return result;
    }

    public void validate() {
        if (this.nextChunkSize >= 0) {
            this.nextChunkSize -= this.nextChunkSize % 65536;
            this.nextChunkSize = Math.min(this.nextChunkSize, MAX_CHUNKSIZE);
            this.nextChunkSize = Math.max(this.nextChunkSize, 65536);
        }
        if (this.uploadDelay > 0 && !this.factoryMode) {
            this.uploadDelay = Math.min(this.uploadDelay, 300);
        }
    }

    private static int getInt(Header header) {
        if (header == null) {
            return -1;
        }
        int result = -1;
        try {
            return Integer.parseInt(header.getValue());
        } catch (NumberFormatException e) {
            Log.w("ServerExpect", "Failed parser header: " + header);
            return result;
        }
    }
}
