package com.uploader.implement.a;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Pair;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.uploader.export.ITaskListener;
import com.uploader.export.ITaskResult;
import com.uploader.export.IUploaderTask;
import com.uploader.implement.b.a.f;
import com.uploader.implement.b.a.g;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* compiled from: UploaderAction */
public class i extends a {
    private ArrayList<Pair<Integer, Integer>> d = new ArrayList();
    private long e;
    private int f;
    private int g;
    private e h;
    private String i;
    private c j;
    private volatile com.uploader.implement.a.a.b k;
    private final IUploaderTask l;
    private final ITaskListener m;
    private final Handler n;
    private final int o;
    private final com.uploader.implement.c p;

    /* compiled from: UploaderAction */
    static final class a implements Callback {
        static final int a = a.class.hashCode();
        private final WeakReference<com.uploader.implement.d.b> b;
        private final WeakReference<a> c;

        a(a action, com.uploader.implement.d.b session) {
            this.c = new WeakReference(action);
            this.b = new WeakReference(session);
        }

        public boolean handleMessage(Message msg) {
            if (msg.what != a) {
                return false;
            }
            com.uploader.implement.d.b session = (com.uploader.implement.d.b) this.b.get();
            if (session == null) {
                return false;
            }
            a action = (a) this.c.get();
            if (action == null) {
                return false;
            }
            action.a(session, (com.uploader.implement.c.a) msg.obj);
            return true;
        }
    }

    /* compiled from: UploaderAction */
    private static class b implements ITaskResult {
        private Map<String, String> a;
        private String b;
        private String c;

        public b(Map<String, String> result, String fileUrl, String bizResult) {
            this.a = result;
            this.c = fileUrl;
            this.b = bizResult;
        }

        public String getBizResult() {
            return this.b;
        }

        public String getFileUrl() {
            return this.c;
        }

        public Map<String, String> getResult() {
            return this.a;
        }
    }

    /* compiled from: UploaderAction */
    private static final class c implements Runnable {
        final Callback a;
        private final WeakReference<i> b;
        private final WeakReference<Looper> c = new WeakReference(Looper.myLooper());

        c(i action, Callback preparedCallback) {
            this.b = new WeakReference(action);
            this.a = preparedCallback;
        }

        public void run() {
            i action = (i) this.b.get();
            Looper looper = (Looper) this.c.get();
            if (looper != null && action != null) {
                new Handler(looper, this.a).obtainMessage(a.a, action.e()).sendToTarget();
            }
        }
    }

    public i(com.uploader.implement.c config, IUploaderTask task, int category, ITaskListener taskListener, Handler scheduler) {
        super(config.c);
        this.p = config;
        this.l = task;
        this.m = taskListener;
        this.n = scheduler;
        this.o = category;
    }

    void a() {
        this.h = null;
        this.d.clear();
    }

    boolean b() {
        Pair tokenInfo = this.p.a.a();
        if (tokenInfo == null) {
            return false;
        }
        return this.p.a.f() + (System.currentTimeMillis() / 1000) < ((Long) tokenInfo.second).longValue();
    }

