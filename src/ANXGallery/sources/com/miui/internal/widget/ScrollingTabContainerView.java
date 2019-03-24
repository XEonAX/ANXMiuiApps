package com.miui.internal.widget;

import android.app.ActionBar.Tab;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.ActionBarPolicy;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;

public class ScrollingTabContainerView extends HorizontalScrollView implements OnItemClickListener, FragmentViewPagerChangeListener {
    private int mContentHeight;
    private final LayoutInflater mInflater;
    private Paint rl = new Paint();
    Runnable vi;
    int vj;
    int vk;
    private TabClickListener vl;
    private LinearLayout vm;
    private Spinner vn;
    private boolean vo;
    private int vp;
    private Bitmap vq;
    private boolean vr;
    private float vs;
    private int vt = -1;
    private boolean vu;

    private class TabAdapter extends BaseAdapter {
        private TabAdapter() {
        }

        /* synthetic */ TabAdapter(ScrollingTabContainerView scrollingTabContainerView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public int getCount() {
            return ScrollingTabContainerView.this.vm.getChildCount();
        }

        public Object getItem(int i) {
            return ((TabView) ScrollingTabContainerView.this.vm.getChildAt(i)).getTab();
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.b((Tab) getItem(i), true);
            }
            ((TabView) view).bindTab((Tab) getItem(i));
            return view;
        }
    }

    private class TabClickListener implements OnClickListener {
        private TabClickListener() {
        }

        /* synthetic */ TabClickListener(ScrollingTabContainerView scrollingTabContainerView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onClick(View view) {
            ((TabView) view).getTab().select();
            int childCount = ScrollingTabContainerView.this.vm.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.vm.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    public static class TabView extends LinearLayout {
        private View bJ;
        private ImageView nD;
        private ScrollingTabContainerView vA;
        private Tab vx;
        private TextView vy;
        private ImageView vz;

        public TabView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        void b(ScrollingTabContainerView scrollingTabContainerView, Tab tab, boolean z) {
            this.vA = scrollingTabContainerView;
            this.vx = tab;
            if (z) {
                setGravity(8388627);
            }
            update();
        }

        public void bindTab(Tab tab) {
            this.vx = tab;
            update();
        }

        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            i = this.vA != null ? this.vA.vj : 0;
            if (i > 0 && getMeasuredWidth() > i) {
                super.onMeasure(MeasureSpec.makeMeasureSpec(i, 1073741824), i2);
            }
        }

        public void update() {
            Tab tab = this.vx;
            View customView = tab.getCustomView();
            if (customView != null) {
                TabView parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        parent.removeView(customView);
                    }
                    addView(customView);
                }
                this.bJ = customView;
                if (this.vy != null) {
                    this.vy.setVisibility(8);
                }
                if (this.nD != null) {
                    this.nD.setVisibility(8);
                    this.nD.setImageDrawable(null);
                    return;
                }
                return;
            }
            if (this.bJ != null) {
                removeView(this.bJ);
                this.bJ = null;
            }
            Context context = getContext();
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (icon != null) {
                if (this.nD == null) {
                    View imageView = new ImageView(context);
                    LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    imageView.setLayoutParams(layoutParams);
                    addView(imageView, 0);
                    this.nD = imageView;
                }
                this.nD.setImageDrawable(icon);
                this.nD.setVisibility(0);
            } else if (this.nD != null) {
                this.nD.setVisibility(8);
                this.nD.setImageDrawable(null);
            }
            if (text != null) {
                if (this.vy == null) {
                    View scrollingTabTextView = new ScrollingTabTextView(context, null, 16843509);
                    scrollingTabTextView.setEllipsize(TruncateAt.END);
                    LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    scrollingTabTextView.setLayoutParams(layoutParams2);
                    addView(scrollingTabTextView);
                    this.vy = scrollingTabTextView;
                }
                this.vy.setText(text);
                this.vy.setVisibility(0);
                if (this.vz == null) {
                    View imageView2 = new ImageView(context);
                    imageView2.setImageDrawable(AttributeResolver.resolveDrawable(context, R.attr.actionBarTabBadgeIcon));
                    imageView2.setVisibility(8);
                    LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams3.gravity = 48;
                    Drawable background = getBackground();
                    if (background != null) {
                        int intrinsicHeight = background.getIntrinsicHeight();
                        int lineHeight = this.vy.getLineHeight();
                        if (intrinsicHeight > lineHeight) {
                            layoutParams3.topMargin = (intrinsicHeight - lineHeight) / 2;
                        }
                    }
                    imageView2.setLayoutParams(layoutParams3);
                    addView(imageView2);
                    this.vz = imageView2;
                }
            } else if (this.vy != null) {
                this.vy.setVisibility(8);
                this.vy.setText(null);
            }
            if (this.nD != null) {
                this.nD.setContentDescription(tab.getContentDescription());
            }
        }

