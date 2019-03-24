package com.miui.internal.app;

import android.app.ActionBar.Tab;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import miui.view.PagerAdapter;
import miui.view.ViewPager;

class DynamicFragmentPagerAdapter extends PagerAdapter {
    private FragmentManager bn;
    private ArrayList<FragmentInfo> cU = new ArrayList();
    private FragmentTransaction cV = null;
    private Fragment cW = null;
    private WeakReference<ViewPager> cX;
    private boolean cY;
    private Context mContext;

    class FragmentInfo {
        Class<? extends Fragment> cZ;
        Fragment da = null;
        Bundle db;
        Tab dc;
        boolean dd;
        String tag;

        FragmentInfo(String str, Class<? extends Fragment> cls, Bundle bundle, Tab tab, boolean z) {
            this.tag = str;
            this.cZ = cls;
            this.db = bundle;
            this.dc = tab;
            this.dd = z;
        }
    }

    public DynamicFragmentPagerAdapter(Context context, FragmentManager fragmentManager, ViewPager viewPager) {
        this.mContext = context;
        this.bn = fragmentManager;
        this.cX = new WeakReference(viewPager);
        viewPager.setAdapter(this);
    }

    public void startUpdate(ViewGroup viewGroup) {
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (this.cV == null) {
            this.cV = this.bn.beginTransaction();
        }
        this.cV.detach((Fragment) obj);
    }

    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.cW) {
            if (this.cW != null) {
                this.cW.setMenuVisibility(false);
                this.cW.setUserVisibleHint(false);
            }
            if (!A() || this.cY) {
                if (fragment != null) {
                    fragment.setMenuVisibility(true);
                    fragment.setUserVisibleHint(true);
                }
                this.cW = fragment;
            }
        }
    }

    public void finishUpdate(ViewGroup viewGroup) {
        if (this.cV != null) {
            this.cV.commitAllowingStateLoss();
            this.cV = null;
            this.bn.executePendingTransactions();
        }
        if (!this.cY && A()) {
            this.cY = true;
            ViewPager viewPager = (ViewPager) this.cX.get();
            if (viewPager != null) {
                viewPager.setCurrentItem(d(viewPager.getCurrentItem()));
            }
        }
    }

    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        if (this.cV == null) {
            this.cV = this.bn.beginTransaction();
        }
        Fragment a = a(i, true, false);
        if (a.getFragmentManager() != null) {
            this.cV.attach(a);
        } else {
            this.cV.add(viewGroup.getId(), a, ((FragmentInfo) this.cU.get(i)).tag);
        }
        if (a != this.cW) {
            a.setMenuVisibility(false);
            a.setUserVisibleHint(false);
        }
        return a;
    }

    public int getCount() {
        return this.cU.size();
    }

    public boolean hasActionMenu(int i) {
        if (i < 0 || i >= this.cU.size()) {
            return false;
        }
        return ((FragmentInfo) this.cU.get(i)).dd;
    }

    public int getItemPosition(Object obj) {
        int size = this.cU.size();
        for (int i = 0; i < size; i++) {
            if (obj == ((FragmentInfo) this.cU.get(i)).da) {
                return i;
            }
        }
        return -2;
    }

    Tab getTabAt(int i) {
        return ((FragmentInfo) this.cU.get(i)).dc;
    }

    Fragment b(int i, boolean z) {
        return a(i, z, true);
    }

    Fragment a(int i, boolean z, boolean z2) {
        if (this.cU.isEmpty()) {
            return null;
        }
        ArrayList arrayList = this.cU;
        if (z2) {
            i = d(i);
        }
        FragmentInfo fragmentInfo = (FragmentInfo) arrayList.get(i);
        if (fragmentInfo.da == null) {
            fragmentInfo.da = this.bn.findFragmentByTag(fragmentInfo.tag);
            if (fragmentInfo.da == null && z) {
                fragmentInfo.da = Fragment.instantiate(this.mContext, fragmentInfo.cZ.getName(), fragmentInfo.db);
                fragmentInfo.cZ = null;
                fragmentInfo.db = null;
            }
        }
        return fragmentInfo.da;
    }

    int a(String str, Class<? extends Fragment> cls, Bundle bundle, Tab tab, boolean z) {
        if (A()) {
            this.cU.add(0, new FragmentInfo(str, cls, bundle, tab, z));
        } else {
            this.cU.add(new FragmentInfo(str, cls, bundle, tab, z));
        }
        notifyDataSetChanged();
        return this.cU.size() - 1;
    }

    int a(String str, int i, Class<? extends Fragment> cls, Bundle bundle, Tab tab, boolean z) {
        FragmentInfo fragmentInfo = new FragmentInfo(str, cls, bundle, tab, z);
        if (!A()) {
            this.cU.add(i, fragmentInfo);
        } else if (i >= this.cU.size()) {
            this.cU.add(0, fragmentInfo);
        } else {
            this.cU.add(d(i) + 1, fragmentInfo);
        }
        notifyDataSetChanged();
        return i;
    }

    void c(int i) {
        c(b(i, false));
        this.cU.remove(d(i));
        notifyDataSetChanged();
    }

    int e(String str) {
        int size = this.cU.size();
        for (int i = 0; i < size; i++) {
            if (((FragmentInfo) this.cU.get(i)).tag.equals(str)) {
                return d(i);
            }
        }
        return -1;
    }

    int c(Tab tab) {
        int size = this.cU.size();
        for (int i = 0; i < size; i++) {
            FragmentInfo fragmentInfo = (FragmentInfo) this.cU.get(i);
            if (fragmentInfo.dc == tab) {
                c(fragmentInfo.da);
                this.cU.remove(i);
                notifyDataSetChanged();
                return d(i);
            }
        }
        return -1;
    }

    int b(Fragment fragment) {
        int size = this.cU.size();
        for (int i = 0; i < size; i++) {
            if (b(i, false) == fragment) {
                c(fragment);
                this.cU.remove(i);
                notifyDataSetChanged();
                return d(i);
            }
        }
        return -1;
    }

    void y() {
        z();
        this.cU.clear();
        notifyDataSetChanged();
    }

    void setFragmentActionMenuAt(int i, boolean z) {
        FragmentInfo fragmentInfo = (FragmentInfo) this.cU.get(d(i));
        if (fragmentInfo.dd != z) {
            fragmentInfo.dd = z;
            notifyDataSetChanged();
        }
    }

    private void z() {
        FragmentTransaction beginTransaction = this.bn.beginTransaction();
        int size = this.cU.size();
        for (int i = 0; i < size; i++) {
            beginTransaction.remove(b(i, false));
        }
        beginTransaction.commitAllowingStateLoss();
        this.bn.executePendingTransactions();
    }

    private void c(Fragment fragment) {
        if (fragment != null) {
            FragmentManager fragmentManager = fragment.getFragmentManager();
            if (fragmentManager != null) {
                FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
                beginTransaction.remove(fragment);
                beginTransaction.commitAllowingStateLoss();
                fragmentManager.executePendingTransactions();
            }
        }
    }

    int d(int i) {
        if (!A()) {
            return i;
        }
        int size = this.cU.size() - 1;
        if (size > i) {
            return size - i;
        }
        return 0;
    }

    boolean A() {
        return this.mContext.getResources().getConfiguration().getLayoutDirection() == 1;
    }
}
