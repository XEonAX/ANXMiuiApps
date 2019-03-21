package com.miui.gallery.video.editor.widget.rangeseekbar;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.widget.rangeseekbar.drawable.DisabledRangeDrawable;
import com.miui.gallery.video.editor.widget.rangeseekbar.drawable.ThumbDrawable;
import com.miui.gallery.video.editor.widget.rangeseekbar.drawable.VideoThumbnailBackgroundDrawable;
import com.miui.gallery.video.editor.widget.rangeseekbar.drawable.VideoThumbnailBackgroundDrawable.BitmapProvider;

public class VideoEditorRangeSeekBar extends View {
    private static final int LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
    private float autoMoveSpeed = 0.0f;
    private boolean autoMoving = false;
    private int mAvailableAreaLeft = Integer.MAX_VALUE;
    private float mAvailableAreaOffset = 0.0f;
    private int mAvailableAreaRight = Integer.MAX_VALUE;
    private VideoThumbnailBackgroundDrawable mBackgroundDrawable;
    private int mDragSlop;
    private int mDragState = -1;
    private int mEndRange = Integer.MAX_VALUE;
    private int mHeight;
    private Animator mHideProgressAnimator;
    private Runnable mHideProgressBarAction;
    private boolean mIsShowProgress = true;
    private boolean mIsZooming;
    private float mLastTouchDownX = 0.0f;
    private float mLeftRangeFloat = 0.0f;
    private ThumbDrawable mLeftThumbDrawable;
    private int mLockedAvailableAreaLeft;
    private int mLockedAvailableAreaRight;
    private float mLongPressMoveDistanceFlag;
    private LongPressedRunnable mLongPressedRunnable;
    private int mMax;
    private OnSeekBarChangeListener mOnSeekBarChangeListener;
    private int mProgress;
    private Rect mProgressBounds = new Rect();
    private float mProgressFloat = 0.0f;
    private DisabledRangeDrawable mRangeDrawable;
    private float mRightRangeFloat = 1.0f;
    private ThumbDrawable mRightThumbDrawable;
    private int mScaledTouchSlop;
    private float mStartLongPressMoveDistanceDownXFlag;
    private int mStartRange = 0;
    private boolean mStopSlide = false;
    private int mThumbOffset = 3;
    private int mTotal = Integer.MAX_VALUE;
    private float mTouchDownX;
    private float mTouchMoveX = 0.0f;
    private int mTouchState = 0;
    private int mVisibleAreaBottom;
    private int mVisibleAreaLeft;
    private int mVisibleAreaRight;
    private int mVisibleAreaTop;
    private int mWidth;
    private ThumbDrawable progressDrawable;

    public interface ISeekbarZooming {
        void onAnimationEnd();
    }

    public interface OnSeekBarChangeListener {
        void onProgressChanged(VideoEditorRangeSeekBar videoEditorRangeSeekBar, int i, int i2, boolean z);

        void onProgressPreview(VideoEditorRangeSeekBar videoEditorRangeSeekBar, int i, int i2, boolean z);

        void onStartTrackingTouch(VideoEditorRangeSeekBar videoEditorRangeSeekBar, int i, int i2);
    }

    private class LongPressedRunnable implements Runnable {
        private boolean mIsCanceled;

        private LongPressedRunnable() {
            this.mIsCanceled = false;
        }

        /* synthetic */ LongPressedRunnable(VideoEditorRangeSeekBar x0, AnonymousClass1 x1) {
            this();
        }

        public void cancel() {
            this.mIsCanceled = true;
        }

        public void run() {
            if (!this.mIsCanceled) {
                if ((VideoEditorRangeSeekBar.this.mTouchState == 1 || VideoEditorRangeSeekBar.this.mTouchState == 2) && VideoEditorRangeSeekBar.this.mLongPressMoveDistanceFlag < ((float) VideoEditorRangeSeekBar.this.mScaledTouchSlop)) {
                    int nearByThumbId = VideoEditorRangeSeekBar.this.getNearbyThumbId((int) VideoEditorRangeSeekBar.this.mStartLongPressMoveDistanceDownXFlag, VideoEditorRangeSeekBar.this.mLongPressMoveDistanceFlag < 0.0f);
                    if (nearByThumbId == 1) {
                        VideoEditorRangeSeekBar.this.scaleTo(5.0f, VideoEditorRangeSeekBar.this.mLeftRangeFloat, false);
                    } else if (nearByThumbId == 2) {
                        VideoEditorRangeSeekBar.this.scaleTo(5.0f, VideoEditorRangeSeekBar.this.mRightRangeFloat, false);
                    }
                }
            }
        }
    }

    static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        private int availableAreaLeft;
        private int availableAreaRight;
        public int endRange = Integer.MAX_VALUE;
        private float leftRangeFloat;
        private int lockedAvailableAreaLeft;
        private int lockedAvailableAreaRight;
        public int max;
        public int progress;
        private float progressFloat;
        private float rightRangeFloat;
        public int startRange = 0;
        private Parcelable superState;
        public int total = Integer.MAX_VALUE;

