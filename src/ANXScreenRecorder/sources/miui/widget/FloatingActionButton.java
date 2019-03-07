package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import miui.R;
import miui.util.AttributeResolver;
import miui.util.DrawableUtil;

public class FloatingActionButton extends ImageView {
    private static final int Tg = 218103808;
    private static final float Th = 0.0f;
    private static final float Ti = 5.45f;
    private static final float Tj = 5.45f;
    private static final int Tk = 25;
    private final int Tl;
    private final int Tm;
    private final int Tn;
    private final boolean To;
    private Drawable Tp;
    private int Tq;
    private boolean Tr;

    private static class OvalShapeWithPadding extends OvalShape {
        private WeakReference<View> Ts;

        public OvalShapeWithPadding() {
            this.Ts = new WeakReference(null);
        }

        public OvalShapeWithPadding(View view) {
            this.Ts = new WeakReference(view);
        }

        public void draw(Canvas canvas, Paint paint) {
            View view = (View) this.Ts.get();
            if (view != null) {
                int width = view.getWidth();
                int paddingLeft = view.getPaddingLeft();
                width = ((width - paddingLeft) - view.getPaddingRight()) / 2;
                canvas.drawCircle((float) (paddingLeft + width), (float) (view.getPaddingTop() + width), (float) width, paint);
            }
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float f = getContext().getResources().getDisplayMetrics().density;
        this.Tm = (int) (0.0f * f);
        int i2 = (int) (f * 5.45f);
        this.Tn = i2;
        this.Tl = i2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton, i, R.style.Widget_FloatingActionButton);
        this.To = obtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_fabShadowEnabled, true);
        this.Tr = obtainStyledAttributes.hasValue(R.styleable.FloatingActionButton_fabColor);
        this.Tq = obtainStyledAttributes.getColor(R.styleable.FloatingActionButton_fabColor, AttributeResolver.resolveColor(getContext(), R.attr.colorAccent));
        obtainStyledAttributes.recycle();
        eQ();
        eT();
    }

    private void eQ() {
        if (getBackground() == null) {
            Drawable resolveDrawable = AttributeResolver.resolveDrawable(getContext(), com.miui.internal.R.attr.actionButtonMainBackground);
            if (!DrawableUtil.isPlaceholder(resolveDrawable)) {
                this.Tp = resolveDrawable;
                this.Tr = false;
                super.setBackground(this.Tp);
                return;
            } else if (this.Tr) {
                super.setBackground(eS());
                return;
            } else {
                super.setBackground(eR());
                return;
            }
        }
        this.Tr = false;
    }

    private Drawable eR() {
        if (this.Tp == null) {
            this.Tq = AttributeResolver.resolveColor(getContext(), R.attr.colorAccent);
            this.Tr = true;
            this.Tp = eS();
        }
        return this.Tp;
    }

    private Drawable eS() {
        Drawable shapeDrawable = new ShapeDrawable(new OvalShapeWithPadding(this));
        if (this.To) {
            int aq = aq(this.Tq);
            setLayerType(VERSION.SDK_INT >= 28 ? 2 : 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer((float) this.Tl, (float) this.Tm, (float) this.Tn, aq);
        }
        shapeDrawable.getPaint().setColor(this.Tq);
        new ShapeDrawable(new OvalShapeWithPadding(this)).getPaint().setColor(Tg);
        Drawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable, r1});
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(PRESSED_ENABLED_STATE_SET, layerDrawable);
        stateListDrawable.addState(ENABLED_SELECTED_STATE_SET, layerDrawable);
        stateListDrawable.addState(EMPTY_STATE_SET, shapeDrawable);
        return stateListDrawable;
    }

    private void eT() {
        if (this.To && this.Tr) {
            setPadding(Math.max(0, this.Tl - this.Tm), Math.max(0, this.Tl - this.Tn), Math.max(0, this.Tl + this.Tm), Math.max(0, this.Tl + this.Tn));
        } else {
            setPadding(0, 0, 0, 0);
        }
    }

    private int aq(int i) {
        return Color.argb(25, Color.red(i), Math.max(0, Color.green(i) - 30), Color.blue(i));
    }

    public void setBackground(Drawable drawable) {
        this.Tr = false;
        if (drawable == null) {
            drawable = eR();
        }
        super.setBackground(drawable);
        eT();
    }

    public void setBackgroundResource(int i) {
        this.Tr = false;
        if (i == 0) {
            super.setBackground(eR());
        } else {
            super.setBackgroundResource(i);
        }
        eT();
    }

    public void setBackgroundColor(int i) {
        if (!(this.Tr && this.Tq == i)) {
            this.Tq = i;
            super.setBackground(eS());
            eT();
        }
        this.Tr = true;
    }
}
