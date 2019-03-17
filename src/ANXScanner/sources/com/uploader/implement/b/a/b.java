package com.uploader.implement.b.a;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.util.Pair;
import com.uploader.implement.b.c;
import com.uploader.implement.b.d;
import com.uploader.implement.b.e;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ConnectionRecycler */
public class b implements c {
    private ArrayList<e> a = new ArrayList();
    private ArrayList<b> b = new ArrayList();
    private ArrayList<a> c = new ArrayList();
    private ArrayList<Pair<a, e>> d = new ArrayList();
    private final Handler e;
    private final int f;
    private final com.uploader.implement.c g;

    /* compiled from: ConnectionRecycler */
    private static class a {
        final com.uploader.implement.d.b a;
        final com.uploader.implement.a.e b;
        final d c;

        a(com.uploader.implement.d.b session, com.uploader.implement.a.e request, d listener) {
            this.a = session;
            this.b = request;
            this.c = listener;
        }
    }

    /* compiled from: ConnectionRecycler */
    private static final class b implements Runnable {
        final e a;
        final ArrayList<e> b;
        final ArrayList<b> c;

        b(e connection, ArrayList<e> connections, ArrayList<b> timeoutList) {
            this.a = connection;
            this.b = connections;
            this.c = timeoutList;
        }

        public void run() {
            this.b.remove(this.a);
            this.c.remove(this);
            this.a.c();
        }
    }

    public b(com.uploader.implement.c config, Looper looper) {
        this.g = config;
        this.e = new Handler(looper);
        this.f = hashCode();
    }

