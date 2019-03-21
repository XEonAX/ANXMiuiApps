package com.xiaomi.push.service.awake.module;

import android.content.Context;
import java.util.HashMap;

public interface IProcessData {
    void sendByTinyData(Context context, HashMap<String, String> hashMap);

    void sendDirectly(Context context, HashMap<String, String> hashMap);

    void shouldDoLast(Context context, HashMap<String, String> hashMap);
}
