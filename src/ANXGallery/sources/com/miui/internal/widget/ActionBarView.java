package com.miui.internal.widget;

import android.app.ActionBar;
import android.app.ActionBar.OnNavigationListener;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.view.CollapsibleActionView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window.Callback;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.app.ActionBarDelegateImpl;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.view.ActionBarPolicy;
import com.miui.internal.view.menu.ActionMenuItem;
import com.miui.internal.view.menu.ActionMenuPresenter;
import com.miui.internal.view.menu.ActionMenuView;
import com.miui.internal.view.menu.MenuBuilder;
import com.miui.internal.view.menu.MenuItemImpl;
import com.miui.internal.view.menu.MenuPresenter;
import com.miui.internal.view.menu.MenuView;
import com.miui.internal.view.menu.SubMenuBuilder;
import com.nexstreaming.nexeditorsdk.nexEngine;
import miui.util.ViewUtils;

public class ActionBarView extends a {
    public static final int DISPLAY_DEFAULT = 0;
    private static final String TAG = "ActionBarView";
    private static final int rO = 31;
    private static final int rP = 8388627;
    private static final int rQ = 1;
    private static final int rR = 2;
    private ScrollingTabContainerView bj;
    Callback cO;
    private TextView cx;
    private Context mContext;
    private Drawable mIcon;
    private CharSequence mTitle;
    private LinearLayout qs;
    private int qv;
    private int rS;
    private int rT = -1;
    private CharSequence rU;
    private int rV;
    private Drawable rW;
    private final int rX;
    private Drawable rY;
    private int rZ;
    private final OnItemSelectedListener sA = new OnItemSelectedListener() {
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (ActionBarView.this.sx != null) {
                ActionBarView.this.sx.onNavigationItemSelected(i, j);
            }
        }

        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    };
    private final OnClickListener sB = new OnClickListener() {
        public void onClick(View view) {
            MenuItemImpl menuItemImpl = ActionBarView.this.sy.sH;
            if (menuItemImpl != null) {
                menuItemImpl.collapseActionView();
            }
        }
    };
    private final OnClickListener sC = new OnClickListener() {
        public void onClick(View view) {
            ActionBarView.this.cO.onMenuItemSelected(0, ActionBarView.this.su);
        }
    };
    private final OnClickListener sD = new OnClickListener() {
        public void onClick(View view) {
            ActionBarView.this.cO.onMenuItemSelected(0, ActionBarView.this.sv);
        }
    };
    private HomeView sa;
    private HomeView sb;
    private TextView sc;
    private View sd;
    private Spinner se;
    private LinearLayout sf;
    private View sg;
    private ProgressBar sh;
    private ProgressBar si;
    private View sj;
    private View sk;
    private View sl;
    private int sm;
    private int sn;
    private int so;
    private boolean sp;
    private boolean sq;
    private boolean sr;
    private boolean ss;
    private MenuBuilder st;
    private ActionMenuItem su;
    private ActionMenuItem sv;
    private SpinnerAdapter sw;
    private OnNavigationListener sx;
    private ExpandedActionViewMenuPresenter sy;
    View sz;

    private class ExpandedActionViewMenuPresenter implements MenuPresenter {
        MenuBuilder mMenu;
        MenuItemImpl sH;

        private ExpandedActionViewMenuPresenter() {
        }

        /* synthetic */ ExpandedActionViewMenuPresenter(ActionBarView actionBarView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            if (!(this.mMenu == null || this.sH == null)) {
                this.mMenu.collapseItemActionView(this.sH);
            }
            this.mMenu = menuBuilder;
        }

        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        public void updateMenuView(boolean z) {
            if (this.sH != null) {
                Object obj = null;
                if (this.mMenu != null) {
                    int size = this.mMenu.size();
                    for (int i = 0; i < size; i++) {
                        if (this.mMenu.getItem(i) == this.sH) {
                            obj = 1;
                            break;
                        }
                    }
                }
                if (obj == null) {
                    collapseItemActionView(this.mMenu, this.sH);
                }
            }
        }

        public void setCallback(MenuPresenter.Callback callback) {
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean flagActionItems() {
            return false;
        }

        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            ActionBarView.this.sz = menuItemImpl.getActionView();
            ActionBarView.this.bw();
            ActionBarView.this.sb.setIcon(ActionBarView.this.getIcon().getConstantState().newDrawable(ActionBarView.this.getResources()));
            this.sH = menuItemImpl;
            if (ActionBarView.this.sz.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.sz);
            }
            if (ActionBarView.this.sb.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.sb);
            }
            if (ActionBarView.this.sa != null) {
                ActionBarView.this.sa.setVisibility(8);
            }
            if (ActionBarView.this.qs != null) {
                ActionBarView.this.p(false);
            }
            if (ActionBarView.this.bj != null) {
                ActionBarView.this.bj.setVisibility(8);
            }
            if (ActionBarView.this.se != null) {
                ActionBarView.this.se.setVisibility(8);
            }
            if (ActionBarView.this.sg != null) {
                ActionBarView.this.sg.setVisibility(8);
            }
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            if (ActionBarView.this.sz instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.sz).onActionViewExpanded();
            }
            return true;
        }

        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            if (ActionBarView.this.sz instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.sz).onActionViewCollapsed();
            }
            ActionBarView.this.removeView(ActionBarView.this.sz);
            ActionBarView.this.removeView(ActionBarView.this.sb);
            ActionBarView.this.sz = null;
            if ((ActionBarView.this.rT & 2) != 0) {
                ActionBarView.this.sa.setVisibility(0);
            }
            if ((ActionBarView.this.rT & 8) != 0) {
                if (ActionBarView.this.qs == null) {
                    ActionBarView.this.initTitle();
                } else {
                    ActionBarView.this.p(true);
                }
            }
            if (ActionBarView.this.bj != null && ActionBarView.this.rS == 2) {
                ActionBarView.this.bj.setVisibility(0);
            }
            if (ActionBarView.this.se != null && ActionBarView.this.rS == 1) {
                ActionBarView.this.se.setVisibility(0);
            }
            if (!(ActionBarView.this.sg == null || (ActionBarView.this.rT & 16) == 0)) {
                ActionBarView.this.sg.setVisibility(0);
            }
            ActionBarView.this.sb.setIcon(null);
            this.sH = null;
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        public int getId() {
            return 0;
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }
    }

    private static class HomeView extends FrameLayout {
        private ImageView nD;
        private ImageView sI;
        private int sJ;
        private int sK;
        private Drawable sL;

        public HomeView(Context context) {
            this(context, null);
        }

        public HomeView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void q(boolean z) {
            this.sI.setVisibility(z ? 0 : 8);
        }

        public void setIcon(Drawable drawable) {
            this.nD.setImageDrawable(drawable);
        }

        public void a(Drawable drawable) {
            ImageView imageView = this.sI;
            if (drawable == null) {
                drawable = this.sL;
            }
            imageView.setImageDrawable(drawable);
            this.sK = 0;
        }

        public void q(int i) {
            this.sK = i;
            this.sI.setImageDrawable(i != 0 ? getResources().getDrawable(i) : null);
        }

        protected void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            if (this.sK != 0) {
                q(this.sK);
            }
        }

        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            CharSequence contentDescription = getContentDescription();
            if (!TextUtils.isEmpty(contentDescription)) {
                accessibilityEvent.getText().add(contentDescription);
            }
            return true;
        }

        protected void onFinishInflate() {
            this.sI = (ImageView) findViewById(R.id.up);
            this.nD = (ImageView) findViewById(R.id.home);
            this.sL = this.sI.getDrawable();
        }

        public int bx() {
            return 0;
        }

        protected void onMeasure(int i, int i2) {
            measureChildWithMargins(this.sI, i, 0, i2, 0);
            LayoutParams layoutParams = (LayoutParams) this.sI.getLayoutParams();
            this.sJ = (layoutParams.leftMargin + this.sI.getMeasuredWidth()) + layoutParams.rightMargin;
            int i3 = this.sI.getVisibility() == 8 ? 0 : this.sJ;
            int measuredHeight = layoutParams.bottomMargin + (layoutParams.topMargin + this.sI.getMeasuredHeight());
            measureChildWithMargins(this.nD, i, i3, i2, 0);
            LayoutParams layoutParams2 = (LayoutParams) this.nD.getLayoutParams();
            i3 += (layoutParams2.leftMargin + this.nD.getMeasuredWidth()) + layoutParams2.rightMargin;
            measuredHeight = Math.max(measuredHeight, (layoutParams2.topMargin + this.nD.getMeasuredHeight()) + layoutParams2.bottomMargin);
            int mode = MeasureSpec.getMode(i);
            int mode2 = MeasureSpec.getMode(i2);
            i = MeasureSpec.getSize(i);
            i2 = MeasureSpec.getSize(i2);
            if (mode == Integer.MIN_VALUE) {
                i3 = Math.min(i3, i);
            } else if (mode == 1073741824) {
                i3 = i;
            }
            if (mode2 == Integer.MIN_VALUE) {
                measuredHeight = Math.min(measuredHeight, i2);
            } else if (mode2 == 1073741824) {
                measuredHeight = i2;
            }
            setMeasuredDimension(i3, measuredHeight);
        }

        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int measuredHeight;
            int measuredWidth;
            int i5;
            i4 = (i4 - i2) / 2;
            z = ViewUtils.isLayoutRtl(this);
            if (this.sI.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) this.sI.getLayoutParams();
                measuredHeight = this.sI.getMeasuredHeight();
                measuredWidth = this.sI.getMeasuredWidth();
                i5 = i4 - (measuredHeight / 2);
                ViewUtils.layoutChildView(this, this.sI, 0, i5, measuredWidth, i5 + measuredHeight);
                measuredHeight = (layoutParams.leftMargin + measuredWidth) + layoutParams.rightMargin;
                if (z) {
                    i3 -= measuredHeight;
                } else {
                    i += measuredHeight;
                }
            } else {
                measuredHeight = 0;
            }
            LayoutParams layoutParams2 = (LayoutParams) this.nD.getLayoutParams();
            i2 = this.nD.getMeasuredHeight();
            measuredWidth = this.nD.getMeasuredWidth();
            int max = measuredHeight + Math.max(layoutParams2.getMarginStart(), ((i3 - i) / 2) - (measuredWidth / 2));
            i5 = Math.max(layoutParams2.topMargin, i4 - (i2 / 2));
            ViewUtils.layoutChildView(this, this.nD, max, i5, max + measuredWidth, i5 + i2);
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: d */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: r */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean qJ;
        int sM;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.sM = parcel.readInt();
            this.qJ = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.sM);
            parcel.writeInt(this.qJ);
        }
    }

    public ActionBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        setBackgroundResource(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, miui.R.styleable.ActionBar, 16843470, 0);
        this.rS = obtainStyledAttributes.getInt(miui.R.styleable.ActionBar_android_navigationMode, 0);
        this.mTitle = obtainStyledAttributes.getText(miui.R.styleable.ActionBar_android_title);
        this.rU = obtainStyledAttributes.getText(miui.R.styleable.ActionBar_android_subtitle);
        this.ss = obtainStyledAttributes.getBoolean(R.styleable.ActionBar_titleCenter, false);
        this.rW = obtainStyledAttributes.getDrawable(miui.R.styleable.ActionBar_android_logo);
        this.mIcon = obtainStyledAttributes.getDrawable(miui.R.styleable.ActionBar_android_icon);
        LayoutInflater from = LayoutInflater.from(context);
        this.rX = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_homeLayout, R.layout.action_bar_home);
        this.qv = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_titleTextStyle, 0);
        this.so = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_subtitleTextStyle, 0);
        this.sm = obtainStyledAttributes.getDimensionPixelOffset(miui.R.styleable.ActionBar_android_progressBarPadding, 0);
        this.sn = obtainStyledAttributes.getDimensionPixelOffset(miui.R.styleable.ActionBar_android_itemPadding, 0);
        setDisplayOptions(obtainStyledAttributes.getInt(miui.R.styleable.ActionBar_android_displayOptions, 0));
        int resourceId = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_customNavigationLayout, 0);
        if (resourceId != 0) {
            this.sg = from.inflate(resourceId, this, false);
            this.rS = 0;
        }
        this.mContentHeight = obtainStyledAttributes.getLayoutDimension(miui.R.styleable.ActionBar_android_height, 0);
        obtainStyledAttributes.recycle();
        Context context2 = context;
        this.su = new ActionMenuItem(context2, 0, 16908332, 0, 0, this.mTitle);
        this.sv = new ActionMenuItem(context2, 0, 16908310, 0, 0, this.mTitle);
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.bj != null && this.sq) {
            ViewGroup.LayoutParams layoutParams = this.bj.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = -1;
            }
        }
    }

    public void setWindowCallback(Callback callback) {
        this.cO = callback;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu(false);
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void initProgress() {
        this.sh = new ProgressBar(this.mContext, null, miui.R.attr.actionBarProgressStyle);
        this.sh.setId(R.id.progress_horizontal);
        this.sh.setMax(10000);
        this.sh.setVisibility(8);
        addView(this.sh);
    }

    public void initIndeterminateProgress() {
        this.si = new ProgressBar(this.mContext, null, miui.R.attr.actionBarIndeterminateProgressStyle);
        this.si.setId(R.id.progress_circular);
        this.si.setVisibility(8);
        this.si.setIndeterminate(true);
        addView(this.si);
    }

    public void initImmersionMore(int i, final ActionBarDelegateImpl actionBarDelegateImpl) {
        if (i <= 0) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Try to initialize invalid layout for immersion more button: ");
            stringBuilder.append(i);
            Log.w(str, stringBuilder.toString());
        } else if ((this.rT & 16) != 0) {
            Log.d(TAG, "Don't show immersion menu button for custom action bar");
        } else if (this.rT == 0) {
            Log.d(TAG, "Don't show immersion menu button for null display option");
        } else {
            this.sj = LayoutInflater.from(getContext()).inflate(i, this, false);
            addView(this.sj);
            final View findViewById = this.sj.findViewById(R.id.more);
            if (findViewById != null) {
                findViewById.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        actionBarDelegateImpl.showImmersionMenu(findViewById, ActionBarView.this);
                    }
                });
            }
        }
    }

    public boolean showImmersionMore() {
        if (this.sj == null) {
            return false;
        }
        this.sj.setVisibility(0);
        return true;
    }

    public boolean hideImmersionMore() {
        if (this.sj == null) {
            return false;
        }
        this.sj.setVisibility(8);
        return true;
    }

    public void setSplitActionBar(boolean z) {
        if (this.mSplitActionBar != z) {
            if (this.mMenuView != null) {
                ViewGroup viewGroup = (ViewGroup) this.mMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
                if (z) {
                    if (this.mSplitView != null) {
                        this.mSplitView.addView(this.mMenuView);
                    }
                    this.mMenuView.getLayoutParams().width = -1;
                } else {
                    addView(this.mMenuView);
                    this.mMenuView.getLayoutParams().width = -2;
                }
                this.mMenuView.requestLayout();
            }
            if (this.mSplitView != null) {
                this.mSplitView.setVisibility(z ? 0 : 8);
            }
            if (this.mActionMenuPresenter != null) {
                if (z) {
                    this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
                    this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                } else {
                    this.mActionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(R.bool.abc_action_bar_expanded_action_views_exclusive));
                }
            }
            super.setSplitActionBar(z);
        }
    }

    public boolean isSplitActionBar() {
        return this.mSplitActionBar;
    }

    public int getSplitActionBarHeight(boolean z) {
        if (z) {
            if (this.mSplitView != null) {
                return this.mSplitView.getCollapsedHeight();
            }
            return 0;
        } else if (this.mSplitActionBar) {
            return this.mSplitView.getHeight();
        } else {
            return 0;
        }
    }

    public boolean hasEmbeddedTabs() {
        return this.sq;
    }

    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.bj != null) {
            removeView(this.bj);
        }
        this.bj = scrollingTabContainerView;
        this.sq = scrollingTabContainerView != null;
        if (this.sq && this.rS == 2) {
            addView(this.bj);
            ViewGroup.LayoutParams layoutParams = this.bj.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            bo();
        }
    }

    public void setCallback(OnNavigationListener onNavigationListener) {
        this.sx = onNavigationListener;
    }

    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        if (menu != this.st) {
            ViewGroup viewGroup;
            ActionMenuView actionMenuView;
            if (this.st != null) {
                this.st.removeMenuPresenter(this.mActionMenuPresenter);
                this.st.removeMenuPresenter(this.sy);
            }
            MenuBuilder menuBuilder = (MenuBuilder) menu;
            this.st = menuBuilder;
            if (this.mMenuView != null) {
                viewGroup = (ViewGroup) this.mMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
            }
            if (this.mActionMenuPresenter == null) {
                this.mActionMenuPresenter = createActionMenuPresenter(callback);
                this.sy = createExpandedActionViewMenuPresenter();
            }
            ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -1);
            if (this.mSplitActionBar) {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
                this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                layoutParams.width = -1;
                layoutParams.height = -2;
                layoutParams.gravity = DeviceHelper.IS_TABLET ? 17 : 80;
                g(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                if (this.mSplitView != null) {
                    viewGroup = (ViewGroup) actionMenuView.getParent();
                    if (!(viewGroup == null || viewGroup == this.mSplitView)) {
                        viewGroup.removeView(actionMenuView);
                    }
                    actionMenuView.setVisibility(getAnimatedVisibility());
                    this.mSplitView.addView(actionMenuView, 0, layoutParams);
                    View findViewById = actionMenuView.findViewById(R.id.expanded_menu);
                    if (findViewById != null) {
                        findViewById.requestLayout();
                    }
                } else {
                    actionMenuView.setLayoutParams(layoutParams);
                }
            } else {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(getResources().getBoolean(R.bool.abc_action_bar_expanded_action_views_exclusive));
                g(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                viewGroup = (ViewGroup) actionMenuView.getParent();
                if (!(viewGroup == null || viewGroup == this)) {
                    viewGroup.removeView(actionMenuView);
                }
                addView(actionMenuView, layoutParams);
            }
            this.mMenuView = actionMenuView;
        }
    }

    private void g(MenuBuilder menuBuilder) {
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            menuBuilder.addMenuPresenter(this.sy);
        } else {
            this.mActionMenuPresenter.initForMenu(this.mContext, null);
            this.sy.initForMenu(this.mContext, null);
        }
        this.mActionMenuPresenter.updateMenuView(true);
        this.sy.updateMenuView(true);
    }

    public boolean hasExpandedActionView() {
        return (this.sy == null || this.sy.sH == null) ? false : true;
    }

    public void collapseActionView() {
        MenuItemImpl menuItemImpl;
        if (this.sy == null) {
            menuItemImpl = null;
        } else {
            menuItemImpl = this.sy.sH;
        }
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    public void setCustomNavigationView(View view) {
        Object obj = (this.rT & 16) != 0 ? 1 : null;
        if (!(this.sg == null || obj == null)) {
            removeView(this.sg);
        }
        this.sg = view;
        if (this.sg != null && obj != null) {
            addView(this.sg);
        }
    }

    public void setStartView(View view) {
        if (this.sk != null) {
            removeView(this.sk);
        }
        this.sk = view;
        if (this.sk != null) {
            addView(this.sk);
        }
    }

    public void setEndView(View view) {
        if (this.sl != null) {
            removeView(this.sl);
        }
        this.sl = view;
        if (this.sl != null) {
            addView(this.sl);
        }
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public void setTitle(CharSequence charSequence) {
        this.sp = true;
        a(charSequence);
    }

    public void setWindowTitle(CharSequence charSequence) {
        if (!this.sp) {
            a(charSequence);
        }
    }

    private void a(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.cx != null) {
            this.cx.setText(charSequence);
            boolean z = (this.sz != null || (this.rT & 8) == 0 || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.rU))) ? false : true;
            p(z);
        }
        if (this.su != null) {
            this.su.setTitle(charSequence);
        }
        if (this.sv != null) {
            this.sv.setTitle(charSequence);
        }
    }

    public CharSequence getSubtitle() {
        return this.rU;
    }

    public void setSubtitle(CharSequence charSequence) {
        this.rU = charSequence;
        if (this.sc != null) {
            this.sc.setText(charSequence);
            boolean z = false;
            this.sc.setVisibility(charSequence != null ? 0 : 8);
            if (!(this.sz != null || (this.rT & 8) == 0 || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.rU)))) {
                z = true;
            }
            p(z);
        }
    }

    public void setHomeButtonEnabled(boolean z) {
        if (this.sa != null) {
            this.sa.setEnabled(z);
            this.sa.setFocusable(z);
            if (!z) {
                this.sa.setContentDescription(null);
            } else if ((this.rT & 4) != 0) {
                this.sa.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_up_description));
            } else {
                this.sa.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_home_description));
            }
        }
    }

    public void setDisplayOptions(int i) {
        int i2 = -1;
        if (this.rT != -1) {
            i2 = i ^ this.rT;
        }
        this.rT = i;
        if ((i2 & 31) != 0) {
            boolean z;
            boolean z2 = false;
            boolean z3 = (i & 2) != 0;
            int i3 = 8;
            if (z3) {
                bv();
                this.sa.setVisibility(this.sz == null ? 0 : 8);
                if ((i2 & 4) != 0) {
                    z = (i & 4) != 0;
                    this.sa.q(z);
                    if (z) {
                        setHomeButtonEnabled(true);
                    }
                }
                if ((i2 & 1) != 0) {
                    Drawable logo = getLogo();
                    boolean z4 = (logo == null || (i & 1) == 0) ? false : true;
                    HomeView homeView = this.sa;
                    if (!z4) {
                        logo = getIcon();
                    }
                    homeView.setIcon(logo);
                }
            } else if (this.sa != null) {
                removeView(this.sa);
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    initTitle();
                } else {
                    removeView(this.qs);
                    removeView(this.sd);
                    this.qs = null;
                    this.sd = null;
                }
            }
            if (!(this.qs == null || (i2 & 6) == 0)) {
                z = (this.rT & 4) != 0;
                if (this.qs.getVisibility() == 0) {
                    View view = this.sd;
                    if (!z3) {
                        i3 = z ? 0 : 4;
                    }
                    view.setVisibility(i3);
                }
                LinearLayout linearLayout = this.qs;
                if (!z3 && z) {
                    z2 = true;
                }
                linearLayout.setEnabled(z2);
            }
            if (!((i2 & 16) == 0 || this.sg == null)) {
                if ((i & 16) != 0) {
                    addView(this.sg);
                } else {
                    removeView(this.sg);
                }
            }
            requestLayout();
        } else {
            invalidate();
        }
        if (this.sa == null) {
            return;
        }
        if (!this.sa.isEnabled()) {
            this.sa.setContentDescription(null);
        } else if ((i & 4) != 0) {
            this.sa.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_up_description));
        } else {
            this.sa.setContentDescription(this.mContext.getResources().getText(R.string.abc_action_bar_home_description));
        }
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.rV |= 1;
        if (drawable != null && (((this.rT & 1) == 0 || getLogo() == null) && this.sa != null)) {
            this.sa.setIcon(drawable);
        }
        if (this.sz != null) {
            this.sb.setIcon(this.mIcon.getConstantState().newDrawable(getResources()));
        }
    }

    public void setIcon(int i) {
        setIcon(this.mContext.getResources().getDrawable(i));
    }

    public void setLogo(Drawable drawable) {
        this.rW = drawable;
        this.rV |= 2;
        if (drawable != null && (this.rT & 1) != 0 && this.sa != null) {
            this.sa.setIcon(drawable);
        }
    }

    public void setLogo(int i) {
        setLogo(this.mContext.getResources().getDrawable(i));
    }

    public void setNavigationMode(int i) {
        int i2 = this.rS;
        if (i != i2) {
            switch (i2) {
                case 1:
                    if (this.sf != null) {
                        removeView(this.sf);
                        break;
                    }
                    break;
                case 2:
                    if (this.bj != null && this.sq) {
                        removeView(this.bj);
                        break;
                    }
            }
            switch (i) {
                case 1:
                    if (this.se == null) {
                        this.se = new Spinner(this.mContext, null, 16843479);
                        this.sf = (LinearLayout) LayoutInflater.from(this.mContext).inflate(R.layout.action_bar_view_list_nav_layout, null);
                        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                        layoutParams.gravity = 17;
                        this.sf.addView(this.se, layoutParams);
                    }
                    if (this.se.getAdapter() != this.sw) {
                        this.se.setAdapter(this.sw);
                    }
                    this.se.setOnItemSelectedListener(this.sA);
                    addView(this.sf);
                    break;
                case 2:
                    if (this.bj != null && this.sq) {
                        addView(this.bj);
                        break;
                    }
            }
            this.rS = i;
            requestLayout();
        }
    }

    public void setDropdownAdapter(SpinnerAdapter spinnerAdapter) {
        this.sw = spinnerAdapter;
        if (this.se != null) {
            this.se.setAdapter(spinnerAdapter);
        }
    }

    public SpinnerAdapter getDropdownAdapter() {
        return this.sw;
    }

    public void setDropdownSelectedPosition(int i) {
        this.se.setSelection(i);
    }

    public int getDropdownSelectedPosition() {
        return this.se.getSelectedItemPosition();
    }

    public View getCustomNavigationView() {
        return this.sg;
    }

    public int getNavigationMode() {
        return this.rS;
    }

    public int getDisplayOptions() {
        return this.rT;
    }

    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ActionBar.LayoutParams(rP);
    }

    private void initTitle() {
        if (this.sd == null) {
            this.sd = LayoutInflater.from(getContext()).inflate(R.layout.action_bar_title_up, this, false);
            this.sd.setOnClickListener(this.sC);
        }
        addView(this.sd);
        if (this.qs == null) {
            this.qs = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.action_bar_title_item, this, false);
            this.cx = (TextView) this.qs.findViewById(R.id.action_bar_title);
            this.sc = (TextView) this.qs.findViewById(R.id.action_bar_subtitle);
            this.qs.setOnClickListener(this.sD);
            if (this.qv != 0) {
                this.cx.setTextAppearance(this.mContext, this.qv);
            }
            if (this.mTitle != null) {
                this.cx.setText(this.mTitle);
            }
            if (this.so != 0) {
                this.sc.setTextAppearance(this.mContext, this.so);
            }
            if (this.rU != null) {
                this.sc.setText(this.rU);
                this.sc.setVisibility(0);
            }
            int i = 4;
            boolean z = true;
            boolean z2 = (this.rT & 4) != 0;
            boolean z3 = (this.rT & 2) != 0;
            View view = this.sd;
            if (z3) {
                i = 8;
            } else if (z2) {
                i = 0;
            }
            view.setVisibility(i);
            View view2 = this.sd;
            boolean z4 = z2 && !z3;
            view2.setEnabled(z4);
            LinearLayout linearLayout = this.qs;
            if (!z2 || z3) {
                z = false;
            }
            linearLayout.setEnabled(z);
            bo();
        }
        addView(this.qs);
        post(new Runnable() {
            public void run() {
                if (ActionBarView.this.qs != null) {
                    Rect rect = new Rect();
                    ActionBarView.this.qs.getHitRect(rect);
                    rect.left -= ActionBarView.this.getResources().getDimensionPixelSize(R.dimen.action_bar_horizontal_padding);
                    ActionBarView.this.setTouchDelegate(new TouchDelegate(rect, ActionBarView.this.qs));
                }
            }
        });
        if (this.sz != null || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.rU))) {
            p(false);
        }
    }

    public void setCollapsable(boolean z) {
    }

    public boolean isCollapsed() {
        return this.sr;
    }

    private void bo() {
        int i = (hasEmbeddedTabs() && ActionBarPolicy.get(this.mContext).isTightTitle()) ? 8 : 0;
        if (this.cx != null && this.cx.getVisibility() == 0) {
            this.cx.setVisibility(i);
        }
        if (this.sc != null && this.sc.getVisibility() == 0) {
            this.sc.setVisibility(i);
        }
    }

    private boolean bp() {
        if (this.sg == null || this.sg.getVisibility() != 0) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams = this.sg.getLayoutParams();
        ActionBar.LayoutParams layoutParams2 = layoutParams instanceof ActionBar.LayoutParams ? (ActionBar.LayoutParams) layoutParams : null;
        if (layoutParams2 != null && d(layoutParams2.gravity, ViewUtils.isLayoutRtl(this)) == 8388613) {
            return true;
        }
        return false;
    }

    private boolean bq() {
        return this.ss && bp() && ((this.sa == null || this.sa.getVisibility() == 8) && !hasEmbeddedTabs());
    }

    private boolean br() {
        return (this.qs == null || this.qs.getVisibility() == 8 || (this.rT & 8) == 0) ? false : true;
    }

    private void bs() {
        boolean bq = bq();
        ViewGroup viewGroup = (ViewGroup) this.cx.getParent();
        int i = 8388611;
        if (viewGroup instanceof LinearLayout) {
            ((LinearLayout) viewGroup).setGravity((bq ? 1 : 8388611) | 16);
        }
        this.cx.setGravity((bq ? 1 : 8388611) | 16);
        this.cx.setEllipsize(bq ? TruncateAt.MIDDLE : TruncateAt.END);
        if (this.sc != null) {
            TextView textView = this.sc;
            if (bq) {
                i = 1;
            }
            textView.setGravity(i | 16);
            this.sc.setEllipsize(bq ? TruncateAt.MIDDLE : TruncateAt.END);
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = i3;
        while (i3 < childCount) {
            View childAt = getChildAt(i3);
            if (!(childAt.getVisibility() == 8 || (childAt == this.mMenuView && this.mMenuView.getChildCount() == 0))) {
                i4++;
            }
            i3++;
        }
        if (i4 == 0) {
            setMeasuredDimension(0, 0);
            this.sr = true;
            return;
        }
        int i5;
        int makeMeasureSpec;
        View view;
        int i6;
        int i7;
        int i8;
        this.sr = false;
        i4 = MeasureSpec.getSize(i);
        int size = this.mContentHeight > 0 ? this.mContentHeight : MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingStart = getPaddingStart();
        int paddingEnd = getPaddingEnd();
        int i9 = size - paddingTop;
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(i9, 1073741824);
        int makeMeasureSpec3 = MeasureSpec.makeMeasureSpec(i9, Integer.MIN_VALUE);
        int i10 = (i4 - paddingStart) - paddingEnd;
        paddingEnd = i10 / 2;
        if (this.sk != null) {
            i10 = measureChildView(this.sk, i10, makeMeasureSpec3, 0);
            paddingStart += this.sk.getMeasuredWidth();
        }
        if (this.sl != null) {
            i10 = measureChildView(this.sl, i10, makeMeasureSpec3, 0);
        }
        HomeView homeView = this.sz != null ? this.sb : this.sa;
        if (!(this.sk == null || homeView == null)) {
            homeView.setVisibility(8);
        }
        if (homeView == null || homeView.getVisibility() == 8) {
            i5 = paddingEnd;
        } else {
            ViewGroup.LayoutParams layoutParams = homeView.getLayoutParams();
            if (layoutParams.width < 0) {
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE);
            } else {
                makeMeasureSpec = MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
            }
            homeView.measure(makeMeasureSpec, makeMeasureSpec2);
            makeMeasureSpec = homeView.getMeasuredWidth() + homeView.bx();
            i10 = Math.max(0, i10 - makeMeasureSpec);
            i5 = Math.max(0, i10 - makeMeasureSpec);
            paddingStart += makeMeasureSpec;
        }
        if (this.mMenuView != null && this.mMenuView.getParent() == this) {
            i10 = measureChildView(this.mMenuView, i10, makeMeasureSpec3, 0);
            paddingEnd = Math.max(0, paddingEnd - this.mMenuView.getMeasuredWidth());
        }
        if (!(this.si == null || this.si.getVisibility() == 8)) {
            i10 = measureChildView(this.si, i10, makeMeasureSpec3, this.sm * 2);
            paddingEnd = Math.max(0, (paddingEnd - this.si.getMeasuredWidth()) - (this.sm * 2));
        }
        if (!(this.sj == null || this.sj.getVisibility() == 8)) {
            i10 = measureChildView(this.sj, i10, makeMeasureSpec3, 0);
            paddingEnd = Math.max(0, paddingEnd - this.sj.getMeasuredWidth());
        }
        boolean br = br();
        if (br) {
            bs();
        }
        if (this.sz != null) {
            view = this.sz;
        } else if ((this.rT & 16) == 0 || this.sg == null) {
            view = null;
        } else {
            view = this.sg;
        }
        if ((this.sk == null && this.sl == null) || view == null) {
            makeMeasureSpec3 = 8;
        } else {
            makeMeasureSpec3 = 8;
            view.setVisibility(8);
        }
        if (view == null || view.getVisibility() == r14) {
            i6 = childCount;
            i7 = size;
            i8 = paddingTop;
        } else {
            ActionBar.LayoutParams layoutParams2;
            int i11;
            ViewGroup.LayoutParams generateLayoutParams = generateLayoutParams(view.getLayoutParams());
            if (generateLayoutParams instanceof ActionBar.LayoutParams) {
                layoutParams2 = (ActionBar.LayoutParams) generateLayoutParams;
            } else {
                layoutParams2 = null;
            }
            if (layoutParams2 != null) {
                i7 = size;
                i11 = layoutParams2.rightMargin + layoutParams2.leftMargin;
                size = layoutParams2.bottomMargin + layoutParams2.topMargin;
            } else {
                i7 = size;
                size = 0;
                i11 = 0;
            }
            i8 = paddingTop;
            int i12 = (this.mContentHeight > 0 && generateLayoutParams.height != -2) ? 1073741824 : Integer.MIN_VALUE;
            if (generateLayoutParams.height >= 0) {
                i9 = Math.min(generateLayoutParams.height, i9);
            }
            paddingTop = Math.max(0, i9 - size);
            size = generateLayoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            i6 = childCount;
            i9 = Math.max(0, (generateLayoutParams.width >= 0 ? Math.min(generateLayoutParams.width, i10) : i10) - i11);
            if (((layoutParams2 != null ? layoutParams2.gravity : rP) & 8388615) == 1 && generateLayoutParams.width == -1) {
                i9 = Math.min(i5, paddingEnd) * 2;
            }
            view.measure(MeasureSpec.makeMeasureSpec(i9, size), MeasureSpec.makeMeasureSpec(paddingTop, i12));
            i10 -= i11 + view.getMeasuredWidth();
        }
        if (this.sz == null && br) {
            childCount = MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
            i3 = measureChildView(this.sd, i10, childCount, 0);
            paddingStart += this.sd.getMeasuredWidth();
            if (bq()) {
                this.qs.measure(MeasureSpec.makeMeasureSpec(Math.max(0, i4 - (paddingStart * 2)), Integer.MIN_VALUE), childCount);
                i10 = i3 - this.qs.getMeasuredWidth();
            } else {
                i10 = measureChildView(this.qs, i3, childCount, 0);
            }
        }
        if (this.sz == null) {
            switch (this.rS) {
                case 1:
                    if (this.sf != null) {
                        i3 = 0;
                        this.sf.measure(MeasureSpec.makeMeasureSpec(Math.max(0, i10 - (br ? this.sn * 2 : this.sn)), Integer.MIN_VALUE), makeMeasureSpec2);
                        break;
                    }
                case 2:
                    if (this.bj != null) {
                        this.bj.measure(MeasureSpec.makeMeasureSpec(Math.max(0, i10 - (br ? this.sn * 2 : this.sn)), this.mContext.getResources().getInteger(R.integer.action_bar_tab_layout_weight) == 0 ? Integer.MIN_VALUE : 1073741824), makeMeasureSpec2);
                    }
                    i3 = 0;
                    break;
            }
        }
        i3 = 0;
        if (this.mContentHeight <= 0) {
            childCount = i3;
            while (true) {
                makeMeasureSpec = i6;
                if (i3 < makeMeasureSpec) {
                    i5 = getChildAt(i3).getMeasuredHeight() + i8;
                    if (i5 > childCount) {
                        childCount = i5;
                    }
                    i3++;
                    i6 = makeMeasureSpec;
                } else {
                    setMeasuredDimension(i4, childCount);
                }
            }
        } else {
            setMeasuredDimension(i4, i7);
        }
        if (!(this.sh == null || this.sh.getVisibility() == 8)) {
            this.sh.measure(MeasureSpec.makeMeasureSpec(i4 - (this.sm * 2), 1073741824), MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (paddingTop2 > 0) {
            int bx;
            int f;
            int measuredWidth;
            int i5;
            ViewGroup.LayoutParams layoutParams;
            int measuredWidth2;
            View view;
            View view2 = this.sz != null ? this.sb : this.sa;
            if (view2 != null && view2.getVisibility() != 8) {
                bx = view2.bx();
                paddingStart += positionChild(view2, paddingStart + bx, paddingTop, paddingTop2) + bx;
            } else if (this.sk != null) {
                paddingStart += positionChild(this.sk, paddingStart, paddingTop, paddingTop2);
            }
            ActionBar.LayoutParams layoutParams2 = null;
            if (this.sz == null) {
                boolean br = br();
                if (br) {
                    int positionChild = paddingStart + positionChild(this.sd, paddingStart, paddingTop, paddingTop2);
                    if (bq()) {
                        paddingStart = f(this.cx);
                        if (!(this.sc == null || this.sc.getVisibility() == 8)) {
                            f = f(this.sc);
                            if (paddingStart > f) {
                                paddingStart = f;
                            }
                        }
                        bx = paddingStart;
                        measuredWidth = bx + this.qs.getMeasuredWidth();
                        paddingStart = this.qs.getMeasuredHeight();
                        i5 = paddingTop + ((paddingTop2 - paddingStart) / 2);
                        ViewUtils.layoutChildView(this, this.qs, bx, i5, measuredWidth, i5 + paddingStart);
                        paddingStart = positionChild;
                    } else {
                        paddingStart = positionChild(this.qs, positionChild, paddingTop, paddingTop2) + positionChild;
                    }
                }
                switch (this.rS) {
                    case 1:
                        if (this.sf != null) {
                            if (br) {
                                paddingStart += this.sn;
                            }
                            paddingStart += positionChild(this.sf, paddingStart, paddingTop, paddingTop2) + this.sn;
                            break;
                        }
                        break;
                    case 2:
                        if (this.bj != null) {
                            if (br) {
                                paddingStart += this.sn;
                            }
                            f = this.bj.getMeasuredWidth();
                            bx = this.bj.getMeasuredHeight();
                            i5 = (getWidth() - f) / 2;
                            if (paddingStart > i5) {
                                i5 = paddingStart;
                            }
                            f += i5;
                            if (this.sg != null) {
                                ActionBar.LayoutParams layoutParams3;
                                layoutParams = this.sg.getLayoutParams();
                                if (layoutParams instanceof ActionBar.LayoutParams) {
                                    layoutParams3 = (ActionBar.LayoutParams) layoutParams;
                                } else {
                                    layoutParams3 = null;
                                }
                                measuredWidth2 = this.sg.getMeasuredWidth();
                                measuredWidth = layoutParams3 != null ? measuredWidth2 + (layoutParams3.leftMargin + layoutParams3.rightMargin) : measuredWidth2;
                            } else {
                                measuredWidth = 0;
                            }
                            measuredWidth2 = (getWidth() - getPaddingEnd()) - measuredWidth;
                            if (f > measuredWidth2) {
                                if (measuredWidth2 < (f + i5) / 2) {
                                    i5 = paddingStart;
                                }
                                paddingStart = measuredWidth2;
                            } else {
                                paddingStart = f;
                            }
                            if (isLayoutRtl) {
                                f = getWidth() - paddingStart;
                            } else {
                                f = i5;
                            }
                            if (isLayoutRtl) {
                                i5 = getWidth() - i5;
                            } else {
                                i5 = paddingStart;
                            }
                            this.bj.layout(f, paddingTop, i5, bx + paddingTop);
                            break;
                        }
                        break;
                }
            }
            f = (i3 - i) - getPaddingEnd();
            if (this.mMenuView != null && this.mMenuView.getParent() == this) {
                positionChildInverse(this.mMenuView, f, paddingTop, paddingTop2);
                f -= this.mMenuView.getMeasuredWidth();
            }
            if (this.sl != null) {
                positionChildInverse(this.sl, f, paddingTop, paddingTop2);
                f -= this.sl.getMeasuredWidth();
            }
            if (!(this.si == null || this.si.getVisibility() == 8)) {
                positionChildInverse(this.si, f - this.sm, paddingTop, paddingTop2);
                f -= this.si.getMeasuredWidth() - (this.sm * 2);
            }
            if (!(this.sj == null || this.sj.getVisibility() == 8)) {
                positionChildInverse(this.sj, f, paddingTop, paddingTop2);
                f -= this.sj.getMeasuredWidth();
            }
            if (this.sz != null) {
                view = this.sz;
            } else if ((this.rT & 16) == 0 || this.sg == null) {
                view = null;
            } else {
                view = this.sg;
            }
            if (!(view == null || view.getVisibility() == 8)) {
                int width;
                layoutParams = view.getLayoutParams();
                if (layoutParams instanceof ActionBar.LayoutParams) {
                    layoutParams2 = (ActionBar.LayoutParams) layoutParams;
                }
                measuredWidth = layoutParams2 != null ? layoutParams2.gravity : rP;
                measuredWidth2 = view.getMeasuredWidth();
                if (layoutParams2 != null) {
                    paddingStart += layoutParams2.getMarginStart();
                    f -= layoutParams2.getMarginEnd();
                    paddingTop = layoutParams2.topMargin;
                    paddingTop2 = layoutParams2.bottomMargin;
                } else {
                    paddingTop = 0;
                    paddingTop2 = 0;
                }
                int i6 = 8388615 & measuredWidth;
                if (i6 == 1) {
                    width = (getWidth() - measuredWidth2) / 2;
                    if (width < paddingStart) {
                        i6 = 8388611;
                    } else if (width + measuredWidth2 > f) {
                        i6 = 8388613;
                    }
                } else if (measuredWidth == -1) {
                    i6 = 8388611;
                }
                width = getPaddingStart();
                i6 = d(i6, isLayoutRtl);
                if (i6 == 1) {
                    paddingStart = (getWidth() - measuredWidth2) / 2;
                } else if (i6 != 8388611) {
                    if (i6 != 8388613) {
                        paddingStart = width;
                    } else {
                        paddingStart = f - measuredWidth2;
                    }
                }
                f = measuredWidth & BaiduSceneResult.STREET_VIEW;
                if (measuredWidth == -1) {
                    f = 16;
                }
                if (f == 16) {
                    width = (((getHeight() - getPaddingBottom()) - getPaddingTop()) - view.getMeasuredHeight()) / 2;
                } else if (f == 48) {
                    width = getPaddingTop() + paddingTop;
                } else if (f != 80) {
                    width = 0;
                } else {
                    width = ((getHeight() - getPaddingBottom()) - view.getMeasuredHeight()) - paddingTop2;
                }
                f = view.getMeasuredWidth();
                if (isLayoutRtl) {
                    i5 = (getWidth() - paddingStart) - f;
                } else {
                    i5 = paddingStart;
                }
                view.layout(i5, width, isLayoutRtl ? getWidth() - paddingStart : f + paddingStart, view.getMeasuredHeight() + width);
            }
            if (this.sh != null) {
                this.sh.bringToFront();
                paddingStart = this.sh.getMeasuredHeight() / 2;
                this.sh.layout(this.sm, -paddingStart, this.sm + this.sh.getMeasuredWidth(), paddingStart);
            }
        }
    }

    private int f(View view) {
        int width = (getWidth() - view.getMeasuredWidth()) / 2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i = 0;
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            i = 0 + ((LinearLayout.LayoutParams) layoutParams).getMarginStart();
        }
        return width - i;
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionBar.LayoutParams(getContext(), attributeSet);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        return layoutParams;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        if (!(this.sy == null || this.sy.sH == null)) {
            savedState.sM = this.sy.sH.getItemId();
        }
        savedState.qJ = isOverflowMenuShowing();
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!(savedState.sM == 0 || this.sy == null || this.st == null)) {
            MenuItem findItem = this.st.findItem(savedState.sM);
            if (findItem != null) {
                findItem.expandActionView();
            }
        }
        if (savedState.qJ) {
            postShowOverflowMenu();
        }
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (this.sa != null) {
            this.sa.a(drawable);
            return;
        }
        this.rY = drawable;
        this.rZ = 0;
    }

    public void setHomeAsUpIndicator(int i) {
        if (this.sa != null) {
            this.sa.q(i);
            return;
        }
        this.rY = null;
        this.rZ = i;
    }

    private void p(boolean z) {
        if (this.qs != null) {
            this.qs.setVisibility(z ? 0 : 8);
        }
        if (this.sd == null) {
            return;
        }
        if (z) {
            int i = 4;
            Object obj = 1;
            Object obj2 = (this.rT & 4) != 0 ? 1 : null;
            if ((this.rT & 2) == 0) {
                obj = null;
            }
            View view = this.sd;
            if (obj != null) {
                i = 8;
            } else if (obj2 != null) {
                i = 0;
            }
            view.setVisibility(i);
            return;
        }
        this.sd.setVisibility(8);
    }

    protected ActionMenuPresenter createActionMenuPresenter(MenuPresenter.Callback callback) {
        ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.mContext, R.layout.action_menu_layout, R.layout.action_menu_item_layout, R.layout.action_bar_expanded_menu_layout, R.layout.action_bar_list_menu_item_layout);
        actionMenuPresenter.setCallback(callback);
        actionMenuPresenter.setId(R.id.action_menu_presenter);
        return actionMenuPresenter;
    }

    protected ExpandedActionViewMenuPresenter createExpandedActionViewMenuPresenter() {
        return new ExpandedActionViewMenuPresenter(this, null);
    }

    public void onWindowShow() {
        this.mSplitView.onWindowShow();
    }

    public void onWindowHide() {
        this.mSplitView.onWindowHide();
    }

    public void setProgressBarVisibility(boolean z) {
        int i;
        if (z) {
            i = -1;
        } else {
            i = -2;
        }
        p(i);
    }

    public void setProgressBarIndeterminateVisibility(boolean z) {
        int i;
        if (z) {
            i = -1;
        } else {
            i = -2;
        }
        p(i);
    }

    public void setProgressBarIndeterminate(boolean z) {
        int i;
        if (z) {
            i = -3;
        } else {
            i = -4;
        }
        p(i);
    }

    public void setProgress(int i) {
        p(0 + i);
    }

    private void p(int i) {
        ProgressBar bt = bt();
        ProgressBar bu = bu();
        if (i == -1) {
            if (bu != null) {
                i = bu.getProgress();
                if (bu.isIndeterminate() || i < 10000) {
                    i = 0;
                } else {
                    i = 4;
                }
                bu.setVisibility(i);
            }
            if (bt != null) {
                bt.setVisibility(0);
            }
        } else if (i == -2) {
            if (bu != null) {
                bu.setVisibility(8);
            }
            if (bt != null) {
                bt.setVisibility(8);
            }
        } else if (i == -3) {
            bu.setIndeterminate(true);
        } else if (i == -4) {
            bu.setIndeterminate(false);
        } else if (i >= 0 && i <= 10000) {
            bu.setProgress(i + 0);
            if (i < 10000) {
                a(bu, bt);
            } else {
                b(bu, bt);
            }
        }
    }

    private void a(ProgressBar progressBar, ProgressBar progressBar2) {
        if (progressBar2 != null && progressBar2.getVisibility() == 4) {
            progressBar2.setVisibility(0);
        }
        if (progressBar != null && progressBar.getProgress() < 10000) {
            progressBar.setVisibility(0);
        }
    }

    private void b(ProgressBar progressBar, ProgressBar progressBar2) {
        if (progressBar2 != null && progressBar2.getVisibility() == 0) {
            progressBar2.setVisibility(4);
        }
        if (progressBar != null && progressBar.getVisibility() == 0) {
            progressBar.setVisibility(4);
        }
    }

    private ProgressBar bt() {
        ProgressBar progressBar = this.si;
        if (progressBar != null) {
            progressBar.setVisibility(4);
        }
        return progressBar;
    }

    private ProgressBar bu() {
        ProgressBar progressBar = this.sh;
        if (progressBar != null) {
            progressBar.setVisibility(4);
        }
        return progressBar;
    }

    private Drawable getIcon() {
        if ((this.rV & 1) != 1) {
            if (this.mContext instanceof Activity) {
                try {
                    this.mIcon = this.mContext.getPackageManager().getActivityIcon(((Activity) this.mContext).getComponentName());
                } catch (Throwable e) {
                    Log.e(TAG, "Activity component name not found!", e);
                }
            }
            if (this.mIcon == null) {
                this.mIcon = this.mContext.getApplicationInfo().loadIcon(this.mContext.getPackageManager());
            }
            this.rV |= 1;
        }
        return this.mIcon;
    }

    private Drawable getLogo() {
        if ((this.rV & 2) != 2) {
            if (VERSION.SDK_INT >= 9) {
                if (this.mContext instanceof Activity) {
                    try {
                        this.rW = this.mContext.getPackageManager().getActivityLogo(((Activity) this.mContext).getComponentName());
                    } catch (Throwable e) {
                        Log.e(TAG, "Activity component name not found!", e);
                    }
                }
                if (this.rW == null) {
                    this.rW = this.mContext.getApplicationInfo().loadLogo(this.mContext.getPackageManager());
                }
            }
            this.rV |= 2;
        }
        return this.rW;
    }

    private void bv() {
        if (this.sa == null) {
            this.sa = (HomeView) LayoutInflater.from(this.mContext).inflate(this.rX, this, false);
            this.sa.setOnClickListener(this.sC);
            this.sa.setClickable(true);
            this.sa.setFocusable(true);
            if (this.rZ != 0) {
                this.sa.q(this.rZ);
                this.rZ = 0;
            }
            if (this.rY != null) {
                this.sa.a(this.rY);
                this.rY = null;
            }
            addView(this.sa);
        }
    }

    private void bw() {
        if (this.sb == null) {
            this.sb = (HomeView) LayoutInflater.from(this.mContext).inflate(this.rX, this, false);
            this.sb.q(true);
            this.sb.setOnClickListener(this.sB);
        }
    }

    /* JADX WARNING: Missing block: B:4:0x0012, code:
            if (r5 != false) goto L_0x0014;
     */
    /* JADX WARNING: Missing block: B:9:0x001c, code:
            if (r5 != false) goto L_0x0017;
     */
    /* JADX WARNING: Missing block: B:12:?, code:
            return 8388611;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int d(int i, boolean z) {
        i &= 8388615;
        if ((nexEngine.ExportHEVCHighTierLevel61 & i) != 0) {
            return i;
        }
        if (i != 3) {
            if (i != 5) {
                return i;
            }
        }
        return 8388613;
    }
}
