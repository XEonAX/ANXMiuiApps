package com.miui.gallery.editor.photo.core.imports.remover;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.widget.Toast;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.remover.Inpaint;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelablePathUtils;
import com.miui.gallery.editor.photo.widgets.imageview.BitmapGestureView;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.util.ArrayList;
import java.util.List;

public class RemoverGestureView extends BitmapGestureView {
    private Context mContext;
    private Paint mCurvePaint;
    private List<Curve> mCurves;
    private ElementType mElementType;
    private GesListener mGesListener;
    private boolean mHasRawYuv;
    private boolean mIsProcessing;
    private Bitmap mMaskBitmap;
    private RemoverCallback mRemoverCallback;
    private RemoverPaintData mRemoverPaintData;
    private int mRenderRecordIndex;

    public static abstract class Curve implements Parcelable {
        protected Paint mPaint;
        private float mStrokeWidth;

        static abstract class Builder<T extends Curve> {
            T mDraft;

            abstract T onCreateDraft(Paint paint);

            abstract void onDown(float f, float f2);

            abstract void onMove(float f, float f2);

            abstract void onUp(float f, float f2);

            Builder() {
            }

            final void initDraft(Paint paint) {
                this.mDraft = onCreateDraft(paint);
            }

            final void handleDown(float x, float y) {
                onDown(x, y);
            }

            final void handleMove(float x, float y) {
                onMove(x, y);
            }

            final void handleUp(float x, float y) {
                onUp(x, y);
            }

            void draw(Canvas canvas) {
                this.mDraft.draw(canvas);
            }

            Curve done() {
                Curve draft = this.mDraft;
                this.mDraft = null;
                return draft;
            }
        }

        abstract boolean isEmpty(RectF rectF);

        abstract void onComputeBounds(RectF rectF);

        abstract void onDraw(Canvas canvas, Paint paint);

        Curve(Paint paint) {
            this.mPaint = paint;
            this.mStrokeWidth = paint.getStrokeWidth();
        }

        final void draw(Canvas canvas) {
            onDraw(canvas, this.mPaint);
        }

        final void computeBounds(RectF rect) {
            onComputeBounds(rect);
            rect.inset(-this.mPaint.getStrokeWidth(), -this.mPaint.getStrokeWidth());
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeFloat(this.mStrokeWidth);
        }

        protected Curve(Parcel in) {
            this.mStrokeWidth = in.readFloat();
            this.mPaint = RemoverGestureView.initCurvePaint(GalleryApp.sGetAndroidContext());
            this.mPaint.setStrokeWidth(this.mStrokeWidth);
        }
    }

    public enum ElementType {
        FREE(new Builder()),
        LINE(new Builder()),
        POINT(new Builder());
        
        private Builder<?> mBuilder;

        private ElementType(Builder<?> builder) {
            this.mBuilder = builder;
        }

        boolean activated() {
            return this.mBuilder.mDraft != null;
        }
    }

    private static class Free extends Curve {
        public static final Creator<Free> CREATOR = new Creator<Free>() {
            public Free createFromParcel(Parcel source) {
                return new Free(source);
            }

            public Free[] newArray(int size) {
                return new Free[size];
            }
        };
        private Path mPath;
        private List<PointF> mPointFList;

        static class Builder extends Builder<Free> {
            private PointF mLastPoint = new PointF();

            Builder() {
            }

            Free onCreateDraft(Paint base) {
                return new Free(new Paint(base));
            }

            void onDown(float x, float y) {
                ((Free) this.mDraft).mPath.moveTo(x, y);
                this.mLastPoint.set(x, y);
                ((Free) this.mDraft).mPointFList.clear();
                ((Free) this.mDraft).mPointFList.add(new PointF(x, y));
            }

            void onMove(float x, float y) {
                ((Free) this.mDraft).mPath.quadTo(this.mLastPoint.x, this.mLastPoint.y, (this.mLastPoint.x + x) / 2.0f, (this.mLastPoint.y + y) / 2.0f);
                this.mLastPoint.set(x, y);
                ((Free) this.mDraft).mPointFList.add(new PointF(x, y));
            }

            void onUp(float x, float y) {
            }
        }

