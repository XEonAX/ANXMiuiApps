package com.kingsoft.iciba.powerwordocrjar;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;

class c implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ InfoBean b;
    final /* synthetic */ CibaOcrEngine c;

    c(CibaOcrEngine cibaOcrEngine, Context context, InfoBean infoBean) {
        this.c = cibaOcrEngine;
        this.a = context;
        this.b = infoBean;
    }

    public void onClick(View view) {
        this.c.showDetailMeaning(this.a, this.b.word, false, 0);
    }
}
