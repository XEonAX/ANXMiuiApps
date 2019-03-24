package android.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import com.miui.system.internal.R;

public class SortableListView extends MiuiListView {
    private static final int ANIMATION_DURATION = 200;
    private static final float SCROLL_BOUND = 0.25f;
    private static final int SCROLL_SPEED_MAX = 16;
    private static final int SNAPSHOT_ALPHA = 153;
    private static final String TAG = "SortableListView";
    private int mDraggingFrom;
    private int mDraggingItemHeight;
    private int mDraggingItemWidth;
    private int mDraggingTo;
    private int mDraggingY;
    private boolean mInterceptTouchForSorting;
    private int mItemUpperBound;
    private int mOffsetYInDraggingItem;
    private OnOrderChangedListener mOnOrderChangedListener;
    private OnTouchListener mOnTouchListener;
    private int mScrollBound;
    private int mScrollLowerBound;
    private int mScrollUpperBound;
    private BitmapDrawable mSnapshot;
    private Drawable mSnapshotBackgroundForOverUpperBound;
    private Drawable mSnapshotShadow;
    private int mSnapshotShadowPaddingBottom;
    private int mSnapshotShadowPaddingTop;
    private int[] mTmpLocation;

    public interface OnOrderChangedListener {
        void OnOrderChanged(int i, int i2);
    }

    public SortableListView(Context context) {
        this(context, null);
    }

    public SortableListView(Context context, AttributeSet attrs) {
        this(context, attrs, 16842868);
    }

