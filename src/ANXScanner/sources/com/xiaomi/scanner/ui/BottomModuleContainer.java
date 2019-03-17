package com.xiaomi.scanner.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.LinearInterpolator;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.ModuleManager.ModuleBaseInfo;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.Util;
import java.util.List;

public class BottomModuleContainer extends LinearLayout implements OnClickListener, OnTouchListener {
    private static final int MAX_SHOW_PAGE = 6;
    private static final Tag TAG = new Tag("BottomContainer");
    private static final int TIME = 250;
    private boolean canScrollByTakePic;
    private int downX;
    private int itemWidth;
    private int mCurrentSelectIndex;
    private int mMaxLeft;
    private int mMaxRight;
    private int mTotalScroll;
    private ModuleSelectListener moduleSelectListener;
    private int scroll;
    private boolean touchNoScroll;

    public interface ModuleSelectListener {
        void onModuleSelect(int i);
    }

    public BottomModuleContainer(Context context) {
        this(context, null, -1);
    }

    public BottomModuleContainer(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public BottomModuleContainer(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTotalScroll = 0;
        this.scroll = 0;
        this.downX = 0;
        this.canScrollByTakePic = true;
        this.itemWidth = (Util.screenWidth - getResources().getDimensionPixelSize(R.dimen.size_28)) / 6;
        setGravity(17);
    }

    public void setModuleSelectListener(ModuleSelectListener moduleSelectListener) {
        this.moduleSelectListener = moduleSelectListener;
    }

    private CheckedTextView genCheckedTextView() {
        CheckedTextView textView = (CheckedTextView) LayoutInflater.from(getContext()).inflate(R.layout.layout_module_item, null);
        addView(textView);
        LayoutParams layoutParams = (LayoutParams) textView.getLayoutParams();
        layoutParams.width = this.itemWidth;
        layoutParams.gravity = 1;
        textView.setOnClickListener(this);
        textView.setOnTouchListener(this);
        return textView;
    }

    private void updateItemView(ModuleBaseInfo info, CheckedTextView textView) {
        textView.setText(info.getTitleResourceId());
        textView.setTag(info);
        textView.setContentDescription(getResources().getString(info.getTitleResourceId()));
        textView.setCompoundDrawablesWithIntrinsicBounds(null, getResources().getDrawable(info.getIconResourceId()), null, null);
    }

    public void addModuleItemList(List<ModuleBaseInfo> baseInfoss, final int moduleId) {
        removeAllViews();
        for (int i = 0; i < baseInfoss.size(); i++) {
            updateItemView((ModuleBaseInfo) baseInfoss.get(i), genCheckedTextView());
        }
        post(new Runnable() {
            public void run() {
                for (int i = 0; i < BottomModuleContainer.this.getChildCount(); i++) {
                    CheckedTextView textView = (CheckedTextView) BottomModuleContainer.this.getChildAt(i);
                    if (moduleId == ((ModuleBaseInfo) textView.getTag()).getModuleId()) {
                        BottomModuleContainer.this.mCurrentSelectIndex = i;
                        textView.setChecked(true);
                    } else {
                        textView.setChecked(false);
                    }
                }
                BottomModuleContainer.this.firstScrollCalculate(BottomModuleContainer.this.getChildCount());
            }
        });
    }

    private void firstScrollCalculate(int size) {
        int offset;
        if (size % 2 == 0) {
            offset = this.itemWidth / 2;
        } else {
            offset = 0;
        }
        boolean rtl = DeviceUtil.isLayoutRtl();
        int i = (rtl ? -1 : 1) * ((this.mCurrentSelectIndex - (size % 2 != 0 ? size / 2 : (size / 2) - 1)) * this.itemWidth);
        if (!rtl) {
            offset = -offset;
        }
        int firstScroll = i + offset;
        this.mMaxRight = (rtl ? firstScroll : -firstScroll) + (this.itemWidth * this.mCurrentSelectIndex);
        int i2 = this.itemWidth * (-this.mCurrentSelectIndex);
        if (rtl) {
            i = -firstScroll;
        } else {
            i = firstScroll;
        }
        this.mMaxLeft = i + i2;
        scrollEnd(firstScroll, false);
    }

    private void updateSelected(int index) {
        if (index >= getChildCount() || index < 0) {
            Log.w(TAG, "update selected index >= count " + index);
        } else if (getCurrentSelectIndex() == index) {
            Log.i(TAG, "update selected index == current index " + index);
        } else {
            ModuleBaseInfo info = null;
            int i = 0;
            while (i < getChildCount()) {
                CheckedTextView child = (CheckedTextView) getChildAt(i);
                child.setChecked(index == i);
                if (index == i) {
                    info = (ModuleBaseInfo) child.getTag();
                    child.sendAccessibilityEvent(4);
                }
                i++;
            }
            if (this.moduleSelectListener != null && info != null) {
                this.moduleSelectListener.onModuleSelect(info.getModuleId());
            }
        }
    }

    private int getCurrentSelectIndex() {
        for (int i = 0; i < getChildCount(); i++) {
            if (((CheckedTextView) getChildAt(i)).isChecked()) {
                return i;
            }
        }
        return -1;
    }

    public void onClick(View v) {
        if (this.canScrollByTakePic) {
            CheckedTextView checkedTextView = (CheckedTextView) v;
            if (!checkedTextView.isChecked()) {
                int i;
                int clickIndex = indexOfChild(checkedTextView);
                int i2 = clickIndex - this.mCurrentSelectIndex;
                if (DeviceUtil.isLayoutRtl()) {
                    i = -1;
                } else {
                    i = 1;
                }
                int moveCount = i2 * i;
                int scrollTo = this.itemWidth * moveCount;
                this.mCurrentSelectIndex = clickIndex;
                scrollEnd(this.mTotalScroll + scrollTo, true, scrollTo < 0, Math.abs(moveCount));
            }
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        boolean toLeft = false;
        if (!((getContext() instanceof ScanActivity) && ((ScanActivity) getContext()).isOnlyBusinessCardScan()) && this.canScrollByTakePic) {
            switch (event.getAction()) {
                case 0:
                    this.downX = (int) event.getRawX();
                    this.scroll = 0;
                    this.touchNoScroll = false;
                    break;
                case 1:
                    this.touchNoScroll = false;
                    break;
                case 2:
                    this.scroll += (int) (event.getRawX() - ((float) this.downX));
                    this.downX = (int) event.getRawX();
                    boolean rtl = DeviceUtil.isLayoutRtl();
                    if (this.scroll != 0 && ((this.scroll >= 0 || (rtl ? this.mTotalScroll > this.mMaxLeft : this.mTotalScroll < this.mMaxRight)) && ((this.scroll <= 0 || (rtl ? this.mTotalScroll < this.mMaxRight : this.mTotalScroll > this.mMaxLeft)) && Math.abs(this.scroll) >= this.itemWidth / 3 && !this.touchNoScroll))) {
                        if (this.scroll > 0) {
                            toLeft = true;
                        }
                        int scrollEnd = toLeft ? rtl ? this.itemWidth : -this.itemWidth : rtl ? -this.itemWidth : this.itemWidth;
                        this.mCurrentSelectIndex = toLeft ? this.mCurrentSelectIndex - 1 : this.mCurrentSelectIndex + 1;
                        scrollEnd(this.mTotalScroll + scrollEnd, true, toLeft, 1);
                        this.touchNoScroll = true;
                        break;
                    }
            }
        }
        return true;
    }

    public void setCanScrollByTakePic(boolean canScrollByTakePic) {
        this.canScrollByTakePic = canScrollByTakePic;
    }

    private void animatorChange(int scrollX) {
        ValueAnimator valueAnimator = ValueAnimator.ofInt(new int[]{this.mTotalScroll, scrollX});
        valueAnimator.setDuration(250);
        valueAnimator.setInterpolator(new LinearInterpolator());
        valueAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                BottomModuleContainer.this.scrollTo(((Integer) animation.getAnimatedValue()).intValue(), 0);
            }
        });
        valueAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                BottomModuleContainer.this.updateSelected(BottomModuleContainer.this.mCurrentSelectIndex);
            }
        });
        valueAnimator.start();
    }

    private void scrollEnd(int scrollX, boolean needAnimator) {
        scrollEnd(scrollX, needAnimator, false, 0);
    }

    private void scrollEnd(int scrollX, boolean needAnimator, boolean toLeft, int moveCount) {
        if (needAnimator) {
            for (int i = 0; i < getChildCount(); i++) {
                ((CheckedTextView) getChildAt(i)).setChecked(false);
            }
            animatorChange(scrollX);
        } else {
            scrollTo(scrollX, 0);
        }
        this.mTotalScroll = scrollX;
    }

    public boolean onTouch(View v, MotionEvent event) {
        onTouchEvent(event);
        return false;
    }
}
