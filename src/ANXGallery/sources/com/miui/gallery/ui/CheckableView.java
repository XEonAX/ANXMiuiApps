package com.miui.gallery.ui;

import android.view.View.OnClickListener;

public interface CheckableView extends Checkable {
    void setCheckableListener(OnClickListener onClickListener);
}
