package com.uploader.implement.a;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Pair;
import com.uploader.implement.d.b;
import java.lang.ref.WeakReference;

/* compiled from: AbstractUploaderAction */
public abstract class a implements g, com.uploader.implement.d.a {
    final int a;
    final Context b;
    WeakReference<d> c;
    private volatile int d = 0;

    abstract Pair<Integer, Integer> a(@NonNull b bVar, @NonNull e eVar);

    @NonNull
    abstract Pair<com.uploader.implement.c.a, ? extends Object> a(@NonNull b bVar, e eVar, @NonNull com.uploader.implement.a.b.a aVar);

    abstract com.uploader.implement.c.a a(@NonNull b bVar, e eVar, Pair<Integer, Integer> pair);

    abstract com.uploader.implement.c.a a(@NonNull b bVar, e eVar, com.uploader.implement.c.a aVar);

    abstract com.uploader.implement.c.a a(@NonNull b bVar, e eVar, boolean z);

    abstract void a();

    abstract void a(int i, Object obj);

    abstract boolean a(b bVar);

    abstract boolean b();

    a(Context context) {
        this.b = context;
        this.a = hashCode();
    }

    public final void a(d actionListener) {
        this.c = new WeakReference(actionListener);
    }

    private d e() {
        if (this.c == null) {
            return null;
        }
        return (d) this.c.get();
    }

    public final int c() {
        return this.d;
    }

