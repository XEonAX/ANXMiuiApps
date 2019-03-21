package com.miui.gallery.movie.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint.Style;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.R;

public class StrokeTextView extends TextView {
    private TextView mOutlineTextView = null;

    public StrokeTextView(Context context) {
        super(context);
        this.mOutlineTextView = new TextView(context);
        init();
    }

    public StrokeTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mOutlineTextView = new TextView(context, attrs);
        init();
    }

    public StrokeTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mOutlineTextView = new TextView(context, attrs, defStyle);
        init();
    }

    public void init() {
        TextPaint paint = this.mOutlineTextView.getPaint();
        paint.setStrokeWidth(2.0f);
        paint.setStyle(Style.STROKE);
        this.mOutlineTextView.setTextColor(getResources().getColor(R.color.movie_time_shader));
        this.mOutlineTextView.setGravity(getGravity());
    }

    public void setLayoutParams(LayoutParams params) {
        super.setLayoutParams(params);
        this.mOutlineTextView.setLayoutParams(params);
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        CharSequence outlineText = this.mOutlineTextView.getText();
        if (outlineText == null || !outlineText.equals(getText())) {
            this.mOutlineTextView.setText(getText());
        }
        this.mOutlineTextView.measure(widthMeasureSpec, heightMeasureSpec);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.mOutlineTextView.layout(left, top, right, bottom);
    }

    protected void onDraw(Canvas canvas) {
        this.mOutlineTextView.draw(canvas);
        super.onDraw(canvas);
    }
}