        public Tab getTab() {
            return this.vx;
        }

        public TextView getTextView() {
            return this.vy;
        }
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        this.mInflater = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, miui.R.styleable.ActionBar, 16843470, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(miui.R.styleable.ActionBar_tabIndicator);
        this.vr = obtainStyledAttributes.getBoolean(miui.R.styleable.ActionBar_translucentTabIndicator, true);
        this.vq = e(drawable);
        obtainStyledAttributes.recycle();
        if (this.vr) {
            this.rl.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        }
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.vk = actionBarPolicy.getStackedTabMaxWidth();
        this.vm = (LinearLayout) this.mInflater.inflate(R.layout.action_bar_tabbar, this, false);
        addView(this.vm, new FrameLayout.LayoutParams(-2, -1));
    }

    public void setEmbeded(boolean z) {
        this.vu = z;
        setHorizontalFadingEdgeEnabled(z);
    }

    private Bitmap e(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        Bitmap createBitmap;
        if (this.vr) {
            createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ALPHA_8);
        } else {
            createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.vq != null) {
            canvas.drawBitmap(this.vq, this.vs, (float) (getHeight() - this.vq.getHeight()), this.rl);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.vm.getChildAt(this.vp) != null) {
            setTabIndicatorPosition(this.vp);
        }
    }

    public void onMeasure(int i, int i2) {
        i2 = MeasureSpec.getMode(i);
        int i3 = 1;
        boolean z = i2 == 1073741824;
        setFillViewport(z);
        int childCount = this.vm.getChildCount();
        if (childCount <= 1 || !(i2 == 1073741824 || i2 == Integer.MIN_VALUE)) {
            this.vj = -1;
        } else {
            if (childCount > 2) {
                this.vj = (int) (((float) MeasureSpec.getSize(i)) * 0.4f);
            } else {
                this.vj = (int) (((float) MeasureSpec.getSize(i)) * 0.6f);
            }
            this.vj = Math.min(this.vj, this.vk);
        }
        i2 = MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
        if (z || !this.vo) {
            i3 = 0;
        }
        if (i3 != 0) {
            this.vm.measure(0, i2);
            if (this.vm.getMeasuredWidth() > MeasureSpec.getSize(i)) {
                bO();
            } else {
                bP();
            }
        } else {
            bP();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, i2);
        i = getMeasuredWidth();
        if (z && measuredWidth != i) {
            setTabSelected(this.vp);
        }
    }

    public float getTabIndicatorPosition() {
        return this.vs;
    }

    public void setTabIndicatorPosition(int i) {
        setTabIndicatorPosition(i, 0.0f);
    }

    public void setTabIndicatorPosition(int i, float f) {
        if (this.vq != null) {
            float width;
            View childAt = this.vm.getChildAt(i);
            View childAt2 = this.vm.getChildAt(i + 1);
            if (childAt2 == null) {
                width = (float) childAt.getWidth();
            } else {
                width = ((float) (childAt.getWidth() + childAt2.getWidth())) / 2.0f;
            }
            this.vs = ((float) (childAt.getLeft() + ((childAt.getWidth() - this.vq.getWidth()) / 2))) + (width * f);
            invalidate();
        }
    }

    private boolean isCollapsed() {
        return this.vn != null && this.vn.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.vo = z;
    }

    private void bO() {
        if (!isCollapsed()) {
            if (this.vn == null) {
                this.vn = bQ();
            }
            removeView(this.vm);
            addView(this.vn, new LayoutParams(-2, -1));
            if (this.vn.getAdapter() == null) {
                this.vn.setAdapter(new TabAdapter(this, null));
            }
            if (this.vi != null) {
                removeCallbacks(this.vi);
                this.vi = null;
            }
            this.vn.setSelection(this.vp);
        }
    }

    private boolean bP() {
        if (!isCollapsed()) {
            return false;
        }
        removeView(this.vn);
        addView(this.vm, new LayoutParams(-2, -1));
        setTabSelected(this.vn.getSelectedItemPosition());
        return false;
    }

    public void setTabSelected(int i) {
        this.vp = i;
        int childCount = this.vm.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.vm.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i);
            }
            i2++;
        }
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
        requestLayout();
    }

    private Spinner bQ() {
        Spinner spinner = new Spinner(getContext(), null, 16843479);
        spinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        return spinner;
    }

    protected void onConfigurationChanged(Configuration configuration) {
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(getContext());
        setContentHeight(actionBarPolicy.getTabContainerHeight());
        this.vk = actionBarPolicy.getStackedTabMaxWidth();
    }

    public void animateToTab(int i) {
        final View childAt = this.vm.getChildAt(i);
        if (this.vi != null) {
            removeCallbacks(this.vi);
        }
        this.vi = new Runnable() {
            public void run() {
                int left = childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2);
                if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                    ScrollingTabContainerView.this.smoothScrollTo(left, 0);
                } else {
                    ScrollingTabContainerView.this.scrollTo(left, 0);
                }
                ScrollingTabContainerView.this.vi = null;
            }
        };
        post(this.vi);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.vi != null) {
            post(this.vi);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.vi != null) {
            removeCallbacks(this.vi);
        }
    }

    private TabView b(Tab tab, boolean z) {
        TabView tabView = (TabView) this.mInflater.inflate(R.layout.action_bar_tab, this.vm, false);
        tabView.b(this, tab, z);
        if (z) {
            tabView.setBackground(null);
            tabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.mContentHeight));
        } else {
            tabView.setFocusable(true);
            if (this.vl == null) {
                this.vl = new TabClickListener(this, null);
            }
            tabView.setOnClickListener(this.vl);
        }
        return tabView;
    }

    public void addTab(Tab tab, boolean z) {
        View b = b(tab, false);
        this.vm.addView(b);
        if (this.vn != null) {
            ((TabAdapter) this.vn.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            b.setSelected(true);
            this.vt = this.vm.getChildCount() - 1;
        }
        if (this.vo) {
            requestLayout();
        }
    }

    public void addTab(Tab tab, int i, boolean z) {
        View b = b(tab, false);
        this.vm.addView(b, i);
        if (this.vn != null) {
            ((TabAdapter) this.vn.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            b.setSelected(true);
            this.vt = this.vm.getChildCount() - 1;
        }
        if (this.vo) {
            requestLayout();
        }
    }

    public void updateTab(int i) {
        ((TabView) this.vm.getChildAt(i)).update();
        if (this.vn != null) {
            ((TabAdapter) this.vn.getAdapter()).notifyDataSetChanged();
        }
        if (this.vo) {
            requestLayout();
        }
    }

    public void setBadgeVisibility(int i, boolean z) {
        if (i <= this.vm.getChildCount() - 1) {
            ImageView a = ((TabView) this.vm.getChildAt(i)).vz;
            if (a != null) {
                if (z) {
                    a.setVisibility(0);
                } else {
                    a.setVisibility(8);
                }
            }
        }
    }

    public void setTextAppearance(int i, int i2) {
        if (i >= 0 && i <= this.vm.getChildCount() - 1) {
            TextView b = ((TabView) this.vm.getChildAt(i)).vy;
            if (b != null) {
                b.setTextAppearance(b.getContext(), i2);
            }
        }
    }

    public void removeTabAt(int i) {
        this.vm.removeViewAt(i);
        if (this.vn != null) {
            ((TabAdapter) this.vn.getAdapter()).notifyDataSetChanged();
        }
        if (this.vo) {
            requestLayout();
        }
    }

    public void removeAllTabs() {
        this.vm.removeAllViews();
        if (this.vn != null) {
            ((TabAdapter) this.vn.getAdapter()).notifyDataSetChanged();
        }
        if (this.vo) {
            requestLayout();
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ((TabView) view).getTab().select();
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        setTabIndicatorPosition(i, f);
    }

    public void onPageSelected(int i) {
        TabView tabView = (TabView) this.vm.getChildAt(i);
        if (tabView != null) {
            tabView.sendAccessibilityEvent(4);
        }
        setTabIndicatorPosition(i);
        if (this.vu && this.vt != -1) {
            boolean z = true;
            if (Math.abs(this.vt - i) == 1) {
                ScrollingTabTextView scrollingTabTextView = (ScrollingTabTextView) ((TabView) this.vm.getChildAt(this.vt)).getTextView();
                ScrollingTabTextView scrollingTabTextView2 = (ScrollingTabTextView) tabView.getTextView();
                if (!(scrollingTabTextView == null || scrollingTabTextView2 == null)) {
                    if (ViewUtils.isLayoutRtl(this)) {
                    }
                    z = false;
                    scrollingTabTextView.startScrollAnimation(z);
                    scrollingTabTextView2.startScrollAnimation(z);
                }
            }
        }
        this.vt = i;
    }

    public void onPageScrollStateChanged(int i) {
    }
}
