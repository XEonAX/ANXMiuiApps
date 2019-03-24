package com.miui.internal.variable;

import android.text.Spannable;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.text.util.Linkify.TransformFilter;
import android.util.Patterns;
import com.miui.internal.util.ClassProxy;
import java.util.ArrayList;
import java.util.regex.Pattern;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Text_Util_Linkify_class extends ClassProxy<Linkify> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aw */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Text_Util_Linkify_class kG;

        private Factory() {
            this.kG = (Android_Text_Util_Linkify_class) create("Android_Text_Util_Linkify_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Text_Util_Linkify_class get() {
            return this.kG;
        }
    }

    public Android_Text_Util_Linkify_class() {
        super(Linkify.class);
    }

    public void buildProxy() {
        attachMethod("gatherLinks", "(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V");
    }

    protected void handle() {
        handleGatherLinks(0, null, null, null, null, null, null, null);
    }

    protected void handleGatherLinks(long j, Linkify linkify, ArrayList arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        Pattern pattern2;
        Pattern pattern3 = pattern;
        if (pattern3 == Patterns.WEB_URL) {
            pattern2 = miui.util.Patterns.WEB_URL;
        } else {
            pattern2 = pattern3;
        }
        originalGatherLinks(j, linkify, arrayList, spannable, pattern2, strArr, matchFilter, transformFilter);
    }

    protected void originalGatherLinks(long j, Linkify linkify, ArrayList arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        throw new IllegalStateException("com.miui.internal.variable.Android_Text_Util_Linkify_class.originalGatherLinks(long, Linkify, ArrayList, Spannable, Pattern, String[], MatchFilter, TransformFilter)");
    }
}
