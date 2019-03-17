package com.xiaomi.scanner.ui;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class FullScreenPanelRoot extends FrameLayout {
    private VisibleChangeListener visibleChangeListener;

    public interface VisibleChangeListener {
        void visibleChange(boolean z);
    }

    public void setVisibleChangeListener(VisibleChangeListener visibleChangeListener) {
        this.visibleChangeListener = visibleChangeListener;
    }

    public FullScreenPanelRoot(@NonNull Context context) {
        super(context);
    }

    public FullScreenPanelRoot(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public FullScreenPanelRoot(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setVisibility(int visibility) {
        int currentVisibility = getVisibility();
        super.setVisibility(visibility);
        if (currentVisibility != visibility && this.visibleChangeListener != null) {
            this.visibleChangeListener.visibleChange(visibility == 0);
        }
    }
}
