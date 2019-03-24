package com.miui.internal.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.ActionBar.LayoutParams;
import android.app.ActionBar.OnMenuVisibilityListener;
import android.app.ActionBar.OnNavigationListener;
import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import com.miui.internal.R;
import com.miui.internal.view.ActionBarPolicy;
import com.miui.internal.view.ActionModeImpl;
import com.miui.internal.view.ActionModeImpl.ActionModeCallback;
import com.miui.internal.view.EditActionModeImpl;
import com.miui.internal.view.SearchActionModeImpl;
import com.miui.internal.view.menu.ActionMenuView;
import com.miui.internal.view.menu.PhoneActionMenuView;
import com.miui.internal.widget.ActionBarContainer;
import com.miui.internal.widget.ActionBarContextView;
import com.miui.internal.widget.ActionBarOverlayLayout;
import com.miui.internal.widget.ActionBarView;
import com.miui.internal.widget.ActionModeView;
import com.miui.internal.widget.ScrollingTabContainerView;
import com.miui.internal.widget.SearchActionModeView;
import java.util.ArrayList;
import miui.app.ActionBar;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.app.IFragment;
import miui.view.SearchActionMode;
import miui.view.animation.CubicEaseInInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;

public class ActionBarImpl extends ActionBar {
    private static final int INVALID_POSITION = -1;
    private static final int aX = 0;
    private static final int aY = 1;
    private static TabListener aZ = new TabListener() {
        public void onTabSelected(Tab tab, FragmentTransaction fragmentTransaction) {
            TabImpl tabImpl = (TabImpl) tab;
            if (tabImpl.bF != null) {
                tabImpl.bF.onTabSelected(tab, fragmentTransaction);
            }
            if (tabImpl.bE != null) {
                tabImpl.bE.onTabSelected(tab, fragmentTransaction);
            }
        }

        public void onTabUnselected(Tab tab, FragmentTransaction fragmentTransaction) {
            TabImpl tabImpl = (TabImpl) tab;
            if (tabImpl.bF != null) {
                tabImpl.bF.onTabUnselected(tab, fragmentTransaction);
            }
            if (tabImpl.bE != null) {
                tabImpl.bE.onTabUnselected(tab, fragmentTransaction);
            }
        }

        public void onTabReselected(Tab tab, FragmentTransaction fragmentTransaction) {
            TabImpl tabImpl = (TabImpl) tab;
            if (tabImpl.bF != null) {
                tabImpl.bF.onTabReselected(tab, fragmentTransaction);
            }
            if (tabImpl.bE != null) {
                tabImpl.bE.onTabReselected(tab, fragmentTransaction);
            }
        }
    };
    private ActionModeCallback bA = new ActionModeCallback() {
        public void onActionModeFinish(ActionMode actionMode) {
            ActionBarImpl.this.b(false);
            ActionBarImpl.this.mActionMode = null;
        }
    };
    private Animator bB;
    private Animator bC;
    private Context ba;
    private ActionBarOverlayLayout bb;
    private ActionBarContainer bc;
    private ActionBarView bd;
    private ActionBarContextView be;
    private PhoneActionMenuView bf;
    private View bg;
    private OnClickListener bh;
    private ActionBarViewPagerController bi;
    private ScrollingTabContainerView bj;
    private ActionModeView bk;
    private ArrayList<TabImpl> bl = new ArrayList();
    private TabImpl bm;
    private FragmentManager bn;
    private int bo = -1;
    private boolean bp;
    private ArrayList<OnMenuVisibilityListener> bq = new ArrayList();
    private int br;
    private boolean bs;
    private int bt = 0;
    private boolean bu;
    private boolean bv;
    private boolean bw;
    private boolean bx = true;
    private boolean by;
    private SearchActionModeView bz;
    ActionMode mActionMode;
    private Context mContext;
    private ActionBarContainer mSplitView;

    public class TabImpl extends Tab {
        private TabListener bE;
        private TabListener bF;
        private Object bG;
        private CharSequence bH;
        private CharSequence bI;
        private View bJ;
        private Drawable mIcon;
        private int mPosition = -1;

        public Object getTag() {
            return this.bG;
        }

