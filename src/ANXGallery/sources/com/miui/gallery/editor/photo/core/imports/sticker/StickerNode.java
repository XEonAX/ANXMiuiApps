package com.miui.gallery.editor.photo.core.imports.sticker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableMatrix;
import com.miui.gallery.util.Log;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: StickerEditorView */
class StickerNode implements Parcelable {
    public static final Creator<StickerNode> CREATOR = new Creator<StickerNode>() {
        public StickerNode createFromParcel(Parcel source) {
            return new StickerNode(source);
        }

        public StickerNode[] newArray(int size) {
            return new StickerNode[size];
        }
    };
    private RectF mDrawBounds;
    private RectF mImageBounds;
    private Matrix mInvert;
    private ModifyListener mListener;
    private ParcelableMatrix mMatrix;
    private float[] mMatrixValue;
    private Paint mPaint;
    private String mPathName;
    private Matrix mRotate;
    private Bitmap mSticker;
    public String mStickerCateName;
    public long mStickerId;

    /* compiled from: StickerEditorView */
    static class Cache {
        private Bitmap mBackground;
        private Matrix mBitmapToCanvas;
        private Canvas mCanvas;
        private Rect mCanvasBound = new Rect();
        private Matrix mCanvasToBitmap;
        private Bitmap mLayer;
        private ArrayList<StickerNode> mNodes = new ArrayList();
        private Paint mPaint = new Paint(3);
        private RectF mRedrawDst = new RectF();
        private Rect mRedrawSrc = new Rect();
        private float[] mReusePoint = new float[2];

        Cache(Bitmap background, Matrix canvasToBitmap, Matrix bitmapToCanvas) {
            this.mBackground = background;
            this.mCanvasToBitmap = canvasToBitmap;
            this.mBitmapToCanvas = bitmapToCanvas;
            this.mLayer = background.copy(Config.ARGB_8888, true);
            this.mCanvas = new Canvas(this.mLayer);
            this.mCanvasBound.set(0, 0, this.mLayer.getWidth(), this.mLayer.getHeight());
        }

        List<StickerNode> getNodes() {
            return (List) this.mNodes.clone();
        }

        void append(StickerNode node) {
            if (node != null) {
                this.mNodes.add(node);
                node.draw(this.mCanvas);
            }
        }

        boolean isEmpty() {
            return this.mNodes.isEmpty();
        }

        int find(float x, float y) {
            this.mReusePoint[0] = x;
            this.mReusePoint[1] = y;
            this.mCanvasToBitmap.mapPoints(this.mReusePoint);
            for (int i = this.mNodes.size() - 1; i >= 0; i--) {
                if (((StickerNode) this.mNodes.get(i)).contains(this.mReusePoint)) {
                    return i;
                }
            }
            return -1;
        }

        StickerNode remove(int index) {
            StickerNode node = (StickerNode) this.mNodes.remove(index);
            this.mRedrawSrc.set((int) Math.floor((double) node.mDrawBounds.left), (int) Math.floor((double) node.mDrawBounds.top), (int) Math.ceil((double) node.mDrawBounds.right), (int) Math.ceil((double) node.mDrawBounds.bottom));
            this.mRedrawDst.set(this.mRedrawSrc);
            long start = System.currentTimeMillis();
            this.mCanvas.save();
            this.mCanvas.clipRect(this.mRedrawSrc);
            this.mCanvas.drawBitmap(this.mBackground, this.mRedrawSrc, this.mRedrawDst, this.mPaint);
            List<StickerNode> items = findIntersects(node);
            Log.d("StickerEditorView", "need rebuild %d items", Integer.valueOf(items.size()));
            for (StickerNode item : items) {
                item.draw(this.mCanvas);
            }
            this.mCanvas.restore();
            Log.d("StickerNode", "rebuild finish costs %dms", Long.valueOf(System.currentTimeMillis() - start));
            return node;
        }

        void draw(Canvas canvas) {
            canvas.drawBitmap(this.mLayer, this.mBitmapToCanvas, this.mPaint);
        }

        private List<StickerNode> findIntersects(StickerNode target) {
            List<StickerNode> items = new ArrayList();
            Iterator it = this.mNodes.iterator();
            while (it.hasNext()) {
                StickerNode item = (StickerNode) it.next();
                if (RectF.intersects(item.mDrawBounds, target.mDrawBounds)) {
                    items.add(item);
                }
            }
            return items;
        }
    }

    /* compiled from: StickerEditorView */
    private interface ModifyListener {
        void onModified();
    }

    /* compiled from: StickerEditorView */
    static class Mutator {
        private final Matrix mBitmapToCanvas;
        private Drawable mBorder;
        private final Matrix mCanvasToBitmap;
        private Drawable mDelete;
        private Rect mDrawBounds = new Rect();
        private StickerNode mItem;
        private ModifyListener mListener = new ModifyListener() {
            public void onModified() {
                Mutator.this.updateDisplayInfo();
            }
        };
        private Drawable mMirror;
        private Matrix mReuseDegree = new Matrix();
        private Matrix mReuseMatrix = new Matrix();
        private float[] mReusePoint = new float[2];
        private RectF mReuseRect = new RectF();
        private float[] mReuseVector = new float[2];
        private Drawable mScale;
        private float[][] mVertices = ((float[][]) Array.newInstance(Float.TYPE, new int[]{4, 2}));

