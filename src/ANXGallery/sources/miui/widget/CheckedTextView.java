package miui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import miui.util.ViewUtils;

public class CheckedTextView extends android.widget.CheckedTextView {
    private static final int[] Pv = new int[]{16842912};
    private static final int Pw = 0;
    private Drawable Px;

    public CheckedTextView(Context context) {
        this(context, null);
    }

    public CheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public CheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public Drawable getCheckMarkDrawable() {
        return this.Px;
    }

    public void setCheckMarkDrawable(Drawable drawable) {
        if (this.Px != null) {
            this.Px.setCallback(null);
            unscheduleDrawable(this.Px);
        }
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setVisible(getVisibility() == 0, false);
            drawable.setState(Pv);
            setMinHeight(drawable.getIntrinsicHeight());
            drawable.setState(getDrawableState());
        }
        this.Px = drawable;
    }

    /* JADX WARNING: Missing block: B:13:0x0042, code:
            if (r1 > r5) goto L_0x0046;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        i2 = en();
        if (i2 != 0) {
            if (ViewUtils.isLayoutRtl(this)) {
                setPadding(i2 + 0, getPaddingTop(), 0, getPaddingBottom());
            } else {
                setPadding(0, getPaddingTop(), i2 + 0, getPaddingBottom());
            }
            int mode = MeasureSpec.getMode(i);
            if (mode != 1073741824) {
                int measuredWidth = getMeasuredWidth() + i2;
                if (mode == Integer.MIN_VALUE) {
                    i = MeasureSpec.getSize(i);
                }
                i = measuredWidth;
                setMeasuredDimension(i, getMeasuredHeight());
            }
        }
    }

    private int en() {
        Drawable checkMarkDrawable = getCheckMarkDrawable();
        return checkMarkDrawable == null ? 0 : checkMarkDrawable.getCurrent().getIntrinsicWidth();
    }

    protected void onDraw(Canvas canvas) {
        b(canvas);
        a(canvas);
    }

    private void a(Canvas canvas) {
        int en = en();
        if (en == 0) {
            super.onDraw(canvas);
            return;
        }
        en += 0;
        if (ViewUtils.isLayoutRtl(this)) {
            en = -en;
        }
        canvas.translate((float) en, 0.0f);
        super.onDraw(canvas);
        canvas.translate((float) (-en), 0.0f);
    }

    private void b(Canvas canvas) {
        Drawable checkMarkDrawable = getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            int width;
            int intrinsicWidth = checkMarkDrawable.getCurrent().getIntrinsicWidth();
            if (ViewUtils.isLayoutRtl(this)) {
                width = ((getWidth() - getPaddingRight()) - intrinsicWidth) + getScrollX();
            } else {
                width = getPaddingLeft() + getScrollX();
            }
            int paddingTop = getPaddingTop();
            int intrinsicHeight = checkMarkDrawable.getIntrinsicHeight();
            if (checkMarkDrawable.getCurrent() instanceof NinePatchDrawable) {
                intrinsicHeight = (getHeight() - paddingTop) - getPaddingBottom();
            } else {
                int gravity = getGravity() & BaiduSceneResult.STREET_VIEW;
                if (gravity == 16) {
                    paddingTop = (getHeight() - intrinsicHeight) / 2;
                } else if (gravity == 80) {
                    paddingTop = getHeight() - intrinsicHeight;
                }
            }
            checkMarkDrawable.setBounds(width, paddingTop, intrinsicWidth + width, intrinsicHeight + paddingTop);
            checkMarkDrawable.draw(canvas);
        }
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, Pv);
        }
        return onCreateDrawableState;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.Px != null) {
            this.Px.setState(getDrawableState());
            invalidate();
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.Px;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.Px != null) {
            this.Px.jumpToCurrentState();
        }
    }
}
