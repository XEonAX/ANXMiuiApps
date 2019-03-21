package com.miui.gallery.editor.photo.widgets.overscroll;

import android.view.View;

public class IOverScrollInterface {

    public interface IOverScrollDecoratorAdapter {
        View getView();

        boolean isInAbsoluteEnd();

        boolean isInAbsoluteStart();
    }
}
