package com.miui.gallery.widget;

import android.view.animation.Interpolator;

public interface IMultiThemeView {

    public enum Theme {
        LIGHT,
        DARK
    }

    public enum ThemeTransition {
        NONE,
        FADE_OUT,
        FADE_IN
    }

    void setBackgroundAlpha(float f);

    void setTheme(Theme theme, ThemeTransition themeTransition);

    void setTheme(Theme theme, ThemeTransition themeTransition, Interpolator interpolator, long j);
}
