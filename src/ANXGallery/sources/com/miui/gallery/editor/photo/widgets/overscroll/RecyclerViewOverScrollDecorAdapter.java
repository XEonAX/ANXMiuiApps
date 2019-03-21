package com.miui.gallery.editor.photo.widgets.overscroll;

import android.graphics.Canvas;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.View;
import com.miui.gallery.editor.photo.widgets.overscroll.IOverScrollInterface.IOverScrollDecoratorAdapter;
import java.util.List;

public class RecyclerViewOverScrollDecorAdapter implements IOverScrollDecoratorAdapter {
    protected final Impl mImpl;
    protected boolean mIsItemTouchInEffect;
    protected final RecyclerView mRecyclerView;

    private static class ItemTouchHelperCallbackWrapper extends Callback {
        final Callback mCallback;

        /* synthetic */ ItemTouchHelperCallbackWrapper(Callback x0, AnonymousClass1 x1) {
            this(x0);
        }

        private ItemTouchHelperCallbackWrapper(Callback callback) {
            this.mCallback = callback;
        }

        public int getMovementFlags(RecyclerView recyclerView, ViewHolder viewHolder) {
            return this.mCallback.getMovementFlags(recyclerView, viewHolder);
        }

        public boolean onMove(RecyclerView recyclerView, ViewHolder viewHolder, ViewHolder target) {
            return this.mCallback.onMove(recyclerView, viewHolder, target);
        }

        public void onSwiped(ViewHolder viewHolder, int direction) {
            this.mCallback.onSwiped(viewHolder, direction);
        }

        public int convertToAbsoluteDirection(int flags, int layoutDirection) {
            return this.mCallback.convertToAbsoluteDirection(flags, layoutDirection);
        }

        public boolean canDropOver(RecyclerView recyclerView, ViewHolder current, ViewHolder target) {
            return this.mCallback.canDropOver(recyclerView, current, target);
        }

        public boolean isLongPressDragEnabled() {
            return this.mCallback.isLongPressDragEnabled();
        }

        public boolean isItemViewSwipeEnabled() {
            return this.mCallback.isItemViewSwipeEnabled();
        }

        public int getBoundingBoxMargin() {
            return this.mCallback.getBoundingBoxMargin();
        }

        public float getSwipeThreshold(ViewHolder viewHolder) {
            return this.mCallback.getSwipeThreshold(viewHolder);
        }

        public float getMoveThreshold(ViewHolder viewHolder) {
            return this.mCallback.getMoveThreshold(viewHolder);
        }

        public ViewHolder chooseDropTarget(ViewHolder selected, List<ViewHolder> dropTargets, int curX, int curY) {
            return this.mCallback.chooseDropTarget(selected, dropTargets, curX, curY);
        }

        public void onSelectedChanged(ViewHolder viewHolder, int actionState) {
            this.mCallback.onSelectedChanged(viewHolder, actionState);
        }

        public void onMoved(RecyclerView recyclerView, ViewHolder viewHolder, int fromPos, ViewHolder target, int toPos, int x, int y) {
            this.mCallback.onMoved(recyclerView, viewHolder, fromPos, target, toPos, x, y);
        }

        public void clearView(RecyclerView recyclerView, ViewHolder viewHolder) {
            this.mCallback.clearView(recyclerView, viewHolder);
        }

        public void onChildDraw(Canvas c, RecyclerView recyclerView, ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            this.mCallback.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
        }

        public void onChildDrawOver(Canvas c, RecyclerView recyclerView, ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            this.mCallback.onChildDrawOver(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
        }

        public long getAnimationDuration(RecyclerView recyclerView, int animationType, float animateDx, float animateDy) {
            return this.mCallback.getAnimationDuration(recyclerView, animationType, animateDx, animateDy);
        }

        public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int viewSize, int viewSizeOutOfBounds, int totalSize, long msSinceStartScroll) {
            return this.mCallback.interpolateOutOfBoundsScroll(recyclerView, viewSize, viewSizeOutOfBounds, totalSize, msSinceStartScroll);
        }
    }

    protected interface Impl {
        boolean isInAbsoluteEnd();

        boolean isInAbsoluteStart();
    }

    protected class ImplHorizLayout implements Impl {
        protected ImplHorizLayout() {
        }

        public boolean isInAbsoluteStart() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollHorizontally(-1);
        }

        public boolean isInAbsoluteEnd() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollHorizontally(1);
        }
    }

    protected class ImplVerticalLayout implements Impl {
        protected ImplVerticalLayout() {
        }

        public boolean isInAbsoluteStart() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollVertically(-1);
        }

        public boolean isInAbsoluteEnd() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollVertically(1);
        }
    }

    public RecyclerViewOverScrollDecorAdapter(RecyclerView recyclerView) {
        this.mIsItemTouchInEffect = false;
        this.mRecyclerView = recyclerView;
        LayoutManager layoutManager = recyclerView.getLayoutManager();
        if ((layoutManager instanceof LinearLayoutManager) || (layoutManager instanceof StaggeredGridLayoutManager)) {
            int orientation;
            if (layoutManager instanceof LinearLayoutManager) {
                orientation = ((LinearLayoutManager) layoutManager).getOrientation();
            } else {
                orientation = ((StaggeredGridLayoutManager) layoutManager).getOrientation();
            }
            if (orientation == 0) {
                this.mImpl = new ImplHorizLayout();
                return;
            } else {
                this.mImpl = new ImplVerticalLayout();
                return;
            }
        }
        throw new IllegalArgumentException("Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit 'impl' parameter to the other c'tors, or otherwise create a custom adapter subclass of your own.");
    }

    public RecyclerViewOverScrollDecorAdapter(RecyclerView recyclerView, Callback itemTouchHelperCallback) {
        this(recyclerView);
        setUpTouchHelperCallback(itemTouchHelperCallback);
    }

    protected void setUpTouchHelperCallback(Callback itemTouchHelperCallback) {
        new ItemTouchHelper(new ItemTouchHelperCallbackWrapper(itemTouchHelperCallback) {
            public void onSelectedChanged(ViewHolder viewHolder, int actionState) {
                RecyclerViewOverScrollDecorAdapter.this.mIsItemTouchInEffect = actionState != 0;
                super.onSelectedChanged(viewHolder, actionState);
            }
        }).attachToRecyclerView(this.mRecyclerView);
    }

    public View getView() {
        return this.mRecyclerView;
    }

    public boolean isInAbsoluteStart() {
        return !this.mIsItemTouchInEffect && this.mImpl.isInAbsoluteStart();
    }

    public boolean isInAbsoluteEnd() {
        return !this.mIsItemTouchInEffect && this.mImpl.isInAbsoluteEnd();
    }
}
