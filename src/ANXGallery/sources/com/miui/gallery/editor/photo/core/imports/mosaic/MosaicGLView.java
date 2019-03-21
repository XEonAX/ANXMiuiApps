package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.core.imports.filter.render.PixelBuffer;
import com.miui.gallery.editor.photo.widgets.glview.BitmapGestureGLView;
import com.miui.gallery.editor.photo.widgets.glview.BitmapGestureGLView.FeatureGesListener;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLTextureShader;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class MosaicGLView extends BitmapGestureGLView {
    private CaptureListener mCaptureListener = new CaptureListener() {
        public void onCapture() {
            if (MosaicGLView.this.mOperationUpdateListener != null) {
                MosaicGLView.this.post(new Runnable() {
                    public void run() {
                        if (MosaicGLView.this.mOperationUpdateListener != null) {
                            MosaicGLView.this.mOperationUpdateListener.onOperationUpdate();
                        }
                    }
                });
            }
        }
    };
    private MosaicGLEntity mCurrentEntity;
    private MosaicRender mCustomRender;
    private FeatureGesListener mFeatureGesListener = new FeatureGesListener() {
        private boolean mIsFirst;
        public float[] mMatrixValues = new float[9];
        private PaintingItem mPaintingItem;
        private float[] mPoint = new float[2];

        public boolean onDown(MotionEvent e) {
            MosaicGLView.this.mBitmapGestureParamsHolder.mCanvasMatrix.getValues(this.mMatrixValues);
            MosaicGLView.this.mPaintSizeScale = MosaicGLView.this.mPaintSize / this.mMatrixValues[0];
            this.mPaintingItem = new PaintingItem();
            this.mIsFirst = true;
            return true;
        }

        public void onSingleTapUp(MotionEvent e) {
            MosaicGLView.this.mBitmapGestureParamsHolder.convertPointToBitmapCoordinate(e, this.mPoint);
            addPoint(this.mPoint, true);
        }

        public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            MosaicGLView.this.mBitmapGestureParamsHolder.convertPointToBitmapCoordinate(e2, this.mPoint);
            if (this.mIsFirst) {
                addPoint(this.mPoint, true);
                this.mIsFirst = false;
                return;
            }
            addPoint(this.mPoint, false);
        }

        public void onActionUp(float x, float y) {
            if (!this.mPaintingItem.isEmpty()) {
                MosaicGLView.this.mMosaicUndoManager.record(this.mPaintingItem, MosaicGLView.this.mCurrentEntity, true);
                MosaicGLView.this.mCustomRender.capture(MosaicGLView.this.mMosaicUndoManager);
                MosaicGLView.this.requestRender();
            }
        }

        public boolean onScale(ScaleGestureDetector detector) {
            return false;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            return false;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
        }

        private void addPoint(float[] point, boolean first) {
            MosaicGLView.this.mMarkRect.left = point[0] - MosaicGLView.this.mPaintSizeScale;
            MosaicGLView.this.mMarkRect.right = point[0] + MosaicGLView.this.mPaintSizeScale;
            MosaicGLView.this.mMarkRect.top = point[1] - MosaicGLView.this.mPaintSizeScale;
            MosaicGLView.this.mMarkRect.bottom = point[1] + MosaicGLView.this.mPaintSizeScale;
            BitmapGestureGLView.generateVertexPositionToBitmap(MosaicGLView.this.mMarkRect, MosaicGLView.this.mMarkPosition, (float) MosaicGLView.this.mOriginBitmap.getWidth(), (float) MosaicGLView.this.mOriginBitmap.getHeight());
            GLRectF item = new GLRectF(MosaicGLView.this.mMarkPosition);
            if (first) {
                MosaicGLView.this.mCustomRender.drawRect(item, true);
            } else {
                MosaicGLView.this.mCustomRender.drawRect(item, false);
            }
            this.mPaintingItem.add(item);
            MosaicGLView.this.requestRender();
        }
    };
    private float[] mGLPosition = new float[8];
    private float[] mGLPositionReverse = new float[8];
    private boolean mInit = false;
    private float[] mMarkPosition = new float[8];
    private RectF mMarkRect = new RectF();
    private MosaicUndoManager mMosaicUndoManager;
    private OperationUpdateListener mOperationUpdateListener;
    private float mPaintSize = 200.0f;
    private float mPaintSizeScale = this.mPaintSize;

    static class MosaicEntry implements Parcelable {
        public static final Creator<MosaicEntry> CREATOR = new Creator<MosaicEntry>() {
            public MosaicEntry createFromParcel(Parcel source) {
                return new MosaicEntry(source);
            }

            public MosaicEntry[] newArray(int size) {
                return new MosaicEntry[size];
            }
        };
        private final LinkedList<MosaicOperationItem> mMosaicOperationItems;
        private final int mPreviewHeight;
        private final int mPreviewWidth;

        MosaicEntry(LinkedList<MosaicOperationItem> mosaicOperationItems, int previewWidth, int previewHeight) {
            this.mMosaicOperationItems = new LinkedList(mosaicOperationItems);
            this.mPreviewWidth = previewWidth;
            this.mPreviewHeight = previewHeight;
        }

        public Bitmap apply(Bitmap bitmap) {
            Log.d("MosaicEntry", "MosaicEntry apply mosaic start! bitmap width : %d height : %d", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
            if (this.mMosaicOperationItems.isEmpty()) {
                Log.d("MosaicEntry", "MosaicEntry operationItem size zero return null!");
                return null;
            }
            float scale = 1.0f;
            PixelBuffer pixelBuffer = new PixelBuffer(bitmap.getWidth(), bitmap.getHeight());
            if (!(this.mPreviewWidth == bitmap.getWidth() && this.mPreviewHeight == bitmap.getHeight())) {
                scale = Math.max(((float) bitmap.getWidth()) / ((float) this.mPreviewWidth), ((float) bitmap.getHeight()) / ((float) this.mPreviewHeight));
            }
            final float finalScale = scale;
            pixelBuffer.setRenderer(new MosaicRender(bitmap, ImageLoader.getInstance().loadImageSync(Scheme.ASSETS.wrap(MosaicProvider.PEN_MASK_PATH))) {
                public void onSurfaceCreated(GL10 gl, EGLConfig config) {
                    super.onSurfaceCreated(gl, config);
                    Log.d("MosaicEntry", "MosaicEntry onSurfaceCreated");
                }

                public void onSurfaceChanged(GL10 gl, int width, int height) {
                    super.onSurfaceChanged(gl, width, height);
                    new InitTask().run();
                    Log.d("MosaicEntry", "MosaicEntry init finish begin apply operation item, size : %d", Integer.valueOf(MosaicEntry.this.mMosaicOperationItems.size()));
                    long applyOperationStart = System.currentTimeMillis();
                    Iterator it = MosaicEntry.this.mMosaicOperationItems.iterator();
                    while (it.hasNext()) {
                        MosaicOperationItem mosaicOperationItem = (MosaicOperationItem) it.next();
                        new EnableEntityTask(mosaicOperationItem.mosaicGLEntity, finalScale).run();
                        drawMaskPaintingItems(mosaicOperationItem.paintingItems);
                    }
                    Log.d("MosaicEntry", "MosaicEntry apply operation item coast : %d", Long.valueOf(System.currentTimeMillis() - applyOperationStart));
                    System.arraycopy(GLTextureShader.CUBE, 0, this.mGLPosition, 0, this.mGLPosition.length);
                }

                public void onDrawFrame(GL10 gl) {
                    super.onDrawFrame(gl);
                }
            });
            Log.d("MosaicEntry", "MosaicEntry begin read pixel");
            long readPixelStart = System.currentTimeMillis();
            pixelBuffer.getBitmap(bitmap);
            Log.d("MosaicEntry", "MosaicEntry read pixel coast %d", Long.valueOf(System.currentTimeMillis() - readPixelStart));
            pixelBuffer.destroy();
            Log.d("MosaicEntry", "MosaicEntry pixelBuffer destroy");
            return bitmap;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeTypedList(this.mMosaicOperationItems);
            dest.writeInt(this.mPreviewWidth);
            dest.writeInt(this.mPreviewHeight);
        }

        protected MosaicEntry(Parcel in) {
            this.mMosaicOperationItems = new LinkedList();
            in.readTypedList(this.mMosaicOperationItems, MosaicOperationItem.CREATOR);
            this.mPreviewWidth = in.readInt();
            this.mPreviewHeight = in.readInt();
        }
    }

    public MosaicGLView(Context context) {
        super(context);
        init();
    }

    private void init() {
    }

    protected void onBitmapMatrixChange() {
        if (!this.mInit) {
            this.mMosaicUndoManager = new MosaicUndoManager(this.mOriginBitmap.getWidth(), this.mOriginBitmap.getHeight(), getWidth(), getHeight());
            this.mMosaicUndoManager.setCaptureListener(this.mCaptureListener);
            this.mCustomRender = new MosaicRender(this.mOriginBitmap, ImageLoader.getInstance().loadImageSync(Scheme.ASSETS.wrap(MosaicProvider.PEN_MASK_PATH)));
            setRenderer(this.mCustomRender);
            setFeatureGestureListener(this.mFeatureGesListener);
            setRenderMode(0);
            this.mCustomRender.init(this.mCurrentEntity);
            refreshGLPosition();
            this.mCustomRender.capture(this.mMosaicUndoManager);
            requestRender();
            this.mInit = true;
        }
    }

    protected void onCanvasMatrixChange() {
        refreshGLPosition();
        requestRender();
    }

    private void refreshGLPosition() {
        RectF bitmapRect = this.mBitmapGestureParamsHolder.mBitmapDisplayRect;
        generateVertexPosition(bitmapRect, this.mGLPosition);
        generateVertexPositionReverse(bitmapRect, this.mGLPositionReverse);
        System.arraycopy(this.mGLPositionReverse, 0, this.mCustomRender.mGLPosition, 0, this.mGLPositionReverse.length);
    }

    public void setCurrentEntity(MosaicGLEntity mosaicGLEntity) {
        this.mCurrentEntity = mosaicGLEntity;
        if (this.mCustomRender != null) {
            this.mCustomRender.enableEntity(this.mCurrentEntity);
            requestRender();
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (this.mInit) {
            return super.onTouchEvent(event);
        }
        return true;
    }

    public MosaicEntry export() {
        return new MosaicEntry(this.mMosaicUndoManager.exportRecord(), this.mOriginBitmap.getWidth(), this.mOriginBitmap.getHeight());
    }

    public void setMosaicPaintSize(int size) {
        this.mPaintSize = (float) size;
    }

    public boolean canRevoke() {
        return this.mMosaicUndoManager.canRevoke();
    }

    public boolean canRevert() {
        return this.mMosaicUndoManager.canRevert();
    }

    public void doRevoke() {
        this.mCustomRender.enableCapture(this.mMosaicUndoManager.doRevoke());
        requestRender();
        if (this.mOperationUpdateListener != null) {
            this.mOperationUpdateListener.onOperationUpdate();
        }
    }

    public void doRevert() {
        this.mCustomRender.enableCapture(this.mMosaicUndoManager.doRevert());
        requestRender();
        if (this.mOperationUpdateListener != null) {
            this.mOperationUpdateListener.onOperationUpdate();
        }
    }

    public void setOperationUpdateListener(OperationUpdateListener operationUpdateListener) {
        this.mOperationUpdateListener = operationUpdateListener;
    }

    public boolean isEmpty() {
        return this.mMosaicUndoManager == null || this.mMosaicUndoManager.isEmpty();
    }

    public List<String> generateSample() {
        if (this.mMosaicUndoManager == null) {
            return null;
        }
        return this.mMosaicUndoManager.generateSample();
    }

    public void onClear() {
        if (this.mMosaicUndoManager != null) {
            this.mMosaicUndoManager.clearBuffer();
        }
    }
}
