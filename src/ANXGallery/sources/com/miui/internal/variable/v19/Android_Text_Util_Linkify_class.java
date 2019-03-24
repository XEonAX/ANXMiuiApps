package com.miui.internal.variable.v19;

import android.text.Spannable;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.text.util.Linkify.TransformFilter;
import java.util.ArrayList;
import java.util.regex.Pattern;
import miui.reflect.Method;
import miui.reflect.NoSuchMethodException;

public class Android_Text_Util_Linkify_class extends com.miui.internal.variable.v16.Android_Text_Util_Linkify_class {
    protected static Method sGatherTelLinks;

    static {
        try {
            sGatherTelLinks = Method.of(Linkify.class, "gatherTelLinks", "(Ljava/util/ArrayList;Landroid/text/Spannable;)V");
        } catch (NoSuchMethodException e) {
            sGatherTelLinks = null;
        }
    }

    public void gatherTelLinks(ArrayList arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        sGatherTelLinks.invoke(null, null, arrayList, spannable);
    }
}