        public Tab setTag(Object obj) {
            this.bG = obj;
            return this;
        }

        public TabListener getCallback() {
            return ActionBarImpl.aZ;
        }

        public Tab setTabListener(TabListener tabListener) {
            this.bE = tabListener;
            return this;
        }

        public Tab setInternalTabListener(TabListener tabListener) {
            this.bF = tabListener;
            return this;
        }

        public View getCustomView() {
            return this.bJ;
        }

        public Tab setCustomView(View view) {
            this.bJ = view;
            if (this.mPosition >= 0) {
                ActionBarImpl.this.bj.updateTab(this.mPosition);
            }
            return this;
        }

        public Tab setCustomView(int i) {
            return setCustomView(LayoutInflater.from(ActionBarImpl.this.getThemedContext()).inflate(i, null));
        }

        public Drawable getIcon() {
            return this.mIcon;
        }

        public int getPosition() {
            return this.mPosition;
        }

        public void setPosition(int i) {
            this.mPosition = i;
        }

        public CharSequence getText() {
            return this.bH;
        }

        public Tab setIcon(Drawable drawable) {
            this.mIcon = drawable;
            if (this.mPosition >= 0) {
                ActionBarImpl.this.bj.updateTab(this.mPosition);
            }
            return this;
        }

        public Tab setIcon(int i) {
            return setIcon(ActionBarImpl.this.mContext.getResources().getDrawable(i));
        }

        public Tab setText(CharSequence charSequence) {
            this.bH = charSequence;
            if (this.mPosition >= 0) {
                ActionBarImpl.this.bj.updateTab(this.mPosition);
            }
            return this;
        }

        public Tab setText(int i) {
            return setText(ActionBarImpl.this.mContext.getResources().getText(i));
        }

        public void select() {
            ActionBarImpl.this.selectTab(this);
        }

        public Tab setContentDescription(int i) {
            return setContentDescription(ActionBarImpl.this.mContext.getResources().getText(i));
        }

        public Tab setContentDescription(CharSequence charSequence) {
            this.bI = charSequence;
            if (this.mPosition >= 0) {
                ActionBarImpl.this.bj.updateTab(this.mPosition);
            }
            return this;
        }

        public CharSequence getContentDescription() {
            return this.bI;
        }
    }

    public ActionBarImpl(Activity activity) {
        this.mContext = activity;
        this.bn = activity.getFragmentManager();
        init((ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.action_bar_overlay_layout));
        setTitle(activity.getTitle());
    }

    public ActionBarImpl(Fragment fragment) {
        this.mContext = ((IFragment) fragment).getThemedContext();
        this.bn = fragment.getFragmentManager();
        init((ViewGroup) fragment.getView());
        Activity activity = fragment.getActivity();
        setTitle(activity != null ? activity.getTitle() : null);
    }

    public ActionBarImpl(Dialog dialog) {
        this.mContext = dialog.getContext();
        init((ViewGroup) dialog.getWindow().getDecorView().findViewById(R.id.action_bar_overlay_layout));
    }

