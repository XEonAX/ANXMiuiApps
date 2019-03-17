package com.kingsoft.iciba.powerwordocrjar;

import java.util.ArrayList;

class b implements f {
    final /* synthetic */ CibaOcrEngine a;

    b(CibaOcrEngine cibaOcrEngine) {
        this.a = cibaOcrEngine;
    }

    public void a(String str) {
        InfoBean infoBean = new InfoBean();
        infoBean.word = str;
        if (this.a.e != null && this.a.l == 0) {
            this.a.e.iksCibaQueryViewResultListener(this.a.a(infoBean, this.a.g));
        }
        if (this.a.d != null) {
            this.a.d.iksCibaQueryResultListener(infoBean);
        }
    }

    public void a(ArrayList arrayList, String str) {
        InfoBean infoBean = new InfoBean();
        infoBean.word = str;
        infoBean.baseInfoBeans = arrayList;
        infoBean.status = 1;
        if (this.a.e != null && this.a.l == 0) {
            this.a.e.iksCibaQueryViewResultListener(this.a.a(infoBean, this.a.g));
        }
        if (this.a.d != null) {
            this.a.d.iksCibaQueryResultListener(infoBean);
        }
    }
}
