package com.miui.gallery.widget.editwrapper;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.ArrayMap;
import android.util.LongSparseArray;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseMediaAdapterDeprecated;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.ui.Checkable;
import com.miui.gallery.ui.CheckableView;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncSortUtil;
import com.miui.gallery.widget.ScalableImageView;
import com.miui.gallery.widget.editwrapper.PickAnimationHelper.BackgroundImageViewable;
import com.miui.gallery.widget.editwrapper.PickAnimationHelper.ShowNumberWhenPicking;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersSimpleAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import miui.gallery.support.MiuiSdkCompat;
import miui.view.EditActionMode;
import miui.view.animation.CubicEaseOutInterpolator;

public class EditableListViewWrapperDeprecated {
    private SimpleWrapper mAdapterWrapper;
    private ArrayMap<ListAdapter, SimpleWrapper> mAdapterWrappers;
    private AnimationManager mAnimationManager = new AnimationManager();
    private OnItemClickListener mCheckItemListener = new OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            if ((view instanceof Checkable) && position >= EditableListViewWrapperDeprecated.this.mListHeaderCount) {
                position -= EditableListViewWrapperDeprecated.this.mListHeaderCount;
                boolean checked = !EditableListViewWrapperDeprecated.this.mCheckState.getCheckState(position);
                EditableListViewWrapperDeprecated.this.mCheckState.setCheckState(position, checked);
                ((Checkable) view).setChecked(checked);
                EditableListViewWrapperDeprecated.this.updateActionMode();
                EditableListViewWrapperDeprecated.this.mMultiChoiceModeCallback.mWrapped.onItemCheckedStateChanged(EditableListViewWrapperDeprecated.this.mChoiceActionMode, position, id, checked);
                if (view instanceof BackgroundImageViewable) {
                    EditableListViewWrapperDeprecated.this.mAnimationManager.startScaleItemImageViewAnimation(((BackgroundImageViewable) view).getBackgroundImageView(), position);
                }
                if (checked && (view instanceof ShowNumberWhenPicking)) {
                    EditableListViewWrapperDeprecated.this.mAnimationManager.startPickingNumberAnimation((ShowNumberWhenPicking) view);
                }
            }
        }
    };
    private CheckState mCheckState;
    private ActionMode mChoiceActionMode;
    private EditActionMode mEditActionMode;
    private OnItemLongClickListener mEnterActionModeListener = new OnItemLongClickListener() {
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int position, long id) {
            if (position < EditableListViewWrapperDeprecated.this.mListHeaderCount) {
                return false;
            }
            EditableListViewWrapperDeprecated.this.startActionMode();
            EditableListViewWrapperDeprecated.this.mAnimationManager.setLongTouchPosition(position);
            return true;
        }
    };
    private boolean mIsInActionMode;
    private boolean mIsInChoiceMode;
    private OnItemClickListener mItemClickDelegate;
    private int mListHeaderCount;
    private int mListScrollState = 0;
    private AbsListView mListView;
    private MultiChoiceModeCallback mMultiChoiceModeCallback;
    private DataSetObserver mRestoreCheckStateObserver = new DataSetObserver() {
        public void onChanged() {
            super.onChanged();
            EditableListViewWrapperDeprecated.this.handleDataChanged();
        }

        public void onInvalidated() {
            super.onInvalidated();
            EditableListViewWrapperDeprecated.this.handleDataInvalid();
        }
    };
    private OnScrollListener mScrollDelegate = new OnScrollListener() {
        public void onScrollStateChanged(AbsListView view, int scrollState) {
            EditableListViewWrapperDeprecated.this.mListScrollState = scrollState;
            if (EditableListViewWrapperDeprecated.this.mScrollListener != null) {
                EditableListViewWrapperDeprecated.this.mScrollListener.onScrollStateChanged(view, scrollState);
            }
        }

        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            if (EditableListViewWrapperDeprecated.this.mScrollListener != null) {
                EditableListViewWrapperDeprecated.this.mScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
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
                        if (!EditableListViewWrapperDeprecated.this.isInChoiceMode()) {
                            return false;
                        }
                        this.mMathStack.clear();
                        if (!(this.mHasEverPickLongTouchPosition || this.mLongTouchPosition == -1)) {
                            this.mHasEverPickLongTouchPosition = true;
                            View view = ((StickyGridHeadersGridView) EditableListViewWrapperDeprecated.this.mListView).getChildViewByItemIndex(this.mLongTouchPosition);
                            if (view instanceof BackgroundImageViewable) {
                                AnimationManager.this.startScaleItemImageViewAnimation(((BackgroundImageViewable) view).getBackgroundImageView(), this.mLongTouchPosition, true, 0, 200);
                                EditableListViewWrapperDeprecated.this.mCheckState.setCheckState(this.mLongTouchPosition, true);
                                ((Checkable) view).setChecked(true);
                                EditableListViewWrapperDeprecated.this.updateActionMode();
                                EditableListViewWrapperDeprecated.this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(EditableListViewWrapperDeprecated.this.mChoiceActionMode, true);
                            }
                        }
                        return interceptEvent();
                    case 2:
                        if (!EditableListViewWrapperDeprecated.this.isInChoiceMode()) {
                            return false;
                        }
                        boolean interceptBefore = interceptEvent();
                        boolean interceptAfter = onTouchMove(ev);
                        if (!(EditableListViewWrapperDeprecated.this.mListScrollState == 0 || interceptBefore || !interceptAfter)) {
                            EditableListViewWrapperDeprecated.this.mListView.setOnTouchListener(null);
                            EditableListViewWrapperDeprecated.this.mListView.requestDisallowInterceptTouchEvent(true);
                            MotionEvent fakeEvent = MotionEvent.obtain(ev);
                            fakeEvent.setAction(1);
                            EditableListViewWrapperDeprecated.this.mListView.dispatchTouchEvent(fakeEvent);
                            EditableListViewWrapperDeprecated.this.mListView.requestDisallowInterceptTouchEvent(false);
                            EditableListViewWrapperDeprecated.this.mListView.setOnTouchListener(EditableListViewWrapperDeprecated.this.mAnimationManager);
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
                int position;
                if (Math.abs(x - this.mLastX) >= Math.abs(y - this.mLastY) && Math.abs(x - this.mLastX) > 10.0f) {
                    position = EditableListViewWrapperDeprecated.this.mListView.pointToPosition((int) x, (int) y);
                    if (!(position == -1 || position == this.mLastPosition)) {
                        boolean z;
                        int positionExcludeHeader = ((StickyGridHeadersGridView) EditableListViewWrapperDeprecated.this.mListView).getItemIndexByItemPosition(position);
                        if (EditableListViewWrapperDeprecated.this.mCheckState.getCheckState(positionExcludeHeader)) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (pickOrNotByPosition(position, z)) {
                            EditableListViewWrapperDeprecated.this.updateActionMode();
                            EditableListViewWrapperDeprecated.this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(EditableListViewWrapperDeprecated.this.mChoiceActionMode, true);
                            this.mScollXMode2PickEnable = true;
                            if (positionExcludeHeader == this.mLongTouchPosition) {
                                this.mHasEverPickLongTouchPosition = true;
                            }
                        }
                        this.mLastPosition = position;
                    }
                    ifScrollYModeEnable(x, y);
                } else if (this.mScollYMode2PickEnable && Math.abs(y - this.mLastY) > 10.0f && Math.abs(x - this.mLastX) < Math.abs(y - this.mLastY)) {
                    position = EditableListViewWrapperDeprecated.this.mListView.pointToPosition((int) x, (int) y);
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
                        EditableListViewWrapperDeprecated.this.updateActionMode();
                        EditableListViewWrapperDeprecated.this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(EditableListViewWrapperDeprecated.this.mChoiceActionMode, true);
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
                        this.mMotionPosition = EditableListViewWrapperDeprecated.this.mListView.pointToPosition((int) x, (int) y);
                        this.mMathStack.push(Integer.valueOf(this.mMotionPosition));
                    }
                }
            }

            private boolean pickOrNotByPosition(int position, boolean checked) {
                View view = EditableListViewWrapperDeprecated.this.mListView.getChildAt(position - EditableListViewWrapperDeprecated.this.mListView.getFirstVisiblePosition());
                if (!(view instanceof BackgroundImageViewable)) {
                    return false;
                }
                ImageView imageView = ((BackgroundImageViewable) view).getBackgroundImageView();
                int positionExcludeHeader = ((StickyGridHeadersGridView) EditableListViewWrapperDeprecated.this.mListView).getItemIndexByItemPosition(position);
                AnimationManager.this.startScaleItemImageViewAnimationByScrollPicked(imageView, positionExcludeHeader, checked);
                EditableListViewWrapperDeprecated.this.mCheckState.setCheckState(positionExcludeHeader, checked);
                ((Checkable) view).setChecked(checked);
                return true;
            }
        }

        AnimationManager() {
        }

        public void setLongTouchPosition(int position) {
            this.mScroll2PickHelper.setLongPressPosition(position);
        }

        public void enableScaleImageViewAni() {
            this.isTurnOnScaleImageViewAni = true;
        }

        public void disableScaleImageViewAni() {
            this.isTurnOnScaleImageViewAni = false;
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
                    image.setTag(R.id.tag_pick_position, Integer.valueOf(position));
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

        public void startScaleAllItemImageViewAnimation(StickyGridHeadersGridView listView, boolean checked) {
            int j = 0;
            for (int i = listView.getFirstVisiblePosition(); i < listView.getLastVisiblePosition(); i++) {
                View view = listView.getChildAt(i - listView.getFirstVisiblePosition());
                if (view instanceof BackgroundImageViewable) {
                    int j2 = j + 1;
                    startScaleItemImageViewAnimation(((BackgroundImageViewable) view).getBackgroundImageView(), listView.getItemIndexByItemPosition(i), checked, j * 40);
                    j = j2;
                }
            }
        }

        public void startEnterActionModeAni() {
            startScaleListViewAnimation(EditableListViewWrapperDeprecated.this.mListView, false);
        }

        public void startExistActionModeAni() {
            startScaleListViewAnimation(EditableListViewWrapperDeprecated.this.mListView, true);
        }

        private void startScaleListViewAnimation(AbsListView listView, boolean enlarge) {
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
                            startScaleItemImageViewAnimationInternal(imageView, false, ((Integer) imageView.getTag(R.id.tag_pick_position)).intValue(), 0, 300);
                        }
                    }
                }
            }
        }

        public void startPickingNumberAnimation(ShowNumberWhenPicking view) {
            ImageView backgroundMask = view.getBackgroundMask();
            backgroundMask.setVisibility(0);
            TextView showingNumberView = view.getShowNumberTextView();
            showingNumberView.setText(String.format("%d", new Object[]{Integer.valueOf(EditableListViewWrapperDeprecated.this.mCheckState.getCount())}));
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
            if (EditableListViewWrapperDeprecated.this.isInChoiceMode()) {
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
            if (this.isTurnOnScaleImageViewAni && (view instanceof BackgroundImageViewable)) {
                ImageView imageView = ((BackgroundImageViewable) view).getBackgroundImageView();
                if (EditableListViewWrapperDeprecated.this.isInChoiceMode()) {
                    if (!(imageView.getTag(R.id.tag_pick_position) == null || ((Integer) imageView.getTag(R.id.tag_pick_position)).intValue() == position || EditableListViewWrapperDeprecated.this.mCheckState.getCheckState(position))) {
                        setItemImageView2OriginalScaleAfterEnlarge(imageView);
                    }
                    if (EditableListViewWrapperDeprecated.this.mCheckState.getCheckState(position) && imageView.getTag(R.id.tag_matrix) == null) {
                        setItemImageViewEnlargeAfterChecked(imageView, position);
                    }
                } else if (imageView.getTag(R.id.tag_matrix) != null) {
                    setItemImageView2OriginalScaleAfterEnlarge(imageView);
                }
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
            imageView.setTag(R.id.tag_pick_position, Integer.valueOf(position));
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
            if (EditableListViewWrapperDeprecated.this.mListView instanceof StickyGridHeadersGridView) {
                return this.mScroll2PickHelper.onTouch(v, ev);
            }
            return false;
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
            int getCount();

            long getItemId(int i);
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
            return getCheckState(this.mSource.getItemId(position));
        }

        public boolean getCheckState(long id) {
            return this.mCheckMode == Mode.REVERSE ? this.mUserSelectedIdIndex.get(id) == null : this.mUserSelectedIdIndex.get(id) != null;
        }

        public void setCheckState(int position, boolean checked) {
            if (this.mStatus == Status.CLEAN) {
                this.mCheckState.put(position, checked);
            }
            long itemId = this.mSource.getItemId(position);
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
            for (int i = 0; i < this.mSource.getCount(); i++) {
                this.mCheckState.append(i, checked);
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
                this.mCheckState = new SparseBooleanArray(this.mSource.getCount());
                for (int i = 0; i < this.mSource.getCount(); i++) {
                    long id = this.mSource.getItemId(i);
                    boolean checked = (this.mCheckMode == Mode.NORMAL && this.mUserSelectedIdIndex.indexOfKey(id) >= 0) || (this.mCheckMode == Mode.REVERSE && this.mUserSelectedIdIndex.indexOfKey(id) < 0);
                    this.mCheckState.append(i, checked);
                }
                this.mStatus = Status.CLEAN;
            }
            return this.mCheckState.clone();
        }

        public long[] getCheckedItemIds() {
            int selectedItemCount = getCount();
            if (selectedItemCount == 0) {
                return new long[0];
            }
            int i;
            if (this.mCheckMode == Mode.NORMAL) {
                long[] selectedKeys = new long[this.mUserSelectedIdIndex.size()];
                long[] selectedIndexs = new long[this.mUserSelectedIdIndex.size()];
                i = 0;
                int j = 0;
                while (i < this.mUserSelectedIdIndex.size() && j < selectedItemCount) {
                    int j2 = j + 1;
                    int index = j;
                    selectedKeys[index] = this.mUserSelectedIdIndex.keyAt(i);
                    selectedIndexs[index] = ((Long) this.mUserSelectedIdIndex.valueAt(i)).longValue();
                    i++;
                    j = j2;
                }
                return getSortedKeysByIndex(selectedKeys, selectedIndexs);
            }
            int resultIndex;
            long[] ids = new long[selectedItemCount];
            int resultIndex2 = 0;
            for (i = 0; i < this.mSource.getCount(); i++) {
                long id = this.mSource.getItemId(i);
                if (this.mUserSelectedIdIndex.indexOfKey(id) < 0 && this.mReverseModeSelectedIdIndex.indexOfKey(id) < 0) {
                    resultIndex = resultIndex2 + 1;
                    ids[resultIndex2] = id;
                    resultIndex2 = resultIndex;
                }
            }
            if (this.mReverseModeSelectedIdIndex.size() <= 0) {
                return ids;
            }
            long[] reverseSelectedKeys = new long[this.mReverseModeSelectedIdIndex.size()];
            long[] reverseSelectedIndexes = new long[this.mReverseModeSelectedIdIndex.size()];
            for (i = 0; i < this.mReverseModeSelectedIdIndex.size(); i++) {
                reverseSelectedKeys[i] = this.mReverseModeSelectedIdIndex.keyAt(i);
                reverseSelectedIndexes[i] = ((Long) this.mReverseModeSelectedIdIndex.valueAt(i)).longValue();
            }
            long[] sortedReverseSelectedIds = getSortedKeysByIndex(reverseSelectedKeys, reverseSelectedIndexes);
            i = 0;
            while (i < sortedReverseSelectedIds.length && resultIndex2 < selectedItemCount) {
                resultIndex = resultIndex2 + 1;
                ids[resultIndex2] = sortedReverseSelectedIds[i];
                i++;
                resultIndex2 = resultIndex;
            }
            return ids;
        }

        public int[] getCheckedItemOrderedPositions() {
            int selectedItemCount = getCount();
            if (selectedItemCount == 0) {
                return new int[0];
            }
            int j;
            int i;
            long id;
            int j2;
            int index;
            if (this.mCheckMode == Mode.NORMAL) {
                int[] selectedPositions = new int[this.mUserSelectedIdIndex.size()];
                long[] selectedIndexs = new long[this.mUserSelectedIdIndex.size()];
                j = 0;
                for (i = 0; i < this.mSource.getCount() && j < selectedItemCount; i++) {
                    id = this.mSource.getItemId(i);
                    if (this.mUserSelectedIdIndex.indexOfKey(id) >= 0) {
                        j2 = j + 1;
                        index = j;
                        selectedPositions[index] = i;
                        selectedIndexs[index] = ((Long) this.mUserSelectedIdIndex.get(id)).longValue();
                        j = j2;
                    }
                }
                return getSortedPositionsByIndex(selectedPositions, selectedIndexs);
            }
            int resultIndex;
            int[] positions = new int[selectedItemCount];
            int resultIndex2 = 0;
            int[] reverseSelectedPositions = new int[this.mReverseModeSelectedIdIndex.size()];
            long[] reverseSelectedIndexs = new long[this.mReverseModeSelectedIdIndex.size()];
            j = 0;
            for (i = 0; i < this.mSource.getCount(); i++) {
                id = this.mSource.getItemId(i);
                if (this.mUserSelectedIdIndex.indexOfKey(id) < 0 && this.mReverseModeSelectedIdIndex.indexOfKey(id) < 0) {
                    resultIndex = resultIndex2 + 1;
                    positions[resultIndex2] = i;
                    resultIndex2 = resultIndex;
                }
                if (this.mReverseModeSelectedIdIndex.size() >= 0 && this.mReverseModeSelectedIdIndex.indexOfKey(id) >= 0) {
                    j2 = j + 1;
                    index = j;
                    reverseSelectedPositions[index] = i;
                    reverseSelectedIndexs[index] = ((Long) this.mReverseModeSelectedIdIndex.get(id)).longValue();
                    j = j2;
                }
            }
            if (this.mReverseModeSelectedIdIndex.size() <= 0) {
                return positions;
            }
            int[] sortedReverseSelectedPositions = getSortedPositionsByIndex(reverseSelectedPositions, reverseSelectedIndexs);
            i = 0;
            while (i < sortedReverseSelectedPositions.length && resultIndex2 < selectedItemCount) {
                resultIndex = resultIndex2 + 1;
                positions[resultIndex2] = sortedReverseSelectedPositions[i];
                i++;
                resultIndex2 = resultIndex;
            }
            return positions;
        }

        private long[] getSortedKeysByIndex(long[] selectedKeys, long[] selectedIndexs) {
            if (selectedKeys.length == selectedIndexs.length) {
                SyncSortUtil.sort(selectedKeys, selectedIndexs, 0, selectedKeys.length - 1);
            }
            return selectedKeys;
        }

        private int[] getSortedPositionsByIndex(int[] selectedPositions, long[] selectedIndexs) {
            if (selectedPositions.length == selectedIndexs.length) {
                SyncSortUtil.sort(selectedPositions, selectedIndexs, 0, selectedPositions.length - 1);
            }
            return selectedPositions;
        }

        public int getCount() {
            if (this.mCheckMode == Mode.NORMAL) {
                return this.mUserSelectedIdIndex.size();
            }
            return this.mSource.getCount() - this.mUserSelectedIdIndex.size();
        }
    }

    private static class CheckStateWithGroup extends CheckState {
        private SparseBooleanArray mGroupCheckState = new SparseBooleanArray(0);
        private AnimationManager mListAnimationManager;
        private StickyGridHeadersGridView mListView;

        public CheckStateWithGroup(AbsListView listView, AnimationManager animationManager) {
            super();
            this.mListView = (StickyGridHeadersGridView) listView;
            this.mListAnimationManager = animationManager;
        }

        public boolean getGroupCheckState(int groupIndex) {
            return this.mGroupCheckState.get(groupIndex);
        }

        public boolean setGroupCheckState(int groupIndex) {
            boolean newState;
            if (getGroupCheckState(groupIndex)) {
                newState = false;
            } else {
                newState = true;
            }
            this.mGroupCheckState.put(groupIndex, newState);
            StickyGridHeadersGridView gridView = this.mListView;
            int beginIndex = gridView.getGroupItemStartIndex(groupIndex);
            int j = 0;
            for (int position = beginIndex; position < gridView.getGroupItemsCount(groupIndex) + beginIndex; position++) {
                setCheckStateInternal(position, newState, false);
                View view = this.mListView.getChildViewByItemIndex(position);
                if (view != null && (view instanceof BackgroundImageViewable)) {
                    int j2 = j + 1;
                    this.mListAnimationManager.startScaleItemImageViewAnimation(((BackgroundImageViewable) view).getBackgroundImageView(), position, newState, j * 40);
                    j = j2;
                }
            }
            return newState;
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
            if (this.mStatus == Status.CLEAN && refreshHeader) {
                int groupIndex = this.mListView.getGroupIndexByItemIndex(position);
                boolean oldGroupCheckState = getGroupCheckState(groupIndex);
                boolean newGroupCheckState = true;
                int beginIndex = this.mListView.getGroupItemStartIndex(groupIndex);
                for (int pos = beginIndex; pos < this.mListView.getGroupItemsCount(groupIndex) + beginIndex; pos++) {
                    if (!getCheckState(pos)) {
                        newGroupCheckState = false;
                        break;
                    }
                }
                if (oldGroupCheckState != newGroupCheckState) {
                    this.mGroupCheckState.put(groupIndex, newGroupCheckState);
                    this.mListView.notifyChanged();
                }
            }
        }

        public void setAllChecked(boolean checked) {
            super.setAllChecked(checked);
            for (int i = 0; i < this.mListView.getHeaderNum(); i++) {
                this.mGroupCheckState.put(i, checked);
            }
            this.mListView.notifyChanged();
        }
    }

    private class MultiChoiceModeCallback implements Callback {
        private MultiChoiceModeListener mWrapped;

        private MultiChoiceModeCallback() {
        }

        /* synthetic */ MultiChoiceModeCallback(EditableListViewWrapperDeprecated x0, AnonymousClass1 x1) {
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
                MiuiSdkCompat.setEditActionModeButton(EditableListViewWrapperDeprecated.this.mListView.getContext(), (EditActionMode) mode, 16908313, 3);
                MiuiSdkCompat.setEditActionModeButton(EditableListViewWrapperDeprecated.this.mListView.getContext(), (EditActionMode) mode, 16908314, 0);
            }
            EditableListViewWrapperDeprecated.this.enterChoiceMode();
            EditableListViewWrapperDeprecated.this.mIsInActionMode = true;
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
                    EditableListViewWrapperDeprecated editableListViewWrapperDeprecated = EditableListViewWrapperDeprecated.this;
                    if (!EditableListViewWrapperDeprecated.this.isAllItemsChecked()) {
                        z = true;
                    }
                    editableListViewWrapperDeprecated.setAllItemsCheckState(z);
                    return true;
                default:
                    return false;
            }
        }

        public void onDestroyActionMode(ActionMode mode) {
            EditableListViewWrapperDeprecated.this.mEditActionMode = null;
            EditableListViewWrapperDeprecated.this.mChoiceActionMode = null;
            EditableListViewWrapperDeprecated.this.mIsInChoiceMode = false;
            EditableListViewWrapperDeprecated.this.exitChoiceMode();
            this.mWrapped.onDestroyActionMode(mode);
            EditableListViewWrapperDeprecated.this.mIsInActionMode = false;
        }
    }

    private class SimpleWrapper implements ListAdapter, Source {
        private ListAdapter mWrapped;

        public SimpleWrapper(ListAdapter wrapped) {
            this.mWrapped = wrapped;
        }

        public ListAdapter getWrapped() {
            return this.mWrapped;
        }

        public boolean areAllItemsEnabled() {
            return this.mWrapped.areAllItemsEnabled();
        }

        public boolean isEnabled(int position) {
            return this.mWrapped.isEnabled(position);
        }

        public void registerDataSetObserver(DataSetObserver observer) {
            this.mWrapped.registerDataSetObserver(observer);
        }

        public void unregisterDataSetObserver(DataSetObserver observer) {
            this.mWrapped.unregisterDataSetObserver(observer);
        }

        public int getCount() {
            return this.mWrapped.getCount();
        }

        public Object getItem(int position) {
            return this.mWrapped.getItem(position);
        }

        public long getItemId(int position) {
            return this.mWrapped.getItemId(position);
        }

        public boolean hasStableIds() {
            return this.mWrapped.hasStableIds();
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View view = this.mWrapped.getView(position, convertView, parent);
            if (view instanceof Checkable) {
                Checkable checkable = (Checkable) view;
                checkable.setCheckable(EditableListViewWrapperDeprecated.this.isInChoiceMode());
                checkable.setChecked(EditableListViewWrapperDeprecated.this.mCheckState.getCheckState(position));
                EditableListViewWrapperDeprecated.this.mAnimationManager.resetViewPropertyIfNeed(view, convertView, position);
                return view;
            }
            throw new IllegalArgumentException("view must be instance of Checkable!");
        }

        public int getItemViewType(int position) {
            return this.mWrapped.getItemViewType(position);
        }

        public int getViewTypeCount() {
            return this.mWrapped.getViewTypeCount();
        }

        public boolean isEmpty() {
            return this.mWrapped.isEmpty();
        }
    }

    private class SimpleTimeLineWrapper extends SimpleWrapper implements StickyGridHeadersSimpleAdapter {
        private StickyGridHeadersSimpleAdapter mWrapped;

        public SimpleTimeLineWrapper(StickyGridHeadersSimpleAdapter wrapped) {
            super(wrapped);
            this.mWrapped = wrapped;
        }

        public long getHeaderId(int position) {
            return this.mWrapped.getHeaderId(position);
        }

        public View getHeaderView(int position, View convertView, ViewGroup parent) {
            View view = this.mWrapped.getHeaderView(position, convertView, parent);
            if (view instanceof CheckableView) {
                EditableListViewWrapperDeprecated.this.setCheckableHeaderView((CheckableView) view, ((StickyGridHeadersGridView) EditableListViewWrapperDeprecated.this.mListView).getGroupIndexByItemIndex(position));
            }
            return view;
        }

        public boolean shouldDrawDivider() {
            return this.mWrapped.shouldDrawDivider();
        }

        public View getDividerView(int position, View convertView, ViewGroup parent) {
            return this.mWrapped.getDividerView(position, convertView, parent);
        }
    }

    private class TimeLineWrapper extends SimpleWrapper implements StickyGridHeadersBaseAdapter {
        private StickyGridHeadersBaseAdapter mWrapped;

        public TimeLineWrapper(StickyGridHeadersBaseAdapter wrapped) {
            super(wrapped);
            this.mWrapped = wrapped;
        }

        public int getCountForHeader(int header) {
            return this.mWrapped.getCountForHeader(header);
        }

        public int getNumHeaders() {
            return this.mWrapped.getNumHeaders();
        }

        public View getHeaderView(int position, View convertView, ViewGroup parent) {
            View view = this.mWrapped.getHeaderView(position, convertView, parent);
            if (view instanceof CheckableView) {
                EditableListViewWrapperDeprecated.this.setCheckableHeaderView((CheckableView) view, position);
            }
            return view;
        }

        public boolean shouldDrawDivider() {
            return this.mWrapped.shouldDrawDivider();
        }

        public View getDividerView(int position, View convertView, ViewGroup parent) {
            return this.mWrapped.getDividerView(position, convertView, parent);
        }
    }

    public EditableListViewWrapperDeprecated(AbsListView listView) {
        if (listView == null) {
            throw new IllegalArgumentException("listview can't be null");
        }
        this.mListView = listView;
        this.mAdapterWrappers = new ArrayMap();
        this.mListView.setOnTouchListener(this.mAnimationManager);
        this.mListView.setOnScrollListener(this.mScrollDelegate);
    }

    public void setChoiceMode(int choiceMode) {
        if (3 == choiceMode) {
            this.mListView.setLongClickable(true);
            this.mListView.setChoiceMode(0);
            this.mListView.setOnItemLongClickListener(this.mEnterActionModeListener);
            return;
        }
        this.mListView.setChoiceMode(choiceMode);
    }

    public void enableScaleImageViewAniWhenInActionMode() {
        this.mAnimationManager.enableScaleImageViewAni();
    }

    public void disableScaleImageViewAniWhenInActionMode() {
        this.mAnimationManager.disableScaleImageViewAni();
    }

    public ListAdapter getAdapter() {
        return this.mAdapterWrapper != null ? this.mAdapterWrapper.mWrapped : null;
    }

    public void setAdapter(ListAdapter adapter) {
        ListAdapter old = this.mAdapterWrapper;
        this.mAdapterWrapper = (SimpleWrapper) this.mAdapterWrappers.get(adapter);
        if (old == null || old != this.mAdapterWrapper) {
            if (this.mAdapterWrapper != null) {
                this.mAdapterWrapper.unregisterDataSetObserver(this.mRestoreCheckStateObserver);
            }
            this.mCheckState = new CheckState();
            if (adapter == null) {
                this.mAdapterWrapper = null;
                this.mListView.setAdapter(null);
                handleDataInvalid();
                return;
            }
            if (this.mAdapterWrapper == null) {
                if (adapter instanceof StickyGridHeadersBaseAdapter) {
                    this.mAdapterWrapper = new TimeLineWrapper((StickyGridHeadersBaseAdapter) adapter);
                } else if (adapter instanceof StickyGridHeadersSimpleAdapter) {
                    this.mAdapterWrapper = new SimpleTimeLineWrapper((StickyGridHeadersSimpleAdapter) adapter);
                } else {
                    this.mAdapterWrapper = new SimpleWrapper(adapter);
                }
                this.mAdapterWrappers.put(adapter, this.mAdapterWrapper);
            }
            if ((adapter instanceof StickyGridHeadersBaseAdapter) || (adapter instanceof StickyGridHeadersSimpleAdapter)) {
                this.mCheckState = new CheckStateWithGroup(this.mListView, this.mAnimationManager);
            }
            this.mAdapterWrapper.registerDataSetObserver(this.mRestoreCheckStateObserver);
            this.mListView.setAdapter(this.mAdapterWrapper);
            this.mCheckState.bind(this.mAdapterWrapper);
            handleDataChanged();
            return;
        }
        Log.d("EditableListViewWrapperDeprecated", "setAdapter the same adapter");
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mItemClickDelegate = listener;
        this.mListView.setOnItemClickListener(listener);
    }

    public void setOnScrollListener(OnScrollListener l) {
        this.mScrollListener = l;
    }

    public void setEmptyView(View emptyView) {
        this.mListView.setEmptyView(emptyView);
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

    public boolean isInActionMode() {
        return this.mIsInActionMode;
    }

    public long[] getCheckedItemIds() {
        return this.mCheckState.getCheckedItemIds();
    }

    public int[] getCheckedItemOrderedPositions() {
        return this.mCheckState.getCheckedItemOrderedPositions();
    }

    public List<CheckedItem> getCheckedItems() {
        List<CheckedItem> checkedItems = new ArrayList();
        if (this.mAdapterWrapper != null && (this.mAdapterWrapper.getWrapped() instanceof BaseMediaAdapterDeprecated)) {
            BaseMediaAdapterDeprecated originalAdapter = (BaseMediaAdapterDeprecated) this.mAdapterWrapper.getWrapped();
            int[] positions = getCheckedItemOrderedPositions();
            if (positions != null && positions.length > 0) {
                for (int checkedItem : positions) {
                    CheckedItem checkedItem2 = originalAdapter.getCheckedItem(checkedItem);
                    if (checkedItem2 != null) {
                        checkedItems.add(checkedItem2);
                    }
                }
            }
        }
        return checkedItems;
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
            this.mChoiceActionMode = this.mListView.startActionMode(this.mMultiChoiceModeCallback);
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

    public void startChoiceMode() {
        checkMultiChoiceModeCallback();
        if (!this.mIsInChoiceMode) {
            this.mIsInChoiceMode = true;
            enterChoiceMode();
        }
    }

    public boolean isAllItemsChecked() {
        int checkedCount = this.mCheckState.getCount();
        return checkedCount > 0 && checkedCount == this.mAdapterWrapper.getCount();
    }

    public void setAllItemsCheckState(boolean checked) {
        this.mCheckState.setAllChecked(checked);
        updateOnScreenViewsState();
        updateActionMode();
        this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(this.mChoiceActionMode, checked);
        if (this.mListView instanceof StickyGridHeadersGridView) {
            this.mAnimationManager.startScaleAllItemImageViewAnimation((StickyGridHeadersGridView) this.mListView, checked);
        }
    }

    private void updateOnScreenViewsState() {
        int first = this.mListView.getFirstVisiblePosition();
        for (int i = this.mListHeaderCount; i < this.mListView.getChildCount(); i++) {
            View view = this.mListView.getChildAt(i);
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(this.mCheckState.getCheckState(this.mListView.getItemIdAtPosition(first + i)));
            }
        }
    }

    private void updateActionMode() {
        int i = 1;
        if (this.mChoiceActionMode != null) {
            if (this.mCheckState.getCount() == 0) {
                this.mChoiceActionMode.setTitle(this.mListView.getResources().getString(miui.R.string.select_item));
            } else {
                this.mChoiceActionMode.setTitle(this.mListView.getResources().getQuantityString(miui.R.plurals.items_selected, this.mCheckState.getCount(), new Object[]{Integer.valueOf(this.mCheckState.getCount())}));
            }
            if (this.mEditActionMode != null) {
                Context context = this.mListView.getContext();
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
        this.mListView.setLongClickable(false);
        this.mListView.setOnItemClickListener(this.mCheckItemListener);
        for (int i = 0; i < this.mListView.getChildCount(); i++) {
            View view = this.mListView.getChildAt(i);
            if (view instanceof Checkable) {
                ((Checkable) view).setCheckable(true);
            }
        }
        this.mAnimationManager.startEnterActionModeAni();
        this.mCheckState.clear();
        notifyDataChanged();
    }

    private void exitChoiceMode() {
        this.mListView.setLongClickable(true);
        this.mListView.setOnItemClickListener(this.mItemClickDelegate);
        for (int i = 0; i < this.mListView.getChildCount(); i++) {
            View view = this.mListView.getChildAt(i);
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
        if (this.mListView instanceof StickyGridHeadersGridView) {
            ((StickyGridHeadersGridView) this.mListView).notifyChanged();
        }
    }

    private boolean setGroupCheck(int headerPosition) {
        if (!(this.mListView instanceof StickyGridHeadersGridView)) {
            return false;
        }
        boolean checked = ((CheckStateWithGroup) this.mCheckState).setGroupCheckState(headerPosition);
        updateOnScreenViewsState();
        updateActionMode();
        return checked;
    }

    private void setCheckableHeaderView(CheckableView checkableView, final int position) {
        checkableView.setCheckable(isInChoiceMode());
        if (isInChoiceMode()) {
            checkableView.setCheckableListener(new OnClickListener() {
                public void onClick(View v) {
                    EditableListViewWrapperDeprecated.this.setGroupCheck(position);
                    EditableListViewWrapperDeprecated.this.notifyDataChanged();
                    if (EditableListViewWrapperDeprecated.this.mMultiChoiceModeCallback != null) {
                        EditableListViewWrapperDeprecated.this.mMultiChoiceModeCallback.mWrapped.onAllItemsCheckedStateChanged(EditableListViewWrapperDeprecated.this.mChoiceActionMode, true);
                    }
                }
            });
            checkableView.setChecked(((CheckStateWithGroup) this.mCheckState).getGroupCheckState(position));
        }
    }
}
