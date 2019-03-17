package mtopsdk.mtop.common;

import mtopsdk.network.domain.Response;

/* compiled from: NetworkListenerAdapter */
final class c implements Runnable {
    private /* synthetic */ Response a;
    private /* synthetic */ Object b;
    private /* synthetic */ a c;

    c(a aVar, Response response, Object obj) {
        this.c = aVar;
        this.a = response;
        this.b = obj;
    }

    public final void run() {
        a.a(this.c, this.a, this.b);
    }
}
