package com.miui.gallery.widget.editwrapper;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.ArrayMap;
import android.util.LongSparseArray;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.adapter.HeaderFooterRecyclerAdapterWrapper;
import com.miui.gallery.ui.Checkable;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.ScalableImageView;
import com.miui.gallery.widget.editwrapper.PickAnimationHelper.BackgroundImageViewable;
import com.miui.gallery.widget.editwrapper.PickAnimationHelper.ShowNumberWhenPicking;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemLongClickListener;
import com.miui.gallery.widget.stickyheader.core.StickyHeaderAdapter;
import java.util.List;
import java.util.Stack;
import miui.gallery.support.MiuiSdkCompat;
import miui.view.EditActionMode;
import miui.view.animation.CubicEaseOutInterpolator;

public class EditableListViewWrapper {
    private SimpleWrapper mAdapterWrapper;
    private ArrayMap<Adapter, SimpleWrapper> mAdapterWrappers;
    private AnimationManager mAnimationManager = new AnimationManager();
    private OnItemClickListener mCheckItemListener = new OnItemClickListener() {
        public boolean onItemClick(RecyclerView parent, View view, int position, long id, float x, float y) {
            boolean checked = false;
            if (!(view instanceof Checkable)) {
                return false;
            }
            if (!EditableListViewWrapper.this.mCheckState.getCheckState(position)) {
                checked = true;
            }
            EditableListViewWrapper.this.mCheckState.setCheckState(position, checked);
            ((Checkable) view).setChecked(checked);
            EditableListViewWrapper.this.updateActionMode();
            EditableListViewWrapper.this.mMultiChoiceModeCallback.mWrapped.onItemCheckedStateChanged(EditableListViewWrapper.this.mChoiceActionMode, position, id, checked);
            if (view instanceof BackgroundImageViewable) {
                EditableListViewWrapper.this.mAnimationManager.startScaleItemImageViewAnimation(((BackgroundImageViewable) view).getBackgroundImageView(), position);
            }
            if (checked && (view instanceof ShowNumberWhenPicking)) {
                EditableListViewWrapper.this.mAnimationManager.startPickingNumberAnimation((ShowNumberWhenPicking) view);
            }
            return true;
        }
    };
    private CheckStateWithGroup mCheckState;
    private ActionMode mChoiceActionMode;
    private EditActionMode mEditActionMode;
    private OnItemLongClickListener mEnterActionModeListener = new OnItemLongClickListener() {
        public boolean onItemLongClick(RecyclerView parent, View view, int position, long id) {
            if (EditableListViewWrapper.this.isListHeaderOrFooter(position)) {
                return false;
            }
            EditableListViewWrapper.this.startActionMode();
            EditableListViewWrapper.this.mAnimationManager.setLongTouchPosition(position);
            return true;
        }
    };
    private boolean mIsInActionMode;
    private boolean mIsInChoiceMode;
    private OnItemClickListener mItemClickDelegate;
    private int mListScrollState = 0;
    private MultiChoiceModeCallback mMultiChoiceModeCallback;
    private GalleryRecyclerView mRecyclerView;
    private AdapterDataObserver mRestoreCheckStateObserver = new AdapterDataObserver() {
        public void onChanged() {
            super.onChanged();
            EditableListViewWrapper.this.handleDataChanged();
        }

        public void onItemRangeChanged(int positionStart, int itemCount) {
            super.onItemRangeChanged(positionStart, itemCount);
            EditableListViewWrapper.this.handleDataChanged();
        }

        public void onItemRangeChanged(int positionStart, int itemCount, Object payload) {
            super.onItemRangeChanged(positionStart, itemCount, payload);
            EditableListViewWrapper.this.handleDataChanged();
        }

        public void onItemRangeInserted(int positionStart, int itemCount) {
            super.onItemRangeInserted(positionStart, itemCount);
            EditableListViewWrapper.this.handleDataChanged();
        }

        public void onItemRangeRemoved(int positionStart, int itemCount) {
            super.onItemRangeRemoved(positionStart, itemCount);
            EditableListViewWrapper.this.handleDataChanged();
        }

        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            super.onItemRangeMoved(fromPosition, toPosition, itemCount);
            EditableListViewWrapper.this.handleDataChanged();
        }
    };
    private OnScrollListener mScrollDelegate = new OnScrollListener() {
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            EditableListViewWrapper.this.mListScrollState = newState;
            if (EditableListViewWrapper.this.mScrollListener != null) {
                EditableListViewWrapper.this.mScrollListener.onScrollStateChanged(recyclerView, newState);
            }
        }

        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            if (EditableListViewWrapper.this.mScrollListener != null) {
                EditableListViewWrapper.this.mScrollListener.onScrolled(recyclerView, dx, dy);
            }
        }
    };
    private OnScrollListener mScrollListener;

    class AnimationManager implements OnTouchListener {
        private boolean isTurnOnScaleImageViewAni = true;
        private ScaleType mOriginalScaleType = null;
        private Scroll2PickHelper mScroll2PickHelper = new Scroll2PickHelper();

        private class MyScaleItemImageViewAnimatorListener implements AnimatorUpdateListener {
            private ImageView mImage;
            public Matrix mPrimaryMatrix;

            public MyScaleItemImageViewAnimatorListener(ImageView image) {
                this.mPrimaryMatrix = new Matrix(image.getImageMatrix());
                this.mImage = image;
            }

            public void onAnimationUpdate(ValueAnimator animation) {
                AnimationManager.this.setImageViewScale(this.mImage, ((Float) animation.getAnimatedValue()).floatValue());
            }
        }

        class Scroll2PickHelper implements OnTouchListener {
            private boolean mHasEverPickLongTouchPosition;
            private int mLastPosition;
            private float mLastX;
            private float mLastY;
            private int mLongTouchPosition = -1;
            private Stack<Integer> mMathStack = new Stack();
            private int mMotionPosition;
            private float mMotionX;
            private boolean mScollXMode2PickEnable;
            private boolean mScollYMode2PickEnable;
            private boolean mScollYMode2PickEnableAfterLeft;
            private boolean mScollYMode2PickEnableAfterRight;

            Scroll2PickHelper() {
            }

            private boolean interceptEvent() {
                return this.mScollXMode2PickEnable || this.mScollYMode2PickEnable;
            }

            public boolean onTouch(View v, MotionEvent ev) {
                switch (ev.getActionMasked()) {
                    case 0:
                        this.mScollXMode2PickEnable = false;
                        this.mMotionX = ev.getX();
                        this.mLastX = ev.getX();
                        this.mLastY = ev.getY();
                        this.mLastPosition = 0;
                        this.mScollYMode2PickEnable = false;
                        this.mScollYMode2PickEnableAfterLeft = false;
                        this.mScollYMode2PickEnableAfterRight = false;
                        if (this.mMathStack.isEmpty()) {
                            return false;
                        }
                        this.mMathStack.clear();
                        return false;
                    case 1:
                    case 3:
                        if (!EditableListViewWrapper.this.isInChoiceMode()) {
                            return false;
                        }
                        this.mMathStack.clear();
                        if (!(this.mHasEverPickLongTouchPosition || this.mLongTouchPosition == -1)) {
                            this.mHasEverPickLongTouchPosition = true;
                            ViewHolder holder = EditableListViewWrapper.this.mRecyclerView.findViewHolderForAdapterPositionForExternal(this.mLongTouchPosition);
                            if (holder != null) {
                                View view = holder.itemView;
                                if (view instanceof BackgroundImageViewable) {
                                    AnimationManager.this.startScaleItemImageViewAnimation(((BackgroundImageViewable) view).getBackgroundImageView(), this.mLongTouchPosition, true, 0, 200);
                                    EditableListViewWrapper.this.mCheckState.setCheckState(this.mLongTouchPosition, true);
                                    ((Checkable) view).setChecked(true);
                                    EditableListViewWrapper.this.updateActionMode();
                                    EditableListViewWrapper.this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(EditableListViewWrapper.this.mChoiceActionMode, true);
                                }
                            }
                        }
                        return interceptEvent();
                    case 2:
                        if (!EditableListViewWrapper.this.isInChoiceMode()) {
                            return false;
                        }
                        boolean interceptBefore = interceptEvent();
                        boolean interceptAfter = onTouchMove(ev);
                        if (!(EditableListViewWrapper.this.mListScrollState == 0 || interceptBefore || !interceptAfter)) {
                            EditableListViewWrapper.this.mRecyclerView.setOnTouchListener(null);
                            EditableListViewWrapper.this.mRecyclerView.requestDisallowInterceptTouchEvent(true);
                            MotionEvent fakeEvent = MotionEvent.obtain(ev);
                            fakeEvent.setAction(1);
                            EditableListViewWrapper.this.mRecyclerView.dispatchTouchEvent(fakeEvent);
                            EditableListViewWrapper.this.mRecyclerView.requestDisallowInterceptTouchEvent(false);
                            EditableListViewWrapper.this.mRecyclerView.setOnTouchListener(EditableListViewWrapper.this.mAnimationManager);
                        }
                        return interceptAfter;
                    default:
                        return false;
                }
            }

            private void setLongPressPosition(int positionExcludeHeader) {
                this.mLongTouchPosition = positionExcludeHeader;
                this.mHasEverPickLongTouchPosition = false;
            }

            private boolean onTouchMove(MotionEvent ev) {
                float x = ev.getX();
                float y = ev.getY();
                View view;
                int position;
                if (Math.abs(x - this.mLastX) >= Math.abs(y - this.mLastY) && Math.abs(x - this.mLastX) > 10.0f) {
                    view = EditableListViewWrapper.this.mRecyclerView.findChildViewUnderForExternal(x, y);
                    if (view != null) {
                        position = EditableListViewWrapper.this.mRecyclerView.getChildAdapterPositionForExternal(view);
                        if (!(position == -1 || position == this.mLastPosition)) {
                            boolean z;
                            if (EditableListViewWrapper.this.mCheckState.getCheckState(position)) {
                                z = false;
                            } else {
                                z = true;
                            }
                            if (pickOrNotByPosition(position, z)) {
                                EditableListViewWrapper.this.updateActionMode();
                                EditableListViewWrapper.this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(EditableListViewWrapper.this.mChoiceActionMode, true);
                                this.mScollXMode2PickEnable = true;
                                if (position == this.mLongTouchPosition) {
                                    this.mHasEverPickLongTouchPosition = true;
                                }
                            }
                            this.mLastPosition = position;
                        }
                        ifScrollYModeEnable(x, y);
                    }
                } else if (this.mScollYMode2PickEnable && Math.abs(y - this.mLastY) > 10.0f && Math.abs(x - this.mLastX) < Math.abs(y - this.mLastY)) {
                    view = EditableListViewWrapper.this.mRecyclerView.findChildViewUnderForExternal(x, y);
                    if (view != null) {
                        position = EditableListViewWrapper.this.mRecyclerView.getChildAdapterPositionForExternal(view);
                        if (!(position == -1 || position == this.mLastPosition)) {
                            pickOrNotByPosition(position, true);
                            this.mLastPosition = position;
                            int temp;
                            if (position < this.mMotionPosition) {
                                if (this.mMathStack.isEmpty() || position < ((Integer) this.mMathStack.peek()).intValue()) {
                                    temp = this.mMotionPosition - 1;
                                    while (temp >= position) {
                                        if (this.mMathStack.isEmpty() || temp < ((Integer) this.mMathStack.peek()).intValue()) {
                                            this.mMathStack.push(Integer.valueOf(temp));
                                        }
                                        temp--;
                                    }
                                } else {
                                    while (((Integer) this.mMathStack.peek()).intValue() < position && !this.mMathStack.isEmpty()) {
                                        pickOrNotByPosition(((Integer) this.mMathStack.pop()).intValue(), false);
                                    }
                                }
                                for (temp = this.mMotionPosition; temp >= position; temp--) {
                                    pickOrNotByPosition(temp, true);
                                }
                            } else {
                                if (this.mMathStack.isEmpty() || position > ((Integer) this.mMathStack.peek()).intValue()) {
                                    temp = this.mMotionPosition + 1;
                                    while (temp <= position) {
                                        if (this.mMathStack.isEmpty() || temp > ((Integer) this.mMathStack.peek()).intValue()) {
                                            this.mMathStack.push(Integer.valueOf(temp));
                                        }
                                        temp++;
                                    }
                                } else {
                                    while (!this.mMathStack.isEmpty() && ((Integer) this.mMathStack.peek()).intValue() > position) {
                                        pickOrNotByPosition(((Integer) this.mMathStack.pop()).intValue(), false);
                                    }
                                }
                                for (temp = this.mMotionPosition; temp <= position; temp++) {
                                    pickOrNotByPosition(temp, true);
                                }
                            }
                            EditableListViewWrapper.this.updateActionMode();
                            EditableListViewWrapper.this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(EditableListViewWrapper.this.mChoiceActionMode, true);
                        }
                    }
                }
                this.mLastX = x;
                this.mLastY = y;
                return interceptEvent();
            }

            private void ifScrollYModeEnable(float x, float y) {
                boolean z = true;
                if (!this.mScollYMode2PickEnable) {
                    if (x - this.mMotionX > 10.0f && !this.mScollYMode2PickEnableAfterRight) {
                        this.mScollYMode2PickEnableAfterRight = true;
                    } else if (x - this.mMotionX < -10.0f && !this.mScollYMode2PickEnableAfterLeft) {
                        this.mScollYMode2PickEnableAfterLeft = true;
                    }
                    if (!(this.mScollYMode2PickEnableAfterRight || this.mScollYMode2PickEnableAfterLeft)) {
                        z = false;
                    }
                    this.mScollYMode2PickEnable = z;
                    if (this.mScollYMode2PickEnable) {
                        View view = EditableListViewWrapper.this.mRecyclerView.findChildViewUnderForExternal(x, y);
                        if (view != null) {
                            this.mMotionPosition = EditableListViewWrapper.this.mRecyclerView.getChildAdapterPositionForExternal(view);
                            this.mMathStack.push(Integer.valueOf(this.mMotionPosition));
                        }
                    }
                }
            }

            private boolean pickOrNotByPosition(int position, boolean checked) {
                ViewHolder holder = EditableListViewWrapper.this.mRecyclerView.findViewHolderForAdapterPositionForExternal(position);
                if (holder != null) {
                    View view = holder.itemView;
                    if (view instanceof BackgroundImageViewable) {
                        AnimationManager.this.startScaleItemImageViewAnimationByScrollPicked(((BackgroundImageViewable) view).getBackgroundImageView(), position, checked);
                        EditableListViewWrapper.this.mCheckState.setCheckState(position, checked);
                        ((Checkable) view).setChecked(checked);
                        return true;
                    }
                }
                return false;
            }
        }

        AnimationManager() {
        }

        public void setLongTouchPosition(int position) {
            this.mScroll2PickHelper.setLongPressPosition(position);
        }

        private void finishImageViewScaleAnimatorIfNecessary(ImageView image) {
            ValueAnimator oldAnimator = (ValueAnimator) image.getTag(R.id.tag_animator);
            if (oldAnimator != null && oldAnimator.isRunning()) {
                oldAnimator.end();
            }
            if (oldAnimator != null) {
                float curScale = getImageViewScale(image);
                float targetScale = ((Float) image.getTag(R.id.tag_target_scale)).floatValue();
                if (Math.abs(curScale - targetScale) > Float.MIN_NORMAL) {
                    setImageViewScale(image, targetScale);
                }
            }
        }

        private void startScaleItemImageViewAnimationInternal(ImageView image, boolean enlarge, int position, int delay, int duration) {
            if (this.isTurnOnScaleImageViewAni) {
                finishImageViewScaleAnimatorIfNecessary(image);
                Drawable drawable = image.getDrawable();
                if (drawable != null && drawable.getIntrinsicWidth() > 0) {
                    ValueAnimator animator;
                    if (enlarge) {
                        animator = ValueAnimator.ofFloat(new float[]{1.0f, 1.2f});
                        animator.addUpdateListener(new MyScaleItemImageViewAnimatorListener(image));
                        animator.setInterpolator(new CubicEaseOutInterpolator());
                        image.setTag(R.id.tag_matrix, image.getImageMatrix());
                        if (this.mOriginalScaleType == null) {
                            this.mOriginalScaleType = image.getScaleType();
                        }
                        image.setTag(R.id.tag_target_scale, Float.valueOf(1.2f));
                    } else {
                        animator = ValueAnimator.ofFloat(new float[]{1.2f, 1.0f});
                        animator.addUpdateListener(new MyScaleItemImageViewAnimatorListener(image));
                        animator.setInterpolator(new CubicEaseOutInterpolator());
                        image.setTag(R.id.tag_matrix, null);
                        image.setTag(R.id.tag_target_scale, Float.valueOf(1.0f));
                    }
                    animator.setDuration((long) duration);
                    animator.setStartDelay((long) delay);
                    image.setScaleType(ScaleType.MATRIX);
                    image.setTag(R.id.tag_animator, animator);
                    animator.start();
                }
            }
        }

        public void startScaleItemImageViewAnimation(ImageView imageView, int position) {
            if (imageView.getTag(R.id.tag_matrix) == null) {
                startScaleItemImageViewAnimationInternal(imageView, true, position, 100, 300);
            } else {
                startScaleItemImageViewAnimationInternal(imageView, false, position, 100, 300);
            }
        }

        public void startScaleItemImageViewAnimationByScrollPicked(ImageView imageView, int position, boolean checked) {
            startScaleItemImageViewAnimation(imageView, position, checked, 100);
        }

        public void startScaleItemImageViewAnimation(ImageView imageView, int position, boolean checked, int delay) {
            startScaleItemImageViewAnimation(imageView, position, checked, delay, 300);
        }

        public void startScaleItemImageViewAnimation(ImageView imageView, int position, boolean checked, int delay, int duration) {
            if (imageView.getTag(R.id.tag_matrix) == null && checked) {
                startScaleItemImageViewAnimationInternal(imageView, true, position, delay, duration);
            }
            if (imageView.getTag(R.id.tag_matrix) != null && !checked) {
                startScaleItemImageViewAnimationInternal(imageView, false, position, delay, duration);
            }
        }

        public void startScaleAllItemImageViewAnimation(GalleryRecyclerView listView, boolean checked) {
            int childCount = listView.getChildCount();
            if (childCount > 0) {
                int i = 0;
                int j = 0;
                while (i < childCount) {
                    int j2;
                    View view = listView.getChildAt(i);
                    if (view instanceof BackgroundImageViewable) {
                        j2 = j + 1;
                        startScaleItemImageViewAnimation(((BackgroundImageViewable) view).getBackgroundImageView(), listView.getChildAdapterPositionForExternal(view), checked, j * 40);
                    } else {
                        j2 = j;
                    }
                    i++;
                    j = j2;
                }
            }
        }

        public void startEnterActionModeAni() {
            startScaleListViewAnimation(EditableListViewWrapper.this.mRecyclerView, false);
        }

        public void startExistActionModeAni() {
            startScaleListViewAnimation(EditableListViewWrapper.this.mRecyclerView, true);
        }

        private void startScaleListViewAnimation(GalleryRecyclerView listView, boolean enlarge) {
            float beginScale;
            float endScale;
            if (enlarge) {
                beginScale = 0.92f;
                endScale = 1.0f;
            } else {
                beginScale = 1.0f;
                endScale = 0.92f;
            }
            for (int i = 0; i < listView.getChildCount(); i++) {
                View view = listView.getChildAt(i);
                if (view instanceof Checkable) {
                    PropertyValuesHolder pvhY = PropertyValuesHolder.ofFloat("scaleX", new float[]{beginScale, endScale});
                    PropertyValuesHolder pvhZ = PropertyValuesHolder.ofFloat("scaleY", new float[]{beginScale, endScale});
                    ObjectAnimator animator = ObjectAnimator.ofPropertyValuesHolder(view, new PropertyValuesHolder[]{pvhY, pvhZ}).setDuration(300);
                    animator.setInterpolator(new CubicEaseOutInterpolator());
                    animator.start();
                    view.setTag(R.id.tag_scale_factor, Float.valueOf(endScale));
                    if (enlarge && (view instanceof BackgroundImageViewable)) {
                        ImageView imageView = ((BackgroundImageViewable) view).getBackgroundImageView();
                        if (imageView.getTag(R.id.tag_matrix) != null) {
                            startScaleItemImageViewAnimationInternal(imageView, false, listView.getChildAdapterPositionForExternal(view), 0, 300);
                        }
                    }
                }
            }
        }

        public void startPickingNumberAnimation(ShowNumberWhenPicking view) {
            ImageView backgroundMask = view.getBackgroundMask();
            backgroundMask.setVisibility(0);
            TextView showingNumberView = view.getShowNumberTextView();
            showingNumberView.setText(String.format("%d", new Object[]{Integer.valueOf(EditableListViewWrapper.this.mCheckState.getCount())}));
            ObjectAnimator.ofPropertyValuesHolder(showingNumberView, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("alpha", new float[]{0.0f, 1.0f}), PropertyValuesHolder.ofFloat("scaleX", new float[]{0.8f, 1.0f}), PropertyValuesHolder.ofFloat("scaleY", new float[]{0.8f, 1.0f})}).setDuration(300).setInterpolator(new CubicEaseOutInterpolator());
            ObjectAnimator fadeOut = ObjectAnimator.ofPropertyValuesHolder(showingNumberView, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("alpha", new float[]{1.0f, 0.0f})}).setDuration(200);
            fadeOut.setInterpolator(new CubicEaseOutInterpolator());
            fadeOut.setStartDelay(200);
            AnimatorSet pickingNumberAnimatorSet = new AnimatorSet();
            pickingNumberAnimatorSet.playSequentially(new Animator[]{fadeIn, fadeOut});
            pickingNumberAnimatorSet.start();
            ObjectAnimator bgMaskAlpha = ObjectAnimator.ofPropertyValuesHolder(backgroundMask, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("alpha", new float[]{1.0f, 0.0f})}).setDuration(700);
            bgMaskAlpha.setInterpolator(new CubicEaseOutInterpolator());
            bgMaskAlpha.start();
        }

        public void resetViewPropertyIfNeed(View view, View convertView, int position) {
            Object itemScaleFactor = view.getTag(R.id.tag_scale_factor);
            if (EditableListViewWrapper.this.isInChoiceMode()) {
                if (itemScaleFactor == null || !BaseMiscUtil.floatEquals(((Float) itemScaleFactor).floatValue(), 0.92f)) {
                    view.setScaleX(0.92f);
                    view.setScaleY(0.92f);
                    view.setTag(R.id.tag_scale_factor, Float.valueOf(0.92f));
                }
            } else if (itemScaleFactor == null || !BaseMiscUtil.floatEquals(((Float) itemScaleFactor).floatValue(), 1.0f)) {
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setTag(R.id.tag_scale_factor, Float.valueOf(1.0f));
            }
            if (this.isTurnOnScaleImageViewAni) {
                if (view instanceof BackgroundImageViewable) {
                    ImageView imageView = ((BackgroundImageViewable) view).getBackgroundImageView();
                    if (EditableListViewWrapper.this.isInChoiceMode()) {
                        if (!(convertView.getTag(R.id.tag_pick_position) == null || ((Integer) convertView.getTag(R.id.tag_pick_position)).intValue() == position || EditableListViewWrapper.this.mCheckState.getCheckState(position))) {
                            setItemImageView2OriginalScaleAfterEnlarge(imageView);
                        }
                        if (EditableListViewWrapper.this.mCheckState.getCheckState(position) && imageView.getTag(R.id.tag_matrix) == null) {
                            setItemImageViewEnlargeAfterChecked(imageView, position);
                        }
                    } else if (imageView.getTag(R.id.tag_matrix) != null) {
                        setItemImageView2OriginalScaleAfterEnlarge(imageView);
                    }
                }
                convertView.setTag(R.id.tag_pick_position, Integer.valueOf(position));
            }
        }

        private void setItemImageView2OriginalScaleAfterEnlarge(ImageView imageView) {
            finishImageViewScaleAnimatorIfNecessary(imageView);
            setImageViewScale(imageView, 1.0f);
            if (this.mOriginalScaleType != null) {
                imageView.setScaleType(this.mOriginalScaleType);
            }
            imageView.setTag(R.id.tag_matrix, null);
            imageView.setTag(R.id.tag_animator, null);
        }

        private void setItemImageViewEnlargeAfterChecked(ImageView imageView, int position) {
            finishImageViewScaleAnimatorIfNecessary(imageView);
            imageView.setTag(R.id.tag_matrix, imageView.getImageMatrix());
            setImageViewScale(imageView, 1.2f);
            imageView.setTag(R.id.tag_animator, null);
        }

        private void setImageViewScale(ImageView imageView, float scale) {
            if (imageView instanceof ScalableImageView) {
                ((ScalableImageView) imageView).setMatrixScale(scale);
            }
        }

        private float getImageViewScale(ImageView imageView) {
            if (imageView instanceof ScalableImageView) {
                return ((ScalableImageView) imageView).getMatrixScale();
            }
            return 0.0f;
        }

        public boolean onTouch(View v, MotionEvent ev) {
            return this.mScroll2PickHelper.onTouch(v, ev);
        }
    }

    private static class CheckState {
        protected Mode mCheckMode;
        protected SparseBooleanArray mCheckState;
        protected long mIndex;
        private long mReverseIndex;
        protected LongSparseArray<Long> mReverseModeSelectedIdIndex;
        protected Source mSource;
        protected Status mStatus;
        protected LongSparseArray<Long> mUserSelectedIdIndex;

        protected enum Mode {
            NORMAL,
            REVERSE
        }

        public interface Source {
            int getSourceEncryptPosition(int i);

            int getSourceItemCount();

            long getSourceItemId(int i);
        }

        protected enum Status {
            DIRTY,
            CLEAN
        }

        private CheckState() {
            this.mUserSelectedIdIndex = new LongSparseArray(0);
            this.mReverseModeSelectedIdIndex = new LongSparseArray(0);
            this.mCheckMode = Mode.NORMAL;
            this.mCheckState = new SparseBooleanArray(0);
            this.mStatus = Status.CLEAN;
            this.mIndex = 0;
            this.mReverseIndex = 0;
        }

        /* synthetic */ CheckState(AnonymousClass1 x0) {
            this();
        }

        public void bind(Source source) {
            if (source != null) {
                this.mSource = source;
            }
        }

        public boolean getCheckState(int position) {
            if (this.mStatus == Status.CLEAN) {
                return this.mCheckState.get(position, false);
            }
            return getCheckState(this.mSource.getSourceItemId(position));
        }

        public boolean getCheckState(long id) {
            return this.mCheckMode == Mode.REVERSE ? this.mUserSelectedIdIndex.get(id) == null : this.mUserSelectedIdIndex.get(id) != null;
        }

        public void setCheckState(int position, boolean checked) {
            if (this.mStatus == Status.CLEAN) {
                this.mCheckState.put(position, checked);
            }
            long itemId = this.mSource.getSourceItemId(position);
            LongSparseArray longSparseArray;
            long j;
            if (this.mCheckMode == Mode.NORMAL) {
                if (checked) {
                    longSparseArray = this.mUserSelectedIdIndex;
                    j = this.mIndex;
                    this.mIndex = 1 + j;
                    longSparseArray.put(itemId, Long.valueOf(j));
                    return;
                }
                this.mUserSelectedIdIndex.remove(itemId);
            } else if (checked) {
                this.mUserSelectedIdIndex.remove(itemId);
                longSparseArray = this.mReverseModeSelectedIdIndex;
                j = this.mReverseIndex;
                this.mReverseIndex = 1 + j;
                longSparseArray.put(itemId, Long.valueOf(j));
            } else {
                longSparseArray = this.mUserSelectedIdIndex;
                j = this.mIndex;
                this.mIndex = 1 + j;
                longSparseArray.put(itemId, Long.valueOf(j));
                this.mReverseModeSelectedIdIndex.remove(itemId);
            }
        }

        public void setAllChecked(boolean checked) {
            this.mStatus = Status.CLEAN;
            this.mCheckMode = checked ? Mode.REVERSE : Mode.NORMAL;
            this.mUserSelectedIdIndex.clear();
            this.mReverseModeSelectedIdIndex.clear();
            this.mIndex = 0;
            this.mReverseIndex = 0;
            for (int i = 0; i < this.mSource.getSourceItemCount(); i++) {
                this.mCheckState.append(this.mSource.getSourceEncryptPosition(i), checked);
            }
        }

        public void clear() {
            this.mCheckMode = Mode.NORMAL;
            this.mStatus = Status.CLEAN;
            this.mCheckState.clear();
            this.mUserSelectedIdIndex.clear();
            this.mReverseModeSelectedIdIndex.clear();
            this.mIndex = 0;
            this.mReverseIndex = 0;
        }

        public void handleDataChanged() {
            this.mCheckState.clear();
            this.mStatus = Status.DIRTY;
        }

        public SparseBooleanArray getCheckedItemPositions() {
            if (this.mStatus == Status.DIRTY) {
                this.mCheckState = new SparseBooleanArray(this.mSource.getSourceItemCount());
                for (int i = 0; i < this.mSource.getSourceItemCount(); i++) {
                    long id = this.mSource.getSourceItemId(i);
                    boolean checked = (this.mCheckMode == Mode.NORMAL && this.mUserSelectedIdIndex.indexOfKey(id) >= 0) || (this.mCheckMode == Mode.REVERSE && this.mUserSelectedIdIndex.indexOfKey(id) < 0);
                    this.mCheckState.append(i, checked);
                }
                this.mStatus = Status.CLEAN;
            }
            return this.mCheckState.clone();
        }

        public int getCount() {
            if (this.mCheckMode == Mode.NORMAL) {
                return this.mUserSelectedIdIndex.size();
            }
            return this.mSource.getSourceItemCount() - this.mUserSelectedIdIndex.size();
        }
    }

    private static class CheckStateWithGroup extends CheckState {
        private SparseBooleanArray mGroupCheckState = new SparseBooleanArray(0);
        private AnimationManager mListAnimationManager;
        private GalleryRecyclerView mListView;
        private StickyHeaderAdapter mStickyHeaderAdapter;

        public CheckStateWithGroup(GalleryRecyclerView listView, AnimationManager animationManager) {
            super();
            this.mListView = listView;
            this.mListAnimationManager = animationManager;
        }

        public boolean getGroupCheckState(int groupIndex) {
            return this.mGroupCheckState.get(groupIndex);
        }

        public void clear() {
            super.clear();
            this.mGroupCheckState.clear();
        }

        public void setCheckState(int position, boolean checked) {
            setCheckStateInternal(position, checked, true);
        }

        private void setCheckStateInternal(int position, boolean checked, boolean refreshHeader) {
            super.setCheckState(position, checked);
            if (this.mStickyHeaderAdapter != null && this.mStatus == Status.CLEAN && refreshHeader) {
                int groupIndex = this.mStickyHeaderAdapter.getHeaderIndex(position);
                boolean oldGroupCheckState = getGroupCheckState(groupIndex);
                boolean newGroupCheckState = true;
                int[] interval = this.mStickyHeaderAdapter.getItemPositionInterval(groupIndex);
                for (int pos = interval[0]; pos <= interval[1]; pos++) {
                    if (!getCheckState(pos)) {
                        newGroupCheckState = false;
                        break;
                    }
                }
                if (oldGroupCheckState != newGroupCheckState) {
                    this.mGroupCheckState.put(groupIndex, newGroupCheckState);
                    this.mListView.getAdapter().notifyDataSetChanged();
                }
            }
        }

        public void setAllChecked(boolean checked) {
            super.setAllChecked(checked);
            if (this.mStickyHeaderAdapter != null) {
                for (int i = 0; i < this.mStickyHeaderAdapter.getHeaderCount(); i++) {
                    this.mGroupCheckState.put(i, checked);
                }
                this.mListView.getAdapter().notifyDataSetChanged();
            }
        }
    }

    private class MultiChoiceModeCallback implements Callback {
        private MultiChoiceModeListener mWrapped;

        private MultiChoiceModeCallback() {
        }

        /* synthetic */ MultiChoiceModeCallback(EditableListViewWrapper x0, AnonymousClass1 x1) {
            this();
        }

        public void setWrapped(MultiChoiceModeListener listener) {
            this.mWrapped = listener;
        }

        public boolean hasWrappedCallback() {
            return this.mWrapped != null;
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            if (!this.mWrapped.onCreateActionMode(mode, menu)) {
                return false;
            }
            mode.setTitle(miui.R.string.select_item);
            if (mode instanceof EditActionMode) {
                MiuiSdkCompat.setEditActionModeButton(EditableListViewWrapper.this.mRecyclerView.getContext(), (EditActionMode) mode, 16908313, 3);
                MiuiSdkCompat.setEditActionModeButton(EditableListViewWrapper.this.mRecyclerView.getContext(), (EditActionMode) mode, 16908314, 0);
            }
            EditableListViewWrapper.this.enterChoiceMode();
            EditableListViewWrapper.this.mIsInActionMode = true;
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(mode, menu);
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            boolean z = false;
            if (this.mWrapped.onActionItemClicked(mode, item)) {
                return true;
            }
            switch (item.getItemId()) {
                case 16908313:
                    mode.finish();
                    return true;
                case 16908314:
                    EditableListViewWrapper editableListViewWrapper = EditableListViewWrapper.this;
                    if (!EditableListViewWrapper.this.isAllItemsChecked()) {
                        z = true;
                    }
                    editableListViewWrapper.setAllItemsCheckState(z);
                    return true;
                default:
                    return false;
            }
        }

        public void onDestroyActionMode(ActionMode mode) {
            EditableListViewWrapper.this.mEditActionMode = null;
            EditableListViewWrapper.this.mChoiceActionMode = null;
            EditableListViewWrapper.this.mIsInChoiceMode = false;
            EditableListViewWrapper.this.exitChoiceMode();
            this.mWrapped.onDestroyActionMode(mode);
            EditableListViewWrapper.this.mIsInActionMode = false;
        }
    }

    private class SimpleWrapper extends Adapter implements Source {
        private Adapter mWrapped;

        public SimpleWrapper(Adapter wrapped) {
            this.mWrapped = wrapped;
        }

        public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return this.mWrapped.onCreateViewHolder(parent, viewType);
        }

        private void bindCheckState(ViewHolder holder, int position) {
            View view = holder.itemView;
            if (view instanceof Checkable) {
                Checkable checkable = (Checkable) view;
                checkable.setCheckable(EditableListViewWrapper.this.isInChoiceMode());
                checkable.setChecked(EditableListViewWrapper.this.mCheckState.getCheckState(position));
                EditableListViewWrapper.this.mAnimationManager.resetViewPropertyIfNeed(view, view, position);
            }
        }

        public void onBindViewHolder(ViewHolder holder, int position) {
            this.mWrapped.onBindViewHolder(holder, position);
            bindCheckState(holder, position);
        }

        public void onBindViewHolder(ViewHolder holder, int position, List payloads) {
            this.mWrapped.onBindViewHolder(holder, position, payloads);
            bindCheckState(holder, position);
        }

        public int getItemCount() {
            return this.mWrapped.getItemCount();
        }

        public long getItemId(int position) {
            return this.mWrapped.getItemId(position);
        }

        public void onViewRecycled(ViewHolder holder) {
            this.mWrapped.onViewRecycled(holder);
        }

        public boolean onFailedToRecycleView(ViewHolder holder) {
            return this.mWrapped.onFailedToRecycleView(holder);
        }

        public void onViewAttachedToWindow(ViewHolder holder) {
            this.mWrapped.onViewAttachedToWindow(holder);
        }

        public void onViewDetachedFromWindow(ViewHolder holder) {
            this.mWrapped.onViewDetachedFromWindow(holder);
        }

        public void registerAdapterDataObserver(AdapterDataObserver observer) {
            this.mWrapped.registerAdapterDataObserver(observer);
        }

        public void unregisterAdapterDataObserver(AdapterDataObserver observer) {
            this.mWrapped.unregisterAdapterDataObserver(observer);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            this.mWrapped.onAttachedToRecyclerView(recyclerView);
        }

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            this.mWrapped.onDetachedFromRecyclerView(recyclerView);
        }

        public int getItemViewType(int position) {
            return this.mWrapped.getItemViewType(position);
        }

        public int getSourceItemCount() {
            if (this.mWrapped instanceof HeaderFooterRecyclerAdapterWrapper) {
                return this.mWrapped.getWrappedAdapter().getItemCount();
            }
            return this.mWrapped.getItemCount();
        }

        public long getSourceItemId(int position) {
            return this.mWrapped.getItemId(position);
        }

        public int getSourceEncryptPosition(int position) {
            return getListHeadersCount() + position;
        }

        public boolean isHeaderOrFooterPosition(int position) {
            if (!(this.mWrapped instanceof HeaderFooterRecyclerAdapterWrapper)) {
                return false;
            }
            HeaderFooterRecyclerAdapterWrapper adapter = this.mWrapped;
            if (adapter.isHeaderPosition(position) || adapter.isFooterPosition(position)) {
                return true;
            }
            return false;
        }

        private int getListHeadersCount() {
            if (this.mWrapped instanceof HeaderFooterRecyclerAdapterWrapper) {
                return this.mWrapped.getHeadersCount();
            }
            return 0;
        }
    }

    public EditableListViewWrapper(GalleryRecyclerView recyclerView) {
        if (recyclerView == null) {
            throw new IllegalArgumentException("recyclerView can't be null");
        }
        this.mRecyclerView = recyclerView;
        this.mAdapterWrappers = new ArrayMap();
        this.mRecyclerView.setOnTouchListener(this.mAnimationManager);
        this.mRecyclerView.addOnScrollListener(this.mScrollDelegate);
        this.mCheckState = new CheckStateWithGroup(this.mRecyclerView, this.mAnimationManager);
    }

    public void enableChoiceMode(boolean enable) {
        this.mRecyclerView.setLongClickable(enable);
        this.mRecyclerView.setOnItemLongClickListener(enable ? this.mEnterActionModeListener : null);
    }

    public void setAdapter(Adapter adapter) {
        Adapter old = this.mAdapterWrapper;
        this.mAdapterWrapper = (SimpleWrapper) this.mAdapterWrappers.get(adapter);
        if (old == null || old != this.mAdapterWrapper) {
            this.mCheckState.clear();
            if (this.mAdapterWrapper != null) {
                this.mAdapterWrapper.unregisterAdapterDataObserver(this.mRestoreCheckStateObserver);
            }
            if (adapter == null) {
                this.mAdapterWrapper = null;
                this.mRecyclerView.setAdapter(null);
                handleDataInvalid();
                return;
            }
            if (this.mAdapterWrapper == null) {
                this.mAdapterWrapper = new SimpleWrapper(adapter);
                this.mAdapterWrappers.put(adapter, this.mAdapterWrapper);
            }
            this.mAdapterWrapper.setHasStableIds(adapter.hasStableIds());
            this.mAdapterWrapper.registerAdapterDataObserver(this.mRestoreCheckStateObserver);
            this.mRecyclerView.setAdapter(this.mAdapterWrapper);
            this.mCheckState.bind(this.mAdapterWrapper);
            handleDataChanged();
            return;
        }
        Log.d("EditableListViewWrapper", "setAdapter the same adapter");
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mItemClickDelegate = listener;
        this.mRecyclerView.setOnItemClickListener(listener);
    }

    public void setOnScrollListener(OnScrollListener l) {
        this.mScrollListener = l;
    }

    public void setMultiChoiceModeListener(MultiChoiceModeListener listener) {
        if (this.mMultiChoiceModeCallback == null) {
            this.mMultiChoiceModeCallback = new MultiChoiceModeCallback(this, null);
        }
        this.mMultiChoiceModeCallback.setWrapped(listener);
    }

    public SparseBooleanArray getCheckedItemPositions() {
        return this.mCheckState.getCheckedItemPositions();
    }

    private boolean isListHeaderOrFooter(int position) {
        return this.mAdapterWrapper.isHeaderOrFooterPosition(position);
    }

    public int getCheckedItemCount() {
        return this.mCheckState.getCount();
    }

    private void checkMultiChoiceModeCallback() {
        if (this.mMultiChoiceModeCallback == null || !this.mMultiChoiceModeCallback.hasWrappedCallback()) {
            throw new IllegalStateException("no MultiChoiceModeListener is set");
        }
    }

    public boolean isInChoiceMode() {
        return this.mIsInChoiceMode;
    }

    public void startActionMode() {
        checkMultiChoiceModeCallback();
        if (!this.mIsInChoiceMode) {
            this.mChoiceActionMode = this.mRecyclerView.startActionMode(this.mMultiChoiceModeCallback);
            if (this.mChoiceActionMode instanceof EditActionMode) {
                this.mEditActionMode = (EditActionMode) this.mChoiceActionMode;
            }
            this.mIsInChoiceMode = true;
            this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(this.mChoiceActionMode, false);
        }
    }

    public void stopActionMode() {
        if (this.mChoiceActionMode != null) {
            this.mChoiceActionMode.finish();
        }
    }

    public boolean isAllItemsChecked() {
        int checkedCount = this.mCheckState.getCount();
        return checkedCount > 0 && checkedCount == this.mAdapterWrapper.getSourceItemCount();
    }

    public void setAllItemsCheckState(boolean checked) {
        this.mCheckState.setAllChecked(checked);
        updateOnScreenViewsState();
        updateActionMode();
        this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(this.mChoiceActionMode, checked);
        this.mAnimationManager.startScaleAllItemImageViewAnimation(this.mRecyclerView, checked);
    }

    private void updateOnScreenViewsState() {
        for (int i = 0; i < this.mRecyclerView.getChildCount(); i++) {
            View view = this.mRecyclerView.getChildAt(i);
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(this.mCheckState.getCheckState(this.mRecyclerView.getChildItemId(view)));
            }
        }
    }

    private void updateActionMode() {
        int i = 1;
        if (this.mChoiceActionMode != null) {
            if (this.mCheckState.getCount() == 0) {
                this.mChoiceActionMode.setTitle(this.mRecyclerView.getResources().getString(miui.R.string.select_item));
            } else {
                this.mChoiceActionMode.setTitle(this.mRecyclerView.getResources().getQuantityString(miui.R.plurals.items_selected, this.mCheckState.getCount(), new Object[]{Integer.valueOf(this.mCheckState.getCount())}));
            }
            if (this.mEditActionMode != null) {
                Context context = this.mRecyclerView.getContext();
                EditActionMode editActionMode = this.mEditActionMode;
                if (!isAllItemsChecked()) {
                    i = 0;
                }
                MiuiSdkCompat.setEditActionModeButton(context, editActionMode, 16908314, i);
            }
        }
    }

    private void handleDataChanged() {
        this.mCheckState.handleDataChanged();
        updateActionMode();
    }

    public void handleDataInvalid() {
        this.mCheckState.clear();
        updateActionMode();
    }

    private void enterChoiceMode() {
        this.mRecyclerView.setLongClickable(false);
        this.mRecyclerView.setOnItemClickListener(this.mCheckItemListener);
        for (int i = 0; i < this.mRecyclerView.getChildCount(); i++) {
            View view = this.mRecyclerView.getChildAt(i);
            if (view instanceof Checkable) {
                ((Checkable) view).setCheckable(true);
            }
        }
        this.mAnimationManager.startEnterActionModeAni();
        this.mCheckState.clear();
        notifyDataChanged();
    }

    private void exitChoiceMode() {
        this.mRecyclerView.setLongClickable(true);
        this.mRecyclerView.setOnItemClickListener(this.mItemClickDelegate);
        for (int i = 0; i < this.mRecyclerView.getChildCount(); i++) {
            View view = this.mRecyclerView.getChildAt(i);
            if (view instanceof Checkable) {
                ((Checkable) view).setCheckable(false);
                ((Checkable) view).setChecked(false);
            }
        }
        this.mAnimationManager.startExistActionModeAni();
        this.mCheckState.clear();
        notifyDataChanged();
    }

    private void notifyDataChanged() {
        this.mRecyclerView.getAdapter().notifyDataSetChanged();
    }
}
