package com.kingsoft.iciba.a;

import android.util.Log;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;
import mtopsdk.network.util.Constants.Protocol;

final class i extends Thread {
    private HttpURLConnection a;
    private h b;
    private /* synthetic */ e c;

    public i(e eVar) {
        this.c = eVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00fb A:{Splitter: B:20:0x0043, ExcHandler: java.lang.Exception (r0_38 'e' java.lang.Throwable)} */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00fb A:{Splitter: B:20:0x0043, ExcHandler: java.lang.Exception (r0_38 'e' java.lang.Throwable)} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:30:0x00d9, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:32:?, code:
            r0.printStackTrace();
     */
    /* JADX WARNING: Missing block: B:38:0x00fb, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:40:?, code:
            r0.printStackTrace();
            com.kingsoft.iciba.a.e.a(r5.c, null, r5.b);
            android.util.Log.e("NetSearchManage", "Search net word failed", r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        while (this.c.c) {
            synchronized (this.c.d) {
                if (this.c.d.size() <= 0) {
                    try {
                        this.c.d.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    this.b = (h) this.c.d.remove(0);
                    if (this.b.c) {
                        try {
                            this.a = (HttpURLConnection) e.b(this.c).openConnection();
                            this.a.setConnectTimeout(5000);
                            this.a.setReadTimeout(10000);
                            this.a.setDoOutput(true);
                            this.a.setUseCaches(false);
                            this.a.setRequestProperty("Accept-Encoding", "gzip,deflate");
                            this.a.setRequestMethod("POST");
                            PrintWriter printWriter = new PrintWriter(this.a.getOutputStream());
                            printWriter.print("word=" + e.d(this.b.a));
                            printWriter.flush();
                            printWriter.close();
                            this.b.b = this.a.getInputStream();
                            e.a(this.c, Protocol.GZIP.equals(this.a.getHeaderField(Protocol.CONTENT_ENCODING)) ? e.a(new GZIPInputStream(this.b.b)) : e.a(this.b.b), this.b);
                        } catch (Throwable e2) {
                            e2.printStackTrace();
                            e.a(this.c, null, this.b);
                            Log.e("NetSearchManage", "Search net word IOException failed", e2);
                        } catch (Throwable e3) {
                        }
                    }
                }
            }
        }
    }
}
