package com.kingsoft.iciba.powerwordocrjar;

class a implements com.kingsoft.iciba.a.a.a {
    final /* synthetic */ CibaOcrEngine a;

    a(CibaOcrEngine cibaOcrEngine) {
        this.a = cibaOcrEngine;
    }

    public void a(String str) {
        InfoBean a = this.a.a(str);
        if (this.a.e != null && this.a.l == 0) {
            this.a.e.iksCibaQueryViewResultListener(this.a.a(a, this.a.g));
        }
        if (this.a.d != null) {
            this.a.d.iksCibaQueryResultListener(a);
        }
    }
}
