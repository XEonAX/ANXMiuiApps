package com.miui.internal.widget;

import android.view.ActionMode;
import miui.view.ActionModeAnimationListener;

public interface ActionModeView {
    public static final int ANIMATION_DURATION = 300;

    void addAnimationListener(ActionModeAnimationListener actionModeAnimationListener);

    void animateToVisibility(boolean z);

    void closeMode();

    void initForMode(ActionMode actionMode);

    void killMode();

    void notifyAnimationEnd(boolean z);

    void notifyAnimationStart(boolean z);

    void notifyAnimationUpdate(boolean z, float f);

    void removeAnimationListener(ActionModeAnimationListener actionModeAnimationListener);
}