        Mutator(Context context, Matrix bitmapToCanvas, Matrix canvasToBitmap) {
            for (int i = 0; i < 4; i++) {
                this.mVertices[i] = new float[2];
            }
            this.mDelete = context.getResources().getDrawable(R.drawable.common_editor_window_action_btn_delete);
            this.mMirror = context.getResources().getDrawable(R.drawable.common_editor_window_action_btn_mirror);
            this.mScale = context.getResources().getDrawable(R.drawable.common_editor_window_action_btn_scale);
            this.mBorder = context.getResources().getDrawable(R.drawable.common_editor_window_n);
            this.mBitmapToCanvas = bitmapToCanvas;
            this.mCanvasToBitmap = canvasToBitmap;
        }

        boolean isIdle() {
            return this.mItem == null;
        }

        void bind(StickerNode item) {
            if (this.mItem != null) {
                this.mItem.mListener = null;
            }
            item.mListener = this.mListener;
            this.mItem = item;
            updateDisplayInfo();
        }

        StickerNode unbind() {
            StickerNode prev = this.mItem;
            this.mItem = null;
            return prev;
        }

        void draw(Canvas canvas, boolean moving) {
            if (this.mItem != null) {
                canvas.save();
                canvas.concat(this.mBitmapToCanvas);
                this.mItem.draw(canvas);
                canvas.restore();
                canvas.save();
                canvas.translate((float) this.mBorder.getBounds().centerX(), (float) this.mBorder.getBounds().centerY());
                canvas.concat(this.mItem.mRotate);
                canvas.translate((float) (-this.mBorder.getBounds().centerX()), (float) (-this.mBorder.getBounds().centerY()));
                this.mBorder.draw(canvas);
                canvas.restore();
                if (!moving) {
                    this.mMirror.draw(canvas);
                    this.mDelete.draw(canvas);
                    this.mScale.draw(canvas);
                }
            }
        }

        boolean contains(float x, float y) {
            if (this.mItem == null) {
                return false;
            }
            this.mReusePoint[0] = x;
            this.mReusePoint[1] = y;
            this.mCanvasToBitmap.mapPoints(this.mReusePoint);
            return this.mItem.contains(this.mReusePoint);
        }

        void mirror() {
            this.mItem.mirror();
        }

        void rotate(float sin, float cos) {
            this.mReuseDegree.setSinCos(sin, cos);
            this.mItem.rotate(this.mReuseDegree);
        }

        void scale(float scale) {
            this.mItem.scale(scale);
        }

        void translate(float dx, float dy) {
            this.mReuseVector[0] = dx;
            this.mReuseVector[1] = dy;
            this.mCanvasToBitmap.mapVectors(this.mReuseVector);
            this.mItem.translate(this.mReuseVector[0], this.mReuseVector[1]);
        }

        boolean isScale(float x, float y) {
            return this.mScale.getBounds().contains(Math.round(x), Math.round(y));
        }

        boolean isDelete(float x, float y) {
            return this.mDelete.getBounds().contains(Math.round(x), Math.round(y));
        }

        boolean isMirror(float x, float y) {
            return this.mMirror.getBounds().contains(Math.round(x), Math.round(y));
        }

        float getRadius() {
            return (float) Math.hypot((double) (this.mScale.getBounds().centerX() - this.mDrawBounds.centerX()), (double) (this.mScale.getBounds().centerY() - this.mDrawBounds.centerY()));
        }

        float[] getVertex(int type) {
            if (type <= 4) {
                return this.mVertices[type];
            }
            throw new IllegalArgumentException("error params");
        }

        Rect getDrawBounds() {
            return this.mDrawBounds;
        }

        RectF getBorderBounds() {
            return this.mReuseRect;
        }

