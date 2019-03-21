package com.miui.gallery.editor.photo.core.imports.doodle;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.miui.gallery.R;
import java.util.HashMap;
import java.util.Map.Entry;

public class PaintElementOperationDrawable extends Drawable {
    private HashMap<Action, Integer> mActionPosition = new HashMap();
    private RectF mBound = new RectF();
    private Matrix mCurrentMatrix = new Matrix();
    private Drawable[] mDecorationDrawables = new Drawable[4];
    private Rect[] mDecorationRects = new Rect[4];
    private boolean mDrawDecoration = true;
    private Matrix mMatrix = new Matrix();
    private float[] mPoint = new float[2];
    private RectF mRectFTemp = new RectF();
    private float mRotateCenterX;
    private float mRotateCenterY;
    private float mRotateDegree;
    private Matrix mRotateMatrix = new Matrix();
    private Drawable mWindow;

    public enum Action {
        EDIT(R.drawable.common_editor_window_action_btn_edit),
        ROTATE(R.drawable.common_editor_window_action_btn_rotate),
        SCALE(R.drawable.common_editor_window_action_btn_scale),
        DELETE(R.drawable.common_editor_window_action_btn_delete),
        MIRROR(R.drawable.common_editor_window_action_btn_mirror),
        REVERSE_WHITE(R.drawable.common_editor_window_action_btn_reverse_white),
        REVERSE_BLACK(R.drawable.common_editor_window_action_btn_reverse_black);
        
        public final int icon;

        private Action(int icon) {
            this.icon = icon;
        }
    }

    public PaintElementOperationDrawable(Resources resources) {
        this.mWindow = resources.getDrawable(R.drawable.common_editor_window_n);
        for (int i = 0; i < this.mDecorationRects.length; i++) {
            this.mDecorationRects[i] = new Rect();
        }
    }

    public void configDecorationPositon(RectF bound, Matrix matrix, float rotateDegree, float rotateCenterX, float rotateCenterY) {
        this.mBound.set(bound);
        this.mMatrix.reset();
        this.mMatrix.postConcat(matrix);
        this.mRotateMatrix.reset();
        this.mRotateMatrix.postRotate(rotateDegree, rotateCenterX, rotateCenterY);
        this.mRotateDegree = rotateDegree;
        this.mRotateCenterX = rotateCenterX;
        this.mRotateCenterY = rotateCenterY;
    }

    public void configActionPosition(Action topLeft, Action topRight, Action bottomRight, Action bottomLeft, Resources resources) {
        this.mActionPosition.clear();
        if (topLeft != null) {
            this.mActionPosition.put(topLeft, Integer.valueOf(0));
            this.mDecorationDrawables[0] = resources.getDrawable(topLeft.icon);
        }
        if (topRight != null) {
            this.mActionPosition.put(topRight, Integer.valueOf(1));
            this.mDecorationDrawables[1] = resources.getDrawable(topRight.icon);
        }
        if (bottomRight != null) {
            this.mActionPosition.put(bottomRight, Integer.valueOf(2));
            this.mDecorationDrawables[2] = resources.getDrawable(bottomRight.icon);
        }
        if (bottomLeft != null) {
            this.mActionPosition.put(bottomLeft, Integer.valueOf(3));
            this.mDecorationDrawables[3] = resources.getDrawable(bottomLeft.icon);
        }
    }

    public void draw(Canvas canvas) {
        this.mRectFTemp.set(this.mBound);
        this.mPoint[0] = this.mRotateCenterX;
        this.mPoint[1] = this.mRotateCenterY;
        this.mMatrix.mapRect(this.mRectFTemp);
        this.mMatrix.mapPoints(this.mPoint);
        this.mWindow.setBounds((int) this.mRectFTemp.left, (int) this.mRectFTemp.top, (int) this.mRectFTemp.right, (int) this.mRectFTemp.bottom);
        canvas.save();
        canvas.rotate(this.mRotateDegree, this.mPoint[0], this.mPoint[1]);
        this.mWindow.draw(canvas);
        canvas.restore();
        for (Entry<Action, Integer> entry : this.mActionPosition.entrySet()) {
            int position = ((Integer) entry.getValue()).intValue();
            if (position == 0) {
                this.mPoint[0] = this.mBound.left;
                this.mPoint[1] = this.mBound.top;
            } else if (position == 1) {
                this.mPoint[0] = this.mBound.right;
                this.mPoint[1] = this.mBound.top;
            } else if (position == 2) {
                this.mPoint[0] = this.mBound.right;
                this.mPoint[1] = this.mBound.bottom;
            } else if (position == 3) {
                this.mPoint[0] = this.mBound.left;
                this.mPoint[1] = this.mBound.bottom;
            }
            this.mCurrentMatrix.reset();
            this.mCurrentMatrix.postConcat(this.mMatrix);
            this.mCurrentMatrix.preConcat(this.mRotateMatrix);
            this.mCurrentMatrix.mapPoints(this.mPoint);
            Drawable drawable = this.mDecorationDrawables[position];
            int size = drawable.getIntrinsicWidth() / 2;
            configRectByPointAndSize(this.mDecorationRects[position], this.mPoint, (float) size, (float) size);
            drawable.setBounds(this.mDecorationRects[position]);
            if (this.mDrawDecoration) {
                drawable.draw(canvas);
            }
        }
    }

    public void setAlpha(int alpha) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return -2;
    }

    private static void configRectByPointAndSize(Rect rect, float[] point, float width, float height) {
        if (point != null && point.length == 2) {
            rect.set(Math.round(point[0] - width), Math.round(point[1] - height), Math.round(point[0] + width), Math.round(point[1] + height));
        }
    }

    public void getDecorationRect(Action action, RectF dst) {
        Integer position = (Integer) this.mActionPosition.get(action);
        if (position == null) {
            dst.setEmpty();
        } else {
            dst.set(this.mDecorationRects[position.intValue()]);
        }
    }

    public float findLowerDecorationPosition() {
        if (this.mActionPosition.isEmpty()) {
            return 0.0f;
        }
        float position = 0.0f;
        for (Entry<Action, Integer> entry : this.mActionPosition.entrySet()) {
            int bottom = this.mDecorationRects[((Integer) entry.getValue()).intValue()].bottom;
            if (((float) bottom) > position) {
                position = (float) bottom;
            }
        }
        return position;
    }

    public void setDrawDecoration(boolean drawDecoration) {
        this.mDrawDecoration = drawDecoration;
    }
}
