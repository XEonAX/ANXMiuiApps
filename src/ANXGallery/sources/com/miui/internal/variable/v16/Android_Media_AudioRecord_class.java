package com.miui.internal.variable.v16;

import android.media.AudioRecord;
import miui.reflect.Method;
import miui.reflect.NoSuchMethodException;

public class Android_Media_AudioRecord_class extends com.miui.internal.variable.Android_Media_AudioRecord_class {
    private static final Method lC;

    static {
        Method of;
        try {
            of = Method.of(AudioRecord.class, "setParameters", "(Ljava/lang/String;)I");
        } catch (NoSuchMethodException e) {
            of = null;
        }
        lC = of;
    }

    public boolean isExtraParamSupported() {
        return lC != null;
    }

    public int setParameters(AudioRecord audioRecord, String str) {
        if (lC == null) {
            return -1;
        }
        return lC.invokeInt(audioRecord.getClass(), audioRecord, str);
    }
}