        void updateDisplayInfo() {
            this.mReuseRect.set(this.mItem.mDrawBounds);
            this.mBitmapToCanvas.mapRect(this.mReuseRect);
            this.mDrawBounds.set(Math.round(this.mReuseRect.left), Math.round(this.mReuseRect.top), Math.round(this.mReuseRect.right), Math.round(this.mReuseRect.bottom));
            this.mItem.mRotate.invert(this.mReuseMatrix);
            this.mReuseMatrix.preTranslate(-this.mItem.mDrawBounds.centerX(), -this.mItem.mDrawBounds.centerY());
            this.mReuseMatrix.postTranslate(this.mItem.mDrawBounds.centerX(), this.mItem.mDrawBounds.centerY());
            this.mReuseMatrix.preConcat(this.mItem.mMatrix);
            this.mReuseMatrix.mapRect(this.mReuseRect, this.mItem.mImageBounds);
            this.mBitmapToCanvas.mapRect(this.mReuseRect);
            this.mBorder.setBounds(Math.round(this.mReuseRect.left), Math.round(this.mReuseRect.top), Math.round(this.mReuseRect.right), Math.round(this.mReuseRect.bottom));
            this.mVertices[0][0] = this.mReuseRect.left;
            this.mVertices[0][1] = this.mReuseRect.top;
            this.mVertices[1][0] = this.mReuseRect.right;
            this.mVertices[1][1] = this.mReuseRect.top;
            this.mVertices[2][0] = this.mReuseRect.left;
            this.mVertices[2][1] = this.mReuseRect.bottom;
            this.mVertices[3][0] = this.mReuseRect.right;
            this.mVertices[3][1] = this.mReuseRect.bottom;
            this.mReuseMatrix.setTranslate(-this.mReuseRect.centerX(), -this.mReuseRect.centerY());
            this.mReuseMatrix.postConcat(this.mItem.mRotate);
            this.mReuseMatrix.postTranslate(this.mReuseRect.centerX(), this.mReuseRect.centerY());
            for (float[] pt : this.mVertices) {
                this.mReuseMatrix.mapPoints(pt);
            }
            setBounds(this.mDelete, this.mVertices[1][0], this.mVertices[1][1]);
            setBounds(this.mMirror, this.mVertices[0][0], this.mVertices[0][1]);
            setBounds(this.mScale, this.mVertices[3][0], this.mVertices[3][1]);
        }

        private static void setBounds(Drawable drawable, float x, float y) {
            float height = (float) drawable.getIntrinsicHeight();
            float width = (float) drawable.getIntrinsicWidth();
            drawable.setBounds(Math.round(x - (width / 2.0f)), Math.round(y - (height / 2.0f)), Math.round((width / 2.0f) + x), Math.round((height / 2.0f) + y));
        }
    }

    StickerNode(Bitmap sticker, String pathName, long id, String cateName) {
        this.mMatrix = new ParcelableMatrix();
        this.mInvert = new Matrix();
        this.mRotate = new Matrix();
        this.mPaint = new Paint(3);
        this.mMatrixValue = new float[9];
        this.mSticker = sticker;
        this.mStickerId = id;
        this.mStickerCateName = cateName;
        this.mPathName = pathName;
        this.mImageBounds = new RectF(0.0f, 0.0f, (float) sticker.getWidth(), (float) sticker.getHeight());
        this.mDrawBounds = new RectF(this.mImageBounds);
    }

    void init(Matrix canvasMatrixInvert) {
        canvasMatrixInvert.getValues(this.mMatrixValue);
        float scale = this.mMatrixValue[0];
        this.mMatrix.postScale(scale, scale, 0.0f, 0.0f);
        postModify();
    }

    public void initForParcelable() {
        this.mSticker = BitmapFactory.decodeFile(this.mPathName);
    }

    void draw(Canvas canvas) {
        canvas.drawBitmap(this.mSticker, this.mMatrix, this.mPaint);
    }

    private void translate(float dx, float dy) {
        this.mMatrix.postTranslate(dx, dy);
        postModify();
    }

    private void scale(float scale) {
        this.mMatrix.postScale(scale, scale, this.mDrawBounds.centerX(), this.mDrawBounds.centerY());
        postModify();
    }

    private void rotate(Matrix rotate) {
        this.mRotate.postConcat(rotate);
        this.mMatrix.postTranslate(-this.mDrawBounds.centerX(), -this.mDrawBounds.centerY());
        this.mMatrix.postConcat(rotate);
        this.mMatrix.postTranslate(this.mDrawBounds.centerX(), this.mDrawBounds.centerY());
        postModify();
    }

    private void mirror() {
        this.mMatrix.preScale(-1.0f, 1.0f, this.mImageBounds.centerX(), this.mImageBounds.centerY());
        postModify();
    }

    private boolean contains(float[] pt) {
        float x = pt[0];
        float y = pt[1];
        this.mInvert.mapPoints(pt);
        boolean result = this.mImageBounds.contains(pt[0], pt[1]);
        pt[0] = x;
        pt[1] = y;
        return result;
    }

    private void postModify() {
        this.mMatrix.mapRect(this.mDrawBounds, this.mImageBounds);
        this.mMatrix.invert(this.mInvert);
        if (this.mListener != null) {
            this.mListener.onModified();
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.mMatrix, flags);
        dest.writeString(this.mPathName);
    }

    protected StickerNode(Parcel in) {
        this.mMatrix = new ParcelableMatrix();
        this.mInvert = new Matrix();
        this.mRotate = new Matrix();
        this.mPaint = new Paint(3);
        this.mMatrixValue = new float[9];
        this.mMatrix = (ParcelableMatrix) in.readParcelable(ParcelableMatrix.class.getClassLoader());
        this.mPathName = in.readString();
        initForParcelable();
    }
}
