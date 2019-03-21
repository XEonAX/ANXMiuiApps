package com.miui.gallery.widget.recyclerview;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.SimpleOnItemTouchListener;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;

abstract class ClickItemTouchListener extends SimpleOnItemTouchListener {
    private final GestureDetectorHelper mGestureDetector;

    private interface GestureDetectorHelper {
        boolean onTouchEvent(MotionEvent motionEvent);
    }

    private class ItemClickGestureDetector implements GestureDetectorHelper {
        private GestureDetectorCompat mGestureDetectorCompat;
        private final ItemClickGestureListener mGestureListener;

        public ItemClickGestureDetector(Context context, ItemClickGestureListener listener) {
            this.mGestureDetectorCompat = new GestureDetectorCompat(context, listener);
            this.mGestureListener = listener;
        }

        public boolean onTouchEvent(MotionEvent event) {
            boolean handled = this.mGestureDetectorCompat.onTouchEvent(event);
            switch (event.getActionMasked()) {
                case 1:
                    this.mGestureListener.dispatchSingleTapUpIfNeeded(event);
                    break;
                case 3:
                    break;
            }
            this.mGestureListener.dispatchResetPressState(event);
            return handled;
        }
    }

    private class ItemClickGestureListener extends SimpleOnGestureListener {
        private final RecyclerView mHostView;
        private boolean mIsTapUpConsumed;
        private WeakReference<View> mPressedViewRef;

        public ItemClickGestureListener(RecyclerView hostView) {
            this.mHostView = hostView;
        }

        public void dispatchSingleTapUpIfNeeded(MotionEvent event) {
            if (!this.mIsTapUpConsumed) {
                onSingleTapUp(event);
            }
        }

        public void dispatchResetPressState(MotionEvent event) {
            resetPressState();
        }

        public boolean onDown(MotionEvent event) {
            this.mIsTapUpConsumed = false;
            if (this.mHostView.findChildViewUnder(event.getX(), event.getY()) != null) {
                return true;
            }
            return false;
        }

        public void onShowPress(MotionEvent event) {
            resetPressState();
            View pressedView = this.mHostView.findChildViewUnder(event.getX(), event.getY());
            if (pressedView != null) {
                pressedView.setPressed(true);
                this.mHostView.getChildViewHolder(pressedView).setIsRecyclable(false);
                this.mPressedViewRef = new WeakReference(pressedView);
            }
        }

        public boolean onSingleTapUp(MotionEvent event) {
            boolean handled = false;
            View tapView = this.mHostView.findChildViewUnder(event.getX(), event.getY());
            if (tapView != null) {
                int position = this.mHostView.getChildPosition(tapView);
                long id = this.mHostView.getAdapter().getItemId(position);
                float x = event.getX() - (((float) tapView.getLeft()) + tapView.getTranslationX());
                float y = event.getY() - (((float) tapView.getTop()) + tapView.getTranslationY());
                if (position != -1 && ClickItemTouchListener.this.performItemClick(this.mHostView, tapView, position, id, x, y)) {
                    handled = true;
                }
                if (handled) {
                    this.mIsTapUpConsumed = true;
                }
            }
            return handled;
        }

        public boolean onScroll(MotionEvent event, MotionEvent event2, float v, float v2) {
            if (!this.mIsTapUpConsumed) {
                this.mIsTapUpConsumed = true;
            }
            resetPressState();
            return false;
        }

        public void onLongPress(MotionEvent event) {
            if (ClickItemTouchListener.isAttachedToWindow(this.mHostView)) {
                View longPressedView = this.mHostView.findChildViewUnder(event.getX(), event.getY());
                if (longPressedView != null) {
                    int position = this.mHostView.getChildAdapterPosition(longPressedView);
                    boolean handled = position != -1 && ClickItemTouchListener.this.performItemLongClick(this.mHostView, longPressedView, position, this.mHostView.getAdapter().getItemId(position), event.getX() - (((float) longPressedView.getLeft()) + longPressedView.getTranslationX()), event.getY() - (((float) longPressedView.getTop()) + longPressedView.getTranslationY()));
                    if (handled) {
                        this.mIsTapUpConsumed = true;
                    }
                }
            }
        }

        private void resetPressState() {
            if (this.mPressedViewRef != null) {
                View pressedView = (View) this.mPressedViewRef.get();
                if (pressedView != null) {
                    pressedView.setPressed(false);
                    this.mHostView.getChildViewHolder(pressedView).setIsRecyclable(true);
                    this.mPressedViewRef.clear();
                }
                this.mPressedViewRef = null;
            }
        }
    }

    abstract boolean performItemClick(RecyclerView recyclerView, View view, int i, long j, float f, float f2);

    abstract boolean performItemLongClick(RecyclerView recyclerView, View view, int i, long j, float f, float f2);

    ClickItemTouchListener(RecyclerView hostView) {
        this.mGestureDetector = new ItemClickGestureDetector(hostView.getContext(), new ItemClickGestureListener(hostView));
    }

    static boolean isAttachedToWindow(RecyclerView hostView) {
        if (VERSION.SDK_INT >= 19) {
            return hostView.isAttachedToWindow();
        }
        return hostView.getHandler() != null;
    }

    private boolean hasAdapter(RecyclerView hostView) {
        return hostView.getAdapter() != null;
    }

    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent event) {
        if (isAttachedToWindow(recyclerView) && hasAdapter(recyclerView)) {
            this.mGestureDetector.onTouchEvent(event);
        }
        return false;
    }

    public void onTouchEvent(RecyclerView recyclerView, MotionEvent event) {
    }
}