        SavedState(Parcel in) {
            this.superState = in.readParcelable(getClass().getClassLoader());
            this.total = in.readInt();
            this.startRange = in.readInt();
            this.endRange = in.readInt();
            this.max = in.readInt();
            this.progress = in.readInt();
            this.availableAreaLeft = in.readInt();
            this.availableAreaRight = in.readInt();
            this.lockedAvailableAreaLeft = in.readInt();
            this.lockedAvailableAreaRight = in.readInt();
            this.leftRangeFloat = in.readFloat();
            this.rightRangeFloat = in.readFloat();
            this.progressFloat = in.readFloat();
        }

        SavedState(Parcelable superState) {
            this.superState = superState;
        }

        public Parcelable getSuperState() {
            return this.superState;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.superState, flags);
            dest.writeInt(this.total);
            dest.writeInt(this.startRange);
            dest.writeInt(this.endRange);
            dest.writeInt(this.max);
            dest.writeInt(this.progress);
            dest.writeInt(this.availableAreaLeft);
            dest.writeInt(this.availableAreaRight);
            dest.writeInt(this.lockedAvailableAreaLeft);
            dest.writeInt(this.lockedAvailableAreaRight);
            dest.writeFloat(this.leftRangeFloat);
            dest.writeFloat(this.rightRangeFloat);
            dest.writeFloat(this.progressFloat);
        }
    }

    private class VideoEditorRangeSeekBarBitmapProviderWrapper implements BitmapProvider {
        private BitmapProvider mWrapped;

        public VideoEditorRangeSeekBarBitmapProviderWrapper(BitmapProvider bitmapProvider) {
            this.mWrapped = bitmapProvider;
        }

        public Bitmap getBitmap(int location, int total) {
            return this.mWrapped.getBitmap((int) (((float) VideoEditorRangeSeekBar.this.mTotal) * (((float) location) / ((float) total))), VideoEditorRangeSeekBar.this.mTotal);
        }
    }

    public VideoEditorRangeSeekBar(Context context) {
        super(context);
        init();
    }

    public VideoEditorRangeSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public VideoEditorRangeSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener onSeekBarChangeListener) {
        this.mOnSeekBarChangeListener = onSeekBarChangeListener;
    }

    private void init() {
        this.mLeftThumbDrawable = new ThumbDrawable(getResources().getDrawable(R.drawable.video_editor_handle_left));
        this.mRightThumbDrawable = new ThumbDrawable(getResources().getDrawable(R.drawable.video_editor_handle_right));
        this.progressDrawable = new ThumbDrawable(getResources().getDrawable(R.drawable.video_editor_seek_progress));
        this.mBackgroundDrawable = new VideoThumbnailBackgroundDrawable();
        this.mBackgroundDrawable.setCLayoutDirection(getLayoutDirection() == 0 ? 0 : 1);
        this.mRangeDrawable = new DisabledRangeDrawable(new ColorDrawable(getResources().getColor(R.color.video_editor_trim_mask_bg)));
        this.mRightThumbDrawable.setCallback(this);
        this.mLeftThumbDrawable.setCallback(this);
        this.mBackgroundDrawable.setCallback(this);
        this.mRangeDrawable.setCallback(this);
        this.mDragSlop = (int) (((double) this.progressDrawable.getIntrinsicWidth()) * 1.5d);
        this.mScaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        int contentPaddingTop = getResources().getDimensionPixelSize(R.dimen.video_editor_video_trim_seek_bar_content_padding_top);
        int progressTop = getResources().getDimensionPixelSize(R.dimen.video_editor_video_trim_progress_bar_content_padding_top);
        int progressBottom = getResources().getDimensionPixelSize(R.dimen.video_editor_video_trim_progress_bar_content_padding_bottom);
        int contentPaddingBottom = getResources().getDimensionPixelSize(R.dimen.video_editor_video_trim_seek_bar_content_padding_bottom);
        this.mBackgroundDrawable.setPadding(0, contentPaddingTop, 0, contentPaddingBottom);
        this.mRangeDrawable.setPadding(0, contentPaddingTop, 0, contentPaddingBottom);
        this.progressDrawable.setPadding(0, progressTop, 0, progressBottom);
        int thumbPaddingTop = contentPaddingTop;
        int thumbPaddingBottom = getResources().getDimensionPixelSize(R.dimen.video_editor_video_trim_seek_bar_thumb_bar_padding_bottom);
        this.mLeftThumbDrawable.setPadding(0, thumbPaddingTop, 0, thumbPaddingBottom);
        this.mRightThumbDrawable.setPadding(0, thumbPaddingTop, 0, thumbPaddingBottom);
    }

    public void onRtlPropertiesChanged(int layoutDirection) {
        super.onRtlPropertiesChanged(layoutDirection);
        this.mBackgroundDrawable.setCLayoutDirection(layoutDirection == 0 ? 0 : 1);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed) {
            this.mWidth = right - left;
            this.mHeight = bottom - top;
            this.mLeftThumbDrawable.setSize(this.mLeftThumbDrawable.getIntrinsicWidth(), this.mHeight);
            this.mRightThumbDrawable.setSize(this.mRightThumbDrawable.getIntrinsicWidth(), this.mHeight);
            this.progressDrawable.setSize(this.progressDrawable.getIntrinsicWidth(), this.mHeight);
            this.mVisibleAreaLeft = this.mLeftThumbDrawable.getPaddingLeft() + getPaddingLeft();
            this.mVisibleAreaRight = (this.mWidth - this.mRightThumbDrawable.getPaddingRight()) - getPaddingRight();
            this.mVisibleAreaTop = getPaddingTop();
            this.mVisibleAreaBottom = this.mHeight - getPaddingBottom();
            this.mBackgroundDrawable.setDrawingArea(this.mVisibleAreaLeft, this.mVisibleAreaRight);
            this.mRangeDrawable.setDrawingArea(this.mVisibleAreaLeft - this.mThumbOffset, this.mVisibleAreaRight + this.mThumbOffset);
            this.mLeftThumbDrawable.setDrawingArea(this.mVisibleAreaLeft - this.mThumbOffset, this.mVisibleAreaRight + this.mThumbOffset);
            this.mRightThumbDrawable.setDrawingArea(this.mVisibleAreaLeft - this.mThumbOffset, this.mVisibleAreaRight + this.mThumbOffset);
            this.progressDrawable.setDrawingArea(this.mVisibleAreaLeft - this.mThumbOffset, this.mVisibleAreaRight + this.mThumbOffset);
            if (this.mAvailableAreaLeft == Integer.MAX_VALUE) {
                this.mAvailableAreaLeft = this.mVisibleAreaLeft;
                this.mLockedAvailableAreaLeft = this.mAvailableAreaLeft;
            }
            if (this.mAvailableAreaRight == Integer.MAX_VALUE) {
                this.mAvailableAreaRight = this.mVisibleAreaRight;
                this.mLockedAvailableAreaRight = this.mAvailableAreaRight;
            }
            updateState();
        }
    }

    private void updateState() {
        int availableAreaWidth = getAvailableWidth();
        this.mProgressBounds.set((int) (((float) this.mAvailableAreaLeft) + this.mAvailableAreaOffset), this.mVisibleAreaTop, (int) (((float) this.mAvailableAreaRight) + this.mAvailableAreaOffset), this.mVisibleAreaBottom);
        this.mBackgroundDrawable.setBounds(this.mProgressBounds);
        this.mRangeDrawable.setBounds(this.mProgressBounds);
        this.mBackgroundDrawable.setBounds(this.mProgressBounds);
        int mLeftThumbPosition = (int) (this.mAvailableAreaOffset + (((((float) availableAreaWidth) * this.mLeftRangeFloat) + ((float) this.mAvailableAreaLeft)) + 0.5f));
        int mRightThumbPosition = (int) (this.mAvailableAreaOffset + (((((float) availableAreaWidth) * this.mRightRangeFloat) + ((float) this.mAvailableAreaLeft)) + 0.5f));
        if (this.mDragState == 2 && this.mTouchState == 2) {
            int progressThumbPosition = (int) (this.mAvailableAreaOffset + (((((float) availableAreaWidth) * this.mProgressFloat) + ((float) this.mAvailableAreaLeft)) + 0.5f));
            int leftLimit = mLeftThumbPosition + ((int) (((float) this.progressDrawable.getIntrinsicWidth()) * 0.9f));
            int rightLimit = mRightThumbPosition + ((int) (((float) this.progressDrawable.getIntrinsicWidth()) * 0.1f));
            if (progressThumbPosition <= leftLimit) {
                progressThumbPosition = leftLimit;
            } else if (progressThumbPosition >= rightLimit) {
                progressThumbPosition = rightLimit;
            }
            this.progressDrawable.moveProgressThumb(progressThumbPosition, this.mHeight / 2);
        } else {
            this.progressDrawable.moveTo(((int) (this.mAvailableAreaOffset + ((((float) mLeftThumbPosition) + (((float) (mRightThumbPosition - mLeftThumbPosition)) * this.mProgressFloat)) + 0.5f))) + ((int) (((float) this.progressDrawable.getIntrinsicWidth()) * 0.4f)), this.mHeight / 2);
        }
        this.mLeftThumbDrawable.moveLeftThumb(mLeftThumbPosition, this.mHeight / 2);
        this.mRightThumbDrawable.moveRightThumb(mRightThumbPosition, this.mHeight / 2);
        this.mRangeDrawable.setStartRangeScale(this.mLeftRangeFloat);
        this.mRangeDrawable.setEndRangeScale(this.mRightRangeFloat);
        invalidate();
    }

    public int getAvailableWidth() {
        return this.mAvailableAreaRight - this.mAvailableAreaLeft;
    }

    public int getVisibleAreaWidth() {
        return this.mVisibleAreaRight - this.mVisibleAreaLeft;
    }

    public int getAvailableHeight() {
        return (this.mHeight - this.mBackgroundDrawable.getPaddingTop()) - this.mBackgroundDrawable.getPaddingBottom();
    }

    private void onStartTrackingTouch() {
        int i = 1;
        int i2 = 0;
        if (this.mOnSeekBarChangeListener == null) {
            return;
        }
        OnSeekBarChangeListener onSeekBarChangeListener;
        if (getLayoutDirection() == 0) {
            onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (this.mDragState != 0) {
                i2 = 1;
            }
            onSeekBarChangeListener.onStartTrackingTouch(this, i2, this.mDragState == 0 ? this.mStartRange : this.mEndRange);
            return;
        }
        onSeekBarChangeListener = this.mOnSeekBarChangeListener;
        if (this.mDragState != 0) {
            i = 0;
        }
        onSeekBarChangeListener.onStartTrackingTouch(this, i, this.mDragState == 0 ? this.mEndRange : this.mStartRange);
    }

    private void onStopTrackingTouch() {
        int i = 1;
        int i2 = 0;
        if (this.mOnSeekBarChangeListener == null) {
            return;
        }
        OnSeekBarChangeListener onSeekBarChangeListener;
        if (getLayoutDirection() == 0) {
            onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (this.mDragState != 0) {
                i2 = 1;
            }
            onSeekBarChangeListener.onStartTrackingTouch(this, i2, this.mDragState == 0 ? this.mStartRange : this.mEndRange);
            return;
        }
        onSeekBarChangeListener = this.mOnSeekBarChangeListener;
        if (this.mDragState != 0) {
            i = 0;
        }
        onSeekBarChangeListener.onStartTrackingTouch(this, i, this.mDragState == 0 ? this.mEndRange : this.mStartRange);
    }

    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                this.mTouchDownX = event.getX();
                this.mDragState = -1;
                this.mTouchState = 1;
                this.mTouchMoveX = 0.0f;
                this.mLongPressMoveDistanceFlag = 0.0f;
                this.mStartLongPressMoveDistanceDownXFlag = event.getX();
                this.mLongPressedRunnable = new LongPressedRunnable(this, null);
                postDelayed(this.mLongPressedRunnable, (long) LONGPRESS_TIMEOUT);
                break;
            case 1:
                this.mTouchState = 0;
                if (this.mLongPressedRunnable != null) {
                    this.mLongPressedRunnable.cancel();
                    this.mLongPressedRunnable = null;
                }
                if (this.mDragState != -1) {
                    onStopTrackingTouch();
                    this.mDragState = -1;
                    this.autoMoving = false;
                }
                recoverToLockedArea();
                break;
            case 2:
                this.mTouchState = 2;
                this.mLongPressMoveDistanceFlag = event.getX() - this.mStartLongPressMoveDistanceDownXFlag;
                this.mTouchMoveX = event.getX() - this.mTouchDownX;
                if (this.mAvailableAreaLeft == this.mLockedAvailableAreaLeft || this.mAvailableAreaRight == this.mLockedAvailableAreaRight) {
                    if (this.autoMoving || Math.abs(this.mLongPressMoveDistanceFlag) >= ((float) (this.mScaledTouchSlop / 2))) {
                        if (this.mLongPressedRunnable != null) {
                            this.mLongPressedRunnable.cancel();
                            this.mLongPressedRunnable = null;
                        }
                        this.mLongPressMoveDistanceFlag = 0.0f;
                        this.mStartLongPressMoveDistanceDownXFlag = event.getX();
                    } else if (this.mLongPressedRunnable == null) {
                        this.mLongPressedRunnable = new LongPressedRunnable(this, null);
                        postDelayed(this.mLongPressedRunnable, (long) LONGPRESS_TIMEOUT);
                    }
                }
                if (this.mDragState != -1) {
                    if (this.mStopSlide) {
                        if (this.mDragState != 0 || this.mTouchMoveX >= 0.0f) {
                            if (this.mDragState == 1 && this.mTouchMoveX > 0.0f) {
                                trackTouchEvent(event.getX());
                                break;
                            }
                        }
                        trackTouchEvent(event.getX());
                        break;
                    }
                    trackTouchEvent(event.getX());
                    break;
                }
                this.mTouchMoveX = event.getX() - this.mTouchDownX;
                if (Math.abs(this.mTouchMoveX) > ((float) this.mScaledTouchSlop)) {
                    boolean z;
                    int i = (int) this.mTouchDownX;
                    if (this.mTouchMoveX < 0.0f) {
                        z = true;
                    } else {
                        z = false;
                    }
                    switch (getNearbyThumbId(i, z)) {
                        case 1:
                            this.mDragState = 0;
                            break;
                        case 2:
                            this.mDragState = 1;
                            break;
                        case 3:
                            this.mDragState = 2;
                            break;
                        default:
                            this.mDragState = -1;
                            break;
                    }
                    if (this.mDragState != -1) {
                        onStartTrackingTouch();
                        break;
                    }
                }
                break;
        }
        return true;
    }

    private void recoverToLockedArea() {
        if (this.mAvailableAreaLeft != this.mLockedAvailableAreaLeft || this.mAvailableAreaRight != this.mLockedAvailableAreaRight || Float.compare(this.mAvailableAreaOffset, 0.0f) != 0) {
            if (Float.compare(this.mAvailableAreaOffset, 0.0f) != 0) {
                adjustThumb();
            } else {
                zoomAvailableAreaTo(this.mLockedAvailableAreaLeft, this.mLockedAvailableAreaRight, true, null);
            }
        }
    }

    private void adjustThumb() {
        float leftPosition = ((float) this.mLockedAvailableAreaLeft) + (((float) (this.mLockedAvailableAreaRight - this.mLockedAvailableAreaLeft)) * this.mLeftRangeFloat);
        float rightPosition = ((float) this.mLockedAvailableAreaLeft) + (((float) (this.mLockedAvailableAreaRight - this.mLockedAvailableAreaLeft)) * this.mRightRangeFloat);
        float offset;
        int newRight;
        if (leftPosition >= ((float) this.mVisibleAreaLeft) && rightPosition <= ((float) this.mVisibleAreaRight)) {
            clearAvailableAreaOffset();
            zoomAvailableAreaTo(this.mLockedAvailableAreaLeft, this.mLockedAvailableAreaRight, true, null);
        } else if (rightPosition - leftPosition >= ((float) getVisibleAreaWidth())) {
            clearAvailableAreaOffset();
            lockFloatRangeTo(this.mLeftRangeFloat, this.mRightRangeFloat, null);
        } else if (rightPosition > ((float) this.mVisibleAreaRight)) {
            offset = ((float) this.mVisibleAreaRight) - rightPosition;
            newRight = (int) ((rightPosition + offset) - 0.5f);
            if (((int) ((leftPosition + offset) - 0.5f)) >= this.mVisibleAreaLeft && newRight <= this.mVisibleAreaRight) {
                clearAvailableAreaOffset();
                zoomAvailableAreaTo((int) (((float) this.mLockedAvailableAreaLeft) + offset), (int) (((float) this.mLockedAvailableAreaRight) + offset), true, null);
            }
        } else if (leftPosition < ((float) this.mVisibleAreaLeft)) {
            offset = ((float) this.mVisibleAreaLeft) - leftPosition;
            newRight = (int) ((rightPosition + offset) + 0.5f);
            if (((int) ((leftPosition + offset) + 0.5f)) >= this.mVisibleAreaLeft && newRight <= this.mVisibleAreaRight) {
                clearAvailableAreaOffset();
                zoomAvailableAreaTo((int) (((float) this.mLockedAvailableAreaLeft) + offset), (int) (((float) this.mLockedAvailableAreaRight) + offset), true, null);
            }
        } else {
            clearAvailableAreaOffset();
            lockFloatRangeTo(this.mLeftRangeFloat, this.mRightRangeFloat, null);
        }
    }

    private void clearAvailableAreaOffset() {
        this.mAvailableAreaLeft = (int) (((float) this.mAvailableAreaLeft) + this.mAvailableAreaOffset);
        this.mAvailableAreaRight = (int) (((float) this.mAvailableAreaRight) + this.mAvailableAreaOffset);
        this.mAvailableAreaOffset = 0.0f;
    }

    public void lockRangeTo(int start, int end, ISeekbarZooming iSeekbarZooming) {
        if (end <= this.mTotal && start < end && end - start > this.mWidth) {
            if (getLayoutDirection() == 0) {
                lockFloatRangeTo(((float) start) / ((float) this.mTotal), ((float) end) / ((float) this.mTotal), iSeekbarZooming);
            } else {
                lockFloatRangeTo(1.0f - (((float) end) / ((float) this.mTotal)), 1.0f - (((float) start) / ((float) this.mTotal)), iSeekbarZooming);
            }
        }
    }

    private void lockFloatRangeTo(float start, float end, ISeekbarZooming iSeekbarZooming) {
        int visibleAreaWidth = getVisibleAreaWidth();
        float leftPosition = ((float) this.mVisibleAreaLeft) + (((float) visibleAreaWidth) * start);
        float rightPosition = ((float) this.mVisibleAreaLeft) + (((float) visibleAreaWidth) * end);
        float scale = ((float) visibleAreaWidth) / (rightPosition - leftPosition);
        zoomAvailableAreaTo((int) (((float) this.mVisibleAreaLeft) - ((leftPosition - ((float) this.mVisibleAreaLeft)) * scale)), (int) (((float) this.mVisibleAreaRight) + ((((float) this.mVisibleAreaRight) - rightPosition) * scale)), true, iSeekbarZooming);
    }

    private void scaleTo(float scale, float center, boolean locked) {
        float scaleWidth = ((float) getAvailableWidth()) * (scale - 1.0f);
        zoomAvailableAreaTo((int) (((float) this.mAvailableAreaLeft) - (scaleWidth * center)), (int) (((float) this.mAvailableAreaRight) + ((1.0f - center) * scaleWidth)), locked, null);
    }

    private void zoomAvailableAreaTo(int newLeft, int newRight, boolean locked, final ISeekbarZooming iSeekbarZooming) {
        if (newRight - newLeft < this.mTotal) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(500);
            animatorSet.setInterpolator(new DecelerateInterpolator());
            Animator animatorLeft = ObjectAnimator.ofInt(this, "AvailableAreaLeft", new int[]{this.mAvailableAreaLeft, newLeft});
            Animator animatorRight = ObjectAnimator.ofInt(this, "AvailableAreaRight", new int[]{this.mAvailableAreaRight, newRight});
            animatorSet.playTogether(new Animator[]{animatorLeft, animatorRight});
            animatorSet.start();
            this.mIsZooming = true;
            animatorSet.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animation) {
                }

                public void onAnimationEnd(Animator animation) {
                    if (iSeekbarZooming != null) {
                        iSeekbarZooming.onAnimationEnd();
                    }
                    VideoEditorRangeSeekBar.this.mIsZooming = false;
                }

                public void onAnimationCancel(Animator animation) {
                }

                public void onAnimationRepeat(Animator animation) {
                }
            });
            if (locked) {
                this.mLockedAvailableAreaLeft = newLeft;
                this.mLockedAvailableAreaRight = newRight;
            }
        }
    }

    public void setAvailableAreaLeft(int availableAreaLeft) {
        this.mAvailableAreaLeft = availableAreaLeft;
        updateState();
    }

    public void setAvailableAreaRight(int availableAreaRight) {
        this.mAvailableAreaRight = availableAreaRight;
        updateState();
    }

    public int getNearbyThumbId(int x, boolean leftFirst) {
        boolean isTogetherWithLeftThumb;
        boolean isTogetherWithRightThumb;
        int leftDistance = Math.abs(this.mLeftThumbDrawable.getLocationX() - x);
        int rightDistance = Math.abs(this.mRightThumbDrawable.getLocationX() - x);
        int progressDistance = Math.abs(this.progressDrawable.getLocationX() - x);
        int gapLeft = Math.abs(this.mLeftThumbDrawable.getLocationX() - this.progressDrawable.getLocationX());
        int gapRight = Math.abs(this.mRightThumbDrawable.getLocationX() - this.progressDrawable.getLocationX());
        if (gapLeft <= this.mDragSlop) {
            isTogetherWithLeftThumb = true;
        } else {
            isTogetherWithLeftThumb = false;
        }
        if (gapRight <= this.mDragSlop) {
            isTogetherWithRightThumb = true;
        } else {
            isTogetherWithRightThumb = false;
        }
        if (leftFirst) {
            if (isTogetherWithLeftThumb && (leftDistance < this.mDragSlop || progressDistance < this.mDragSlop)) {
                return 1;
            }
            if (isTogetherWithRightThumb && (rightDistance < this.mDragSlop || progressDistance < this.mDragSlop)) {
                return 3;
            }
            if (this.mIsShowProgress && progressDistance < this.mDragSlop) {
                return 3;
            }
            if (leftDistance < this.mDragSlop) {
                return 1;
            }
            if (rightDistance < this.mDragSlop) {
                return 2;
            }
        } else if (isTogetherWithRightThumb && (rightDistance < this.mDragSlop || progressDistance < this.mDragSlop)) {
            return 2;
        } else {
            if (isTogetherWithLeftThumb && (leftDistance < this.mDragSlop || progressDistance < this.mDragSlop)) {
                return 3;
            }
            if (this.mIsShowProgress && progressDistance < this.mDragSlop) {
                return 3;
            }
            if (rightDistance < this.mDragSlop) {
                return 2;
            }
            if (leftDistance < this.mDragSlop) {
                return 1;
            }
        }
        return 0;
    }

    private void trackTouchEvent(float touchDownX) {
        int i = 0;
        this.mLastTouchDownX = touchDownX;
        float touchLocationX = touchDownX;
        if (touchLocationX < ((float) this.mVisibleAreaLeft)) {
            this.autoMoveSpeed = (((float) this.mVisibleAreaLeft) - touchLocationX) * 0.2f;
            touchLocationX = (float) this.mVisibleAreaLeft;
        } else if (touchLocationX > ((float) this.mVisibleAreaRight)) {
            this.autoMoveSpeed = (((float) this.mVisibleAreaRight) - touchLocationX) * 0.2f;
            touchLocationX = (float) this.mVisibleAreaRight;
        } else {
            this.autoMoveSpeed = 0.0f;
        }
        float scale = ((touchLocationX - ((float) this.mAvailableAreaLeft)) - this.mAvailableAreaOffset) / ((float) getAvailableWidth());
        switch (this.mDragState) {
            case 0:
                if (scale <= this.mRightRangeFloat) {
                    this.mLeftRangeFloat = scale;
                    break;
                } else {
                    this.mLeftRangeFloat = this.mRightRangeFloat;
                    break;
                }
            case 1:
                if (scale >= this.mLeftRangeFloat) {
                    this.mRightRangeFloat = scale;
                    break;
                } else {
                    this.mRightRangeFloat = this.mLeftRangeFloat;
                    break;
                }
            case 2:
                this.mProgressFloat = scale;
                break;
        }
        updateRangeValue();
        if (Float.compare(this.autoMoveSpeed, 0.0f) == 0) {
            this.autoMoving = false;
        } else if ((this.autoMoveSpeed > 0.0f && this.mAvailableAreaLeft < this.mVisibleAreaLeft) || (this.autoMoveSpeed < 0.0f && this.mAvailableAreaRight > this.mVisibleAreaRight)) {
            if (this.mLeftRangeFloat < this.mRightRangeFloat) {
                this.autoMoving = true;
            } else {
                this.autoMoving = false;
            }
        }
        OnSeekBarChangeListener onSeekBarChangeListener;
        if (this.mDragState == 2) {
            if (canSlip()) {
                this.mOnSeekBarChangeListener.onProgressPreview(this, -1, this.mProgress, true);
            }
        } else if (getLayoutDirection() == 0) {
            onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (this.mDragState != 0) {
                i = 1;
            }
            onSeekBarChangeListener.onProgressChanged(this, i, this.mDragState == 0 ? this.mStartRange : this.mEndRange, true);
        } else {
            onSeekBarChangeListener = this.mOnSeekBarChangeListener;
            if (this.mDragState == 0) {
                i = 1;
            }
            onSeekBarChangeListener.onProgressChanged(this, i, this.mDragState == 0 ? this.mEndRange : this.mStartRange, true);
        }
        updateState();
    }

    private boolean canSlip() {
        return this.mProgress > this.mStartRange + (this.progressDrawable.getIntrinsicWidth() / 2) && this.mProgress < this.mEndRange + (this.progressDrawable.getIntrinsicWidth() / 2);
    }

    private void updateRangeValue() {
        if (this.mDragState == 2) {
            this.mProgress = (int) ((((float) this.mTotal) * this.mProgressFloat) + 0.5f);
        } else if (getLayoutDirection() == 0) {
            this.mStartRange = (int) ((((float) this.mTotal) * this.mLeftRangeFloat) + 0.5f);
            this.mEndRange = (int) ((((float) this.mTotal) * this.mRightRangeFloat) + 0.5f);
        } else {
            this.mStartRange = (int) ((((float) this.mTotal) * (1.0f - this.mRightRangeFloat)) + 0.5f);
            this.mEndRange = (int) ((((float) this.mTotal) * (1.0f - this.mLeftRangeFloat)) + 0.5f);
        }
    }

    public int getStartRange() {
        return this.mStartRange;
    }

    public int getEndRange() {
        return this.mEndRange;
    }

    public void setTotal(int total) {
        this.mTotal = total;
        updateRangeValue();
    }

    public void setStartRange(int range) {
        if (range < 0) {
            this.mStartRange = 0;
        } else if (range > this.mEndRange) {
            this.mStartRange = this.mEndRange;
        } else {
            this.mStartRange = range;
        }
        if (getLayoutDirection() == 0) {
            this.mLeftRangeFloat = ((float) this.mStartRange) / ((float) this.mTotal);
        } else {
            this.mRightRangeFloat = 1.0f - (((float) this.mStartRange) / ((float) this.mTotal));
        }
        updateState();
    }

    public void setMax(int max) {
        this.mProgress = (int) (((float) this.mMax) * (((float) this.mProgress) / ((float) this.mMax)));
        this.mMax = max;
        if (getLayoutDirection() == 0) {
            this.mProgressFloat = ((float) this.mProgress) / ((float) this.mMax);
        } else {
            this.mProgressFloat = 1.0f - (((float) this.mProgress) / ((float) this.mMax));
        }
        updateState();
    }

    public void setThumbnailAspectRatio(float ratio) {
        this.mBackgroundDrawable.setAspectRatio(ratio);
    }

    public void setProgressBarAlpha(int alpha) {
        this.progressDrawable.setAlpha(alpha);
        invalidate();
    }

    public void showProgressBar() {
        if (!this.mIsShowProgress) {
            if (this.mHideProgressBarAction != null) {
                removeCallbacks(this.mHideProgressBarAction);
                this.mHideProgressBarAction = null;
            }
            if (this.mHideProgressAnimator != null) {
                this.mHideProgressAnimator.cancel();
                this.mHideProgressAnimator = null;
            }
            this.mIsShowProgress = true;
            setProgressBarAlpha(255);
        }
    }

    public void hideProgressBar() {
        if (this.mIsShowProgress) {
            hideProgressBar(false);
        }
    }

    public void hideProgressBar(boolean anim) {
        if (anim) {
            this.mHideProgressAnimator = ObjectAnimator.ofInt(this, "ProgressBarAlpha", new int[]{255, 0}).setDuration(1000);
            this.mHideProgressAnimator.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animation) {
                }

                public void onAnimationEnd(Animator animation) {
                    VideoEditorRangeSeekBar.this.mIsShowProgress = false;
                    VideoEditorRangeSeekBar.this.mHideProgressAnimator = null;
                }

                public void onAnimationCancel(Animator animation) {
                }

                public void onAnimationRepeat(Animator animation) {
                }
            });
            this.mHideProgressAnimator.start();
            return;
        }
        this.mIsShowProgress = false;
        setProgressBarAlpha(0);
    }

    public void setProgress(int progress) {
        if (progress < 0) {
            this.mProgress = 0;
        } else if (progress > this.mMax) {
            this.mProgress = this.mMax;
        } else {
            this.mProgress = progress;
        }
        if (getLayoutDirection() == 0) {
            this.mProgressFloat = ((float) this.mProgress) / ((float) this.mMax);
        } else {
            this.mProgressFloat = 1.0f - (((float) this.mProgress) / ((float) this.mMax));
        }
        updateState();
    }

    public void setEndRange(int range) {
        if (range > this.mTotal) {
            this.mEndRange = this.mTotal;
        } else if (range < this.mStartRange) {
            this.mEndRange = this.mStartRange;
        } else {
            this.mEndRange = range;
        }
        if (getLayoutDirection() == 0) {
            this.mRightRangeFloat = ((float) this.mEndRange) / ((float) this.mTotal);
        } else {
            this.mLeftRangeFloat = 1.0f - (((float) this.mEndRange) / ((float) this.mTotal));
        }
        updateState();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mBackgroundDrawable.draw(canvas);
        this.mRangeDrawable.draw(canvas);
        this.mLeftThumbDrawable.draw(canvas);
        this.mRightThumbDrawable.draw(canvas);
        if (this.mIsShowProgress) {
            this.progressDrawable.draw(canvas);
        }
        if (this.autoMoving) {
            autoMove();
        }
    }

    private void autoMove() {
        if (this.autoMoving) {
            this.mAvailableAreaOffset += this.autoMoveSpeed;
            if (((float) this.mAvailableAreaLeft) + this.mAvailableAreaOffset > ((float) this.mVisibleAreaLeft)) {
                this.mAvailableAreaOffset = (float) (this.mVisibleAreaLeft - this.mAvailableAreaLeft);
            }
            if (((float) this.mAvailableAreaRight) + this.mAvailableAreaOffset < ((float) this.mVisibleAreaRight)) {
                this.mAvailableAreaOffset = (float) (this.mVisibleAreaRight - this.mAvailableAreaRight);
            }
            trackTouchEvent(this.mLastTouchDownX);
            invalidate();
        }
    }

    public void setBitmapProvider(BitmapProvider mBitmapProvider) {
        this.mBackgroundDrawable.setmBitmapProvider(new VideoEditorRangeSeekBarBitmapProviderWrapper(mBitmapProvider));
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.total = this.mTotal;
        savedState.startRange = this.mStartRange;
        savedState.endRange = this.mEndRange;
        savedState.max = this.mMax;
        savedState.progress = this.mProgress;
        savedState.availableAreaLeft = this.mAvailableAreaLeft;
        savedState.availableAreaRight = this.mAvailableAreaRight;
        savedState.lockedAvailableAreaLeft = this.mLockedAvailableAreaLeft;
        savedState.lockedAvailableAreaRight = this.mLockedAvailableAreaRight;
        savedState.rightRangeFloat = this.mRightRangeFloat;
        savedState.leftRangeFloat = this.mLeftRangeFloat;
        savedState.progressFloat = this.mProgressFloat;
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable state) {
        if (state != null && (state instanceof SavedState)) {
            SavedState savedState = (SavedState) state;
            super.onRestoreInstanceState(savedState.getSuperState());
            this.mTotal = savedState.total;
            this.mStartRange = savedState.startRange;
            this.mEndRange = savedState.endRange;
            this.mMax = savedState.max;
            this.mProgress = savedState.progress;
            this.mAvailableAreaLeft = savedState.availableAreaLeft;
            this.mAvailableAreaRight = savedState.availableAreaRight;
            this.mLockedAvailableAreaLeft = savedState.lockedAvailableAreaLeft;
            this.mLockedAvailableAreaRight = savedState.lockedAvailableAreaRight;
            this.mRightRangeFloat = savedState.rightRangeFloat;
            this.mLeftRangeFloat = savedState.leftRangeFloat;
            this.mProgressFloat = savedState.progressFloat;
        }
    }

    public void setStopSlide(boolean stopSlide) {
        this.mStopSlide = stopSlide;
    }

    public boolean isZooming() {
        return this.mIsZooming;
    }

    public boolean isTouching() {
        return this.mTouchState != 0;
    }
}