        Free(Paint paint) {
            super(paint);
            this.mPath = new Path();
            this.mPointFList = new ArrayList();
        }

        void onDraw(Canvas canvas, Paint paint) {
            canvas.drawPath(this.mPath, paint);
        }

        boolean isEmpty(RectF mBitmapDisplayRect) {
            RectF rect = new RectF();
            onComputeBounds(rect);
            return rect.isEmpty();
        }

        void onComputeBounds(RectF rect) {
            this.mPath.computeBounds(rect, true);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeTypedList(this.mPointFList);
        }

        protected Free(Parcel in) {
            super(in);
            this.mPointFList = in.createTypedArrayList(PointF.CREATOR);
            this.mPath = ParcelablePathUtils.getPathFromPointList(this.mPointFList);
        }
    }

    private class GesListener implements FeatureGesListener {
        private ElementType mPreType;

        private GesListener() {
        }

        public boolean onDown(MotionEvent e) {
            this.mPreType = null;
            if (RemoverGestureView.this.mIsProcessing) {
                return false;
            }
            float x = e.getX();
            float y = e.getY();
            RemoverGestureView.this.mElementType.mBuilder.initDraft(RemoverGestureView.this.mCurvePaint);
            RemoverGestureView.this.mElementType.mBuilder.handleDown(x, y);
            return true;
        }

        public void onSingleTapUp(MotionEvent e) {
            if (!RemoverGestureView.this.mIsProcessing) {
                float x = e.getX();
                float y = e.getY();
                if (RemoverGestureView.this.mBitmapGestureParamsHolder.mBitmapDisplayRect.contains(x, y)) {
                    this.mPreType = RemoverGestureView.this.mElementType;
                    RemoverGestureView.this.mElementType = ElementType.POINT;
                    RemoverGestureView.this.mElementType.mBuilder.initDraft(RemoverGestureView.this.mCurvePaint);
                    RemoverGestureView.this.mElementType.mBuilder.handleDown(x, y);
                    RemoverGestureView.this.invalidate();
                }
            }
        }

        public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            if (!RemoverGestureView.this.mIsProcessing && RemoverGestureView.this.mElementType.mBuilder.mDraft != null) {
                float x = e2.getX();
                float y = e2.getY();
                if (RemoverGestureView.this.mBitmapGestureParamsHolder.mBitmapDisplayRect.contains(x, y)) {
                    RemoverGestureView.this.mElementType.mBuilder.handleMove(x, y);
                    RemoverGestureView.this.invalidate();
                }
            }
        }

