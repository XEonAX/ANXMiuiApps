package com.miui.gallery.editor.photo.app;

import android.app.Activity;
import android.os.Bundle;
import com.miui.gallery.sdk.editor.Constants;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import java.util.Locale;
import java.util.Map;

public class Sampler {
    private String mFormat;
    private String mPage;

    private Sampler(String prefix, String suffix, String page) {
        this.mFormat = String.format(Locale.US, "%s%%s%s", new Object[]{prefix, suffix});
        this.mPage = page;
    }

    public void recordEvent(String category, String event, Map<String, String> params) {
        Log.d("Sampler", "record cat: %s, event: %s, params: %s", category, event, params);
        BaseSamplingStatHelper.recordCountEvent(String.format(Locale.US, this.mFormat, new Object[]{category}), event, params);
    }

    public void recordEvent(String category, String event) {
        Log.d("Sampler", "record cat: %s, event: %s", category, event);
        BaseSamplingStatHelper.recordCountEvent(String.format(Locale.US, this.mFormat, new Object[]{category}), event);
    }

    public void recordNumericEvent(String category, String event, long params) {
        Log.d("Sampler", "record cat: %s, event: %s, params: %d", category, event, Long.valueOf(params));
        BaseSamplingStatHelper.recordNumericPropertyEvent(String.format(Locale.US, this.mFormat, new Object[]{category}), event, params);
    }

    public void recordPageStart(Activity activity) {
        Log.d("Sampler", "record page start: %s", this.mPage);
        BaseSamplingStatHelper.recordPageStart(activity, this.mPage);
    }

    public void recordPageEnd(Activity activity) {
        Log.d("Sampler", "record page end");
        BaseSamplingStatHelper.recordPageEnd(activity, this.mPage);
    }

    public static Sampler from(Bundle bundle) {
        if (bundle == null || !bundle.getBoolean(Constants.EXTRA_IS_SCREENSHOT)) {
            Log.d("Sampler", "create sampler");
            return new Sampler("photo_editor", "", "photo_editor_main");
        } else if (bundle.getBoolean(Constants.EXTRA_IS_LONG_SCREENSHOT)) {
            Log.d("Sampler", "create long screenshot's sampler");
            return new Sampler("photo_editor", "(long_screenshot)", "photo_editor_long_screenshot");
        } else {
            Log.d("Sampler", "create screenshot's sampler");
            return new Sampler("photo_editor", "(screenshot)", "photo_editor_screenshot");
        }
    }
}