    public SortableListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDraggingFrom = -1;
        this.mDraggingTo = -1;
        this.mItemUpperBound = -1;
        this.mTmpLocation = new int[2];
        this.mSnapshotShadow = context.getResources().getDrawable(R.drawable.sortable_list_dragging_item_shadow);
        this.mSnapshotShadow.setAlpha(SNAPSHOT_ALPHA);
        Rect padding = new Rect();
        this.mSnapshotShadow.getPadding(padding);
        this.mSnapshotShadowPaddingTop = padding.top;
        this.mSnapshotShadowPaddingBottom = padding.bottom;
        this.mOnTouchListener = new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                if (SortableListView.this.mOnOrderChangedListener != null && (event.getAction() & 255) == 0) {
                    int position = SortableListView.this.getHittenItemPosition(event);
                    if (position >= 0) {
                        SortableListView.this.mDraggingFrom = position;
                        SortableListView.this.mDraggingTo = position;
                        SortableListView.this.mInterceptTouchForSorting = true;
                        View view = SortableListView.this.getChildAt(position - SortableListView.this.getFirstVisiblePosition());
                        SortableListView.this.mDraggingItemWidth = view.getWidth();
                        SortableListView.this.mDraggingItemHeight = view.getHeight();
                        SortableListView.this.getLocationOnScreen(SortableListView.this.mTmpLocation);
                        SortableListView.this.mDraggingY = ((int) event.getRawY()) - SortableListView.this.mTmpLocation[1];
                        SortableListView.this.mOffsetYInDraggingItem = SortableListView.this.mDraggingY - view.getTop();
                        Bitmap snapshot = Bitmap.createBitmap(SortableListView.this.mDraggingItemWidth, SortableListView.this.mDraggingItemHeight, Config.ARGB_8888);
                        view.draw(new Canvas(snapshot));
                        SortableListView.this.mSnapshot = new BitmapDrawable(SortableListView.this.getResources(), snapshot);
                        SortableListView.this.mSnapshot.setAlpha(SortableListView.SNAPSHOT_ALPHA);
                        SortableListView.this.mSnapshot.setBounds(view.getLeft(), 0, view.getRight(), SortableListView.this.mDraggingItemHeight);
                        if (SortableListView.this.mSnapshotBackgroundForOverUpperBound != null) {
                            SortableListView.this.mSnapshotBackgroundForOverUpperBound.setAlpha(SortableListView.SNAPSHOT_ALPHA);
                            SortableListView.this.mSnapshotBackgroundForOverUpperBound.setBounds(view.getLeft(), 0, view.getRight(), SortableListView.this.mDraggingItemHeight);
                        }
                        SortableListView.this.mSnapshotShadow.setBounds(view.getLeft(), -SortableListView.this.mSnapshotShadowPaddingTop, view.getRight(), SortableListView.this.mDraggingItemHeight + SortableListView.this.mSnapshotShadowPaddingBottom);
                        view.startAnimation(SortableListView.this.createAnimation(SortableListView.this.mDraggingItemWidth, SortableListView.this.mDraggingItemWidth, 0, 0));
                    }
                }
                return SortableListView.this.mInterceptTouchForSorting;
            }
        };
    }

    private Animation createAnimation(int fromX, int toX, int fromY, int toY) {
        Animation result = new TranslateAnimation((float) fromX, (float) toX, (float) fromY, (float) toY);
        result.setDuration(200);
        result.setFillAfter(true);
        return result;
    }

    public void setItemUpperBound(int upper, Drawable snapshotShadow) {
        this.mItemUpperBound = upper;
        this.mSnapshotBackgroundForOverUpperBound = snapshotShadow;
    }

    public void setOnOrderChangedListener(OnOrderChangedListener l) {
        this.mOnOrderChangedListener = l;
    }

    public OnTouchListener getListenerForStartingSort() {
        return this.mOnTouchListener;
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mScrollBound = Math.max(1, (int) (((float) h) * SCROLL_BOUND));
        this.mScrollUpperBound = this.mScrollBound;
        this.mScrollLowerBound = h - this.mScrollBound;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mDraggingFrom >= 0) {
            int offset = this.mDraggingY - this.mOffsetYInDraggingItem;
            int index = getHeaderViewsCount();
            if (index < getFirstVisiblePosition() || index > getLastVisiblePosition()) {
                index = getFirstVisiblePosition();
            }
            offset = Math.max(offset, getChildAt(index - getFirstVisiblePosition()).getTop());
            int index2 = (getCount() - 1) - getFooterViewsCount();
            if (index2 < getFirstVisiblePosition() || index2 > getLastVisiblePosition()) {
                index2 = getLastVisiblePosition();
            }
            offset = Math.min(offset, getChildAt(index2 - getFirstVisiblePosition()).getBottom() - this.mDraggingItemHeight);
            canvas.translate(0.0f, (float) offset);
            this.mSnapshotShadow.draw(canvas);
            this.mSnapshot.draw(canvas);
            if (this.mSnapshotBackgroundForOverUpperBound != null && this.mDraggingTo < this.mItemUpperBound) {
                this.mSnapshotBackgroundForOverUpperBound.draw(canvas);
            }
            canvas.translate(0.0f, (float) (-offset));
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (!this.mInterceptTouchForSorting) {
            return super.onInterceptTouchEvent(ev);
        }
        requestDisallowInterceptTouchEvent(true);
        onTouchEvent(ev);
        return true;
    }

    public boolean onTouchEvent(MotionEvent ev) {
        if (!this.mInterceptTouchForSorting) {
            return super.onTouchEvent(ev);
        }
        int action = ev.getAction() & 255;
        if (action != 5) {
            switch (action) {
                case 1:
                case 3:
                    break;
                case 2:
                    action = (int) ev.getY();
                    if (this.mInterceptTouchForSorting || action != this.mDraggingY) {
                        int position = getHittenItemPosition(ev);
                        if (position < getHeaderViewsCount() || position > getCount() - getFooterViewsCount()) {
                            position = this.mDraggingTo;
                        }
                        updateDraggingToPisition(position);
                        this.mDraggingY = action;
                        invalidate();
                        int delta = 0;
                        if (action > this.mScrollLowerBound) {
                            delta = (16 * (this.mScrollLowerBound - action)) / this.mScrollBound;
                        } else if (action < this.mScrollUpperBound) {
                            delta = (16 * (this.mScrollUpperBound - action)) / this.mScrollBound;
                        }
                        if (delta != 0) {
                            View v = getChildAt(position - getFirstVisiblePosition());
                            if (v != null) {
                                setSelectionFromTop(position, v.getTop() + delta);
                                break;
                            }
                        }
                    }
                    break;
            }
        }
        if (this.mDraggingFrom >= 0) {
            if (this.mOnOrderChangedListener == null || this.mDraggingFrom == this.mDraggingTo || this.mDraggingTo < 0) {
                setViewAnimationByPisition(this.mDraggingFrom, null);
            } else {
                this.mOnOrderChangedListener.OnOrderChanged(this.mDraggingFrom - getHeaderViewsCount(), this.mDraggingTo - getHeaderViewsCount());
            }
        }
        this.mInterceptTouchForSorting = false;
        this.mDraggingFrom = -1;
        this.mDraggingTo = -1;
        invalidate();
        return true;
    }

    private int getHittenItemPosition(MotionEvent event) {
        float x = event.getRawX();
        float y = event.getRawY();
        int firstPosition = getFirstVisiblePosition();
        for (int i = getLastVisiblePosition(); i >= firstPosition; i--) {
            View view = getChildAt(i - firstPosition);
            if (view != null) {
                view.getLocationOnScreen(this.mTmpLocation);
                if (((float) this.mTmpLocation[0]) <= x && ((float) (this.mTmpLocation[0] + view.getWidth())) >= x && ((float) this.mTmpLocation[1]) <= y && ((float) (this.mTmpLocation[1] + view.getHeight())) >= y) {
                    return i;
                }
            }
        }
        return -1;
    }

    private void updateDraggingToPisition(int draggingTo) {
        if (draggingTo != this.mDraggingTo && draggingTo >= 0) {
            int i;
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("sort item from ");
            stringBuilder.append(this.mDraggingFrom);
            stringBuilder.append(" To ");
            stringBuilder.append(draggingTo);
            Log.d(str, stringBuilder.toString());
            if (this.mDraggingFrom < Math.max(this.mDraggingTo, draggingTo)) {
                while (this.mDraggingTo > draggingTo && this.mDraggingTo > this.mDraggingFrom) {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("item ");
                    stringBuilder.append(this.mDraggingTo);
                    stringBuilder.append(" set move down reverse animation");
                    Log.d(str, stringBuilder.toString());
                    i = this.mDraggingTo;
                    this.mDraggingTo = i - 1;
                    setViewAnimationByPisition(i, createAnimation(0, 0, -this.mDraggingItemHeight, 0));
                }
            }
            if (this.mDraggingFrom > Math.min(this.mDraggingTo, draggingTo)) {
                while (this.mDraggingTo < draggingTo && this.mDraggingTo < this.mDraggingFrom) {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("item ");
                    stringBuilder.append(this.mDraggingTo);
                    stringBuilder.append(" set move up reverse animation");
                    Log.d(str, stringBuilder.toString());
                    i = this.mDraggingTo;
                    this.mDraggingTo = i + 1;
                    setViewAnimationByPisition(i, createAnimation(0, 0, this.mDraggingItemHeight, 0));
                }
            }
            if (this.mDraggingFrom < Math.max(this.mDraggingTo, draggingTo)) {
                while (this.mDraggingTo < draggingTo) {
                    i = this.mDraggingTo + 1;
                    this.mDraggingTo = i;
                    setViewAnimationByPisition(i, createAnimation(0, 0, 0, -this.mDraggingItemHeight));
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("item ");
                    stringBuilder.append(this.mDraggingTo);
                    stringBuilder.append(" set move up animation");
                    Log.d(str, stringBuilder.toString());
                }
            }
            if (this.mDraggingFrom > Math.min(this.mDraggingTo, draggingTo)) {
                while (this.mDraggingTo > draggingTo) {
                    i = this.mDraggingTo - 1;
                    this.mDraggingTo = i;
                    setViewAnimationByPisition(i, createAnimation(0, 0, 0, this.mDraggingItemHeight));
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("item ");
                    stringBuilder.append(this.mDraggingTo);
                    stringBuilder.append(" set move down animation");
                    Log.d(str, stringBuilder.toString());
                }
            }
        }
    }

    private void setViewAnimationByPisition(int position, Animation animation) {
        setViewAnimation(getChildAt(position - getFirstVisiblePosition()), animation);
    }

    private void setViewAnimation(View view, Animation animation) {
        if (view != null) {
            if (animation != null) {
                view.startAnimation(animation);
            } else {
                view.clearAnimation();
            }
        }
    }

    protected View obtainView(int position, boolean[] isScrap) {
        View view = super.obtainView(position, isScrap);
        Animation animation = null;
        String str;
        StringBuilder stringBuilder;
        if (this.mDraggingFrom == position) {
            animation = createAnimation(this.mDraggingItemWidth, this.mDraggingItemWidth, 0, 0);
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("item ");
            stringBuilder.append(position);
            stringBuilder.append(" set move out animation");
            Log.d(str, stringBuilder.toString());
        } else if (this.mDraggingFrom < position && position <= this.mDraggingTo) {
            animation = createAnimation(0, 0, 0, -this.mDraggingItemHeight);
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("item ");
            stringBuilder.append(position);
            stringBuilder.append(" set move up animation");
            Log.d(str, stringBuilder.toString());
        } else if (this.mDraggingFrom > position && position >= this.mDraggingTo) {
            animation = createAnimation(0, 0, 0, this.mDraggingItemHeight);
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("item ");
            stringBuilder.append(position);
            stringBuilder.append(" set move down animation");
            Log.d(str, stringBuilder.toString());
        }
        setViewAnimation(view, animation);
        return view;
    }
}
