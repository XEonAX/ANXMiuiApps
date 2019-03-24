package com.miui.internal.variable.v16;

import android.text.Spannable;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.text.util.Linkify.TransformFilter;
import java.util.ArrayList;
import java.util.regex.Pattern;
import miui.reflect.Field;
import miui.reflect.Method;
import miui.util.Patterns;

public class Android_Text_Util_Linkify_class extends com.miui.internal.variable.Android_Text_Util_Linkify_class {
    protected static final Method mApplyLink = Method.of(Linkify.class, "applyLink", "(Ljava/lang/String;IILandroid/text/Spannable;)V");
    protected static final Field mEnd = Field.of("android.text.util.LinkSpec", "end", Field.INT_SIGNATURE_PRIMITIVE);
    protected static final Method mGatherLinks = Method.of(Linkify.class, "gatherLinks", "(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V");
    protected static final Method mGatherMapLinks = Method.of(Linkify.class, "gatherMapLinks", "(Ljava/util/ArrayList;Landroid/text/Spannable;)V");
    protected static final Method mPruneOverlaps = Method.of(Linkify.class, "pruneOverlaps", "(Ljava/util/ArrayList;)V");
    protected static final Field mStart = Field.of("android.text.util.LinkSpec", "start", Field.INT_SIGNATURE_PRIMITIVE);
    protected static final Field mUrl = Field.of("android.text.util.LinkSpec", "url", "Ljava/lang/String;");

    public void buildProxy() {
        attachMethod("addLinks", "(Landroid/text/Spannable;I)Z");
        super.buildProxy();
    }

    protected void handle() {
        handleAddLinks(0, null, null, 0);
    }

    protected boolean handleAddLinks(long j, Linkify linkify, Spannable spannable, int i) {
        Spannable spannable2 = spannable;
        if (i == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable2.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable2.removeSpan(uRLSpanArr[length]);
        }
        ArrayList arrayList = new ArrayList();
        if ((i & miui.text.util.Linkify.TIME_PHRASES) != 0) {
            mGatherLinks.invoke(null, null, arrayList, spannable2, Patterns.CHINESE_TIME_PATTERN, new String[]{"time:"}, null, null);
            mGatherLinks.invoke(null, null, arrayList, spannable2, Patterns.ENGLISH_TIME_PATTERN, new String[]{"time:"}, null, null);
        }
        if ((i & 1) != 0) {
            mGatherLinks.invoke(null, null, arrayList, spannable2, Patterns.WEB_URL, new String[]{"http://", "https://", "rtsp://"}, Linkify.sUrlMatchFilter, null);
        }
        if ((i & 2) != 0) {
            mGatherLinks.invoke(null, null, arrayList, spannable2, android.util.Patterns.EMAIL_ADDRESS, new String[]{"mailto:"}, null, null);
        }
        if ((i & 4) != 0) {
            gatherTelLinks(arrayList, spannable2, android.util.Patterns.PHONE, new String[]{"tel:"}, Linkify.sPhoneNumberMatchFilter, Linkify.sPhoneNumberTransformFilter);
        }
        if ((i & 8) != 0) {
            mGatherMapLinks.invoke(null, null, arrayList, spannable2);
        }
        mPruneOverlaps.invoke(null, null, arrayList);
        if (arrayList.size() == 0) {
            return false;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Object obj = arrayList.get(i2);
            mApplyLink.invoke(null, null, (String) mUrl.get(obj), Integer.valueOf(mStart.getInt(obj)), Integer.valueOf(mEnd.getInt(obj)), spannable2);
        }
        return true;
    }

    protected boolean originalAddLinks(long j, Linkify linkify, Spannable spannable, int i) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Text_Util_Linkify_class.originalAddLinks(long, Linkify, Spannable, int)");
    }

    protected void gatherTelLinks(ArrayList arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        mGatherLinks.invoke(null, null, arrayList, spannable, android.util.Patterns.PHONE, new String[]{"tel:"}, Linkify.sPhoneNumberMatchFilter, Linkify.sPhoneNumberTransformFilter);
    }
}
