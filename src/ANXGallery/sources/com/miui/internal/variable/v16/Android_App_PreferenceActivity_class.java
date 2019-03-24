package com.miui.internal.variable.v16;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

public class Android_App_PreferenceActivity_class extends com.miui.internal.variable.Android_App_PreferenceActivity_class {
    private static final String lj = "android";
    private static final String lk = "id";
    private static final String ll = "headers";
    private static final String lm = "prefs_frame";

    public void onCreate(Activity activity, Bundle bundle) {
        int identifier = activity.getResources().getIdentifier(ll, lk, "android");
        if (identifier > 0) {
            View findViewById = activity.findViewById(identifier);
            if (findViewById != null) {
                findViewById.setBackground(null);
                findViewById.setPadding(0, 0, 0, 0);
            }
        }
        identifier = activity.getResources().getIdentifier(lm, lk, "android");
        if (identifier > 0) {
            View findViewById2 = activity.findViewById(identifier);
            if (findViewById2 != null) {
                findViewById2.setBackground(null);
                findViewById2.setPadding(0, 0, 0, 0);
            }
        }
    }
}
