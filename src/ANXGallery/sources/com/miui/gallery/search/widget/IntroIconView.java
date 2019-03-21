package com.miui.gallery.search.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.R;

public class IntroIconView extends View {
    private int mBackgroundColor;
    private Drawable mIconDrawable;
    private Paint mLandPaint;
    private Path mLandPath;

    public IntroIconView(Context context) {
        this(context, null);
    }

    public IntroIconView(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public IntroIconView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TypedArray a = getContext().obtainStyledAttributes(attrs, R.styleable.IntroIconView);
        try {
            this.mIconDrawable = a.getDrawable(0);
            this.mBackgroundColor = a.getColor(1, context.getResources().getColor(R.color.intro_icon_bg));
            int landColor = a.getColor(2, context.getResources().getColor(R.color.intro_icon_land_color));
            this.mLandPaint = new Paint();
            this.mLandPaint.setAntiAlias(true);
            this.mLandPaint.setColor(landColor);
            this.mLandPath = new Path();
        } finally {
            a.recycle();
        }
    }

    protected void onDraw(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        canvas.drawColor(this.mBackgroundColor);
        float landStartY = ((float) height) * 0.75f;
        this.mLandPath.reset();
        this.mLandPath.moveTo((float) width, landStartY);
        this.mLandPath.lineTo((float) width, (float) height);
        this.mLandPath.lineTo(0.0f, (float) height);
        this.mLandPath.lineTo(0.0f, landStartY);
        int waveAmplitude = (int) (0.03f * ((float) height));
        for (int i = 0; i < width; i++) {
            this.mLandPath.lineTo((float) i, (float) (((double) landStartY) - (((double) waveAmplitude) * Math.cos(((((double) (((float) (i + width)) / ((float) width))) * 0.8d) + 0.6d) * 3.141592653589793d))));
        }
        this.mLandPath.close();
        canvas.drawPath(this.mLandPath, this.mLandPaint);
        float drawableHeight = ((float) height) * 0.68f;
        int horizontalPadding = ((int) (((float) width) - ((((float) this.mIconDrawable.getIntrinsicWidth()) * drawableHeight) / ((float) this.mIconDrawable.getIntrinsicHeight())))) / 2;
        int verticalPadding = ((int) (((float) height) - drawableHeight)) / 2;
        this.mIconDrawable.setBounds(horizontalPadding, verticalPadding, width - horizontalPadding, height - verticalPadding);
        this.mIconDrawable.draw(canvas);
    }
}
