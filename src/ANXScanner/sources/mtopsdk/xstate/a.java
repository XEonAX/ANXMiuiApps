package mtopsdk.xstate;

import mtopsdk.common.util.AsyncServiceBinder;

/* compiled from: XState */
final class a extends AsyncServiceBinder<mtopsdk.xstate.a.a> {
    a(Class cls, Class cls2) {
        super(cls, cls2);
    }

    protected final void afterAsyncBind() {
        XState.syncToRemote();
    }
}