        public void onActionUp(float x, float y) {
            if (RemoverGestureView.this.mState != State.BY_CHILD) {
                RemoverGestureView.this.mElementType.mBuilder.done();
            } else if (RemoverGestureView.this.mElementType.mBuilder.mDraft != null) {
                RemoverGestureView.this.mElementType.mBuilder.handleUp(x, y);
                if (RemoverGestureView.this.mCurves == null) {
                    RemoverGestureView.this.mCurves = new ArrayList();
                }
                RemoverGestureView.this.mCurves.add(RemoverGestureView.this.mElementType.mBuilder.done());
                if (RemoverGestureView.this.mElementType == ElementType.POINT && this.mPreType != null) {
                    RemoverGestureView.this.mElementType = this.mPreType;
                    RemoverGestureView.this.mElementType.mBuilder.done();
                }
                RemoverGestureView.this.doRemove();
                RemoverGestureView.this.invalidate();
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
    }

    private static class Point extends Curve {
        public static final Creator<Point> CREATOR = new Creator<Point>() {
            public Point createFromParcel(Parcel source) {
                return new Point(source);
            }

            public Point[] newArray(int size) {
                return new Point[size];
            }
        };
        private PointF mPointF = new PointF();
        private Paint mPointPaint;

        private static class Builder extends Builder<Point> {
            private Builder() {
            }

            Point onCreateDraft(Paint base) {
                return new Point(base);
            }

            void onDown(float x, float y) {
                ((Point) this.mDraft).mPointF.x = x;
                ((Point) this.mDraft).mPointF.y = y;
            }

            void onMove(float x, float y) {
            }

            void onUp(float x, float y) {
            }
        }

        Point(Paint pointPaint) {
            super(pointPaint);
            this.mPointPaint = new Paint(pointPaint);
            this.mPointPaint.setStyle(Style.FILL);
        }

        void onDraw(Canvas canvas, Paint paint) {
            canvas.drawCircle(this.mPointF.x, this.mPointF.y, paint.getStrokeWidth() / 2.0f, this.mPointPaint);
        }

        boolean isEmpty(RectF mBitmapDisplayRect) {
            return !mBitmapDisplayRect.contains(this.mPointF.x, this.mPointF.y);
        }

        void onComputeBounds(RectF rect) {
            rect.set(this.mPointF.x, this.mPointF.y, this.mPointF.x, this.mPointF.y);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeParcelable(this.mPointF, flags);
        }

        protected Point(Parcel in) {
            super(in);
            this.mPointF = (PointF) in.readParcelable(PointF.class.getClassLoader());
            this.mPointPaint = new Paint(this.mPaint);
            this.mPointPaint.setStyle(Style.FILL);
        }
    }

    private static class RemoveTask extends AsyncTask<Void, Void, Integer> {
        private WeakReference<RemoverGestureView> mWeakRemoverGestureView;

        RemoveTask(RemoverGestureView removerGestureView) {
            this.mWeakRemoverGestureView = new WeakReference(removerGestureView);
        }

        protected void onPreExecute() {
            super.onPreExecute();
            RemoverGestureView view = (RemoverGestureView) this.mWeakRemoverGestureView.get();
            if (view != null && view.mRemoverCallback != null) {
                view.mRemoverCallback.onRemoveStart();
            }
        }

        protected void onPostExecute(Integer res) {
            super.onPostExecute(res);
            RemoverGestureView view = (RemoverGestureView) this.mWeakRemoverGestureView.get();
            if (res != null && view != null) {
                if (view.mRemoverCallback != null) {
                    if (res.intValue() == -11) {
                        Toast.makeText(view.mContext, R.string.remover_erase_aera_too_big, 0).show();
                        view.mRemoverCallback.removeDone(null);
                    } else if (res.intValue() == -12) {
                        view.mRemoverCallback.removeDone(null);
                    } else if (res.intValue() < 0) {
                        view.mRemoverCallback.removeDone(null);
                        Log.e("RemoverGestureView", "remove sdk process error :%d", (Object) res);
                    } else if (view.mCurves != null && view.mCurves.size() > 0) {
                        RemoverPaintData newPaintData = new RemoverPaintData();
                        newPaintData.mCurves = view.mCurves;
                        newPaintData.mApplyDoodleMatrix.set(view.mRemoverPaintData.mApplyDoodleMatrix);
                        newPaintData.mExportBounds.set(view.mRemoverPaintData.mExportBounds);
                        newPaintData.mDrawableBounds.set(view.mRemoverPaintData.mDrawableBounds);
                        newPaintData.mDrawBitmapMatrix.set(view.mRemoverPaintData.mDrawBitmapMatrix);
                        newPaintData.mExportMatrix.set(view.mRemoverPaintData.mExportMatrix);
                        newPaintData.mBmpBounds.set(view.mRemoverPaintData.mBmpBounds);
                        newPaintData.mViewBounds.set(view.mRemoverPaintData.mViewBounds);
                        newPaintData.mRemoverNNFData = view.mRemoverPaintData.mRemoverNNFData;
                        view.mRemoverCallback.removeDone(newPaintData);
                    }
                }
                if (!view.mElementType.activated()) {
                    view.mCurves = null;
                    view.invalidate();
                }
            }
        }

        protected Integer doInBackground(Void... params) {
            RemoverGestureView view = (RemoverGestureView) this.mWeakRemoverGestureView.get();
            if (view == null) {
                return null;
            }
            RemoverGestureView.export(view.mMaskBitmap, view.mRemoverPaintData, view.mCurves);
            RectF rectF = new RectF();
            Rect rect = new Rect();
            int bitmapWidth = view.mMaskBitmap.getWidth();
            int bitmapHeight = view.mMaskBitmap.getHeight();
            RemoverGestureView.getMaskBounds(rectF, bitmapWidth, bitmapHeight, view.mRemoverPaintData, view.mCurves);
            rectF.roundOut(rect);
            Log.d("RemoverGestureView", "mask rect: %s, width: %s, height %s", rect, Integer.valueOf(bitmapWidth), Integer.valueOf(bitmapHeight));
            if (rect.isEmpty()) {
                return Integer.valueOf(-12);
            }
            if (rect.width() >= bitmapWidth || rect.height() >= bitmapHeight) {
                return Integer.valueOf(-11);
            }
            RemoverNNFData removerNNFData = new RemoverNNFData();
            view.mRemoverPaintData.mRemoverNNFData = removerNNFData;
            return Integer.valueOf(Inpaint.inpaintBmpData(view.mDisplayBitmap, view.mMaskBitmap, view.mDisplayBitmap.getWidth(), view.mDisplayBitmap.getHeight(), rect.left, rect.top, rect.right, rect.bottom, removerNNFData));
        }
    }

    interface RemoverCallback {
        void onRemoveStart();

        void removeDone(RemoverPaintData removerPaintData);
    }

    private static class StraightLine extends Curve {
        public static final Creator<StraightLine> CREATOR = new Creator<StraightLine>() {
            public StraightLine createFromParcel(Parcel source) {
                return new StraightLine(source);
            }

            public StraightLine[] newArray(int size) {
                return new StraightLine[size];
            }
        };
        private PointF mEnd = new PointF();
        private PointF mStart = new PointF();

        private static class Builder extends Builder<StraightLine> {
            private Builder() {
            }

            StraightLine onCreateDraft(Paint base) {
                return new StraightLine(new Paint(base));
            }

            void onDown(float x, float y) {
                ((StraightLine) this.mDraft).mStart.set(x, y);
                ((StraightLine) this.mDraft).mEnd.set(x, y);
            }

            void onMove(float x, float y) {
                ((StraightLine) this.mDraft).mEnd.set(x, y);
            }

            void onUp(float x, float y) {
                ((StraightLine) this.mDraft).mEnd.set(x, y);
            }
        }

        StraightLine(Paint paint) {
            super(paint);
        }

        void onDraw(Canvas canvas, Paint paint) {
            canvas.drawLine(this.mStart.x, this.mStart.y, this.mEnd.x, this.mEnd.y, paint);
        }

        boolean isEmpty(RectF mBitmapDisplayRect) {
            boolean isAllOutside;
            if (mBitmapDisplayRect.contains(this.mStart.x, this.mStart.y) || mBitmapDisplayRect.contains(this.mEnd.x, this.mEnd.y)) {
                isAllOutside = false;
            } else {
                isAllOutside = true;
            }
            if (this.mStart.equals(this.mEnd) || isAllOutside) {
                return true;
            }
            return false;
        }

        void onComputeBounds(RectF rect) {
            if (this.mStart.x < this.mEnd.x) {
                rect.left = this.mStart.x;
                rect.right = this.mEnd.x;
            } else {
                rect.left = this.mEnd.x;
                rect.right = this.mStart.x;
            }
            if (this.mStart.y < this.mEnd.y) {
                rect.top = this.mStart.y;
                rect.bottom = this.mEnd.y;
                return;
            }
            rect.top = this.mEnd.y;
            rect.bottom = this.mStart.y;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeParcelable(this.mStart, flags);
            dest.writeParcelable(this.mEnd, flags);
        }

        protected StraightLine(Parcel in) {
            super(in);
            this.mStart = (PointF) in.readParcelable(PointF.class.getClassLoader());
            this.mEnd = (PointF) in.readParcelable(PointF.class.getClassLoader());
        }
    }

    public RemoverGestureView(Context context) {
        this(context, null);
    }

    public RemoverGestureView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RemoverGestureView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mElementType = ElementType.FREE;
        this.mCurves = new ArrayList();
        this.mGesListener = new GesListener();
        this.mContext = context;
        this.mCurvePaint = initCurvePaint(context);
        this.mIsProcessing = false;
        this.mHasRawYuv = false;
        this.mRemoverPaintData = new RemoverPaintData();
        setFeatureGestureListener(this.mGesListener);
    }

