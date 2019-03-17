package com.xiaomi.scanner.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class DocumentRectifyView extends View {
    private static final Tag TAG = new Tag("DocumentRectifyView");
    private static final int TOUCH_TOLERANCE = Util.dpToPixel(18.0f);
    private Point[] mCorners;
    private final RectF mDisplayBounds = new RectF();
    private int mHalfIconHeight;
    private int mHalfIconWidth;
    private final Drawable mIconDrawable;
    private Point[] mImageCorners = new Point[4];
    private int mImageHeight;
    private int mImageWidth;
    private float mLastX;
    private float mLastY;
    private List<Integer> mMovingPoints = new ArrayList();
    private Point[] mOrderedCorners;
    private final Paint mPaint;
    private Comparator<Point> mPointComparator = new Comparator<Point>() {
        public int compare(Point lhs, Point rhs) {
            if (lhs.y > rhs.y) {
                return -1;
            }
            if (lhs.y < rhs.y) {
                return 1;
            }
            if (lhs.x < rhs.x) {
                return -1;
            }
            if (lhs.x > rhs.x) {
                return 1;
            }
            return 0;
        }
    };

    public DocumentRectifyView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setLayerType(1, null);
        this.mPaint = new Paint();
        this.mPaint.setColor(-1);
        this.mPaint.setStrokeWidth(5.0f);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setShadowLayer(2.0f, 0.0f, 0.0f, -1308622848);
        this.mIconDrawable = context.getResources().getDrawable(R.drawable.ic_point_icon);
        if (this.mIconDrawable != null) {
            this.mHalfIconWidth = this.mIconDrawable.getIntrinsicWidth() / 2;
            this.mHalfIconHeight = this.mIconDrawable.getIntrinsicHeight() / 2;
        }
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.mDisplayBounds.set(0.0f, 0.0f, (float) w, (float) h);
        onCropChange();
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.mCorners = toUICropRect(this.mImageCorners);
        onCropChange();
    }

    public void setImageParams(int width, int height, Point[] cropCorners) {
        this.mImageWidth = width;
        this.mImageHeight = height;
        if (cropCorners == null) {
            Log.w(TAG, "setImageParams: null crop corners!");
            return;
        }
        int size = Math.min(this.mImageCorners.length, cropCorners.length);
        for (int i = 0; i < size; i++) {
            this.mImageCorners[i] = cropCorners[i];
        }
    }

    private Point[] toUICropRect(Point[] corners) {
        if (corners == null) {
            Log.w(TAG, "toUICropRect: null corners!");
            return null;
        }
        int size = corners.length;
        float scaleX = ((float) getWidth()) / ((float) this.mImageWidth);
        float scaleY = ((float) getHeight()) / ((float) this.mImageHeight);
        if (scaleX == 0.0f || scaleY == 0.0f) {
            return corners;
        }
        Point[] points = new Point[size];
        for (int i = 0; i < size; i++) {
            Point p = new Point();
            p.x = (int) (((float) corners[i].x) * scaleX);
            p.y = (int) (((float) corners[i].y) * scaleY);
            points[i] = p;
        }
        return points;
    }

    private Point[] toImageCropRect(Point[] corners) {
        Point[] points = null;
        if (corners == null) {
            Log.w(TAG, "toImageCropRect: null corners!");
        } else {
            int size = corners.length;
            float scaleX = ((float) getWidth()) / ((float) this.mImageWidth);
            float scaleY = ((float) getHeight()) / ((float) this.mImageHeight);
            if (!(scaleX == 0.0f || scaleY == 0.0f)) {
                points = new Point[size];
                for (int i = 0; i < size; i++) {
                    Point p = new Point();
                    p.x = (int) (((float) corners[i].x) / scaleX);
                    p.y = (int) (((float) corners[i].y) / scaleY);
                    points[i] = p;
                }
            }
        }
        return points;
    }

    public Point[] getImageCropCorners() {
        return toImageCropRect(this.mOrderedCorners);
    }

    private void onCropChange() {
        this.mOrderedCorners = orderCorners(this.mCorners);
        invalidate();
    }

    public boolean isMovingEdges() {
        return this.mMovingPoints.size() > 0;
    }

    protected void onDraw(Canvas canvas) {
        if (this.mOrderedCorners == null) {
            Log.w(TAG, "onDraw: null corners!");
            return;
        }
        int i;
        for (i = 0; i < this.mOrderedCorners.length; i++) {
            if (this.mOrderedCorners[i] == null) {
                Log.w(TAG, "onDraw: null corner at " + i);
                return;
            }
        }
        canvas.save();
        for (i = 0; i < this.mOrderedCorners.length; i++) {
            if (i == this.mOrderedCorners.length - 1) {
                canvas.drawLine((float) this.mOrderedCorners[i].x, (float) this.mOrderedCorners[i].y, (float) this.mOrderedCorners[0].x, (float) this.mOrderedCorners[0].y, this.mPaint);
            } else {
                canvas.drawLine((float) this.mOrderedCorners[i].x, (float) this.mOrderedCorners[i].y, (float) this.mOrderedCorners[i + 1].x, (float) this.mOrderedCorners[i + 1].y, this.mPaint);
            }
        }
        for (i = 0; i < this.mOrderedCorners.length; i++) {
            this.mIconDrawable.setBounds(new Rect(this.mOrderedCorners[i].x - this.mHalfIconWidth, this.mOrderedCorners[i].y - this.mHalfIconHeight, this.mOrderedCorners[i].x + this.mHalfIconWidth, this.mOrderedCorners[i].y + this.mHalfIconHeight));
            this.mIconDrawable.draw(canvas);
        }
        canvas.restore();
    }

    private void moveEdges(float deltaX, float deltaY) {
        int size = this.mMovingPoints.size();
        if (size == this.mCorners.length) {
            Rect rect = getCropRect(this.mCorners);
            if (rect != null) {
                if (deltaX > 0.0f) {
                    deltaX = Math.min(this.mDisplayBounds.right - ((float) rect.right), deltaX);
                } else {
                    deltaX = Math.min(((float) rect.left) - this.mDisplayBounds.left, deltaX);
                }
                if (deltaY > 0.0f) {
                    deltaY = Math.min(this.mDisplayBounds.bottom - ((float) rect.bottom), deltaY);
                } else {
                    deltaY = Math.min(((float) rect.top) - this.mDisplayBounds.top, deltaY);
                }
            }
        }
        for (int i = 0; i < size; i++) {
            Point point = this.mCorners[((Integer) this.mMovingPoints.get(i)).intValue()];
            point.x = (int) Util.clamp(((float) point.x) + deltaX, this.mDisplayBounds.left, this.mDisplayBounds.right);
            point.y = (int) Util.clamp(((float) point.y) + deltaY, this.mDisplayBounds.top, this.mDisplayBounds.bottom);
        }
        onCropChange();
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (!isShown()) {
            return false;
        }
        boolean last = isMovingEdges();
        if (isEnabled()) {
            float x = event.getX();
            float y = event.getY();
            switch (event.getAction()) {
                case 0:
                    detectMovingEdges(x, y);
                    this.mLastX = x;
                    this.mLastY = y;
                    break;
                case 1:
                case 3:
                    this.mMovingPoints.clear();
                    if (this.mOrderedCorners != null) {
                        this.mCorners = this.mOrderedCorners;
                    }
                    invalidate();
                    break;
                case 2:
                    if (this.mMovingPoints.size() != 0) {
                        moveEdges(x - this.mLastX, y - this.mLastY);
                    }
                    this.mLastX = x;
                    this.mLastY = y;
                    break;
            }
        }
        if (last || isMovingEdges()) {
            return true;
        }
        return false;
    }

    private void detectMovingEdges(float x, float y) {
        this.mMovingPoints.clear();
        int size = this.mCorners.length;
        int i = 0;
        while (i < size) {
            Point corner = this.mCorners[i];
            if (Math.abs(((float) corner.x) - x) >= ((float) TOUCH_TOLERANCE) || Math.abs(((float) corner.y) - y) >= ((float) TOUCH_TOLERANCE)) {
                i++;
            } else {
                this.mMovingPoints.add(Integer.valueOf(i));
                return;
            }
        }
        double distance = Double.MAX_VALUE;
        int lineIndex = -1;
        Point point = new Point((int) x, (int) y);
        for (i = 0; i < size - 1; i++) {
            double newDistance = distanceToLine(this.mCorners[i], this.mCorners[i + 1], point);
            if (newDistance < ((double) TOUCH_TOLERANCE) && distance < newDistance) {
                distance = newDistance;
                lineIndex = i;
            }
        }
        if (lineIndex > -1) {
            this.mMovingPoints.add(Integer.valueOf(lineIndex));
            this.mMovingPoints.add(Integer.valueOf(lineIndex + 1));
        } else if (isPointInRect(this.mCorners, point)) {
            this.mMovingPoints.add(Integer.valueOf(0));
            this.mMovingPoints.add(Integer.valueOf(1));
            this.mMovingPoints.add(Integer.valueOf(2));
            this.mMovingPoints.add(Integer.valueOf(3));
        }
    }

    private double distanceToLine(Point p1, Point p2, Point p3) {
        if (p3.equals(p1) || p3.equals(p2)) {
            return 0.0d;
        }
        if (p1.equals(p2)) {
            return Math.sqrt((double) (((p3.x - p2.x) * (p3.x - p2.x)) + ((p3.y - p2.y) * (p3.y - p2.y))));
        }
        int A = p2.y - p1.y;
        int B = p1.x - p2.x;
        return ((double) Math.abs(((p3.x * A) + (p3.y * B)) + ((p2.x * p1.y) - (p1.x * p2.y)))) / Math.sqrt((double) ((A * A) + (B * B)));
    }

    private boolean isPointInRect(Point[] corners, Point point) {
        if (point == null) {
            return false;
        }
        Rect rect = getCropRect(corners);
        if (rect != null) {
            return rect.contains(point.x, point.y);
        }
        return false;
    }

    private Rect getCropRect(Point[] corners) {
        if (corners == null || corners.length < 1) {
            return null;
        }
        int minX = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int maxX = -1;
        int minY = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int maxY = -1;
        for (Point p : corners) {
            if (minX > p.x) {
                minX = p.x;
            }
            if (maxX < p.x) {
                maxX = p.x;
            }
            if (minY > p.y) {
                minY = p.y;
            }
            if (maxY < p.y) {
                maxY = p.y;
            }
        }
        return new Rect(minX, minY, maxX, maxY);
    }

    private Point[] orderCorners(Point[] corners) {
        if (corners == null || corners.length != 4) {
            Log.w(TAG, "orderCorners: require 4 points but found " + (corners == null ? 0 : corners.length));
            return null;
        }
        Point temp;
        int size = corners.length;
        Point[] orderedCorners = new Point[size];
        System.arraycopy(corners, 0, orderedCorners, 0, size);
        List<Point> cornerList = Arrays.asList(orderedCorners);
        Collections.sort(cornerList, this.mPointComparator);
        if (((Point) cornerList.get(0)).x > ((Point) cornerList.get(1)).x) {
            temp = (Point) cornerList.get(0);
            cornerList.set(0, cornerList.get(1));
            cornerList.set(1, temp);
        }
        if (((Point) cornerList.get(2)).x >= ((Point) cornerList.get(3)).x) {
            return orderedCorners;
        }
        temp = (Point) cornerList.get(2);
        cornerList.set(2, cornerList.get(3));
        cornerList.set(3, temp);
        return orderedCorners;
    }
}