    com.uploader.implement.c.a e() {
        long elapsed = System.currentTimeMillis();
        Pair pair = com.uploader.implement.a.c.b.a(this.l);
        elapsed = System.currentTimeMillis() - elapsed;
        if (pair.second != null) {
            ((com.uploader.implement.a.a.b) pair.second).j = elapsed;
            this.k = (com.uploader.implement.a.a.b) pair.second;
        }
        if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderAction", this.a + " createFileDescription, elapsed:" + elapsed + " error:" + (pair.first == null ? "" : ((com.uploader.implement.c.a) pair.first).toString()));
        }
        return (com.uploader.implement.c.a) pair.first;
    }

    boolean a(com.uploader.implement.d.b session) {
        boolean inNeed = this.k == null;
        if (inNeed) {
            com.uploader.implement.e.b.a(new c(this, new a(this, session)));
        }
        return inNeed;
    }

    com.uploader.implement.c.a a(com.uploader.implement.d.b session, @Nullable e request, boolean keepAlive) {
        if (c() == 2) {
            return c(session, request, keepAlive);
        }
        return b(session, request, keepAlive);
    }

    com.uploader.implement.c.a b(com.uploader.implement.d.b session, @Nullable e request, boolean keepAlive) {
        try {
            e newRequest = new com.uploader.implement.a.a.a(this.p);
            if (request == null) {
                session.a(newRequest);
            } else {
                session.a(request, newRequest, keepAlive);
            }
            g target = newRequest.a();
            this.j = new c(true, this.j);
            this.j.d = this.k.f;
            this.j.p = this.k.e;
            this.j.e = target.a;
            this.j.f = target.b;
            this.j.k = this.k.g;
            this.j.s = this.k.j;
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " beginDeclare statistics create:" + this.j.hashCode());
            }
            return null;
        } catch (JSONException e) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "UploaderAction", this.a + " onActionBegin", e);
            }
            return new com.uploader.implement.c.a("200", "1", e.toString(), false);
        } catch (Exception e2) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "UploaderAction", this.a + " onActionBegin", e2);
            }
            return new com.uploader.implement.c.a("200", AlibcJsResult.TIMEOUT, e2.toString(), false);
        }
    }

    com.uploader.implement.c.a c(com.uploader.implement.d.b session, @Nullable e request, boolean keepAlive) {
        long offset = this.e;
        long length = this.k.g - this.e;
        if (length < 0) {
            length = 0;
            offset = this.k.g;
        }
        try {
            String str;
            com.uploader.implement.c cVar = this.p;
            com.uploader.implement.a.a.b bVar = this.k;
            if (offset == 0) {
                str = "put";
            } else {
                str = "patch";
            }
            e newRequest = new com.uploader.implement.a.a.c(cVar, bVar, str, offset, length, true);
            if (request == null) {
                session.a(newRequest);
            } else {
                session.a(request, newRequest, keepAlive);
            }
            f target = newRequest.a();
            this.j = new c(false, this.j);
            this.j.d = this.k.f;
            this.j.p = this.k.e;
            this.j.q = (String) this.p.a.a().first;
            this.j.e = target.a;
            this.j.f = target.b;
            this.j.k = this.k.g;
            this.j.t = target.f ? 1 : 0;
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " beginFile, request:" + (request == null ? "" : Integer.valueOf(request.hashCode())) + " newRequest:" + (newRequest == null ? "" : Integer.valueOf(newRequest.hashCode())) + " statistics:" + this.j.hashCode());
            }
            return null;
        } catch (UnsupportedEncodingException e) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "UploaderAction", this.a + " onActionStartFile", e);
            }
            return new com.uploader.implement.c.a("200", "1", e.toString(), false);
        } catch (Exception e2) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "UploaderAction", this.a + " onActionStartFile", e2);
            }
            return new com.uploader.implement.c.a("200", AlibcJsResult.TIMEOUT, e2.toString(), false);
        }
    }

    com.uploader.implement.c.a a(com.uploader.implement.d.b session, e request, com.uploader.implement.c.a error) {
        if (this.j != null) {
            this.j.m = System.currentTimeMillis();
        }
        if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderAction", this.a + " onActionRetry, session:" + session.hashCode() + " request:" + request.hashCode());
        }
        if (c() == 2) {
            return d(session, request, error);
        }
        return c(session, request, error);
    }

    com.uploader.implement.c.a c(com.uploader.implement.d.b session, e request, com.uploader.implement.c.a error) {
        if (this.f >= 4) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderAction", this.a + " retryDeclare, retry failed, request:" + request.hashCode() + " error:" + error + " declareRetryCounter:" + this.f);
            }
            return error;
        }
        if ("100".equalsIgnoreCase(error.code) || "400".equalsIgnoreCase(error.code)) {
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " onActionRetry, try to connect next, request:" + request.hashCode());
            }
            this.p.a.c();
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " ConnectionStrategy, after nextDeclareTarget:" + this.p.a.toString());
            }
        }
        error = b(session, request, false);
        if (error == null) {
            this.f++;
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderAction", this.a + " onActionRetry, retry, request:" + request.hashCode() + " declareRetryCounter:" + this.f);
            }
            if (this.j != null) {
                this.j.r = this.f;
            }
        }
        return error;
    }

    com.uploader.implement.c.a d(com.uploader.implement.d.b session, e request, com.uploader.implement.c.a error) {
        if (this.g >= 5) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderAction", this.a + " retryFile, retry failed, request:" + request.hashCode() + " error:" + error + " fileRetryCounter:" + this.g);
            }
            return error;
        }
        if ("100".equalsIgnoreCase(error.code)) {
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " retryFile, try to connect next, request:" + request.hashCode());
            }
            this.p.a.e();
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " ConnectionStrategy, after nextUploadTarget:" + this.p.a.toString());
            }
        }
        error = c(session, request, false);
        if (error == null) {
            this.g++;
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderAction", this.a + " retryFile, request:" + request.hashCode() + " fileRetryCounter:" + this.g);
            }
            if (this.j != null) {
                this.j.r = this.g;
            }
        }
        return error;
    }

    com.uploader.implement.c.a a(com.uploader.implement.d.b session, e request, Pair<Integer, Integer> offset) {
        if (this.h != null) {
            this.d.add(offset);
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " onActionContinue, add offset, session:" + session.hashCode());
            }
            return null;
        }
        try {
            e newRequest = new com.uploader.implement.a.a.c(this.p, this.k, "patch", (long) ((Integer) offset.first).intValue(), (long) ((Integer) offset.second).intValue(), false);
            session.a(request, newRequest, true);
            if (com.uploader.implement.a.a(4)) {
                com.uploader.implement.a.a(4, "UploaderAction", this.a + " onActionContinue, session:" + session.hashCode() + " send request:" + newRequest.hashCode());
            }
            return null;
        } catch (UnsupportedEncodingException e) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "UploaderAction", this.a + " onActionContinue", e);
            }
            return new com.uploader.implement.c.a("200", "1", e.toString(), false);
        } catch (Exception e2) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "UploaderAction", this.a + " onActionContinue", e2);
            }
            return new com.uploader.implement.c.a("200", AlibcJsResult.TIMEOUT, e2.toString(), false);
        }
    }

    public void c(com.uploader.implement.d.b session, e request) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderAction", this.a + " onConnectBegin, session:" + session.hashCode() + " request:" + request.hashCode());
        }
        if (this.j != null) {
            this.j.n = System.currentTimeMillis();
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " onConnectBegin statistics:" + this.j.hashCode() + " connectedTimeMillisStart:" + this.j.n);
            }
        }
    }

    public void d(com.uploader.implement.d.b session, e request) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderAction", this.a + " onConnect, session:" + session.hashCode() + " request:" + request.hashCode());
        }
        if (this.j != null) {
            this.j.o = System.currentTimeMillis();
        }
    }

    public void a(com.uploader.implement.d.b session, e request, int fileSizeSent) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderAction", this.a + " onUploading, session:" + session.hashCode() + " request:" + request.hashCode() + " fileSizeSent:" + fileSizeSent + ", sendOffset=" + this.e);
        }
        this.e = ((long) fileSizeSent) + request.b().c;
        if (this.j != null) {
            this.j.b = this.e;
        }
    }

    public void e(com.uploader.implement.d.b session, e request) {
        long time = 0;
        if (this.j != null && this.j.l == 0) {
            time = System.currentTimeMillis();
            this.j.l = time;
        }
        this.h = request;
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderAction", this.a + " onSendBegin, session:" + session.hashCode() + " request and set current:" + request.hashCode() + (time == 0 ? "" : " statistics:" + this.j.hashCode() + " costTimeMillisStart:" + time));
        }
    }

    Pair<Integer, Integer> a(com.uploader.implement.d.b session, e request) {
        if (com.uploader.implement.a.a(4)) {
            com.uploader.implement.a.a(4, "UploaderAction", this.a + " onActionDeliver, session:" + session.hashCode() + " request:" + request.hashCode() + " currentRequest:" + (this.h == null ? "null" : Integer.valueOf(this.h.hashCode())));
        }
        if (this.j != null) {
            h content = request.b();
            this.j.b = (content.d + ((long) (content.f == null ? 0 : content.f.length))) + ((long) (content.g == null ? 0 : content.g.length));
        }
        if (this.h != request) {
            return null;
        }
        this.h = null;
        return this.d.size() > 0 ? (Pair) this.d.remove(0) : null;
    }

    void a(int notifyType, Object object) {
        b.a(this.n, notifyType, this.l, this.m, object);
        if (this.j != null) {
            long current = System.currentTimeMillis();
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " onActionNotify, notifyType:" + notifyType + " statistics:" + this.j.hashCode() + " costTimeMillisEnd:" + current);
            }
            switch (notifyType) {
                case 1:
                    this.j.g = 2;
                    this.j.m = current;
                    this.j.a();
                    this.j = null;
                    return;
                case 2:
                    com.uploader.implement.c.a error = (com.uploader.implement.c.a) object;
                    this.j.g = 0;
                    this.j.h = error.code;
                    this.j.i = error.subcode;
                    this.j.j = error.info;
                    this.j.m = current;
                    this.j.a();
                    this.j = null;
                    return;
                case 7:
                    this.j.m = current;
                    return;
                default:
                    return;
            }
        }
    }

    @NonNull
    public final IUploaderTask f() {
        return this.l;
    }

    public final int g() {
        return this.o;
    }

    Pair<com.uploader.implement.c.a, ? extends Object> a(com.uploader.implement.d.b session, e request, com.uploader.implement.a.b.a response) {
        if (this.j != null) {
            String length = response.a("divided_length");
            if (length != null) {
                try {
                    c cVar = this.j;
                    cVar.c += (long) Integer.parseInt(length);
                } catch (Exception e) {
                    if (com.uploader.implement.a.a(2)) {
                        com.uploader.implement.a.a(2, "UploaderAction", this.a + e.toString());
                    }
                }
            }
        }
        switch (response.a()) {
            case 1:
                return e(response);
            case 2:
                return d(response);
            case 3:
                return b(session, request, response);
            case 4:
                return c(response);
            case 5:
                return b(response);
            case 6:
                return a(response);
            default:
                return null;
        }
    }

    Pair<com.uploader.implement.c.a, ? extends Object> a(com.uploader.implement.a.b.a response) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderAction", this.a + " retrieveStatus ,response=" + response);
        }
        String status = response.a("x-arup-session-status");
        if (TextUtils.isEmpty(status)) {
            return new Pair(null, null);
        }
        return new Pair(null, status);
    }

    Pair<com.uploader.implement.c.a, ? extends Object> b(com.uploader.implement.a.b.a response) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderAction", this.a + " onReceiveError ,response=" + response);
        }
        String error = response.a("x-arup-error-code");
        String msg = response.a("x-arup-error-msg");
        String timestamp = response.a("x-arup-server-timestamp");
        if (!TextUtils.isEmpty(timestamp)) {
            try {
                this.p.a.a(Long.parseLong(timestamp));
            } catch (Exception e) {
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "UploaderAction", this.a + " retrieveError " + e);
                }
                msg = msg + " " + e.toString();
            }
        }
        if (com.uploader.implement.a.c.a.a.a.a.contains(error)) {
            return new Pair(new com.uploader.implement.c.a("300", error, msg, true), null);
        }
        if ("20021".equalsIgnoreCase(error) || "20022".equalsIgnoreCase(error) || "20020".equalsIgnoreCase(error)) {
            return new Pair(new com.uploader.implement.c.a("300", "2", msg, true), null);
        }
        return new Pair(new com.uploader.implement.c.a("300", error, msg, false), null);
    }

    Pair<com.uploader.implement.c.a, ? extends Object> c(com.uploader.implement.a.b.a response) {
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderAction", this.a + " onReceiveResult ,response=" + response.b());
        }
        if (!this.k.e.equals(response.a("x-arup-file-id"))) {
            return new Pair(new com.uploader.implement.c.a("300", "1", "fileId!=", true), null);
        }
        ITaskResult taskResult = new b(response.b(), response.a("x-arup-file-url"), response.a("x-arup-biz-ret"));
        if (this.j != null) {
            this.j.g = 1;
            this.j.m = System.currentTimeMillis();
            this.i += ", File" + this.j.a();
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " retrieveResult, statistics:" + this.j.hashCode() + " costTimeMillisEnd:" + this.j.m);
            }
        }
        Map map = taskResult.getResult();
        if (map != null) {
            map.put("", this.i);
        }
        return new Pair(null, taskResult);
    }

    Pair<com.uploader.implement.c.a, ? extends Object> d(com.uploader.implement.a.b.a response) {
        String progressHeader = response.a("x-arup-process");
        if (com.uploader.implement.a.a(4)) {
            com.uploader.implement.a.a(4, "UploaderAction", this.a + " progress :" + progressHeader);
        }
        int progress = 0;
        try {
            progress = Integer.parseInt(progressHeader);
        } catch (Exception e) {
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + "", e);
            }
        }
        return new Pair(null, Integer.valueOf(progress));
    }

    Pair<com.uploader.implement.c.a, ? extends Object> e(com.uploader.implement.a.b.a response) {
        try {
            Object[] objects = response.c;
            this.p.a.a((String) objects[0], ((Long) objects[1]).longValue(), (List) objects[2], (List) objects[3]);
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderAction", this.a + " ConnectionStrategy update:" + this.p.a.toString());
            }
            if (this.j != null) {
                this.j.g = 1;
                this.j.q = (String) this.p.a.a().first;
                this.j.m = System.currentTimeMillis();
                this.i = "Declare" + this.j.a();
                if (com.uploader.implement.a.a(8)) {
                    com.uploader.implement.a.a(8, "UploaderAction", this.a + " retrieveDeclare, statistics:" + this.j.hashCode() + " costTimeMillisEnd:" + this.j.m);
                }
            }
            return new Pair(null, null);
        } catch (Exception e) {
            if (com.uploader.implement.a.a(4)) {
                com.uploader.implement.a.a(4, "UploaderAction", e.toString());
            }
            return new Pair(new com.uploader.implement.c.a("200", AlibcJsResult.APP_NOT_INSTALL, e.toString(), true), null);
        }
    }

    Pair<com.uploader.implement.c.a, ? extends Object> b(com.uploader.implement.d.b session, e request, com.uploader.implement.a.b.a response) {
        String value = response.a("x-arup-offset");
        if (TextUtils.isEmpty(value)) {
            return new Pair(new com.uploader.implement.c.a("200", AlibcJsResult.CLOSED, "onReceiveOffset:1", true), null);
        }
        int index = value.indexOf("=");
        if (index == -1) {
            return new Pair(new com.uploader.implement.c.a("200", AlibcJsResult.CLOSED, "onReceiveOffset:2", true), null);
        }
        if (!this.k.e.equals(value.substring(0, index))) {
            return new Pair(new com.uploader.implement.c.a("200", AlibcJsResult.CLOSED, "onReceiveOffset:3", true), null);
        }
        int colonIndex = value.indexOf(",");
        if (colonIndex <= index + 1 || colonIndex >= value.length()) {
            return new Pair(new com.uploader.implement.c.a("200", AlibcJsResult.CLOSED, "onReceiveOffset:4", true), null);
        }
        try {
            return new Pair(null, new Pair(Integer.valueOf(Integer.parseInt(value.substring(index + 1, colonIndex))), Integer.valueOf(Integer.parseInt(value.substring(colonIndex + 1, value.length())))));
        } catch (Exception e) {
            if (com.uploader.implement.a.a(16)) {
                com.uploader.implement.a.a(16, "UploaderAction", this.a + " parse offset error.", e);
            }
            return new Pair(new com.uploader.implement.c.a("200", AlibcJsResult.CLOSED, e.toString(), true), null);
        }
    }
}
