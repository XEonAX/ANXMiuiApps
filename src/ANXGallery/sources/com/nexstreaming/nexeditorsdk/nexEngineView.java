package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.util.AttributeSet;
import com.nexstreaming.kminternal.nexvideoeditor.NexThemeView;
import com.nexstreaming.kminternal.nexvideoeditor.NexThemeView.b;

public class nexEngineView extends NexThemeView implements b {
    private NexViewListener nexThemeViewListener;

    public interface NexViewListener {
        void onEngineViewAvailable(int i, int i2);

        void onEngineViewDestroyed();

        void onEngineViewSizeChanged(int i, int i2);
    }

    public void onEventNotify(int i, Object obj, int i2, int i3, int i4) {
        if (this.nexThemeViewListener != null) {
            switch (i) {
                case 1:
                    this.nexThemeViewListener.onEngineViewAvailable(i2, i3);
                    return;
                case 2:
                    this.nexThemeViewListener.onEngineViewSizeChanged(i2, i3);
                    return;
                case 3:
                    this.nexThemeViewListener.onEngineViewDestroyed();
                    return;
                default:
                    return;
            }
        }
    }

    public nexEngineView(Context context) {
        super(context);
        NexThemeView.setAspectRatio(nexApplicationConfig.getAspectRatioInScreenMode());
        super.setNotify(this);
    }

    public nexEngineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NexThemeView.setAspectRatio(nexApplicationConfig.getAspectRatioInScreenMode());
        super.setNotify(this);
    }

    @Deprecated
    public void setBlackOut(boolean z) {
        super.setBlackOut(z);
    }

    public void setListener(NexViewListener nexViewListener) {
        this.nexThemeViewListener = nexViewListener;
        if (isSurfaceAvailable()) {
            this.nexThemeViewListener.onEngineViewAvailable(getWidth(), getHeight());
        }
    }
}
