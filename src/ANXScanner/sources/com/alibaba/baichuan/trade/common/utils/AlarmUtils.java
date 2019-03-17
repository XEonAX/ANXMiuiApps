package com.alibaba.baichuan.trade.common.utils;

import android.app.Activity;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import java.lang.reflect.Field;
import java.util.Map;

public class AlarmUtils {
    public static void alarm(String str, String str2, String str3) {
        if (AlibcTradeCommon.isDebug()) {
            ExecutorServiceUtils.getInstance().postUITask(new a(str, str2, str3));
        }
    }

    public static Activity getCurrentActivity() {
        try {
            Class cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (Object invoke2 : ((Map) declaredField.get(invoke2)).values()) {
                Class cls2 = invoke2.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(invoke2)) {
                    declaredField = cls2.getDeclaredField("activity");
                    declaredField.setAccessible(true);
                    return (Activity) declaredField.get(invoke2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