    public static ActionBarImpl getActionBar(View view) {
        while (view != null) {
            if (view instanceof ActionBarOverlayLayout) {
                return (ActionBarImpl) ((ActionBarOverlayLayout) view).getActionBar();
            }
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
            } else {
                view = null;
            }
        }
        return null;
    }

    private static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        if (z || z2) {
            return false;
        }
        return true;
    }

    protected void init(ViewGroup viewGroup) {
        this.bb = (ActionBarOverlayLayout) viewGroup;
        this.bb.setActionBar(this);
        this.bd = (ActionBarView) viewGroup.findViewById(R.id.action_bar);
        this.be = (ActionBarContextView) viewGroup.findViewById(R.id.action_context_bar);
        this.bc = (ActionBarContainer) viewGroup.findViewById(R.id.action_bar_container);
        this.mSplitView = (ActionBarContainer) viewGroup.findViewById(R.id.split_action_bar);
        this.bg = viewGroup.findViewById(R.id.content_mask);
        if (this.bg != null) {
            this.bh = new OnClickListener() {
                public void onClick(View view) {
                    if (ActionBarImpl.this.bf != null && ActionBarImpl.this.bf.isOverflowMenuShowing()) {
                        ActionBarImpl.this.bf.getPresenter().hideOverflowMenu(true);
                    }
                }
            };
        }
        if (this.bd == null || this.be == null || this.bc == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getClass().getSimpleName());
            stringBuilder.append(" can only be used with a compatible window decor layout");
            throw new IllegalStateException(stringBuilder.toString());
        }
        boolean z = false;
        this.br = this.bd.isSplitActionBar() ? 1 : 0;
        boolean z2 = (this.bd.getDisplayOptions() & 4) != 0;
        if (z2) {
            this.bp = true;
        }
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.mContext);
        if (actionBarPolicy.enableHomeButtonByDefault() || z2) {
            z = true;
        }
        setHomeButtonEnabled(z);
        a(actionBarPolicy.hasEmbeddedTabs());
    }

    public void onConfigurationChanged(Configuration configuration) {
        a(ActionBarPolicy.get(this.mContext).hasEmbeddedTabs());
    }

    private void a(boolean z) {
        this.bs = z;
        if (this.bs) {
            this.bc.setTabContainer(null);
            this.bd.setEmbeddedTabView(this.bj);
        } else {
            this.bd.setEmbeddedTabView(null);
            this.bc.setTabContainer(this.bj);
        }
        boolean z2 = true;
        z = getNavigationMode() == 2;
        if (this.bj != null) {
            if (z) {
                this.bj.setVisibility(0);
            } else {
                this.bj.setVisibility(8);
            }
            this.bj.setEmbeded(this.bs);
        }
        ActionBarView actionBarView = this.bd;
        if (this.bs || !z) {
            z2 = false;
        }
        actionBarView.setCollapsable(z2);
    }

    public boolean hasNonEmbeddedTabs() {
        return !this.bs && getNavigationMode() == 2;
    }

    public void setTabsMode(boolean z) {
        a(z);
    }

    public void setTabBadgeVisibility(int i, boolean z) {
        this.bj.setBadgeVisibility(i, z);
    }

    public void setTabTextAppearance(int i, int i2) {
        this.bj.setTextAppearance(i, i2);
    }

    public void setCustomView(View view) {
        this.bd.setCustomNavigationView(view);
    }

    public void setCustomView(View view, LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.bd.setCustomNavigationView(view);
    }

    public void setIcon(int i) {
        this.bd.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        this.bd.setIcon(drawable);
    }

    public void setLogo(int i) {
        this.bd.setLogo(i);
    }

    public void setLogo(Drawable drawable) {
        this.bd.setLogo(drawable);
    }

    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, OnNavigationListener onNavigationListener) {
        this.bd.setDropdownAdapter(spinnerAdapter);
        this.bd.setCallback(onNavigationListener);
    }

    public void setSelectedNavigationItem(int i) {
        switch (this.bd.getNavigationMode()) {
            case 1:
                this.bd.setDropdownSelectedPosition(i);
                return;
            case 2:
                selectTab((Tab) this.bl.get(i));
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    public int getSelectedNavigationIndex() {
        int i = -1;
        switch (this.bd.getNavigationMode()) {
            case 1:
                return this.bd.getDropdownSelectedPosition();
            case 2:
                if (this.bm != null) {
                    i = this.bm.getPosition();
                }
                return i;
            default:
                return -1;
        }
    }

    public int getNavigationItemCount() {
        int i = 0;
        switch (this.bd.getNavigationMode()) {
            case 1:
                SpinnerAdapter dropdownAdapter = this.bd.getDropdownAdapter();
                if (dropdownAdapter != null) {
                    i = dropdownAdapter.getCount();
                }
                return i;
            case 2:
                return this.bl.size();
            default:
                return 0;
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.bd.setTitle(charSequence);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.bd.setSubtitle(charSequence);
    }

    public void setDisplayOptions(int i, int i2) {
        int displayOptions = this.bd.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.bp = true;
        }
        this.bd.setDisplayOptions((i & i2) | ((~i2) & displayOptions));
    }

    public void setDisplayUseLogoEnabled(boolean z) {
        setDisplayOptions(z, 1);
    }

    public void setDisplayShowHomeEnabled(boolean z) {
        setDisplayOptions(z ? 2 : 0, 2);
    }

    public void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? 4 : 0, 4);
    }

    public void setDisplayShowTitleEnabled(boolean z) {
        setDisplayOptions(z ? 8 : 0, 8);
    }

    public void setDisplayShowCustomEnabled(boolean z) {
        setDisplayOptions(z ? 16 : 0, 16);
    }

    public void setHomeButtonEnabled(boolean z) {
        this.bd.setHomeButtonEnabled(z);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.bc.setPrimaryBackground(drawable);
    }

    public void setSplitBackgroundDrawable(Drawable drawable) {
        if (this.mSplitView != null) {
            for (int i = 0; i < this.mSplitView.getChildCount(); i++) {
                if (this.mSplitView.getChildAt(i) instanceof ActionMenuView) {
                    this.mSplitView.getChildAt(i).setBackground(drawable);
                }
            }
        }
    }

    public View getCustomView() {
        return this.bd.getCustomNavigationView();
    }

    public void setCustomView(int i) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i, this.bd, false));
    }

    public CharSequence getTitle() {
        return this.bd.getTitle();
    }

    public void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    public CharSequence getSubtitle() {
        return this.bd.getSubtitle();
    }

    public void setSubtitle(int i) {
        setSubtitle(this.mContext.getString(i));
    }

    public int getNavigationMode() {
        return this.bd.getNavigationMode();
    }

    public void setNavigationMode(int i) {
        if (this.bd.getNavigationMode() == 2) {
            this.bo = getSelectedNavigationIndex();
            selectTab(null);
            this.bj.setVisibility(8);
        }
        this.bd.setNavigationMode(i);
        boolean z = false;
        if (i == 2) {
            n();
            this.bj.setVisibility(0);
            if (this.bo != -1) {
                setSelectedNavigationItem(this.bo);
                this.bo = -1;
            }
        }
        ActionBarView actionBarView = this.bd;
        if (i == 2 && !this.bs) {
            z = true;
        }
        actionBarView.setCollapsable(z);
    }

    public int getDisplayOptions() {
        return this.bd.getDisplayOptions();
    }

    public void setDisplayOptions(int i) {
        if ((i & 4) != 0) {
            this.bp = true;
        }
        this.bd.setDisplayOptions(i);
    }

    public Tab newTab() {
        return new TabImpl();
    }

    public void addTab(Tab tab) {
        addTab(tab, this.bl.isEmpty());
    }

    public void addTab(Tab tab, boolean z) {
        if (isFragmentViewPagerMode()) {
            throw new IllegalStateException("Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab().");
        }
        a(tab, z);
    }

    public void addTab(Tab tab, int i) {
        addTab(tab, i, this.bl.isEmpty());
    }

    public void addTab(Tab tab, int i, boolean z) {
        if (isFragmentViewPagerMode()) {
            throw new IllegalStateException("Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab().");
        }
        a(tab, i, z);
    }

    ActionBarOverlayLayout j() {
        return this.bb;
    }

    void a(Tab tab) {
        a(tab, getTabCount() == 0);
    }

    void a(Tab tab, boolean z) {
        n();
        this.bj.addTab(tab, z);
        b(tab, this.bl.size());
        if (z) {
            selectTab(tab);
        }
    }

    void a(Tab tab, int i) {
        a(tab, i, i == getTabCount());
    }

    void a(Tab tab, int i, boolean z) {
        n();
        this.bj.addTab(tab, i, z);
        b(tab, i);
        if (z) {
            selectTab(tab);
        }
    }

    public void removeTab(Tab tab) {
        if (isFragmentViewPagerMode()) {
            throw new IllegalStateException("Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab().");
        }
        b(tab);
    }

    public void removeTabAt(int i) {
        if (isFragmentViewPagerMode()) {
            throw new IllegalStateException("Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab().");
        }
        b(i);
    }

    public void removeAllTabs() {
        if (isFragmentViewPagerMode()) {
            throw new IllegalStateException("Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab().");
        }
        k();
    }

    void b(Tab tab) {
        b(tab.getPosition());
    }

    void b(int i) {
        if (this.bj != null) {
            int position = this.bm != null ? this.bm.getPosition() : this.bo;
            this.bj.removeTabAt(i);
            TabImpl tabImpl = (TabImpl) this.bl.remove(i);
            if (tabImpl != null) {
                tabImpl.setPosition(-1);
            }
            int size = this.bl.size();
            for (int i2 = i; i2 < size; i2++) {
                ((TabImpl) this.bl.get(i2)).setPosition(i2);
            }
            if (position == i) {
                Tab tab;
                if (this.bl.isEmpty()) {
                    tab = null;
                } else {
                    tab = (TabImpl) this.bl.get(Math.max(0, i - 1));
                }
                selectTab(tab);
            }
        }
    }

    void k() {
        o();
    }

    public void selectTab(Tab tab) {
        int i = -1;
        if (getNavigationMode() != 2) {
            if (tab != null) {
                i = tab.getPosition();
            }
            this.bo = i;
            return;
        }
        FragmentTransaction disallowAddToBackStack = this.bn.beginTransaction().disallowAddToBackStack();
        if (this.bm != tab) {
            ScrollingTabContainerView scrollingTabContainerView = this.bj;
            if (tab != null) {
                i = tab.getPosition();
            }
            scrollingTabContainerView.setTabSelected(i);
            if (this.bm != null) {
                this.bm.getCallback().onTabUnselected(this.bm, disallowAddToBackStack);
            }
            this.bm = (TabImpl) tab;
            if (this.bm != null) {
                this.bm.getCallback().onTabSelected(this.bm, disallowAddToBackStack);
            }
        } else if (this.bm != null) {
            this.bm.getCallback().onTabReselected(this.bm, disallowAddToBackStack);
            this.bj.animateToTab(tab.getPosition());
        }
        if (!disallowAddToBackStack.isEmpty()) {
            disallowAddToBackStack.commit();
        }
    }

    public Tab getSelectedTab() {
        return this.bm;
    }

    public Tab getTabAt(int i) {
        return (Tab) this.bl.get(i);
    }

    public int getTabCount() {
        return this.bl.size();
    }

    public Context getThemedContext() {
        if (this.ba == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(16843671, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.ba = new ContextThemeWrapper(this.mContext, i);
            } else {
                this.ba = this.mContext;
            }
        }
        return this.ba;
    }

    public int getHeight() {
        return this.bc.getHeight();
    }

    public void show() {
        if (this.bu) {
            this.bu = false;
            c(false);
        }
    }

    void l() {
        if (!this.bw) {
            this.bw = true;
            c(false);
        }
    }

    public void hide() {
        if (!this.bu) {
            this.bu = true;
            c(false);
        }
    }

    void m() {
        if (this.bw) {
            this.bw = false;
            c(false);
        }
    }

    public boolean isShowing() {
        return this.bx;
    }

    public void addOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener) {
        this.bq.add(onMenuVisibilityListener);
    }

    public void removeOnMenuVisibilityListener(OnMenuVisibilityListener onMenuVisibilityListener) {
        this.bq.remove(onMenuVisibilityListener);
    }

    public ActionMode startActionMode(Callback callback) {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        ActionMode a = a(callback);
        if (((this.bk instanceof SearchActionModeView) && (a instanceof SearchActionModeImpl)) || ((this.bk instanceof ActionBarContextView) && (a instanceof EditActionModeImpl))) {
            this.bk.closeMode();
            this.bk.killMode();
        }
        this.bk = createActionModeView(callback);
        if (a instanceof ActionModeImpl) {
            ActionModeImpl actionModeImpl = (ActionModeImpl) a;
            actionModeImpl.setActionModeView(this.bk);
            actionModeImpl.setActionModeCallback(this.bA);
            if (actionModeImpl.dispatchOnCreate()) {
                a.invalidate();
                this.bk.initForMode(a);
                b(true);
                if (!(this.mSplitView == null || this.br != 1 || this.mSplitView.getVisibility() == 0)) {
                    this.mSplitView.setVisibility(0);
                }
                if (this.bk instanceof ActionBarContextView) {
                    ((ActionBarContextView) this.bk).sendAccessibilityEvent(32);
                }
                this.mActionMode = a;
                return a;
            }
        }
        return null;
    }

    void b(boolean z) {
        if (z) {
            l();
        } else {
            m();
        }
        this.bk.animateToVisibility(z);
        if (this.bj != null && !this.bd.hasEmbeddedTabs() && this.bd.isCollapsed()) {
            this.bj.setVisibility(z ? 8 : 0);
        }
    }

    private ActionMode a(Callback callback) {
        if (callback instanceof SearchActionMode.Callback) {
            return new SearchActionModeImpl(this.mContext, callback);
        }
        return new EditActionModeImpl(this.mContext, callback);
    }

    public ActionModeView createActionModeView(Callback callback) {
        if (!(callback instanceof SearchActionMode.Callback)) {
            return this.be;
        }
        if (this.bz == null) {
            this.bz = createSearchActionModeView();
        }
        Rect pendingInsets = this.bc.getPendingInsets();
        if (pendingInsets != null) {
            this.bz.setStatusBarPaddingTop(pendingInsets.top);
        }
        if (this.bb != this.bz.getParent()) {
            this.bb.addView(this.bz);
        }
        return this.bz;
    }

    public SearchActionModeView createSearchActionModeView() {
        SearchActionModeView searchActionModeView = (SearchActionModeView) LayoutInflater.from(getThemedContext()).inflate(R.layout.search_action_mode_view, this.bb, false);
        searchActionModeView.setOnBackClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (ActionBarImpl.this.mActionMode != null) {
                    ActionBarImpl.this.mActionMode.finish();
                }
            }
        });
        return searchActionModeView;
    }

    public void showActionBarShadow(boolean z) {
    }

    public void showSplitActionBar(boolean z, boolean z2) {
        if (!this.bd.isSplitActionBar()) {
            return;
        }
        if (z) {
            this.mSplitView.show(z2);
        } else {
            this.mSplitView.hide(z2);
        }
    }

    public boolean isFragmentViewPagerMode() {
        return this.bi != null;
    }

    public void setFragmentViewPagerMode(Context context, FragmentManager fragmentManager) {
        setFragmentViewPagerMode(context, fragmentManager, true);
    }

    public void setFragmentViewPagerMode(Context context, FragmentManager fragmentManager, boolean z) {
        if (!isFragmentViewPagerMode()) {
            removeAllTabs();
            setNavigationMode(2);
            this.bi = new ActionBarViewPagerController(this, fragmentManager, z);
            addOnFragmentViewPagerChangeListener(this.bj);
            addOnFragmentViewPagerChangeListener(this.mSplitView);
            this.mSplitView.setFragmentViewPagerMode(true);
        }
    }

    public void addOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener fragmentViewPagerChangeListener) {
        this.bi.addOnFragmentViewPagerChangeListener(fragmentViewPagerChangeListener);
    }

    public void removeOnFragmentViewPagerChangeListener(FragmentViewPagerChangeListener fragmentViewPagerChangeListener) {
        this.bi.removeOnFragmentViewPagerChangeListener(fragmentViewPagerChangeListener);
    }

    public int getFragmentTabCount() {
        return this.bi.getFragmentTabCount();
    }

    public Fragment getFragmentAt(int i) {
        return this.bi.getFragmentAt(i);
    }

    public int addFragmentTab(String str, Tab tab, Class<? extends Fragment> cls, Bundle bundle, boolean z) {
        return this.bi.addFragmentTab(str, tab, cls, bundle, z);
    }

    public int addFragmentTab(String str, Tab tab, int i, Class<? extends Fragment> cls, Bundle bundle, boolean z) {
        return this.bi.addFragmentTab(str, tab, i, cls, bundle, z);
    }

    public void removeFragmentTabAt(int i) {
        this.bi.c(i);
    }

    public void removeFragmentTab(String str) {
        this.bi.removeFragmentTab(str);
    }

    public void removeFragmentTab(Tab tab) {
        this.bi.removeFragmentTab(tab);
    }

    public void removeFragmentTab(Fragment fragment) {
        this.bi.a(fragment);
    }

    public void removeAllFragmentTab() {
        this.bi.removeAllFragmentTab();
    }

    public void setFragmentActionMenuAt(int i, boolean z) {
        this.bi.setFragmentActionMenuAt(i, z);
    }

    public void setProgressBarVisibility(boolean z) {
        this.bd.setProgressBarVisibility(z);
    }

    public void setProgressBarIndeterminateVisibility(boolean z) {
        this.bd.setProgressBarIndeterminateVisibility(z);
    }

    public void setProgressBarIndeterminate(boolean z) {
        this.bd.setProgressBarIndeterminate(z);
    }

    public void setProgress(int i) {
        this.bd.setProgress(i);
    }

    public int getViewPagerOffscreenPageLimit() {
        return this.bi.getViewPagerOffscreenPageLimit();
    }

    public void setViewPagerOffscreenPageLimit(int i) {
        this.bi.setViewPagerOffscreenPageLimit(i);
    }

    public void setStartView(View view) {
        this.bd.setStartView(view);
    }

    public void setEndView(View view) {
        this.bd.setEndView(view);
    }

    public void setViewPagerDecor(View view) {
        this.bi.setViewPagerDecor(view);
    }

    private void n() {
        if (this.bj == null) {
            ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.mContext);
            if (this.bs) {
                scrollingTabContainerView.setVisibility(0);
                this.bd.setEmbeddedTabView(scrollingTabContainerView);
            } else {
                if (getNavigationMode() == 2) {
                    scrollingTabContainerView.setVisibility(0);
                } else {
                    scrollingTabContainerView.setVisibility(8);
                }
                this.bc.setTabContainer(scrollingTabContainerView);
            }
            scrollingTabContainerView.setEmbeded(this.bs);
            this.bj = scrollingTabContainerView;
        }
    }

    private void b(Tab tab, int i) {
        TabImpl tabImpl = (TabImpl) tab;
        if (tabImpl.getCallback() != null) {
            tabImpl.setPosition(i);
            this.bl.add(i, tabImpl);
            int size = this.bl.size();
            while (true) {
                i++;
                if (i < size) {
                    ((TabImpl) this.bl.get(i)).setPosition(i);
                } else {
                    return;
                }
            }
        }
        throw new IllegalStateException("Action Bar Tab must have a Callback");
    }

    private void o() {
        if (this.bm != null) {
            selectTab(null);
        }
        this.bl.clear();
        if (this.bj != null) {
            this.bj.removeAllTabs();
        }
        this.bo = -1;
    }

    private void c(boolean z) {
        if (a(this.bu, this.bv, this.bw)) {
            if (!this.bx) {
                this.bx = true;
                doShow(z);
            }
        } else if (this.bx) {
            this.bx = false;
            doHide(z);
        }
    }

    private Animator d(boolean z) {
        Animator animatorSet = new AnimatorSet();
        int height = this.bc.getHeight();
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        if (z) {
            ofFloat = ObjectAnimator.ofFloat(this.bc, "TranslationY", new float[]{this.bc.getTranslationY(), 0.0f});
            ofFloat2 = ObjectAnimator.ofFloat(this.bc, "Alpha", new float[]{this.bc.getAlpha(), 1.0f});
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
            animatorSet.setInterpolator(new CubicEaseOutInterpolator());
            animatorSet.setDuration((long) this.mContext.getResources().getInteger(R.integer.action_bar_appear_duration));
        } else {
            ofFloat = ObjectAnimator.ofFloat(this.bc, "TranslationY", new float[]{this.bc.getTranslationY(), (float) (-height)});
            ofFloat2 = ObjectAnimator.ofFloat(this.bc, "Alpha", new float[]{this.bc.getAlpha(), 0.0f});
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
            animatorSet.setInterpolator(new CubicEaseInInterpolator());
            animatorSet.setDuration((long) this.mContext.getResources().getInteger(R.integer.action_bar_disappear_duration));
            animatorSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    ActionBarImpl.this.bc.setVisibility(8);
                }
            });
        }
        return animatorSet;
    }

    private int p() {
        int height = this.mSplitView.getHeight();
        if (this.mSplitView.getChildCount() != 1) {
            return height;
        }
        View childAt = this.mSplitView.getChildAt(0);
        if (childAt == null || !(childAt instanceof PhoneActionMenuView)) {
            return height;
        }
        PhoneActionMenuView phoneActionMenuView = (PhoneActionMenuView) childAt;
        if (phoneActionMenuView.isOverflowMenuShowing()) {
            return height;
        }
        return phoneActionMenuView.getCollapsedHeight();
    }

    private Animator e(boolean z) {
        Animator animatorSet = new AnimatorSet();
        int p = p();
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        if (z) {
            ofFloat = ObjectAnimator.ofFloat(this.mSplitView, "TranslationY", new float[]{this.mSplitView.getTranslationY(), 0.0f});
            ofFloat2 = ObjectAnimator.ofFloat(this.mSplitView, "Alpha", new float[]{this.mSplitView.getAlpha(), 1.0f});
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
            animatorSet.setInterpolator(new CubicEaseOutInterpolator());
            animatorSet.setDuration((long) this.mContext.getResources().getInteger(R.integer.action_bar_appear_duration));
        } else {
            ofFloat = ObjectAnimator.ofFloat(this.mSplitView, "TranslationY", new float[]{this.mSplitView.getTranslationY(), (float) p});
            ofFloat2 = ObjectAnimator.ofFloat(this.mSplitView, "Alpha", new float[]{this.mSplitView.getAlpha(), 0.0f});
            animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2});
            animatorSet.setInterpolator(new CubicEaseInInterpolator());
            animatorSet.setDuration((long) this.mContext.getResources().getInteger(R.integer.action_bar_disappear_duration));
            animatorSet.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    ActionBarImpl.this.mSplitView.setVisibility(8);
                }
            });
        }
        return animatorSet;
    }

    public void doShow(boolean z) {
        if (this.bB != null) {
            this.bB.cancel();
        }
        int i = (q() || z) ? true : 0;
        this.bc.setVisibility(0);
        if (i != 0) {
            this.bB = d(true);
            this.bB.start();
        } else {
            this.bc.setTranslationY(0.0f);
            this.bc.setAlpha(1.0f);
        }
        if (this.mSplitView != null) {
            if (this.bC != null) {
                this.bC.cancel();
            }
            this.mSplitView.setVisibility(0);
            if (i != 0) {
                this.bC = e(true);
                this.bC.start();
                if (this.bd.isSplitActionBar() && this.mSplitView.getChildCount() > 0) {
                    View childAt = this.mSplitView.getChildAt(0);
                    if (!(childAt == null || !(childAt instanceof PhoneActionMenuView) || (((PhoneActionMenuView) childAt).isOverflowMenuShowing() ^ 1) == 0)) {
                        ((ActionMenuView) childAt).startLayoutAnimation();
                    }
                }
            } else {
                this.mSplitView.setTranslationY(0.0f);
                this.mSplitView.setAlpha(1.0f);
            }
            f(true);
        }
    }

    public void doHide(boolean z) {
        if (this.bB != null) {
            this.bB.cancel();
        }
        if (q() || z) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.bB = d(false);
            this.bB.start();
        } else {
            this.bc.setTranslationY((float) (-this.bc.getHeight()));
            this.bc.setAlpha(0.0f);
            this.bc.setVisibility(8);
        }
        if (this.mSplitView != null) {
            if (this.bC != null) {
                this.bC.cancel();
            }
            if (z) {
                this.bC = e(false);
                this.bC.start();
            } else {
                this.mSplitView.setTranslationY((float) p());
                this.mSplitView.setAlpha(0.0f);
                this.mSplitView.setVisibility(8);
            }
            f(false);
        }
    }

    boolean q() {
        return this.by;
    }

    public void setShowHideAnimationEnabled(boolean z) {
        this.by = z;
        if (!z) {
            if (isShowing()) {
                doShow(false);
            } else {
                doHide(false);
            }
        }
    }

    private void f(boolean z) {
        if (this.mSplitView.getChildCount() == 1 && (this.mSplitView.getChildAt(0) instanceof PhoneActionMenuView)) {
            this.bf = (PhoneActionMenuView) this.mSplitView.getChildAt(0);
            if (this.bf.isOverflowMenuShowing() && this.bg != null) {
                if (z) {
                    this.bb.getContentMaskAnimator(this.bh).show().start();
                } else {
                    this.bb.getContentMaskAnimator(null).hide().start();
                }
            }
        }
    }
}
