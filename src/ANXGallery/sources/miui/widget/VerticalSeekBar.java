package miui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class VerticalSeekBar extends SeekBar {
    private final Rect fu;

    public VerticalSeekBar(Context context) {
        this(context, null);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842875);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.fu = new Rect();
        setLayoutDirection(0);
    }

    protected synchronized void onDraw(Canvas canvas) {
        g(canvas);
        h(canvas);
    }

    private void g(Canvas canvas) {
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            canvas.save();
            canvas.rotate(-90.0f, (float) (getWidth() / 2), (float) (getHeight() / 2));
            int width = getWidth();
            int height = getHeight();
            int i = height - width;
            height = (height + width) / 2;
            progressDrawable.setBounds(((-i) / 2) + getPaddingBottom(), (i / 2) + getPaddingLeft(), height - getPaddingTop(), height - getPaddingRight());
            progressDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private void h(Canvas canvas) {
        Drawable thumb = getThumb();
        if (thumb != null) {
            thumb.copyBounds(this.fu);
            int intrinsicWidth = thumb.getIntrinsicWidth();
            int intrinsicHeight = thumb.getIntrinsicHeight();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int height = (((getHeight() - getPaddingTop()) - getPaddingBottom()) - intrinsicHeight) + (getThumbOffset() * 2);
            int max = getMax();
            height = (int) ((max > 0 ? 1.0f - (((float) getProgress()) / ((float) max)) : 0.0f) * ((float) height));
            width = ((width - intrinsicWidth) / 2) + getPaddingLeft();
            thumb.setBounds(width, height, intrinsicWidth + width, intrinsicHeight + height);
            thumb.draw(canvas);
            thumb.setBounds(this.fu);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        motionEvent.setLocation(((((((float) getHeight()) - motionEvent.getY()) - ((float) getPaddingBottom())) / ((float) ((getHeight() - getPaddingTop()) - getPaddingBottom()))) * ((float) ((getWidth() - getPaddingLeft()) - getPaddingRight()))) + ((float) getPaddingLeft()), motionEvent.getY());
        return super.onTouchEvent(motionEvent);
    }
}
