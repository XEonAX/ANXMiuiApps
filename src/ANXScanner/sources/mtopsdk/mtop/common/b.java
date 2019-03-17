package mtopsdk.mtop.common;

import mtopsdk.common.util.TBSdkLog;
import mtopsdk.network.domain.Response;

/* compiled from: NetworkListenerAdapter */
final class b implements Runnable {
    private /* synthetic */ Response a;
    private /* synthetic */ Object b;
    private /* synthetic */ a c;

    b(a aVar, Response response, Object obj) {
        this.c = aVar;
        this.a = response;
        this.b = obj;
    }

    public final void run() {
        try {
            if (this.c.b != null) {
                this.c.b.onHeader(new MtopHeaderEvent(this.a.code(), this.a.headers()), this.b);
            }
        } catch (Throwable th) {
            TBSdkLog.e("mtopsdk.NetworkListenerAdapter", "onHeader failed.", th);
        }
    }
}
