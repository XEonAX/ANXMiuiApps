package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.nexstreaming.nexeditorsdk.nexEngineView;

public class NexDisplayWrapper extends DisplayWrapper {
    public NexDisplayWrapper(Context context) {
        super(context);
    }

    public NexDisplayWrapper(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public NexDisplayWrapper(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected View createDisplayView() {
        return new nexEngineView(getContext());
    }
}
