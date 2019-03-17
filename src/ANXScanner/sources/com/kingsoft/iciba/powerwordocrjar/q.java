package com.kingsoft.iciba.powerwordocrjar;

import org.json.JSONObject;

class q implements Runnable {
    final /* synthetic */ JSONObject a;
    final /* synthetic */ n b;

    q(n nVar, JSONObject jSONObject) {
        this.b = nVar;
        this.a = jSONObject;
    }

    public void run() {
        if (this.b.j != null) {
            this.b.j.a(n.a(this.a), this.b.k);
        }
    }
}
