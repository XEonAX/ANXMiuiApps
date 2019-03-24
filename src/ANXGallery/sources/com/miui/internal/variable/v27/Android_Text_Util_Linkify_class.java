package com.miui.internal.variable.v27;

import android.text.Spannable;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.text.util.Linkify.TransformFilter;
import java.util.ArrayList;
import java.util.regex.Pattern;
import miui.reflect.Method;

public class Android_Text_Util_Linkify_class extends com.miui.internal.variable.v16.Android_Text_Util_Linkify_class {
    protected static final Method mGatherTelLinks = Method.of(Linkify.class, "gatherTelLinks", "(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V");

    public void gatherTelLinks(ArrayList arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        mGatherTelLinks.invoke(null, null, arrayList, spannable, null);
    }
}
