package com.xiaomi.scanner.translation.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.translation.bean.TranslateResult.LineInfo;
import java.util.List;

public class RealTimeTranslateDrawer {
    private static final Tag TAG = new Tag("RealTimeTranslateDrawer");
    private List<LineInfo> mLines;
    private Paint mPaint = new Paint();
    private Path mTextPath;
    private int orientation;
    private Paint polyPaint;
    private Path polyPath;

    public void setLines(List<LineInfo> lines, int orientation) {
        this.mLines = lines;
        this.orientation = orientation;
    }

    public void drawTranslateText(Canvas canvas) {
        try {
            if (this.mLines != null) {
                for (LineInfo line : this.mLines) {
                    drawText(canvas, line);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    private void drawText(Canvas canvas, LineInfo line) {
        String text = line.toText;
        Rect rect = line.rect(this.orientation);
        int bgColor = line.getBgColor();
        int textColor = line.getTextColor();
        float height = ((float) rect.height()) * 0.85f;
        if (this.orientation == 90 || this.orientation == 270) {
            height = ((float) rect.width()) * 0.85f;
        }
        this.mPaint.setTextScaleX(1.0f);
        this.mPaint.setTextSize(height);
        this.mPaint.setColor(bgColor);
        float originWidth = this.mPaint.measureText(text);
        float xScale = ((float) rect.width()) / originWidth;
        if (this.orientation == 90 || this.orientation == 270) {
            xScale = (((float) rect.height()) * 1.0f) / originWidth;
        }
        drawPoly(canvas, bgColor, line.getPosition(this.orientation));
        this.mPaint.setTextScaleX(xScale);
        this.mPaint.setColor(textColor);
        Path path = getTextPath(line.getPosition(this.orientation));
        if (path != null) {
            canvas.drawTextOnPath(text, path, 0.0f, height, this.mPaint);
        }
    }

    private Path getTextPath(List<Point> points) {
        if (this.mTextPath == null) {
            this.mTextPath = new Path();
        }
        this.mTextPath.reset();
        this.mTextPath.moveTo((float) ((Point) points.get(0)).x, (float) ((Point) points.get(0)).y);
        this.mTextPath.lineTo((float) ((Point) points.get(1)).x, (float) ((Point) points.get(1)).y);
        return this.mTextPath;
    }

    private void initPloyPaint() {
        if (this.polyPaint == null) {
            this.polyPaint = new Paint();
            this.polyPaint.setStyle(Style.FILL);
        }
    }

    private void drawPoly(Canvas canvas, int color, List<Point> points) {
        if (points.size() >= 2) {
            initPloyPaint();
            this.polyPaint.setColor(color);
            if (this.polyPath == null) {
                this.polyPath = new Path();
            }
            this.polyPath.reset();
            this.polyPath.moveTo((float) ((Point) points.get(0)).x, (float) ((Point) points.get(0)).y);
            int len = points.size();
            for (int i = 0; i < len; i++) {
                this.polyPath.lineTo((float) ((Point) points.get(i)).x, (float) ((Point) points.get(i)).y);
            }
            this.polyPath.lineTo((float) ((Point) points.get(0)).x, (float) ((Point) points.get(0)).y);
            canvas.drawPath(this.polyPath, this.polyPaint);
        }
    }
}
