package com.miui.internal.view;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window.Callback;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class SimpleWindowCallback implements Callback {
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public View onCreatePanelView(int i) {
        return null;
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        return false;
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        return false;
    }

    public boolean onMenuOpened(int i, Menu menu) {
        return false;
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return false;
    }

    public void onWindowAttributesChanged(LayoutParams layoutParams) {
    }

    public void onContentChanged() {
    }

    public void onWindowFocusChanged(boolean z) {
    }

    public void onAttachedToWindow() {
    }

    public void onDetachedFromWindow() {
    }

    public void onPanelClosed(int i, Menu menu) {
    }

    public boolean onSearchRequested() {
        return false;
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    public void onActionModeStarted(ActionMode actionMode) {
    }

    public void onActionModeFinished(ActionMode actionMode) {
    }
}
