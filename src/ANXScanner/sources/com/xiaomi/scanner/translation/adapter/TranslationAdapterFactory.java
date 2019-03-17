package com.xiaomi.scanner.translation.adapter;

import android.content.Context;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationListener;

public class TranslationAdapterFactory {
    public static final int TRANSLATION_GOOGLE = 2;
    public static final int TRANSLATION_KING = 1;

    public static TranslationAdapter getAdapter(Context context, SettingsManager settingsManager, TranslationListener translationListener) {
        return getAdapter(context, settingsManager, translationListener, 1);
    }

    public static TranslationAdapter getAdapter(Context context, SettingsManager settingsManager, TranslationListener translationListener, int type) {
        return new KingSoftAdapter(context, settingsManager, translationListener);
    }
}