    private static int a(com.uploader.implement.d.b session, com.uploader.implement.a.e request, ArrayList<Pair<a, e>> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a wrapper = ((Pair) list.get(i)).first;
            if (wrapper.b.equals(request) && wrapper.a.equals(session)) {
                return i;
            }
        }
        return -1;
    }

    private static int a(com.uploader.implement.b.a target, ArrayList<e> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((e) list.get(i)).a().equals(target)) {
                return i;
            }
        }
        return -1;
    }

    private static int b(com.uploader.implement.d.b session, com.uploader.implement.a.e request, ArrayList<a> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a wrapper = (a) list.get(i);
            if (wrapper.b.equals(request) && wrapper.a.equals(session)) {
                return i;
            }
        }
        return -1;
    }

    private static int b(com.uploader.implement.b.a target, ArrayList<a> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((a) list.get(i)).b.a().equals(target)) {
                return i;
            }
        }
        return -1;
    }

    private static boolean c(com.uploader.implement.b.a target, ArrayList<Pair<a, e>> list) {
        int size = list.size();
        int count = 2;
        for (int i = 0; i < size; i++) {
            if (((a) ((Pair) list.get(i)).first).b.a().equals(target)) {
                count--;
                if (count == 0) {
                    return false;
                }
            }
        }
        return true;
    }

    private static int a(e connection, ArrayList<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((b) list.get(i)).a.equals(connection)) {
                return i;
            }
        }
        return -1;
    }

    public boolean a(@NonNull com.uploader.implement.d.b session, @NonNull com.uploader.implement.a.e request, @NonNull com.uploader.implement.a.e newRequest, @NonNull d listener, boolean keepAlive) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " replace start, session:" + session.hashCode() + " request:" + request.hashCode() + " newRequest:" + newRequest.hashCode() + " keepAlive:" + keepAlive);
        }
        com.uploader.implement.b.a target = request.a();
        if (!target.equals(newRequest.a())) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " replace:failure, false !=, request:" + request.hashCode() + " newRequest:" + newRequest.hashCode());
            }
            return false;
        } else if (target.e) {
            int index = b(session, request, this.c);
            if (index != -1) {
                this.c.set(index, new a(session, newRequest, listener));
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " replace, waiting, request:" + request.hashCode() + " newRequest:" + newRequest.hashCode());
                }
                return true;
            }
            index = a(session, request, this.d);
            if (index == -1) {
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " replace failure, !bounding, request:" + request.hashCode());
                }
                return false;
            }
            e connection = a(target, (e) ((Pair) this.d.get(index)).second, keepAlive);
            this.d.set(index, new Pair(new a(session, newRequest, listener), connection));
            listener.a(session, newRequest, connection);
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "ConnectionRecycler", this.f + " replace, bounding, request:" + request.hashCode() + " newRequest:" + newRequest.hashCode() + " available connection:" + connection.hashCode());
            }
            return true;
        } else {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " replace:false, !isLongLived");
            }
            return false;
        }
    }

    public boolean a(@NonNull com.uploader.implement.d.b session, @NonNull com.uploader.implement.a.e request, @NonNull d listener) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " register start, session:" + session.hashCode() + " request:" + request.hashCode());
        }
        com.uploader.implement.b.a target = request.a();
        e connection;
        if (target.e) {
            if (a(session, request, this.d) != -1 && com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "ConnectionRecycler", this.f + " register, is bounding, request:" + request.hashCode());
            }
            if (b(session, request, this.c) != -1 && com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "ConnectionRecycler", this.f + " register, is waiting, request:" + request.hashCode());
            }
            a wrapper = new a(session, request, listener);
            if (3 <= this.d.size() || !c(target, this.d)) {
                this.c.add(wrapper);
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " register, waiting request:" + request.hashCode());
                }
            } else {
                connection = a(target, null, true);
                this.d.add(new Pair(wrapper, connection));
                listener.a(session, request, connection);
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " register, onAvailable long lived connection:" + connection.hashCode() + " request:" + request.hashCode());
                }
            }
        } else {
            connection = target.a(this.g);
            listener.a(session, request, connection);
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " register, onAvailable short lived connection:" + connection.hashCode() + " request:" + request.hashCode());
            }
        }
        return true;
    }

    public boolean a(@NonNull com.uploader.implement.d.b session, @NonNull com.uploader.implement.a.e request, boolean keepAlive) {
        com.uploader.implement.b.a target = request.a();
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " unregister start, session:" + session.hashCode() + " request:" + request.hashCode());
        }
        if (target.e) {
            int index = b(session, request, this.c);
            if (index != -1) {
                this.c.remove(index);
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " unregister, waiting, session:" + session.hashCode() + " request:" + request.hashCode());
                }
                return true;
            }
            index = a(session, request, this.d);
            if (index == -1) {
                return false;
            }
            Pair pair = (Pair) this.d.remove(index);
            e connection = a(((a) pair.first).b.a(), (e) pair.second, keepAlive);
            a(connection);
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " unregister, session:" + session.hashCode() + " request:" + request.hashCode() + " connection:" + connection.hashCode());
            }
            return true;
        } else if (!com.uploader.implement.a.a(2)) {
            return false;
        } else {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " unregister, !isLongLived, session:" + session.hashCode() + " request:" + request.hashCode());
            return false;
        }
    }

    private e a(com.uploader.implement.b.a target, e connection, boolean keepAlive) {
        if (connection == null) {
            int index = a(target, this.a);
            if (index != -1) {
                connection = (e) this.a.remove(index);
                index = a(connection, this.b);
                if (index != -1) {
                    this.e.removeCallbacks((Runnable) this.b.remove(index));
                }
            }
        }
        if (connection != null) {
            connection.a(null);
            if (!keepAlive) {
                connection.c();
            }
            if (connection.d()) {
                connection = target.a(this.g);
            }
        } else {
            connection = target.a(this.g);
        }
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " retrieve, connection:" + connection.hashCode() + " keepAlive:" + keepAlive);
        }
        return connection;
    }

    private void a(e connection) {
        int index = b(connection.a(), this.c);
        if (index != -1) {
            a wrapper = (a) this.c.remove(index);
            this.d.add(new Pair(wrapper, connection));
            wrapper.c.a(wrapper.a, wrapper.b, connection);
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " rebind, onAvailable:" + wrapper.a.hashCode() + " request:" + wrapper.b.hashCode());
                return;
            }
            return;
        }
        this.a.add(connection);
        b runnable = new b(connection, this.a, this.b);
        this.e.postDelayed(runnable, 27000);
        this.b.add(runnable);
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " rebind, start timeout connection:" + connection.hashCode());
        }
    }

    public boolean a(@NonNull com.uploader.implement.d.b session) {
        int i;
        boolean removed = false;
        for (i = this.c.size() - 1; i >= 0; i--) {
            if (((a) this.c.get(i)).a.equals(session)) {
                this.c.remove(i);
                removed = true;
            }
        }
        ArrayList unbindConnections = new ArrayList();
        for (i = this.d.size() - 1; i >= 0; i--) {
            Pair pair = (Pair) this.d.get(i);
            if (((a) pair.first).a.equals(session)) {
                this.d.remove(i);
                unbindConnections.add(a(((a) pair.first).b.a(), (e) pair.second, false));
                removed = true;
            }
        }
        Iterator i$ = unbindConnections.iterator();
        while (i$.hasNext()) {
            a((e) i$.next());
        }
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " unregister, session:" + session.hashCode() + " removed:" + removed);
        }
        return removed;
    }

    public void a() {
        int i;
        e connection;
        this.c.clear();
        for (i = this.b.size() - 1; i >= 0; i--) {
            this.e.removeCallbacks((Runnable) this.b.get(i));
        }
        this.b.clear();
        for (i = this.d.size() - 1; i >= 0; i--) {
            connection = ((Pair) this.d.get(i)).second;
            connection.a(null);
            connection.c();
        }
        this.d.clear();
        for (i = this.a.size() - 1; i >= 0; i--) {
            connection = (e) this.a.get(i);
            connection.a(null);
            connection.c();
        }
        this.a.clear();
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "ConnectionRecycler", this.f + " reset");
        }
    }
}
