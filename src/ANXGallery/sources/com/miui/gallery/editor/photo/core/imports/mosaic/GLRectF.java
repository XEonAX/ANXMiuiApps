package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GLRectF implements Parcelable {
    public static final Creator<GLRectF> CREATOR = new Creator<GLRectF>() {
        public GLRectF createFromParcel(Parcel source) {
            return new GLRectF(source);
        }

        public GLRectF[] newArray(int size) {
            return new GLRectF[size];
        }
    };
    private float bottom;
    private float left;
    private float right;
    private float top;

    static class Iterator {
        private final float mBitmapHeight;
        private final float mBitmapWidth;
        private GLRectF mGLRectF = new GLRectF();
        private int mSize;
        private final float mXPixel;
        private float mXStep;
        private final float mYPixel;
        private float mYStep;

        public Iterator(float bitmapWidth, float bitmapHeight) {
            this.mBitmapWidth = bitmapWidth;
            this.mBitmapHeight = bitmapHeight;
            this.mXPixel = 1.0f / this.mBitmapWidth;
            this.mYPixel = 1.0f / this.mBitmapHeight;
        }

        public void countMiddleRect(GLRectF preRect, GLRectF currentRect) {
            countMiddleRect(preRect, currentRect, Math.max(preRect.width() * this.mBitmapWidth, preRect.height() * this.mBitmapHeight) / 5.0f);
        }

        public void countMiddleRect(GLRectF preRect, GLRectF currentRect, float pixelSpacing) {
            float distanceX = currentRect.centerX() - preRect.centerX();
            float distanceY = currentRect.centerY() - preRect.centerY();
            this.mSize = Math.max(Math.abs(Math.round((distanceX / this.mXPixel) / pixelSpacing)), Math.abs(Math.round((distanceY / this.mYPixel) / pixelSpacing)));
            this.mXStep = distanceX / ((float) (this.mSize + 1));
            this.mYStep = distanceY / ((float) (this.mSize + 1));
            this.mGLRectF.set(preRect);
        }

        public boolean hasNext() {
            return this.mSize >= 0;
        }

        public void next(float[] vertex) {
            if (this.mSize < 0) {
                throw new RuntimeException("iterator size error!!!");
            }
            this.mGLRectF.offset(this.mXStep, this.mYStep);
            this.mGLRectF.getVertex(vertex);
            this.mSize--;
        }
    }

    public GLRectF(float[] vertex) {
        setByVertex(vertex);
    }

    public void set(GLRectF glRectF) {
        this.left = glRectF.left;
        this.top = glRectF.top;
        this.right = glRectF.right;
        this.bottom = glRectF.bottom;
    }

    public void setByVertex(float[] vertex) {
        this.left = vertex[0];
        this.top = vertex[5];
        this.right = vertex[2];
        this.bottom = vertex[1];
    }

    public void getVertex(float[] vertex) {
        vertex[0] = this.left;
        vertex[1] = this.bottom;
        vertex[2] = this.right;
        vertex[3] = this.bottom;
        vertex[4] = this.left;
        vertex[5] = this.top;
        vertex[6] = this.right;
        vertex[7] = this.top;
    }

    public float centerX() {
        return (this.left + this.right) * 0.5f;
    }

    public final float centerY() {
        return (this.top + this.bottom) * 0.5f;
    }

    public final float width() {
        return this.right - this.left;
    }

    public final float height() {
        return this.top - this.bottom;
    }

    public void offset(float dx, float dy) {
        this.left += dx;
        this.top += dy;
        this.right += dx;
        this.bottom += dy;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeFloat(this.left);
        dest.writeFloat(this.top);
        dest.writeFloat(this.right);
        dest.writeFloat(this.bottom);
    }

    protected GLRectF(Parcel in) {
        this.left = in.readFloat();
        this.top = in.readFloat();
        this.right = in.readFloat();
        this.bottom = in.readFloat();
    }
}