    public static Paint initCurvePaint(Context context) {
        Paint curvePaint = new Paint(3);
        curvePaint.setStyle(Style.STROKE);
        curvePaint.setStrokeCap(Cap.ROUND);
        curvePaint.setStrokeJoin(Join.ROUND);
        curvePaint.setColor(context.getResources().getColor(R.color.photo_editor_highlight_color));
        curvePaint.setAlpha(context.getResources().getInteger(R.integer.remover_paint_alpha));
        return curvePaint;
    }

    protected void onBitmapMatrixChanged() {
        this.mRemoverPaintData.mDrawableBounds.set(this.mBitmapGestureParamsHolder.mBitmapDisplayRect);
        this.mRemoverPaintData.mViewBounds.set(this.mBitmapGestureParamsHolder.mDisplayRect);
        this.mRemoverPaintData.mDrawBitmapMatrix.set(this.mBitmapGestureParamsHolder.mBitmapToDisplayMatrix);
        this.mRemoverPaintData.mBmpBounds.set(this.mBitmapGestureParamsHolder.mBitmapRect);
    }

    protected void onCanvasMatrixChange() {
        this.mRemoverPaintData.mDrawBitmapMatrix.reset();
        this.mRemoverPaintData.mDrawBitmapMatrix.set(this.mBitmapGestureParamsHolder.mBitmapToDisplayMatrix);
        this.mRemoverPaintData.mDrawBitmapMatrix.postConcat(this.mBitmapGestureParamsHolder.mCanvasMatrix);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (this.mIsProcessing) {
            return false;
        }
        return super.onTouchEvent(event);
    }

