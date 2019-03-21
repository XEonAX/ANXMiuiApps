package com.miui.gallery.editor.photo.core.imports.doodle;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.editor.photo.app.OperationUpdateListener;
import com.miui.gallery.editor.photo.core.imports.doodle.PaintElementOperationDrawable.Action;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleNode.DoodleDrawableType;
import com.miui.gallery.editor.photo.utils.Bitmaps;
import com.miui.gallery.editor.photo.widgets.imageview.BitmapGestureView;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class DoodleEditorView extends BitmapGestureView {
    private int mActivationIndex = -1;
    private int mColor = -16777216;
    private DoodleItem mCurrentDoodleItem = DoodleItem.PATH;
    private DoodleCallback mDoodleCallback;
    private ArrayList<DoodleNode> mDoodleNodeList = new ArrayList();
    private GesListener mGesListener = new GesListener();
    private boolean mIsAddNew = false;
    private Matrix mMatrix = new Matrix();
    private float[] mMatrixValues = new float[9];
    private PaintElementOperationDrawable mOperationDrawable;
    private OperationUpdateListener mOperationUpdateListener;
    private float mPaintSize = 20.0f;
    private RectF mRectFTemp = new RectF();
    private LinkedList<DoodleNode> mRevokedDoodleNodeList = new LinkedList();

    public interface DoodleCallback {
        void onDoodleGenerate(String str);
    }

    public static class DoodleEntry implements Parcelable {
        public static final Creator<DoodleEntry> CREATOR = new Creator<DoodleEntry>() {
            public DoodleEntry createFromParcel(Parcel source) {
                return new DoodleEntry(source);
            }

            public DoodleEntry[] newArray(int size) {
                return new DoodleEntry[size];
            }
        };
        private List<DoodleNode> mDoodleNodeList;
        private RectF mRectF = new RectF();

        DoodleEntry(RectF rectF, List<DoodleNode> doodleNodes) {
            this.mRectF.set(rectF);
            this.mDoodleNodeList = new ArrayList(doodleNodes);
        }

        protected Bitmap apply(Bitmap bitmap) {
            Bitmap out;
            if (bitmap.isMutable()) {
                out = bitmap;
            } else {
                out = Bitmaps.copyBitmap(bitmap);
            }
            if (out == null) {
                return null;
            }
            RectF rect = new RectF(0.0f, 0.0f, (float) out.getWidth(), (float) out.getHeight());
            Matrix matrix = new Matrix();
            matrix.setRectToRect(this.mRectF, rect, ScaleToFit.FILL);
            Canvas canvas = new Canvas(out);
            canvas.concat(matrix);
            for (DoodleNode doodleNode : this.mDoodleNodeList) {
                doodleNode.initForParcelable(GalleryApp.sGetAndroidContext());
                doodleNode.draw(canvas);
            }
            return out;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.mRectF, flags);
            dest.writeInt(this.mDoodleNodeList.size());
            for (DoodleNode doodleNode : this.mDoodleNodeList) {
                dest.writeString(doodleNode.getClass().getName());
                dest.writeParcelable(doodleNode, flags);
            }
        }

        protected DoodleEntry(Parcel in) {
            this.mRectF = (RectF) in.readParcelable(RectF.class.getClassLoader());
            int size = in.readInt();
            this.mDoodleNodeList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                try {
                    this.mDoodleNodeList.add((DoodleNode) in.readParcelable(Class.forName(in.readString()).getClassLoader()));
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private class GesListener implements FeatureGesListener {
        private DoodleNode mActivationNode;
        private DoodleNode mCurrentNode;
        private int mDownIndex;
        private DoodleNode mDownNode;
        private float mDownX;
        private float mDownY;
        private float[] mPointTemp1;
        private float[] mPointTemp2;
        private float[] mPointTemp3;
        private boolean mScaleMode;
        private float mScrollX;
        private float mScrollY;
        private TouchAction mTouchAction;

        private GesListener() {
            this.mTouchAction = TouchAction.NONE;
            this.mDownIndex = -1;
            this.mScaleMode = false;
            this.mPointTemp1 = new float[2];
            this.mPointTemp2 = new float[2];
            this.mPointTemp3 = new float[2];
        }

        public boolean onDown(MotionEvent e) {
            Log.d("DoodleEditorView", "onDown");
            DoodleEditorView.this.convertPointToViewPortCoordinate(e, this.mPointTemp1);
            this.mDownX = this.mPointTemp1[0];
            this.mDownY = this.mPointTemp1[1];
            this.mScrollX = this.mDownX;
            this.mScrollY = this.mDownY;
            this.mTouchAction = TouchAction.NONE;
            this.mCurrentNode = null;
            this.mDownNode = null;
            this.mActivationNode = null;
            DoodleEditorView.this.mIsAddNew = false;
            this.mScaleMode = false;
            if (DoodleEditorView.this.mActivationIndex != -1) {
                this.mActivationNode = (DoodleNode) DoodleEditorView.this.mDoodleNodeList.get(DoodleEditorView.this.mActivationIndex);
            }
            this.mDownIndex = findItemByEvent(this.mDownX, this.mDownY);
            if (this.mDownIndex != -1) {
                this.mDownNode = (DoodleNode) DoodleEditorView.this.mDoodleNodeList.get(this.mDownIndex);
            }
            if (this.mActivationNode != null) {
                this.mTouchAction = findTouchActionWithAction(e.getX(), e.getY());
                this.mActivationNode.processOnDownEvent(this.mDownX, this.mDownY);
            } else {
                this.mTouchAction = TouchAction.NONE;
            }
            Log.d("DoodleEditorView", "mTouchAction %s", this.mTouchAction);
            return true;
        }

        public void onSingleTapUp(MotionEvent e) {
            if (this.mTouchAction != TouchAction.NONE) {
                switch (this.mTouchAction) {
                    case DELETE:
                        DoodleEditorView.this.deleteItem(this.mActivationNode);
                        return;
                    default:
                        return;
                }
            } else if (this.mDownIndex == -1) {
                DoodleEditorView.this.clearActivation();
            } else if (this.mDownIndex != DoodleEditorView.this.mActivationIndex) {
                DoodleEditorView.this.setActivation(this.mDownIndex);
            }
        }

        public void onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            float[] event1 = this.mPointTemp1;
            float[] event2 = this.mPointTemp2;
            distanceX = DoodleEditorView.this.convertDistanceX(distanceX);
            distanceY = DoodleEditorView.this.convertDistanceY(distanceY);
            this.mScrollX -= distanceX;
            this.mScrollY -= distanceY;
            switch (this.mTouchAction) {
                case NONE:
                    if (!this.mScaleMode) {
                        if (this.mActivationNode == null) {
                            if (e2.getPointerCount() == 1) {
                                generateDoodle(this.mScrollX, this.mScrollY);
                                break;
                            }
                        } else if (this.mDownNode == null || this.mDownNode != this.mActivationNode) {
                            if (e2.getPointerCount() == 1) {
                                generateDoodle(this.mScrollX, this.mScrollY);
                                break;
                            }
                        } else {
                            moveDoodle(distanceX, distanceY, this.mActivationNode);
                            break;
                        }
                    } else if (this.mActivationNode != null) {
                        moveDoodle(distanceX, distanceY, this.mActivationNode);
                        break;
                    }
                    break;
                case ROTATE:
                    DoodleEditorView.this.convertPointToViewPortCoordinate(e1, event1);
                    DoodleEditorView.this.convertPointToViewPortCoordinate(e2, event2);
                    DoodleEditorView.this.mOperationDrawable.getDecorationRect(Action.ROTATE, DoodleEditorView.this.mRectFTemp);
                    float[] rotateCenter = this.mPointTemp3;
                    rotateCenter[0] = DoodleEditorView.this.mRectFTemp.centerX();
                    rotateCenter[1] = DoodleEditorView.this.mRectFTemp.centerY();
                    DoodleEditorView.this.convertPointToViewPortCoordinate(rotateCenter);
                    this.mActivationNode.processRotateEvent(event1[0], event1[1], event2[0], event2[1], distanceX, distanceY, rotateCenter[0], rotateCenter[1]);
                    DoodleEditorView.this.mOperationDrawable.setDrawDecoration(false);
                    break;
                case SCALE:
                    DoodleEditorView.this.convertPointToViewPortCoordinate(e1, event1);
                    DoodleEditorView.this.convertPointToViewPortCoordinate(e2, event2);
                    DoodleEditorView.this.mOperationDrawable.getDecorationRect(Action.SCALE, DoodleEditorView.this.mRectFTemp);
                    float[] scaleCenter = this.mPointTemp3;
                    scaleCenter[0] = DoodleEditorView.this.mRectFTemp.centerX();
                    scaleCenter[1] = DoodleEditorView.this.mRectFTemp.centerY();
                    DoodleEditorView.this.convertPointToViewPortCoordinate(scaleCenter);
                    this.mActivationNode.processScaleEvent(event1[0], event1[1], event2[0], event2[1], distanceX, distanceY, scaleCenter[0], scaleCenter[1]);
                    DoodleEditorView.this.mOperationDrawable.setDrawDecoration(false);
                    break;
            }
            if (this.mActivationNode != null) {
                DoodleEditorView.this.configOperationPosition(this.mActivationNode);
            }
            DoodleEditorView.this.invalidate();
        }

        public void onActionUp(float x, float y) {
            if (DoodleEditorView.this.mIsAddNew) {
                DoodleNode doodleNode = (DoodleNode) DoodleEditorView.this.mDoodleNodeList.get(DoodleEditorView.this.mDoodleNodeList.size() - 1);
                doodleNode.countSize();
                if (doodleNode.getDoodleType() != DoodleDrawableType.PATH) {
                    DoodleEditorView.this.setActivation(DoodleEditorView.this.mDoodleNodeList.size() - 1);
                    DoodleEditorView.this.invalidate();
                }
                DoodleEditorView.this.mRevokedDoodleNodeList.clear();
                DoodleEditorView.this.notifyOperationUpdate();
            } else if (this.mActivationNode != null) {
                this.mActivationNode.processOnUp();
                DoodleEditorView.this.invalidate();
                DoodleEditorView.this.notifyOperationUpdate();
            }
            DoodleEditorView.this.mOperationDrawable.setDrawDecoration(true);
            DoodleEditorView.this.invalidate();
        }

        public boolean onScale(ScaleGestureDetector detector) {
            float scale = detector.getScaleFactor();
            Log.d("DoodleEditorView", "onScale : %f", Float.valueOf(scale));
            if (this.mActivationNode != null) {
                this.mActivationNode.appendScale(scale);
            }
            DoodleEditorView.this.invalidate();
            return false;
        }

        public boolean onScaleBegin(ScaleGestureDetector detector) {
            if (DoodleEditorView.this.mActivationIndex != -1) {
                this.mActivationNode = (DoodleNode) DoodleEditorView.this.mDoodleNodeList.get(DoodleEditorView.this.mActivationIndex);
                this.mScaleMode = true;
            }
            return false;
        }

        public void onScaleEnd(ScaleGestureDetector detector) {
        }

        private void generateDoodle(float x, float y) {
            if (this.mCurrentNode == null) {
                this.mCurrentNode = DoodleEditorView.this.mCurrentDoodleItem.getDoodleDrawable(DoodleEditorView.this.getContext().getResources());
                DoodleEditorView.this.addNewItem(this.mCurrentNode);
                DoodleEditorView.this.mIsAddNew = true;
                if (DoodleEditorView.this.mDoodleCallback != null) {
                    DoodleEditorView.this.mDoodleCallback.onDoodleGenerate(this.mCurrentNode.getDoodleName());
                }
            }
            this.mCurrentNode.receivePosition(x, y);
        }

        private void moveDoodle(float distanceX, float distanceY, DoodleNode doodleNode) {
            doodleNode.getStrokeRectF(DoodleEditorView.this.mRectFTemp);
            DoodleEditorView.this.mMatrix.reset();
            DoodleEditorView.this.mMatrix.postRotate(doodleNode.getRotateDegrees(), doodleNode.getRotateX(), doodleNode.getRotateY());
            DoodleEditorView.this.mMatrix.postTranslate(doodleNode.getUserLocationX(), doodleNode.getUserLocationY());
            DoodleEditorView.this.mMatrix.postConcat(DoodleEditorView.this.mBitmapGestureParamsHolder.mCanvasMatrix);
            DoodleEditorView.this.mMatrix.mapRect(DoodleEditorView.this.mRectFTemp);
            int flag = DoodleEditorView.this.getRectOverScrollStatus(DoodleEditorView.this.mRectFTemp);
            Log.d("DoodleEditorView", "scroll rect : %s", DoodleEditorView.this.mRectFTemp);
            if ((flag & 8) != 0) {
                if (distanceX > 0.0f) {
                    distanceX = 0.0f;
                }
            } else if ((flag & 4) != 0 && distanceX < 0.0f) {
                distanceX = 0.0f;
            }
            if ((flag & 2) != 0) {
                if (distanceY > 0.0f) {
                    distanceY = 0.0f;
                }
            } else if ((flag & 1) != 0 && distanceY < 0.0f) {
                distanceY = 0.0f;
            }
            doodleNode.appendUserLocationX(-distanceX);
            doodleNode.appendUserLocationY(-distanceY);
            DoodleEditorView.this.mOperationDrawable.setDrawDecoration(false);
        }

        private TouchAction findTouchActionWithAction(float x, float y) {
            DoodleEditorView.this.mOperationDrawable.getDecorationRect(Action.DELETE, DoodleEditorView.this.mRectFTemp);
            if (DoodleEditorView.this.mRectFTemp.contains(x, y)) {
                return TouchAction.DELETE;
            }
            DoodleEditorView.this.mOperationDrawable.getDecorationRect(Action.ROTATE, DoodleEditorView.this.mRectFTemp);
            if (DoodleEditorView.this.mRectFTemp.contains(x, y)) {
                return TouchAction.ROTATE;
            }
            DoodleEditorView.this.mOperationDrawable.getDecorationRect(Action.SCALE, DoodleEditorView.this.mRectFTemp);
            if (DoodleEditorView.this.mRectFTemp.contains(x, y)) {
                return TouchAction.SCALE;
            }
            return TouchAction.NONE;
        }

        private int findItemByEvent(float x, float y) {
            if (DoodleEditorView.this.mActivationIndex != -1 && ((DoodleNode) DoodleEditorView.this.mDoodleNodeList.get(DoodleEditorView.this.mActivationIndex)).contains(x, y)) {
                return DoodleEditorView.this.mActivationIndex;
            }
            for (int i = DoodleEditorView.this.mDoodleNodeList.size() - 1; i >= 0; i--) {
                if (((DoodleNode) DoodleEditorView.this.mDoodleNodeList.get(i)).contains(x, y)) {
                    return i;
                }
            }
            return -1;
        }
    }

    private enum TouchAction {
        NONE,
        DELETE,
        SCALE,
        ROTATE
    }

    public DoodleEditorView(Context context) {
        super(context);
        init();
    }

    private void init() {
        setBackground(null);
        setFeatureGestureListener(this.mGesListener);
        this.mOperationDrawable = new PaintElementOperationDrawable(getResources());
    }

    protected void drawChild(Canvas canvas) {
        canvas.save();
        canvas.concat(this.mBitmapGestureParamsHolder.mCanvasMatrix);
        canvas.clipRect(this.mBitmapGestureParamsHolder.mBitmapDisplayInitRect);
        for (int i = 0; i < this.mDoodleNodeList.size(); i++) {
            ((DoodleNode) this.mDoodleNodeList.get(i)).draw(canvas);
        }
        canvas.restore();
        canvas.save();
        canvas.clipRect(this.mBitmapGestureParamsHolder.mBitmapDisplayRect);
        if (this.mActivationIndex != -1) {
            this.mOperationDrawable.draw(canvas);
        }
        canvas.restore();
    }

    private void configOperationPosition(DoodleNode doodleNode) {
        float offsetX = doodleNode.getUserLocationX();
        float offsetY = doodleNode.getUserLocationY();
        doodleNode.getStrokeRectF(this.mRectFTemp);
        this.mRectFTemp.offset(offsetX, offsetY);
        this.mOperationDrawable.configDecorationPositon(this.mRectFTemp, this.mBitmapGestureParamsHolder.mCanvasMatrix, doodleNode.getRotateDegrees(), doodleNode.getRotateX() + offsetX, doodleNode.getRotateY() + offsetY);
    }

    protected void onCanvasMatrixChange() {
        if (this.mActivationIndex != -1) {
            configOperationPosition((DoodleNode) this.mDoodleNodeList.get(this.mActivationIndex));
        }
        invalidate();
    }

    public void setCurrentDoodleItem(DoodleItem currentDoodleItem) {
        this.mCurrentDoodleItem = currentDoodleItem;
    }

    public void clearActivation() {
        this.mActivationIndex = -1;
        invalidate();
        disableChildHandleMode();
    }

    private void setActivation(int index) {
        this.mActivationIndex = index;
        if (this.mActivationIndex != -1) {
            DoodleNode doodleNode = (DoodleNode) this.mDoodleNodeList.get(this.mActivationIndex);
            configOperationPosition(doodleNode);
            configOperationDecoration(doodleNode);
        }
        invalidate();
        enableChildHandleMode();
    }

    private void configOperationDecoration(DoodleNode doodleNode) {
        if (doodleNode.getDoodleType() != DoodleDrawableType.VECTOR) {
            this.mOperationDrawable.configActionPosition(Action.DELETE, Action.ROTATE, Action.SCALE, null, getResources());
        } else if (doodleNode.getDoodleName().equals(DoodleItem.ARROW.name())) {
            this.mOperationDrawable.configActionPosition(null, Action.DELETE, null, Action.SCALE, getResources());
        } else {
            this.mOperationDrawable.configActionPosition(Action.DELETE, null, Action.SCALE, null, getResources());
        }
    }

    private void addNewItem(DoodleNode doodleNode) {
        this.mBitmapGestureParamsHolder.mCanvasMatrix.getValues(this.mMatrixValues);
        doodleNode.setPaintSize(this.mPaintSize / this.mMatrixValues[0]);
        doodleNode.setPaintColor(this.mColor);
        this.mDoodleNodeList.add(doodleNode);
    }

    public boolean isEmpty() {
        return this.mDoodleNodeList.isEmpty();
    }

    private void deleteItem(DoodleNode doodleNode) {
        this.mActivationIndex = -1;
        this.mDoodleNodeList.remove(doodleNode);
        invalidate();
        disableChildHandleMode();
    }

    public boolean canRevoke() {
        return !this.mDoodleNodeList.isEmpty();
    }

    public boolean canRevert() {
        return !this.mRevokedDoodleNodeList.isEmpty();
    }

    public void doRevoke() {
        this.mActivationIndex = -1;
        this.mRevokedDoodleNodeList.add(this.mDoodleNodeList.remove(this.mDoodleNodeList.size() - 1));
        invalidate();
        notifyOperationUpdate();
        disableChildHandleMode();
    }

    public void doRevert() {
        this.mActivationIndex = -1;
        this.mDoodleNodeList.add(this.mRevokedDoodleNodeList.removeLast());
        invalidate();
        notifyOperationUpdate();
        disableChildHandleMode();
    }

    public DoodleEntry export() {
        clearActivation();
        return new DoodleEntry(this.mBitmapGestureParamsHolder.mBitmapDisplayInitRect, this.mDoodleNodeList);
    }

    public void setColor(int color) {
        this.mColor = color;
    }

    public void setDoodleCallback(DoodleCallback doodleCallback) {
        this.mDoodleCallback = doodleCallback;
    }

    public void setPaintSize(float paintSize) {
        this.mPaintSize = paintSize;
    }

    public void setOperationUpdateListener(OperationUpdateListener operationUpdateListener) {
        this.mOperationUpdateListener = operationUpdateListener;
    }

    private void notifyOperationUpdate() {
        if (this.mOperationUpdateListener != null) {
            this.mOperationUpdateListener.onOperationUpdate();
        }
    }
}
