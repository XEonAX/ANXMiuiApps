package com.miui.internal.variable.v16;

import android.preference.Preference;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Field;

public class Android_Preference_Preference_class extends com.miui.internal.variable.Android_Preference_Preference_class {
    private static final Field lG = Field.of(PreferenceManager.class, "mPreferenceScreen", "Landroid/preference/PreferenceScreen;");

    protected PreferenceScreen getPreferenceScreen(Preference preference) {
        try {
            return (PreferenceScreen) lG.get(preference.getPreferenceManager());
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("mPreferenceScreen", e);
            return null;
        }
    }
}