    protected void drawChild(Canvas canvas) {
        canvas.save();
        canvas.clipRect(this.mBitmapGestureParamsHolder.mBitmapDisplayRect);
        if (this.mCurves != null) {
            for (Curve curve : this.mCurves) {
                curve.draw(canvas);
            }
        }
        if (this.mElementType.activated()) {
            this.mElementType.mBuilder.draw(canvas);
        }
        canvas.restore();
    }

    public void setBitmap(Bitmap bitmap) {
        super.setBitmap(bitmap);
        this.mMaskBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ALPHA_8);
        if (!this.mHasRawYuv) {
            writeRecordFile();
            this.mHasRawYuv = true;
        }
        invalidate();
    }

    public Bitmap getPreview() {
        return this.mDisplayBitmap;
    }

    public boolean setElementType(ElementType elementType) {
        if (this.mElementType.activated()) {
            return false;
        }
        this.mElementType = elementType;
        return true;
    }

    public boolean setStrokeSize(int size) {
        if (this.mElementType.activated()) {
            return false;
        }
        this.mCurvePaint.setStrokeWidth((float) size);
        return true;
    }

    public static void export(Bitmap mask, RemoverPaintData removerPaintData, List<Curve> curveList) {
        if (curveList != null && curveList.size() != 0) {
            removerPaintData.mExportBounds.set(0.0f, 0.0f, (float) mask.getWidth(), (float) mask.getHeight());
            removerPaintData.mExportMatrix.setRectToRect(removerPaintData.mBmpBounds, removerPaintData.mExportBounds, ScaleToFit.CENTER);
            mask.eraseColor(0);
            Canvas canvas = new Canvas(mask);
            removerPaintData.mDrawBitmapMatrix.invert(removerPaintData.mApplyDoodleMatrix);
            removerPaintData.mExportMatrix.preConcat(removerPaintData.mApplyDoodleMatrix);
            canvas.setMatrix(removerPaintData.mExportMatrix);
            for (Curve curve : curveList) {
                curve.draw(canvas);
            }
        }
    }

    public static void getMaskBounds(RectF output, int inWidth, int inHeight, RemoverPaintData removerPaintData, List<Curve> curveList) {
        RectF tmp = new RectF();
        for (Curve curve : curveList) {
            tmp.setEmpty();
            curve.computeBounds(tmp);
            if (!tmp.isEmpty()) {
                output.union(tmp);
            }
        }
        removerPaintData.mDrawBitmapMatrix.invert(removerPaintData.mApplyDoodleMatrix);
        removerPaintData.mExportBounds.set(0.0f, 0.0f, (float) inWidth, (float) inHeight);
        removerPaintData.mExportMatrix.setRectToRect(removerPaintData.mBmpBounds, removerPaintData.mExportBounds, ScaleToFit.CENTER);
        removerPaintData.mExportMatrix.preConcat(removerPaintData.mApplyDoodleMatrix);
        removerPaintData.mExportMatrix.mapRect(output);
        if (!output.intersect(0.0f, 0.0f, (float) inWidth, (float) inHeight)) {
            output.setEmpty();
        }
    }

    private void doRemove() {
        boolean needClearCurves = false;
        for (Curve curve : this.mCurves) {
            if (curve.isEmpty(this.mBitmapGestureParamsHolder.mBitmapDisplayRect)) {
                needClearCurves = true;
                break;
            }
        }
        if (needClearCurves) {
            this.mCurves.clear();
        } else {
            new RemoveTask(this).execute(new Void[0]);
        }
    }

    public void setRemoverCallback(RemoverCallback callback) {
        this.mRemoverCallback = callback;
    }

    public void writeRecordFile() {
        IOException e;
        Throwable th;
        this.mRenderRecordIndex = (this.mRenderRecordIndex + 1) % 10;
        RandomAccessFile memmapFile = null;
        try {
            RandomAccessFile memmapFile2 = new RandomAccessFile(getTmpRecordFile(this.mRenderRecordIndex), "rw");
            try {
                this.mDisplayBitmap.copyPixelsToBuffer(memmapFile2.getChannel().map(MapMode.READ_WRITE, 0, (long) this.mDisplayBitmap.getByteCount()));
                BaseMiscUtil.closeSilently(memmapFile2);
                memmapFile = memmapFile2;
            } catch (IOException e2) {
                e = e2;
                memmapFile = memmapFile2;
                try {
                    e.printStackTrace();
                    BaseMiscUtil.closeSilently(memmapFile);
                } catch (Throwable th2) {
                    th = th2;
                    BaseMiscUtil.closeSilently(memmapFile);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                memmapFile = memmapFile2;
                BaseMiscUtil.closeSilently(memmapFile);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            e.printStackTrace();
            BaseMiscUtil.closeSilently(memmapFile);
        }
    }

    public void renderPreviousBuffer() {
        this.mRenderRecordIndex = (this.mRenderRecordIndex - 1) % 10;
        if (this.mRenderRecordIndex < 0) {
            this.mRenderRecordIndex += 10;
        }
        readRecordBuffer();
        invalidate();
    }

    public void renderNextBuffer() {
        this.mRenderRecordIndex = (this.mRenderRecordIndex + 1) % 10;
        readRecordBuffer();
        invalidate();
    }

    private void readRecordBuffer() {
        IOException e;
        Throwable th;
        RandomAccessFile memmapFile = null;
        try {
            RandomAccessFile memmapFile2 = new RandomAccessFile(getTmpRecordFile(this.mRenderRecordIndex), "r");
            try {
                FileChannel fileChannel = memmapFile2.getChannel();
                this.mDisplayBitmap.copyPixelsFromBuffer(fileChannel.map(MapMode.READ_ONLY, 0, fileChannel.size()));
                BaseMiscUtil.closeSilently(memmapFile2);
                memmapFile = memmapFile2;
            } catch (IOException e2) {
                e = e2;
                memmapFile = memmapFile2;
                try {
                    e.printStackTrace();
                    BaseMiscUtil.closeSilently(memmapFile);
                } catch (Throwable th2) {
                    th = th2;
                    BaseMiscUtil.closeSilently(memmapFile);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                memmapFile = memmapFile2;
                BaseMiscUtil.closeSilently(memmapFile);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            e.printStackTrace();
            BaseMiscUtil.closeSilently(memmapFile);
        }
    }

    private File getTmpRecordFile(int index) {
        File file = new File(this.mContext.getCacheDir(), "remover-records");
        if (file.exists() || file.mkdir()) {
            return new File(file, "remover_record_temp_" + index);
        }
        return null;
    }

    public void setIsProcessing(boolean isProcessing) {
        this.mIsProcessing = isProcessing;
    }
}
