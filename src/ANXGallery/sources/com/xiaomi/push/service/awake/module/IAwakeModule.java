package com.xiaomi.push.service.awake.module;

import android.content.Context;
import android.content.Intent;

public interface IAwakeModule {
    void doAwake(Context context, AwakeInfo awakeInfo);

    void doSendAwakeResult(Context context, Intent intent, String str);
}
