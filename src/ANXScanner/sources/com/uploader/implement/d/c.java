package com.uploader.implement.d;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.util.Pair;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsResult;
import com.uploader.implement.a.e;
import com.uploader.implement.a.h;
import com.uploader.implement.b.d;
import com.uploader.implement.b.f;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: UploaderSession */
public class c implements com.uploader.implement.b.b, d, b {
    private static final AtomicInteger g = new AtomicInteger(0);
    private a a;
    private ArrayList<e> b = new ArrayList();
    private ArrayList<b> c = new ArrayList();
    private ArrayList<a> d = new ArrayList();
    private com.uploader.implement.b.c e;
    private Handler f;
    private final int h;
    private final com.uploader.implement.c i;

    /* compiled from: UploaderSession */
    static class a implements Runnable {
        final int a;
        final c b;
        final Object[] c;

        a(int flag, @NonNull c session, Object... objects) {
            this.a = flag;
            this.b = session;
            this.c = objects;
        }

        public void run() {
            switch (this.a) {
                case 1:
                    this.b.c((com.uploader.implement.b.e) this.c[0]);
                    return;
                case 2:
                    this.b.d((com.uploader.implement.b.e) this.c[0]);
                    return;
                case 3:
                    this.b.b((com.uploader.implement.b.e) this.c[0], (com.uploader.implement.c.a) this.c[1]);
                    return;
                case 4:
                    this.b.b((com.uploader.implement.b.e) this.c[0], (f) this.c[1]);
                    return;
                case 5:
                    this.b.a((com.uploader.implement.b.e) this.c[0], ((Integer) this.c[1]).intValue(), false);
                    return;
                case 6:
                    this.b.a((com.uploader.implement.b.e) this.c[0], ((Integer) this.c[1]).intValue(), true);
                    return;
                case 7:
                    this.b.b((b) this.c[0], (e) this.c[1], (com.uploader.implement.b.e) this.c[2]);
                    return;
                case 8:
                    this.b.b((com.uploader.implement.b.e) this.c[0]);
                    return;
                default:
                    return;
            }
        }
    }

    /* compiled from: UploaderSession */
    private static final class b {
        final e a;
        final h b;
        final com.uploader.implement.b.e c;
        boolean d;
        boolean e;
        int f;
        int g;
        int h;
        int i;
        ByteBuffer j;
        Map<String, String> k;
        f l;
        ByteBuffer m;

        b(@NonNull e request, @NonNull com.uploader.implement.b.e connection) {
            boolean z;
            boolean z2 = false;
            this.a = request;
            this.b = request.b();
            this.c = connection;
            Map header = this.b.e;
            if (header == null || header.size() == 0) {
                z = true;
            } else {
                z = false;
            }
            this.d = z;
            byte[] tail = this.b.g;
            if (tail == null || tail.length == 0) {
                z2 = true;
            }
            this.e = z2;
        }

        void a() {
            boolean z;
            boolean z2 = true;
            Map header = this.b.e;
            if (header == null || header.size() == 0) {
                z = true;
            } else {
                z = false;
            }
            this.d = z;
            byte[] tail = this.b.g;
            if (!(tail == null || tail.length == 0)) {
                z2 = false;
            }
            this.e = z2;
            this.g = 0;
            this.f = 0;
            this.h = 0;
            this.j = null;
            this.k = null;
        }

        boolean b() {
            boolean bytesFinish = true;
            if (this.b.f != null) {
                if (this.f == this.b.f.length) {
                    bytesFinish = true;
                } else {
                    bytesFinish = false;
                }
            }
            boolean entityFinish = true;
            if (this.b.a != null) {
                if (((long) this.g) == this.b.d) {
                    entityFinish = true;
                } else {
                    entityFinish = false;
                }
            }
            if (this.e && this.d && bytesFinish && entityFinish) {
                return true;
            }
            return false;
        }
    }

    public c(com.uploader.implement.c config, com.uploader.implement.b.c recycler, Looper looper) {
        this.i = config;
        this.e = recycler;
        this.f = new Handler(looper);
        this.h = hashCode();
    }

