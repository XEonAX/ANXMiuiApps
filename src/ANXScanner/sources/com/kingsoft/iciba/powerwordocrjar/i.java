package com.kingsoft.iciba.powerwordocrjar;

import java.io.IOException;
import mtopsdk.network.util.Constants.Protocol;
import org.apache.http.Header;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;

class i extends Thread {
    HttpClient a = new DefaultHttpClient();
    j b;
    boolean c;
    int d;
    final /* synthetic */ h e;

    public i(h hVar) {
        this.e = hVar;
        this.a.getParams().setParameter("http.connection.timeout", Integer.valueOf(5000));
        this.a.getParams().setParameter("http.socket.timeout", Integer.valueOf(5000));
    }

    public void a(j jVar, int i, boolean z) {
        synchronized (this.e.c) {
            this.d = i;
            this.e.c.add(jVar);
            this.e.c.notify();
            this.c = z;
        }
    }

    public void run() {
        while (!this.e.d) {
            synchronized (this.e.c) {
                if (this.e.c.size() <= 0) {
                    try {
                        this.e.c.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    this.b = (j) this.e.c.remove(0);
                    try {
                        this.b.d = this.a.execute(this.b.c);
                        String str = "";
                        Header[] headers = this.b.d.getHeaders(Protocol.CONTENT_ENCODING);
                        Object obj = null;
                        if (headers.length > 0 && Protocol.CONTENT_ENCODING.equals(headers[0].getName())) {
                            obj = headers[0].getValue();
                        }
                        String a = Protocol.GZIP.equals(obj) ? k.a(this.b.d.getEntity().getContent()) : k.b(this.b.d.getEntity().getContent());
                        if (new JSONObject(a).getInt("status") != 1) {
                            this.e.a(this.b);
                        } else {
                            int i = this.d;
                            if (this.b.a() != -1) {
                                i = this.b.a();
                            }
                            this.e.a(this.b, a, i, this.c);
                        }
                    } catch (ClientProtocolException e2) {
                        e2.printStackTrace();
                        this.e.a(this.b);
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        this.e.a(this.b);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        this.e.a(this.b);
                    }
                }
            }
        }
    }
}
