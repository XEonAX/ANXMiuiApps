package com.alibaba.alibclinkpartner.j;

import android.support.v7.app.AlertDialog.Builder;
import android.widget.Toast;

final class b implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;

    b(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public void run() {
        if (a.a() == null || !a.a().getPackageName().equals(com.alibaba.alibclinkpartner.b.e().getPackageName())) {
            Toast.makeText(com.alibaba.alibclinkpartner.b.e(), "class = " + this.a + "\n" + "method = " + this.b + "\n" + "errMsg = " + this.c, 1).show();
            return;
        }
        Builder builder = new Builder(a.a());
        builder.setMessage("class = " + this.a + "\n" + "method = " + this.b + "\n" + "errMsg = " + this.c);
        builder.setTitle((CharSequence) "执行过程参数发生错误");
        builder.show();
    }
}