    public void a(@NonNull e request, boolean keepAlive) {
        if (!this.b.remove(request)) {
            int index = a(request, this.c);
            if (index != -1) {
                b wrapper = (b) this.c.remove(index);
                boolean done = this.e.a((b) this, request, keepAlive);
                index = b(wrapper.c, this.d);
                if (index != -1) {
                    this.f.removeCallbacks((Runnable) this.d.remove(index));
                }
                if (com.uploader.implement.a.a(2)) {
                    com.uploader.implement.a.a(2, "UploaderSession", this.h + " cancel, sendingList request" + request.hashCode() + " remove timeout:" + (index != -1) + " unregister:" + done);
                }
            } else if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " cancel, no sending request:" + request.hashCode());
            }
        } else if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderSession", this.h + " cancel, waiting request:" + request.hashCode());
        }
    }

    public void a(@NonNull e request) {
        this.b.add(request);
        boolean done = this.e.a((b) this, request, (d) this);
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderSession", this.h + " send, request:" + request.hashCode() + " register:" + done);
        }
    }

    public void a(@NonNull e request, @NonNull e newRequest, boolean keepAlive) {
        int index = this.b.indexOf(request);
        boolean done;
        if (index != -1) {
            this.b.set(index, newRequest);
            done = this.e.a(this, request, newRequest, this, keepAlive);
            if (!done) {
                this.e.a((b) this, request, keepAlive);
                this.e.a((b) this, newRequest, (d) this);
            }
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " replace:" + done + " waiting request:" + request.hashCode());
                return;
            }
            return;
        }
        index = a(request, this.c);
        if (index == -1) {
            this.b.add(newRequest);
            done = this.e.a(this, request, newRequest, this, keepAlive);
            if (!done) {
                this.e.a((b) this, request, keepAlive);
                this.e.a((b) this, newRequest, (d) this);
            }
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " replace:" + done + " request:" + request.hashCode() + " newRequest:" + newRequest.hashCode());
                return;
            }
            return;
        }
        b wrapper = (b) this.c.remove(index);
        this.b.add(newRequest);
        done = this.e.a(this, request, newRequest, this, keepAlive);
        if (!done) {
            this.e.a((b) this, request, keepAlive);
            this.e.a((b) this, newRequest, (d) this);
        }
        index = b(wrapper.c, this.d);
        if (index != -1) {
            this.f.removeCallbacks((Runnable) this.d.remove(index));
        }
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderSession", this.h + " replace:" + done + " sending request:" + request.hashCode() + " newRequest:" + newRequest.hashCode());
        }
    }

    void b(com.uploader.implement.b.e connection) {
        this.d.remove(this);
        int index = a(connection, this.c);
        if (index != -1) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " timeout, connection:" + connection.hashCode());
            }
            a(index, new com.uploader.implement.c.a("100", "2", "data send or receive timeout", true));
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderSession", this.h + " timeout, NO_POSITION, connection:" + connection.hashCode());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:88:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0274 A:{SYNTHETIC, Splitter: B:60:0x0274} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x02a9 A:{SYNTHETIC, Splitter: B:68:0x02a9} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.uploader.implement.c.a a(b wrapper, ByteBuffer buffer) {
        Exception e;
        Throwable th;
        if (wrapper.b.h != null) {
            int start = (int) (wrapper.b.c + ((long) wrapper.g));
            int size = (int) Math.min(wrapper.b.d - ((long) wrapper.g), (long) buffer.remaining());
            if (size < 0 || wrapper.b.d > ((long) wrapper.b.h.length)) {
                return new com.uploader.implement.c.a("200", AlibcTrade.ERRCODE_PAGE_NATIVE, "readFromBytes", false);
            }
            buffer.put(wrapper.b.h, start, size);
            wrapper.g += size;
            if (com.uploader.implement.a.a(4)) {
                com.uploader.implement.a.a(4, "UploaderSession", this.h + " readFromEntity, from copy:" + size);
            }
            return null;
        }
        File file = wrapper.b.a;
        if (file == null || !file.exists()) {
            return new com.uploader.implement.c.a("200", "3", "file == null || !file.exists()", false);
        }
        long lastModified = file.lastModified();
        if (lastModified != wrapper.b.b) {
            if (com.uploader.implement.a.a(8)) {
                com.uploader.implement.a.a(8, "UploaderSession", this.h + " readFromEntity, file has been modified, origin:" + wrapper.b.b + " current:" + lastModified);
            }
            if (0 == lastModified) {
                return new com.uploader.implement.c.a("200", "10", "file.lastModified()==0", false);
            }
            return new com.uploader.implement.c.a("200", AlibcJsResult.FAIL, "file has been modified", false);
        }
        FileInputStream input = null;
        com.uploader.implement.c.a aVar;
        try {
            FileInputStream input2 = new FileInputStream(file);
            try {
                int readSize = input2.getChannel().read(buffer, wrapper.b.c + ((long) wrapper.g));
                if (readSize < 0) {
                    aVar = new com.uploader.implement.c.a("200", "3", "file read failed", false);
                    if (input2 == null) {
                        return aVar;
                    }
                    try {
                        input2.close();
                        return aVar;
                    } catch (IOException e2) {
                        if (!com.uploader.implement.a.a(8)) {
                            return aVar;
                        }
                        com.uploader.implement.a.a(8, "UploaderSession", this.h + " readFromEntity:", e2);
                        return aVar;
                    }
                }
                int redundant = (int) (((long) (wrapper.g + readSize)) - wrapper.b.d);
                if (redundant > 0) {
                    buffer.position(buffer.position() - redundant);
                    readSize -= redundant;
                }
                if (readSize > 0) {
                    wrapper.g += readSize;
                }
                if (input2 != null) {
                    try {
                        input2.close();
                    } catch (IOException e22) {
                        if (com.uploader.implement.a.a(8)) {
                            com.uploader.implement.a.a(8, "UploaderSession", this.h + " readFromEntity:", e22);
                        }
                    }
                }
                return null;
            } catch (Exception e3) {
                e = e3;
                input = input2;
                try {
                    aVar = new com.uploader.implement.c.a("200", "3", e.toString(), false);
                    if (input != null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (input != null) {
                        try {
                            input.close();
                        } catch (IOException e222) {
                            if (com.uploader.implement.a.a(8)) {
                                com.uploader.implement.a.a(8, "UploaderSession", this.h + " readFromEntity:", e222);
                            }
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                input = input2;
                if (input != null) {
                }
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            aVar = new com.uploader.implement.c.a("200", "3", e.toString(), false);
            if (input != null) {
                return aVar;
            }
            try {
                input.close();
                return aVar;
            } catch (IOException e2222) {
                if (!com.uploader.implement.a.a(8)) {
                    return aVar;
                }
                com.uploader.implement.a.a(8, "UploaderSession", this.h + " readFromEntity:", e2222);
                return aVar;
            }
        }
    }

    private com.uploader.implement.c.a b(b wrapper, ByteBuffer buffer) {
        byte[] smallData = wrapper.b.f;
        int size = Math.min(smallData.length - wrapper.f, buffer.remaining());
        if (size < 0) {
            return new com.uploader.implement.c.a("200", "1", "readFromBytes", false);
        }
        buffer.put(smallData, wrapper.f, size);
        wrapper.f += size;
        return null;
    }

    private void a(int index) {
        b wrapper = (b) this.c.get(index);
        int capacity = 307200;
        if (!wrapper.a.a().e) {
            int oneWayCapacity = 0;
            byte[] data = wrapper.b.f;
            if (data != null) {
                oneWayCapacity = 0 + data.length;
            }
            if (wrapper.b.a != null) {
                oneWayCapacity = (int) (((long) oneWayCapacity) + wrapper.b.d);
            }
            data = wrapper.b.g;
            if (data != null) {
                oneWayCapacity += data.length;
            }
            if (oneWayCapacity > 0) {
                capacity = oneWayCapacity;
            }
        }
        com.uploader.implement.c.a error = null;
        ByteBuffer buffer = wrapper.m;
        if (buffer != null) {
            buffer.clear();
        }
        if (wrapper.b.f != null && wrapper.f < wrapper.b.f.length) {
            if (buffer == null) {
                try {
                    buffer = ByteBuffer.allocate(capacity);
                } catch (OutOfMemoryError e) {
                    capacity >>= 1;
                    buffer = ByteBuffer.allocate(capacity);
                }
                wrapper.m = buffer;
            }
            error = b(wrapper, buffer);
        }
        if (error == null && ((long) wrapper.g) < wrapper.b.d) {
            if (buffer == null) {
                try {
                    buffer = ByteBuffer.allocate(capacity);
                } catch (OutOfMemoryError e2) {
                    buffer = ByteBuffer.allocate(capacity >> 1);
                }
                wrapper.m = buffer;
            }
            error = a(wrapper, buffer);
        }
        if (error != null) {
            a(index, error);
            return;
        }
        wrapper.h = g.getAndIncrement();
        if (!wrapper.e && ((long) wrapper.g) == wrapper.b.d) {
            byte[] tail = wrapper.b.g;
            if (buffer == null) {
                buffer = ByteBuffer.allocate(tail.length);
            }
            if (buffer.remaining() >= tail.length) {
                buffer.put(tail, 0, tail.length);
                wrapper.e = true;
            }
        }
        f requestData = wrapper.l;
        if (requestData == null) {
            requestData = new f();
            wrapper.l = requestData;
        }
        requestData.c = 0;
        requestData.d = 0;
        requestData.a = null;
        requestData.b = null;
        if (!wrapper.d) {
            requestData.a = wrapper.b.e;
            wrapper.d = true;
        }
        if (buffer != null) {
            wrapper.i = buffer.position();
            requestData.b = buffer.array();
            requestData.c = buffer.arrayOffset();
            requestData.d = buffer.position();
        }
        if (com.uploader.implement.a.a(4)) {
            com.uploader.implement.a.a(4, "UploaderSession", this.h + " sendRequest, request:" + wrapper.a.hashCode() + " connection:" + wrapper.c.hashCode() + " requestData:" + requestData.toString() + " currentSendSequence:" + wrapper.h + " tailFinish:" + wrapper.e + " headerFinish:" + wrapper.d + " entitySizeSent:" + wrapper.g + " bytesSizeSent:" + wrapper.f + " offset:" + wrapper.b.c + " length:" + wrapper.b.d + " requestData length:" + requestData.d);
        }
        wrapper.c.a(requestData, wrapper.h);
        c(wrapper.c, wrapper.i);
    }

    public void a(a listener) {
        this.a = listener;
    }

    public void a() {
        this.b.clear();
        this.c.clear();
        for (int i = this.d.size() - 1; i >= 0; i--) {
            this.f.removeCallbacks((Runnable) this.d.remove(i));
        }
        this.e.a(this);
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderSession", this.h + " release");
        }
    }

    public void a(com.uploader.implement.b.e connection) {
        this.f.post(new a(1, this, connection));
    }

    void c(com.uploader.implement.b.e connection) {
        int index = a(connection, this.c);
        if (index != -1) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " doConnect, connection:" + connection.hashCode());
            }
            if (this.a != null) {
                this.a.d(this, ((b) this.c.get(index)).a);
            }
            if (this.a != null) {
                this.a.e(this, ((b) this.c.get(index)).a);
            }
            a(index);
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderSession", this.h + " doConnect, NO_POSITION, connection:" + connection.hashCode());
        }
    }

    void d(com.uploader.implement.b.e connection) {
        int index = a(connection, this.c);
        if (index != -1) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " doClose, connection:" + connection.hashCode());
            }
            connection.a(null);
            b wrapper = (b) this.c.get(index);
            wrapper.a();
            e(wrapper.c);
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderSession", this.h + " doClose, NO_POSITION, connection:" + connection.hashCode());
        }
    }

    public void a(com.uploader.implement.b.e connection, com.uploader.implement.c.a error) {
        this.f.post(new a(3, this, connection, error));
    }

    void b(com.uploader.implement.b.e connection, com.uploader.implement.c.a error) {
        int index = a(connection, this.c);
        if (index != -1) {
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " doError, connection:" + connection.hashCode() + " error:" + error.toString() + " sendingList.size:" + this.c.size());
            }
            b wrapper = (b) this.c.get(index);
            wrapper.a();
            e(wrapper.c);
            a(index, error);
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderSession", this.h + " doError, NO_POSITION, connection:" + connection.hashCode());
        }
    }

    private void a(int index, com.uploader.implement.c.a error) {
        b wrapper = (b) this.c.remove(index);
        if (com.uploader.implement.a.a(2)) {
            com.uploader.implement.a.a(2, "UploaderSession", this.h + " notifyError, request:" + wrapper.a.hashCode());
        }
        if (this.a != null) {
            this.a.b(this, wrapper.a, error);
        }
    }

    public void a(com.uploader.implement.b.e connection, f data) {
        this.f.post(new a(4, this, connection, data));
    }

    void b(com.uploader.implement.b.e connection, f data) {
        int index = a(connection, this.c);
        if (index != -1) {
            Pair result;
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " doReceive, sendingList.size:" + this.c.size() + " index:" + index + " connection:" + connection.hashCode() + " data:" + data.toString());
            }
            b wrapper = (b) this.c.get(index);
            c(wrapper.c, wrapper.i);
            a(wrapper, data);
            ArrayList results = null;
            do {
                result = wrapper.a.a(wrapper.k, wrapper.j.array(), wrapper.j.arrayOffset(), wrapper.j.position());
                if (results == null) {
                    results = new ArrayList();
                }
                results.add(result);
                if (result.first == null) {
                    break;
                }
                byte[] buffer = new byte[((Integer) result.second).intValue()];
                wrapper.j.flip();
                wrapper.j.get(buffer, 0, ((Integer) result.second).intValue());
                wrapper.j.compact();
            } while (wrapper.j.position() >= 4);
            if (results != null) {
                Iterator i$ = results.iterator();
                while (i$.hasNext()) {
                    result = (Pair) i$.next();
                    if (result.first == null) {
                        if (((Integer) result.second).intValue() < 0) {
                            a(index, new com.uploader.implement.c.a("400", "2", "response == null && divide < 0", true));
                            return;
                        }
                        return;
                    } else if (this.a != null) {
                        this.a.a((b) this, wrapper.a, (com.uploader.implement.a.f) result.first);
                    }
                }
            }
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderSession", this.h + " doReceive, NO_POSITION, connection:" + connection.hashCode());
        }
    }

    private static void a(b wrapper, f data) {
        if (wrapper.j == null) {
            wrapper.j = ByteBuffer.allocate(128);
            wrapper.k = data.a;
        }
        int dataSize = wrapper.j.position() + data.b.length;
        if (wrapper.j.capacity() < dataSize) {
            wrapper.j.flip();
            wrapper.j = ByteBuffer.allocate(dataSize).put(wrapper.j);
        }
        wrapper.j.put(data.b);
    }

    public void a(com.uploader.implement.b.e connection, int sendSequence) {
        this.f.postDelayed(new a(6, this, connection, Integer.valueOf(sendSequence)), this.i.b.enableFlowControl() ? 100 : 0);
    }

    private void c(com.uploader.implement.b.e connection, int currentSendSize) {
        a runnable;
        int index = b(connection, this.d);
        if (index == -1) {
            runnable = new a(8, this, connection);
            this.d.add(runnable);
        } else {
            runnable = (a) this.d.get(index);
            this.f.removeCallbacks(runnable);
        }
        this.f.postDelayed(runnable, (long) ((currentSendSize / 102400) + 30000));
    }

    private void e(com.uploader.implement.b.e connection) {
        int index = b(connection, this.d);
        if (index != -1) {
            this.f.removeCallbacks((Runnable) this.d.remove(index));
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " clearTimeout, connection:" + connection.hashCode());
            }
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderSession", this.h + " clearTimeout, NO_POSITION, connection:" + connection.hashCode());
        }
    }

    private static int a(com.uploader.implement.b.e connection, ArrayList<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((b) list.get(i)).c.equals(connection)) {
                return i;
            }
        }
        return -1;
    }

    private static int a(e request, ArrayList<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((b) list.get(i)).a.equals(request)) {
                return i;
            }
        }
        return -1;
    }

    private static int b(com.uploader.implement.b.e connection, ArrayList<a> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((a) list.get(i)).c[0].equals(connection)) {
                return i;
            }
        }
        return -1;
    }

    public void b(com.uploader.implement.b.e connection, int sendSequence) {
        this.f.post(new a(5, this, connection, Integer.valueOf(sendSequence)));
    }

    void a(com.uploader.implement.b.e connection, int sendSequence, boolean begin) {
        int index = a(connection, this.c);
        if (index != -1) {
            b wrapper = (b) this.c.get(index);
            boolean isFinished = wrapper.b();
            if (com.uploader.implement.a.a(2)) {
                com.uploader.implement.a.a(2, "UploaderSession", this.h + " doSend, begin:" + begin + " connection:" + connection.hashCode() + " sendSequence:" + sendSequence + " isFinished:" + isFinished);
            }
            if (begin) {
                if (this.a != null) {
                    this.a.a((b) this, wrapper.a, wrapper.g);
                }
            } else if (!isFinished) {
                a(index);
                return;
            } else if (this.a != null) {
                this.a.b(this, wrapper.a);
            }
            c(wrapper.c, wrapper.i);
        } else if (com.uploader.implement.a.a(8)) {
            com.uploader.implement.a.a(8, "UploaderSession", this.h + " doSend, NO_POSITION, connection:" + connection.hashCode());
        }
    }

    public void a(b session, e request, com.uploader.implement.b.e connection) {
        this.f.post(new a(7, this, session, request, connection));
    }

    void b(b session, e request, com.uploader.implement.b.e connection) {
        boolean noWaitingRequest = !this.b.remove(request);
        boolean needConnect = connection.d();
        if (com.uploader.implement.a.a(4)) {
            com.uploader.implement.a.a(4, "UploaderSession", this.h + " onAvailable.session:" + session.hashCode() + " request:" + request.hashCode() + " noWaitingRequest:" + noWaitingRequest + " connection:" + connection.hashCode() + " needConnect:" + needConnect + " target:" + request.a());
        }
        if (!noWaitingRequest) {
            connection.a(this);
            b wrapper = new b(request, connection);
            this.c.add(wrapper);
            if (needConnect) {
                if (this.a != null) {
                    this.a.c(this, wrapper.a);
                }
                connection.b();
                return;
            }
            if (this.a != null) {
                this.a.e(this, wrapper.a);
            }
            a(this.c.size() - 1);
        }
    }
}
