package miui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.Factory;

public class AnimatedImageView extends ImageView {
    private static final int OP = 56;
    private static final int OQ = 32;
    private static final Android_Graphics_Drawable_AnimatedRotateDrawable_class uX = Factory.getInstance().get();
    private Drawable OR;
    private boolean OS;

    public AnimatedImageView(Context context) {
        super(context);
    }

    public AnimatedImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void bN() {
        if (isShown()) {
            stop();
        }
        Drawable drawable = getDrawable();
        if (drawable.getClass().getName().equals(Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME)) {
            this.OR = drawable;
            uX.setFramesCount(drawable, 56);
            uX.setFramesDuration(drawable, 32);
        } else {
            this.OR = null;
        }
        ef();
    }

    private void ef() {
        if (this.OR == null) {
            return;
        }
        if (isShown() && this.OS) {
            start();
        } else {
            stop();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        bN();
    }

    public void setImageResource(int i) {
        super.setImageResource(i);
        bN();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ef();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ef();
    }

    public void setAnimating(boolean z) {
        this.OS = z;
        ef();
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        ef();
    }

    private void start() {
        if (this.OR != null && this.OR.getClass().getName().equals(Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME)) {
            uX.start(this.OR);
        }
    }

    private void stop() {
        if (this.OR != null && this.OR.getClass().getName().equals(Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME)) {
            uX.stop(this.OR);
        }
    }
}
