package com.miui.gallery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.miui.gallery.R;

public class RightTopCornerTextView extends TextView {
    private int mCornerMargin;
    private Paint mCornerPaint;
    private CharSequence mCornerText;
    private Rect mTemp1;
    private Rect mTemp2;

    public RightTopCornerTextView(Context context) {
        this(context, null);
    }

    public RightTopCornerTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RightTopCornerTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTemp1 = new Rect();
        this.mTemp2 = new Rect();
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.RightTopCornerTextView, defStyleAttr, 0);
        this.mCornerPaint = new Paint();
        this.mCornerPaint.setAntiAlias(true);
        this.mCornerPaint.setColor(a.getColor(2, getCurrentTextColor()));
        this.mCornerPaint.setTextSize((float) a.getDimensionPixelSize(1, (int) (getTextSize() / 2.0f)));
        this.mCornerMargin = a.getDimensionPixelSize(3, 0);
        setCornerText(a.getText(0));
        a.recycle();
    }

    public void setCornerText(CharSequence text) {
        this.mCornerText = text;
        if (!TextUtils.isEmpty(this.mCornerText)) {
            int padding = Math.max(getPaddingEnd(), Math.round(this.mCornerPaint.measureText(this.mCornerText.toString())) + this.mCornerMargin);
            setPadding(padding, getPaddingTop(), padding, getPaddingBottom());
        }
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        CharSequence text = getText();
        if (!TextUtils.isEmpty(text) && !TextUtils.isEmpty(this.mCornerText)) {
            getPaint().getTextBounds(text.toString(), 0, text.length(), this.mTemp1);
            this.mCornerPaint.getTextBounds(this.mCornerText.toString(), 0, this.mCornerText.length(), this.mTemp2);
            canvas.drawText(this.mCornerText.toString(), (float) ((getPaddingStart() + this.mTemp1.right) + this.mCornerMargin), (float) (((getPaddingTop() + getBaseline()) + this.mTemp1.top) + this.mTemp2.height()), this.mCornerPaint);
        }
    }
}
