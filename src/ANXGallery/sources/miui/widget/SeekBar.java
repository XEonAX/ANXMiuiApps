package miui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.miui.internal.widget.ProgressBarDelegate;

public class SeekBar extends android.widget.SeekBar {
    private ProgressBarDelegate XT;

    public SeekBar(Context context) {
        this(context, null);
    }

    public SeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842875);
    }

    public SeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        fy().postConstruct(attributeSet, i);
    }

    public synchronized void setIndeterminate(boolean z) {
        fy().setIndeterminate(z);
    }

    public void setProgressDrawable(Drawable drawable) {
        fy().setProgressDrawable(drawable);
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        fy().setIndeterminateDrawable(drawable);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        fy().onSizeChanged(i, i2, i3, i4);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        fy().drawableStateChanged();
    }

    public synchronized void setProgressMaskDrawable(Drawable drawable) {
        fy().setProgressMaskDrawable(drawable);
    }

    public Drawable getProgressMaskDrawable() {
        return fy().getProgressMaskDrawable();
    }

    private synchronized ProgressBarDelegate fy() {
        if (this.XT == null) {
            this.XT = ProgressBarDelegate.create(this, android.widget.SeekBar.class);
        }
        return this.XT;
    }
}
