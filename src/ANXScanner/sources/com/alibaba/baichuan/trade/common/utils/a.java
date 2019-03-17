package com.alibaba.baichuan.trade.common.utils;

import android.app.AlertDialog.Builder;
import android.content.Context;

final class a implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;

    a(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public void run() {
        try {
            Context currentActivity = AlarmUtils.getCurrentActivity();
            if (currentActivity != null) {
                Builder builder = new Builder(currentActivity);
                builder.setMessage("class = " + this.a + "\n" + "method = " + this.b + "\n" + "errMsg = " + this.c);
                builder.setTitle("执行过程参数发生错误");
                builder.show();
            }
        } catch (Exception e) {
            AlibcLogger.e("AlisdkTrade-alram", "class = " + this.a + "\n" + "method = " + this.b + "\n" + "errMsg = " + this.c);
        }
    }
}
