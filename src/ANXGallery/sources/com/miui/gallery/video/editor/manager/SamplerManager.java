package com.miui.gallery.video.editor.manager;

import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import java.util.Locale;
import java.util.Map;

public class SamplerManager {
    private String mFormat;

    private SamplerManager(String prefix, String suffix) {
        this.mFormat = String.format(Locale.US, "%s%%s%s", new Object[]{prefix, suffix});
    }

    public void recordEvent(String category, String event, Map<String, String> params) {
        Log.d("SamplerManager", "record cat: %s, event: %s, params: %s", category, event, params);
        BaseSamplingStatHelper.recordCountEvent(String.format(Locale.US, this.mFormat, new Object[]{category}), event, params);
    }

    public static SamplerManager create() {
        if (SmartVideoJudgeManager.isAvailable()) {
            Log.d("SamplerManager", "create smart effect's sampler");
            return new SamplerManager("", "(smart_effect)");
        }
        Log.d("SamplerManager", "create sampler");
        return new SamplerManager("", "");
    }
}