    final void a(b session, com.uploader.implement.c.a error) {
        if (this.d == 3) {
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "AbstractUploaderAction", this.a + " begin, state is finish");
            }
        } else if (error != null) {
            a(session, error, 1);
        } else {
            d(session);
        }
    }

    private void d(b session) {
        boolean stepUp = b();
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "AbstractUploaderAction", this.a + " begin, session:" + session.hashCode() + " state:" + this.d + " stepUp:" + stepUp);
        }
        if (stepUp) {
            a(2);
        }
        com.uploader.implement.c.a error = a(session, null, true);
        if (error != null) {
            a(session, error, 1);
        }
    }

    public final void b(@NonNull b session) {
        int notifyType = this.d == 0 ? 5 : 6;
        if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "AbstractUploaderAction", this.a + " onStart, state:" + this.d + " notifyType:" + notifyType + " session:" + session.hashCode());
        }
        switch (this.d) {
            case 0:
            case 1:
            case 4:
                if (!a(1)) {
                    a();
                    session.a(null);
                    session.a();
                }
                session.a((com.uploader.implement.d.a) this);
                if (!a(session)) {
                    d(session);
                }
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "AbstractUploaderAction", this.a + " submit timeConsuming, session:" + session.hashCode() + " state:" + this.d);
                    break;
                }
                break;
            case 2:
            case 5:
                if (!a(2)) {
                    a();
                    session.a(null);
                    session.a();
                }
                session.a((com.uploader.implement.d.a) this);
                com.uploader.implement.c.a error = a(session, null, true);
                if (error != null) {
                    a(session, error, 1);
                    break;
                }
                break;
            default:
                if (com.uploader.implement.a.a(8)) {
                    com.uploader.implement.a.a(8, "AbstractUploaderAction", this.a + " no need to begin, " + " state:" + this.d);
                    break;
                }
                break;
        }
        a(notifyType, null);
    }

    public final void c(@Nullable b session) {
        if (this.d != 3) {
            a(session, null, 0);
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "AbstractUploaderAction", this.a + " onCancel, state is finish");
        }
    }

    public final void a(b session, e request, f actionResponse) {
        com.uploader.implement.a.b.a response = (com.uploader.implement.a.b.a) actionResponse;
        int type = response.a();
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "AbstractUploaderAction", this.a + " onReceive, session:" + session.hashCode() + " request:" + request.hashCode() + " response:" + response.hashCode() + " state:" + this.d + " type:" + type + " content:" + response.b().toString());
        }
        if (this.d != 3) {
            Pair pair = a(session, request, response);
            com.uploader.implement.c.a error = pair.first;
            d listener;
            switch (type) {
                case 1:
                    if (error == null) {
                        if (!b()) {
                            a(3);
                            session.a(request, true);
                            listener = e();
                            if (listener != null) {
                                listener.a(this);
                                break;
                            }
                        }
                        a(2);
                        error = a(session, request, true);
                        break;
                    }
                    break;
                case 2:
                    if (pair.second != null) {
                        a(3, pair.second);
                        break;
                    }
                    break;
                case 3:
                    if (pair.second != null) {
                        error = a(session, request, (Pair) pair.second);
                        break;
                    }
                    break;
                case 4:
                    a(3);
                    session.a(null);
                    session.a(request, true);
                    a(0, pair.second);
                    listener = e();
                    if (listener != null) {
                        listener.a(this);
                        break;
                    }
                    break;
                case 5:
                    if (error != null && "300".equals(error.code) && "2".equals(error.subcode)) {
                        a(1);
                        error = a(session, null, true);
                        break;
                    }
                case 6:
                    String str;
                    String str2 = "300";
                    String str3 = "3";
                    if (pair.second == null) {
                        str = "";
                    } else {
                        str = pair.second.toString();
                    }
                    error = new com.uploader.implement.c.a(str2, str3, str, true);
                    break;
            }
            c(session, request, error);
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "AbstractUploaderAction", this.a + " onReceive, state is finish");
        }
    }

    private boolean a(int state) {
        if (this.d == state) {
            return false;
        }
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "AbstractUploaderAction", this.a + " setState, oldState:" + this.d + " state:" + state);
        }
        this.d = state;
        return true;
    }

    public final void b(b session, e request) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "AbstractUploaderAction", this.a + " onSend, session:" + session.hashCode() + " request:" + request.hashCode());
        }
        if (this.d != 3) {
            Pair offset = a(session, request);
            if (offset != null) {
                c(session, request, a(session, request, offset));
            }
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "AbstractUploaderAction", this.a + " onSend, state is finish");
        }
    }

    private void a(@Nullable b session, com.uploader.implement.c.a error, int reason) {
        int notifyType;
        int oldState = this.d;
        if (com.uploader.implement.a.a(8)) {
            Object obj;
            String str = "AbstractUploaderAction";
            StringBuilder append = new StringBuilder().append(this.a).append(" stop, session:");
            if (session == null) {
                obj = "null";
            } else {
                obj = Integer.valueOf(session.hashCode());
            }
            com.uploader.implement.a.a(8, str, append.append(obj).append(" oldState:").append(oldState).append(" error:").append(error).append(" reason:").append(reason).toString());
        }
        if (session != null) {
            a();
            session.a(null);
            session.a();
        }
        if (reason == 2) {
            a(this.d == 2 ? 5 : 4);
            notifyType = 4;
        } else {
            a(3);
            d listener = e();
            if (listener != null) {
                listener.a(this);
            }
            if (reason == 0) {
                notifyType = 1;
            } else {
                notifyType = 2;
            }
        }
        a(notifyType, (Object) error);
    }

    public final void b(b session, e request, com.uploader.implement.c.a error) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "AbstractUploaderAction", this.a + " onError, session:" + session.hashCode() + " request:" + request.hashCode() + " error:" + error.toString());
        }
        if (this.d != 3) {
            if ("100".equals(error.code)) {
                boolean isConnected = com.uploader.implement.e.a.a(this.b);
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "AbstractUploaderAction", this.a + " onError, connection error, isConnected:" + isConnected + " error:" + error.toString());
                }
                if (!isConnected || "-1".equals(error.subcode)) {
                    a(session, error, 2);
                    return;
                }
            }
            c(session, request, error);
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "AbstractUploaderAction", this.a + " onError, state is finish");
        }
    }

    public void d() {
        a(7, null);
    }

    private void c(b session, e request, com.uploader.implement.c.a error) {
        if (error != null) {
            if (error.a) {
                error = a(session, request, error);
                if (error != null) {
                    a(session, error, 1);
                    return;
                }
                return;
            }
            a(session, error, 1);
        }
    }
}
