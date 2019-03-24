package com.miui.internal.util;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

public class ContextHelper {
    private ContextHelper() {
    }

    public static Activity getActivityContextFromView(View view) {
        Context context = ((ViewGroup) view.getRootView()).getChildAt(0).getContext();
        return context instanceof Activity ? (Activity) context : null;
    }
}
