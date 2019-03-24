package miui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.widget.RemoteViews.RemoteView;
import com.miui.internal.widget.ProgressBarDelegate;

@RemoteView
public class ProgressBar extends android.widget.ProgressBar {
    private ProgressBarDelegate XT;

    public ProgressBar(Context context) {
        this(context, null);
    }

    public ProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842871);
    }

    public ProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        fy().postConstruct(attributeSet, i);
    }

    @RemotableViewMethod
    public synchronized void setIndeterminate(boolean z) {
        fy().setIndeterminate(z);
    }

    public void setProgressDrawable(Drawable drawable) {
        fy().setProgressDrawable(drawable);
    }

    @RemotableViewMethod
    public void setIndeterminateDrawable(Drawable drawable) {
        fy().setIndeterminateDrawable(drawable);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        fy().onSizeChanged(i, i2, i3, i4);
    }

    public synchronized void setProgressMaskDrawable(Drawable drawable) {
        fy().setProgressMaskDrawable(drawable);
    }

    public Drawable getProgressMaskDrawable() {
        return fy().getProgressMaskDrawable();
    }

    private synchronized ProgressBarDelegate fy() {
        if (this.XT == null) {
            this.XT = ProgressBarDelegate.create(this, android.widget.ProgressBar.class);
        }
        return this.XT;
    }
}
