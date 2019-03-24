package com.miui.internal.app;

import android.app.Fragment;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.ViewUtils;
import miui.view.ViewPager;

class b implements FragmentViewPagerChangeListener {
    ViewPager bL;
    DynamicFragmentPagerAdapter bN;
    Rect dl = new Rect();
    ArrayList<View> dm = new ArrayList();
    int dn = -1;
    /* renamed from: do */
    boolean f214do = true;
    int dp = -1;
    int dq = -1;
    ViewGroup dr = null;

    public b(ViewPager viewPager, DynamicFragmentPagerAdapter dynamicFragmentPagerAdapter) {
        this.bL = viewPager;
        this.bN = dynamicFragmentPagerAdapter;
    }

    public void onPageScrolled(int i, float f, boolean z, boolean z2) {
        int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i2 == 0) {
            this.dn = i;
            this.f214do = true;
            if (this.dr != null) {
                d(this.dr);
            }
        }
        if (this.dp != i) {
            if (this.dn < i) {
                this.dn = i;
            } else {
                int i3 = i + 1;
                if (this.dn > i3) {
                    this.dn = i3;
                }
            }
            this.dp = i;
            this.f214do = true;
            if (this.dr != null) {
                d(this.dr);
            }
        }
        if (i2 > 0) {
            if (this.f214do) {
                this.f214do = false;
                if (this.dn != i || i >= this.bN.getCount() - 1) {
                    this.dq = i;
                } else {
                    this.dq = i + 1;
                }
                Fragment b = this.bN.b(this.dq, false);
                this.dr = null;
                if (!(b == null || b.getView() == null)) {
                    View findViewById = b.getView().findViewById(16908298);
                    if (findViewById instanceof ViewGroup) {
                        this.dr = (ViewGroup) findViewById;
                    }
                }
            }
            if (this.dq == i) {
                f = 1.0f - f;
            }
            float f2 = f;
            if (this.dr != null) {
                a(this.dr, this.dr.getWidth(), this.dr.getHeight(), f2, this.dq != i);
            }
        }
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.dn = this.bL.getCurrentItem();
            this.f214do = true;
            if (this.dr != null) {
                d(this.dr);
            }
        }
    }

    void a(ViewGroup viewGroup, ArrayList<View> arrayList) {
        a((ArrayList) arrayList, viewGroup);
        arrayList.clear();
        ViewUtils.getContentRect(viewGroup, this.dl);
        if (!this.dl.isEmpty()) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() != 8 || childAt.getHeight() > 0) {
                    arrayList.add(childAt);
                }
            }
        }
    }

    void a(ArrayList<View> arrayList, ViewGroup viewGroup) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            if (viewGroup.indexOfChild(view) == -1 && view.getTranslationX() != 0.0f) {
                view.setTranslationX(0.0f);
            }
        }
    }

    void d(ViewGroup viewGroup) {
        a(viewGroup, this.dm);
        if (!this.dm.isEmpty()) {
            Iterator it = this.dm.iterator();
            while (it.hasNext()) {
                ((View) it.next()).setTranslationX(0.0f);
            }
        }
    }

    void a(ViewGroup viewGroup, int i, int i2, float f, boolean z) {
        a(viewGroup, this.dm);
        if (!this.dm.isEmpty()) {
            int i3 = 0;
            int top = ((View) this.dm.get(0)).getTop();
            int i4 = Integer.MAX_VALUE;
            Iterator it = this.dm.iterator();
            while (it.hasNext()) {
                View view = (View) it.next();
                if (i4 != view.getTop()) {
                    i3 = view.getTop();
                    i4 = a(i3 - top, i, i2, f);
                    if (!z) {
                        i4 = -i4;
                    }
                    int i5 = i4;
                    i4 = i3;
                    i3 = i5;
                }
                view.setTranslationX((float) i3);
            }
        }
    }

    int a(int i, int i2, int i3, float f) {
        if (i < i3) {
            i = (i * i2) / i3;
        } else {
            i = i2;
        }
        float f2 = ((float) i) + ((0.1f - ((f * f) / 0.9f)) * ((float) i2));
        return f2 > 0.0f ? (int) f2 : 0;
    }
}
