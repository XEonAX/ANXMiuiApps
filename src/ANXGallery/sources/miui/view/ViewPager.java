package miui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.widget.ActionBarOverlayLayout;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import miui.util.ActionBarUtils;

public class ViewPager extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final int INVALID_POINTER = -1;
    private static final boolean Mr = false;
    private static final int Ms = 3;
    private static final int Mt = 25;
    private static final int Mu = 250;
    private static final int Mv = 16;
    private static final int[] Mw = new int[]{16842931};
    private static final Comparator<ItemInfo> Mx = new Comparator<ItemInfo>() {
        /* renamed from: a */
        public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
            return itemInfo.position - itemInfo2.position;
        }
    };
    static final float NV = 0.05f;
    private static final int Nx = 2;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final Interpolator wD = new Interpolator() {
        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }
    };
    private static final int wk = 800;
    private PagerAdapter MF;
    private int MI;
    private int MJ = -1;
    private final ItemInfo My = new ItemInfo();
    private final Rect Mz = new Rect();
    private EdgeEffect NB;
    private EdgeEffect ND;
    private boolean NF = true;
    private boolean NH = false;
    private boolean NJ;
    private int NK;
    private OnPageChangeListener NM;
    private OnPageChangeListener NN;
    private OnAdapterChangeListener NQ;
    boolean NS = true;
    float NT = 0.0f;
    private int NW = 0;
    private Parcelable Na = null;
    private PagerObserver Nb;
    private int Nc;
    private Drawable Nd;
    private int Ne;
    private int Nf;
    private float Ng = -3.4028235E38f;
    private float Nh = Float.MAX_VALUE;
    private int Ni;
    private int Nj;
    private boolean Nk;
    private boolean Nl;
    private boolean Nm;
    private int Nn = 3;
    private boolean No;
    private boolean Np;
    private int Nq;
    private int Nr;
    private float Ns;
    private float Nt;
    private boolean Nu;
    private int Nv;
    private int Nw;
    private boolean Ny;
    private long Nz;
    private int fO;
    private float mLastMotionX;
    private float mLastMotionY;
    private final ArrayList<ItemInfo> oc = new ArrayList();
    private int qO = -1;
    private boolean qP;
    private int qS;
    private int qT;
    private VelocityTracker rc;
    private Scroller wy;

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    interface Decor {
    }

    static class ItemInfo {
        Object NX;
        boolean NY;
        float Oa;
        boolean dd;
        int position;
        float widthFactor;

        ItemInfo() {
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        public int gravity;
        public boolean isDecor;
        public boolean needsMeasure;
        public float widthFactor = 0.0f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.Mw);
            this.gravity = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    interface OnAdapterChangeListener {
        void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    private class PagerObserver extends DataSetObserver {
        private PagerObserver() {
        }

        /* synthetic */ PagerObserver(ViewPager viewPager, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onChanged() {
            ViewPager.this.dR();
        }

        public void onInvalidated() {
            ViewPager.this.dR();
        }
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: g */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: af */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable Oc;
        int position;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.Oc, i);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("FragmentPager.SavedState{");
            stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringBuilder.append(" position=");
            stringBuilder.append(this.position);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.position = parcel.readInt();
            this.Oc = parcel.readParcelable(null);
        }
    }

    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
        }

        public void onPageScrollStateChanged(int i) {
        }
    }

    public ViewPager(Context context) {
        super(context);
        dP();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        dP();
    }

    void dP() {
        setWillNotDraw(false);
        setDescendantFocusability(nexEngine.ExportHEVCMainTierLevel52);
        setFocusable(true);
        Context context = getContext();
        this.wy = new Scroller(context, wD);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.fO = viewConfiguration.getScaledPagingTouchSlop();
        this.qS = viewConfiguration.getScaledMinimumFlingVelocity();
        this.qT = viewConfiguration.getScaledMaximumFlingVelocity();
        this.NB = new EdgeEffect(context);
        this.ND = new EdgeEffect(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.Nv = (int) (25.0f * f);
        this.Nw = (int) (2.0f * f);
        this.Nq = (int) (16.0f * f);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void ac(int i) {
        if (this.NW != i) {
            this.NW = i;
            if (this.NM != null) {
                this.NM.onPageScrollStateChanged(i);
            }
            if (this.NN != null) {
                this.NN.onPageScrollStateChanged(i);
            }
        }
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        if (this.MF != null) {
            this.MF.unregisterDataSetObserver(this.Nb);
            this.MF.startUpdate((ViewGroup) this);
            Iterator it = this.oc.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                this.MF.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.NX);
            }
            this.MF.finishUpdate((ViewGroup) this);
            this.oc.clear();
            dQ();
            this.MI = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter2 = this.MF;
        this.MF = pagerAdapter;
        if (this.MF != null) {
            if (this.Nb == null) {
                this.Nb = new PagerObserver(this, null);
            }
            this.MF.registerDataSetObserver(this.Nb);
            this.Nm = false;
            this.NF = true;
            if (this.MJ >= 0) {
                this.MF.restoreState(this.Na, null);
                b(this.MJ, false, true);
                this.MJ = -1;
                this.Na = null;
            } else {
                dS();
            }
        }
        if (this.NQ != null && pagerAdapter2 != pagerAdapter) {
            this.NQ.a(pagerAdapter2, pagerAdapter);
        }
    }

    private void dQ() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    public PagerAdapter getAdapter() {
        return this.MF;
    }

    void a(OnAdapterChangeListener onAdapterChangeListener) {
        this.NQ = onAdapterChangeListener;
    }

    public void setCurrentItem(int i) {
        this.Nm = false;
        b(i, this.NF ^ 1, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.Nm = false;
        b(i, z, false);
    }

    public int getCurrentItem() {
        return this.MI;
    }

    void b(int i, boolean z, boolean z2) {
        a(i, z, z2, 0);
    }

    void a(int i, boolean z, boolean z2, int i2) {
        if (this.MF == null || this.MF.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.MI != i || this.oc.size() == 0) {
            z2 = true;
            if (i < 0) {
                i = 0;
            } else if (i >= this.MF.getCount()) {
                i = this.MF.getCount() - 1;
            }
            int i3 = this.Nn;
            if (i > this.MI + i3 || i < this.MI - i3) {
                Iterator it = this.oc.iterator();
                while (it.hasNext()) {
                    ((ItemInfo) it.next()).NY = true;
                }
            }
            if (this.MI == i) {
                z2 = false;
            }
            ad(i);
            ItemInfo ae = ae(i);
            if (ae != null) {
                i3 = (int) (((float) getWidth()) * Math.max(this.Ng, Math.min(ae.Oa, this.Nh)));
            } else {
                i3 = 0;
            }
            if (z) {
                f(i3, 0, i2);
                if (z2 && this.NM != null) {
                    this.NM.onPageSelected(i);
                }
                if (z2 && this.NN != null) {
                    this.NN.onPageSelected(i);
                }
            } else {
                if (z2 && this.NM != null) {
                    this.NM.onPageSelected(i);
                }
                if (z2 && this.NN != null) {
                    this.NN.onPageSelected(i);
                }
                dT();
                scrollTo(i3, 0);
            }
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.NM = onPageChangeListener;
    }

    public OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = this.NN;
        this.NN = onPageChangeListener;
        return onPageChangeListener2;
    }

    public int getOffscreenPageLimit() {
        return this.Nn;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 3) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Requested offscreen page limit ");
            stringBuilder.append(i);
            stringBuilder.append(" too small; defaulting to ");
            stringBuilder.append(3);
            Log.w(str, stringBuilder.toString());
            i = 3;
        }
        if (i != this.Nn) {
            this.Nn = i;
            dS();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.Nc;
        this.Nc = i;
        int width = getWidth();
        d(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.Nc;
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.Nd = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.Nd;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.Nd;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    float a(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    void smoothScrollTo(int i, int i2) {
        f(i, i2, 0);
    }

    void f(int i, int i2, int i3) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            dT();
            dS();
            ac(0);
            return;
        }
        setScrollingCacheEnabled(true);
        ac(2);
        i = getWidth();
        i2 = i / 2;
        float f = (float) i;
        float f2 = (float) i2;
        f2 += a(Math.min(1.0f, (((float) Math.abs(i4)) * 1.0f) / f)) * f2;
        i3 = Math.abs(i3);
        if (i3 > 0) {
            i = 4 * Math.round(1000.0f * Math.abs(f2 / ((float) i3)));
        } else {
            i = (int) (((((float) Math.abs(i4)) / ((f * this.MF.getPageWidth(this.MI)) + ((float) this.Nc))) + 1.0f) * 250.0f);
        }
        this.wy.startScroll(scrollX, scrollY, i4, i5, Math.min(i, 800));
        postInvalidateOnAnimation();
    }

    ItemInfo m(int i, int i2) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.position = i;
        itemInfo.NX = this.MF.instantiateItem((ViewGroup) this, i);
        itemInfo.widthFactor = this.MF.getPageWidth(i);
        itemInfo.dd = this.MF.hasActionMenu(i);
        if (i2 < 0 || i2 >= this.oc.size()) {
            this.oc.add(itemInfo);
        } else {
            this.oc.add(i2, itemInfo);
        }
        return itemInfo;
    }

    void dR() {
        boolean z = false;
        boolean z2 = this.oc.size() < (this.Nn * 2) + 1 && this.oc.size() < this.MF.getCount();
        boolean z3 = z2;
        int i = this.MI;
        int i2 = 0;
        int i3 = i2;
        boolean z4 = i3;
        while (i2 < this.oc.size()) {
            ItemInfo itemInfo = (ItemInfo) this.oc.get(i2);
            int itemPosition = this.MF.getItemPosition(itemInfo.NX);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.oc.remove(i2);
                    i2--;
                    if (i3 == 0) {
                        this.MF.startUpdate((ViewGroup) this);
                        i3 = true;
                    }
                    this.MF.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.NX);
                    if (this.MI == itemInfo.position) {
                        i = Math.max(0, Math.min(this.MI, this.MF.getCount() - 1));
                    }
                    z3 = true;
                } else {
                    if (itemInfo.position != itemPosition) {
                        if (itemInfo.position == this.MI) {
                            i = itemPosition;
                        }
                        itemInfo.position = itemPosition;
                        z3 = true;
                    }
                    if (itemInfo.dd != this.MF.hasActionMenu(itemInfo.position)) {
                        itemInfo.dd ^= true;
                    }
                }
                i2++;
            } else if (itemInfo.dd != this.MF.hasActionMenu(itemInfo.position)) {
                itemInfo.dd ^= true;
            } else {
                i2++;
            }
            z4 = true;
            i2++;
        }
        if (i3 != 0) {
            this.MF.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.oc, Mx);
        if (z3) {
            i2 = getChildCount();
            for (i3 = 0; i3 < i2; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.widthFactor = 0.0f;
                }
            }
            b(i, false, true);
            requestLayout();
        } else {
            z = z4;
        }
        if (z) {
            requestLayout();
        }
    }

    void dS() {
        ad(this.MI);
    }

    /* JADX WARNING: Missing block: B:19:0x005d, code:
            if (r8.position == r0.MI) goto L_0x0064;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void ad(int i) {
        ItemInfo ae;
        int i2 = i;
        if (this.MI != i2) {
            ae = ae(this.MI);
            this.MI = i2;
        } else {
            ae = null;
        }
        if (this.MF != null && !this.Nm && getWindowToken() != null) {
            ItemInfo itemInfo;
            ItemInfo itemInfo2;
            this.MF.startUpdate(this);
            i2 = this.Nn;
            int i3 = 0;
            int max = Math.max(0, this.MI - i2);
            int count = this.MF.getCount();
            i2 = Math.min(count - 1, this.MI + i2);
            int i4 = 0;
            while (i4 < this.oc.size()) {
                itemInfo = (ItemInfo) this.oc.get(i4);
                if (itemInfo.position < this.MI) {
                    i4++;
                }
            }
            itemInfo = null;
            if (itemInfo == null && count > 0) {
                itemInfo = m(this.MI, i4);
            }
            if (itemInfo != null) {
                ItemInfo itemInfo3;
                int i5 = i4 - 1;
                if (i5 >= 0) {
                    itemInfo3 = (ItemInfo) this.oc.get(i5);
                } else {
                    itemInfo3 = null;
                }
                float f = 2.0f - itemInfo.widthFactor;
                int i6 = this.MI - 1;
                int i7 = i4;
                float f2 = 0.0f;
                while (i6 >= 0) {
                    if (f2 < f || i6 >= max) {
                        if (itemInfo3 == null || i6 != itemInfo3.position) {
                            f2 += m(i6, i5 + 1).widthFactor;
                            i7++;
                            if (i5 >= 0) {
                                itemInfo2 = (ItemInfo) this.oc.get(i5);
                                itemInfo3 = itemInfo2;
                                i6--;
                            }
                        } else {
                            f2 += itemInfo3.widthFactor;
                            i5--;
                            if (i5 >= 0) {
                                itemInfo2 = (ItemInfo) this.oc.get(i5);
                                itemInfo3 = itemInfo2;
                                i6--;
                            }
                        }
                    } else if (itemInfo3 == null) {
                        break;
                    } else {
                        if (i6 == itemInfo3.position && !itemInfo3.NY) {
                            this.oc.remove(i5);
                            this.MF.destroyItem(this, i6, itemInfo3.NX);
                            i5--;
                            i7--;
                            if (i5 >= 0) {
                                itemInfo2 = (ItemInfo) this.oc.get(i5);
                                itemInfo3 = itemInfo2;
                            }
                        }
                        i6--;
                    }
                    itemInfo2 = null;
                    itemInfo3 = itemInfo2;
                    i6--;
                }
                float f3 = itemInfo.widthFactor;
                max = i7 + 1;
                if (f3 < 2.0f) {
                    ItemInfo itemInfo4;
                    if (max < this.oc.size()) {
                        itemInfo4 = (ItemInfo) this.oc.get(max);
                    } else {
                        itemInfo4 = null;
                    }
                    i5 = this.MI;
                    while (true) {
                        i5++;
                        if (i5 >= count) {
                            break;
                        }
                        if (f3 < 2.0f || i5 <= i2) {
                            if (itemInfo4 == null || i5 != itemInfo4.position) {
                                itemInfo4 = m(i5, max);
                                max++;
                                f3 += itemInfo4.widthFactor;
                                if (max < this.oc.size()) {
                                    itemInfo4 = (ItemInfo) this.oc.get(max);
                                }
                            } else {
                                f3 += itemInfo4.widthFactor;
                                max++;
                                if (max < this.oc.size()) {
                                    itemInfo4 = (ItemInfo) this.oc.get(max);
                                }
                            }
                        } else if (itemInfo4 == null) {
                            break;
                        } else if (i5 == itemInfo4.position && !itemInfo4.NY) {
                            this.oc.remove(max);
                            this.MF.destroyItem(this, i5, itemInfo4.NX);
                            if (max < this.oc.size()) {
                                itemInfo4 = (ItemInfo) this.oc.get(max);
                            }
                        }
                        itemInfo4 = null;
                    }
                }
                a(itemInfo, i7, ae);
            }
            this.MF.setPrimaryItem(this, this.MI, itemInfo != null ? itemInfo.NX : null);
            this.MF.finishUpdate(this);
            i2 = getChildCount();
            for (int i8 = 0; i8 < i2; i8++) {
                View childAt = getChildAt(i8);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.isDecor && layoutParams.widthFactor == 0.0f) {
                    itemInfo2 = k(childAt);
                    if (itemInfo2 != null) {
                        layoutParams.widthFactor = itemInfo2.widthFactor;
                    }
                }
            }
            if (hasFocus()) {
                View findFocus = findFocus();
                if (findFocus != null) {
                    itemInfo2 = l(findFocus);
                } else {
                    itemInfo2 = null;
                }
                if (itemInfo2 == null || itemInfo2.position != this.MI) {
                    while (i3 < getChildCount()) {
                        findFocus = getChildAt(i3);
                        ae = k(findFocus);
                        if (ae != null && ae.position == this.MI && findFocus.requestFocus(2)) {
                            break;
                        }
                        i3++;
                    }
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0057 A:{LOOP_END, LOOP:2: B:19:0x0053->B:21:0x0057} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x009f A:{LOOP_END, LOOP:5: B:34:0x009b->B:36:0x009f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(ItemInfo itemInfo, int i, ItemInfo itemInfo2) {
        int i2;
        int size;
        int count = this.MF.getCount();
        int width = getWidth();
        float f = width > 0 ? ((float) this.Nc) / ((float) width) : 0.0f;
        if (itemInfo2 != null) {
            int i3 = itemInfo2.position;
            Object obj;
            ItemInfo itemInfo3;
            if (i3 < itemInfo.position) {
                float f2 = (itemInfo2.Oa + itemInfo2.widthFactor) + f;
                i3++;
                i2 = 0;
                while (i3 <= itemInfo.position && i2 < this.oc.size()) {
                    obj = this.oc.get(i2);
                    while (true) {
                        itemInfo3 = (ItemInfo) obj;
                        if (i3 <= itemInfo3.position || i2 >= this.oc.size() - 1) {
                            while (i3 < itemInfo3.position) {
                                f2 += this.MF.getPageWidth(i3) + f;
                                i3++;
                            }
                        } else {
                            i2++;
                            obj = this.oc.get(i2);
                        }
                    }
                    while (i3 < itemInfo3.position) {
                    }
                    itemInfo3.Oa = f2;
                    f2 += itemInfo3.widthFactor + f;
                    i3++;
                }
            } else if (i3 > itemInfo.position) {
                size = this.oc.size() - 1;
                float f3 = itemInfo2.Oa;
                while (true) {
                    i3--;
                    if (i3 < itemInfo.position || size < 0) {
                        break;
                    }
                    obj = this.oc.get(size);
                    while (true) {
                        itemInfo3 = (ItemInfo) obj;
                        if (i3 >= itemInfo3.position || size <= 0) {
                            while (i3 > itemInfo3.position) {
                                f3 -= this.MF.getPageWidth(i3) + f;
                                i3--;
                            }
                        } else {
                            size--;
                            obj = this.oc.get(size);
                        }
                    }
                    while (i3 > itemInfo3.position) {
                    }
                    f3 -= itemInfo3.widthFactor + f;
                    itemInfo3.Oa = f3;
                }
            }
        }
        i2 = this.oc.size();
        float f4 = itemInfo.Oa;
        size = itemInfo.position - 1;
        this.Ng = itemInfo.position == 0 ? itemInfo.Oa : -3.4028235E38f;
        count--;
        this.Nh = itemInfo.position == count ? (itemInfo.Oa + itemInfo.widthFactor) - 1.0f : Float.MAX_VALUE;
        int i4 = i - 1;
        while (i4 >= 0) {
            ItemInfo itemInfo4 = (ItemInfo) this.oc.get(i4);
            while (size > itemInfo4.position) {
                f4 -= this.MF.getPageWidth(size) + f;
                size--;
            }
            f4 -= itemInfo4.widthFactor + f;
            itemInfo4.Oa = f4;
            if (itemInfo4.position == 0) {
                this.Ng = f4;
            }
            i4--;
            size--;
        }
        f4 = (itemInfo.Oa + itemInfo.widthFactor) + f;
        int i5 = itemInfo.position + 1;
        i++;
        while (i < i2) {
            ItemInfo itemInfo5 = (ItemInfo) this.oc.get(i);
            while (i5 < itemInfo5.position) {
                f4 += this.MF.getPageWidth(i5) + f;
                i5++;
            }
            if (itemInfo5.position == count) {
                this.Nh = (itemInfo5.widthFactor + f4) - 1.0f;
            }
            itemInfo5.Oa = f4;
            f4 += itemInfo5.widthFactor + f;
            i++;
            i5++;
        }
        this.NH = false;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.MI;
        if (this.MF != null) {
            savedState.Oc = this.MF.saveState();
        }
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.MF != null) {
                this.MF.restoreState(savedState.Oc, null);
                b(savedState.position, false, true);
            } else {
                this.MJ = savedState.position;
                this.Na = savedState.Oc;
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        layoutParams2.isDecor |= view instanceof Decor;
        if (!this.Nk) {
            super.addView(view, i, layoutParams);
        } else if (layoutParams2.isDecor) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            layoutParams2.needsMeasure = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    ItemInfo k(View view) {
        Iterator it = this.oc.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (this.MF.isViewFromObject(view, itemInfo.NX)) {
                return itemInfo;
            }
        }
        return null;
    }

    ItemInfo l(View view) {
        while (true) {
            ViewPager parent = view.getParent();
            if (parent == this) {
                return k(view);
            }
            if (!(parent instanceof View)) {
                return null;
            }
            view = parent;
        }
    }

    ItemInfo ae(int i) {
        Iterator it = this.oc.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo.position == i) {
                return itemInfo;
            }
        }
        return null;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.NF = true;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z = false;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.Nr = Math.min(measuredWidth / 10, this.Nq);
        measuredWidth = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i4 = measuredHeight;
        measuredHeight = measuredWidth;
        measuredWidth = 0;
        while (true) {
            boolean z2 = true;
            int i5 = 1073741824;
            if (measuredWidth >= childCount) {
                break;
            }
            View childAt = getChildAt(measuredWidth);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.isDecor) {
                    int i6;
                    int i7;
                    int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams.gravity, getLayoutDirection()) & 7;
                    int i8 = layoutParams.gravity & BaiduSceneResult.STREET_VIEW;
                    i8 = (i8 == 48 || i8 == 80) ? true : z;
                    if (!(absoluteGravity == 3 || absoluteGravity == 5)) {
                        z2 = z;
                    }
                    absoluteGravity = Integer.MIN_VALUE;
                    if (i8 != 0) {
                        i6 = Integer.MIN_VALUE;
                        absoluteGravity = 1073741824;
                    } else {
                        i6 = z2 ? 1073741824 : Integer.MIN_VALUE;
                    }
                    if (layoutParams.width != -2) {
                        if (layoutParams.width != -1) {
                            i7 = layoutParams.width;
                        } else {
                            i7 = measuredHeight;
                        }
                        absoluteGravity = 1073741824;
                    } else {
                        i7 = measuredHeight;
                    }
                    if (layoutParams.height != -2) {
                        i3 = layoutParams.height != -1 ? layoutParams.height : i4;
                    } else {
                        i3 = i4;
                        i5 = i6;
                    }
                    childAt.measure(MeasureSpec.makeMeasureSpec(i7, absoluteGravity), MeasureSpec.makeMeasureSpec(i3, i5));
                    if (i8 != 0) {
                        i4 -= childAt.getMeasuredHeight();
                    } else if (z2) {
                        measuredHeight -= childAt.getMeasuredWidth();
                    }
                }
            }
            measuredWidth++;
            z = false;
        }
        this.Ni = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.Nj = MeasureSpec.makeMeasureSpec(i4, 1073741824);
        this.Nk = true;
        dS();
        i3 = 0;
        this.Nk = false;
        measuredWidth = getChildCount();
        while (i3 < measuredWidth) {
            View childAt2 = getChildAt(i3);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.isDecor) {
                    int i9;
                    int makeMeasureSpec = MeasureSpec.makeMeasureSpec((int) (((float) measuredHeight) * layoutParams2.widthFactor), 1073741824);
                    ItemInfo k = k(childAt2);
                    if (k == null || !k.dd) {
                        i9 = i4;
                    } else {
                        i9 = i4 - ((int) (((float) dZ()) * (1.0f - this.Nt)));
                    }
                    childAt2.measure(makeMeasureSpec, MeasureSpec.makeMeasureSpec(i9, 1073741824));
                }
            }
            i3++;
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            d(i, i3, this.Nc, this.Nc);
        }
    }

    private void d(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.oc.isEmpty()) {
            ItemInfo ae = ae(this.MI);
            i = (int) ((ae != null ? Math.min(ae.Oa, this.Nh) : 0.0f) * ((float) i));
            if (i != getScrollX()) {
                dT();
                scrollTo(i, getScrollY());
                return;
            }
            return;
        }
        int scrollX = (int) ((((float) getScrollX()) / ((float) (i2 + i4))) * ((float) (i3 + i)));
        scrollTo(scrollX, getScrollY());
        if (!this.wy.isFinished()) {
            this.wy.startScroll(scrollX, 0, (int) (ae(this.MI).Oa * ((float) i)), 0, this.wy.getDuration() - this.wy.timePassed());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean z2 = true;
        this.Nk = true;
        dS();
        this.Nk = false;
        int childCount = getChildCount();
        int i6 = i3 - i;
        int i7 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = 0;
        int i9 = paddingBottom;
        paddingBottom = paddingTop;
        paddingTop = paddingLeft;
        paddingLeft = i8;
        while (true) {
            i5 = 8;
            if (paddingLeft >= childCount) {
                break;
            }
            View childAt = getChildAt(paddingLeft);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int max;
                    int i10;
                    boolean absoluteGravity = Gravity.getAbsoluteGravity(layoutParams.gravity, getLayoutDirection()) & 7;
                    i5 = layoutParams.gravity & BaiduSceneResult.STREET_VIEW;
                    if (absoluteGravity == z2) {
                        max = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingTop);
                    } else if (absoluteGravity) {
                        i10 = paddingTop;
                        paddingTop = childAt.getMeasuredWidth() + paddingTop;
                        max = i10;
                    } else if (!absoluteGravity) {
                        max = paddingTop;
                    } else {
                        max = (i6 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    if (i5 != 16) {
                        if (i5 == 48) {
                            i5 = childAt.getMeasuredHeight() + paddingBottom;
                        } else if (i5 != 80) {
                            i5 = paddingBottom;
                        } else {
                            i5 = (i7 - i9) - childAt.getMeasuredHeight();
                            i9 += childAt.getMeasuredHeight();
                        }
                        max += scrollX;
                        childAt.layout(max, paddingBottom, childAt.getMeasuredWidth() + max, paddingBottom + childAt.getMeasuredHeight());
                        i8++;
                        paddingBottom = i5;
                    } else {
                        i5 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingBottom);
                    }
                    i10 = i5;
                    i5 = paddingBottom;
                    paddingBottom = i10;
                    max += scrollX;
                    childAt.layout(max, paddingBottom, childAt.getMeasuredWidth() + max, paddingBottom + childAt.getMeasuredHeight());
                    i8++;
                    paddingBottom = i5;
                }
            }
            paddingLeft++;
            z2 = true;
        }
        int i11 = 0;
        while (i11 < childCount) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != i5) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.isDecor) {
                    ItemInfo k = k(childAt2);
                    if (k != null) {
                        int i12 = ((int) (((float) i6) * k.Oa)) + paddingTop;
                        if (this.Nu || layoutParams2.needsMeasure) {
                            layoutParams2.needsMeasure = false;
                            paddingLeft = MeasureSpec.makeMeasureSpec((int) (((float) ((i6 - paddingTop) - paddingRight)) * layoutParams2.widthFactor), 1073741824);
                            this.Nu = false;
                            if (k.dd) {
                                scrollX = dZ();
                            } else {
                                scrollX = 0;
                            }
                            childAt2.measure(paddingLeft, MeasureSpec.makeMeasureSpec((int) (((float) ((i7 - paddingBottom) - i9)) - (((float) scrollX) * (1.0f - this.Nt))), 1073741824));
                        }
                        childAt2.layout(i12, paddingBottom, childAt2.getMeasuredWidth() + i12, childAt2.getMeasuredHeight() + paddingBottom);
                    }
                }
            }
            i11++;
            i5 = 8;
        }
        this.Ne = paddingBottom;
        this.Nf = i7 - i9;
        this.NK = i8;
        this.NF = false;
    }

    public void computeScroll() {
        if (this.wy.isFinished() || !this.wy.computeScrollOffset()) {
            dT();
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.wy.getCurrX();
        int currY = this.wy.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!g(currX, false)) {
                this.wy.abortAnimation();
                scrollTo(0, currY);
            }
        }
        postInvalidateOnAnimation();
    }

    private boolean g(int i, boolean z) {
        if (this.oc.size() == 0) {
            this.NJ = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.NJ) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ItemInfo dV = dV();
        int width = getWidth();
        int i2 = this.Nc + width;
        float f = (float) width;
        float f2 = ((float) this.Nc) / f;
        int i3 = dV.position;
        float f3 = ((((float) i) / f) - dV.Oa) / (dV.widthFactor + f2);
        int i4 = (int) (((float) i2) * f3);
        if (z) {
            if (this.NT >= f3 || f3 <= 0.55f) {
                z = this.NT > f3 && f3 < 0.45f;
                i2 = i3;
            } else {
                i2 = i3 + 1;
                z = true;
            }
            this.NT = f3;
            if (z) {
                int count = i2 < 0 ? 0 : i2 >= this.MF.getCount() ? this.MF.getCount() - 1 : i2;
                if (count != this.MI) {
                    ad(count);
                    if (this.NM != null) {
                        this.NM.onPageSelected(count);
                    }
                    if (this.NN != null) {
                        this.NN.onPageSelected(count);
                    }
                }
            }
        }
        this.NJ = false;
        onPageScrolled(i3, f3, i4);
        if (this.NJ) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x006f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onPageScrolled(int i, float f, int i2) {
        if (this.NK > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams.gravity, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity == 3) {
                            absoluteGravity = childAt.getWidth() + paddingLeft;
                        } else if (absoluteGravity != 5) {
                            absoluteGravity = paddingLeft;
                        } else {
                            absoluteGravity = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        paddingLeft = (paddingLeft + scrollX) - childAt.getLeft();
                        if (paddingLeft != 0) {
                            childAt.offsetLeftAndRight(paddingLeft);
                        }
                        paddingLeft = absoluteGravity;
                    } else {
                        absoluteGravity = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i4 = absoluteGravity;
                    absoluteGravity = paddingLeft;
                    paddingLeft = i4;
                    paddingLeft = (paddingLeft + scrollX) - childAt.getLeft();
                    if (paddingLeft != 0) {
                    }
                    paddingLeft = absoluteGravity;
                }
            }
        }
        if (this.NM != null) {
            this.NM.onPageScrolled(i, f, i2);
        }
        if (this.NN != null) {
            this.NN.onPageScrolled(i, f, i2);
        }
        this.NJ = true;
    }

    private void dT() {
        boolean z = this.NW == 2;
        if (z) {
            setScrollingCacheEnabled(false);
            this.wy.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.wy.getCurrX();
            int currY = this.wy.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
            }
            ac(0);
        }
        this.Nm = false;
        Iterator it = this.oc.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo.NY) {
                itemInfo.NY = false;
                z = true;
            }
        }
        if (z) {
            dS();
        }
    }

    private boolean b(float f, float f2) {
        return (f < ((float) this.Nr) && f2 > 0.0f) || (f > ((float) (getWidth() - this.Nr)) && f2 < 0.0f);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        if (!this.NS) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            dU();
            return false;
        }
        if (action != 0) {
            if (this.qP) {
                return true;
            }
            if (this.No) {
                return false;
            }
        }
        float x;
        if (action == 0) {
            x = motionEvent.getX();
            this.Ns = x;
            this.mLastMotionX = x;
            this.mLastMotionY = motionEvent.getY();
            this.qO = motionEvent2.getPointerId(0);
            this.No = false;
            this.wy.computeScrollOffset();
            if (this.NW != 2 || Math.abs(this.wy.getFinalX() - this.wy.getCurrX()) <= this.Nw) {
                dT();
                this.qP = false;
            } else {
                this.wy.abortAnimation();
                this.Nm = false;
                dS();
                this.qP = true;
                ac(1);
            }
        } else if (action == 2) {
            action = this.qO;
            if (action != -1) {
                action = motionEvent2.findPointerIndex(action);
                if (action >= 0 && action < motionEvent.getPointerCount()) {
                    float x2 = motionEvent2.getX(action);
                    float f = x2 - this.mLastMotionX;
                    float abs = Math.abs(f);
                    float y = motionEvent2.getY(action);
                    float abs2 = Math.abs(y - this.mLastMotionY);
                    int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                    if (!(i == 0 || b(this.mLastMotionX, f))) {
                        if (canScroll(this, false, (int) f, (int) x2, (int) y)) {
                            this.mLastMotionX = x2;
                            this.Ns = x2;
                            this.mLastMotionY = y;
                            this.No = true;
                            return false;
                        }
                    }
                    if (abs > ((float) this.fO) && abs > abs2) {
                        this.qP = true;
                        ac(1);
                        if (i > 0) {
                            x = this.Ns + ((float) this.fO);
                        } else {
                            x = this.Ns - ((float) this.fO);
                        }
                        this.mLastMotionX = x;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > ((float) this.fO)) {
                        this.No = true;
                    }
                    if (this.qP && b(x2)) {
                        postInvalidateOnAnimation();
                    }
                }
            }
        } else if (action == 6) {
            a(motionEvent);
        }
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        }
        this.rc.addMovement(motionEvent2);
        return this.qP;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.Ny) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.MF == null || this.MF.getCount() == 0) {
            return false;
        }
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        }
        this.rc.addMovement(motionEvent);
        float x;
        int xVelocity;
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.wy.abortAnimation();
                this.Nm = false;
                dS();
                this.qP = true;
                ac(1);
                x = motionEvent.getX();
                this.Ns = x;
                this.mLastMotionX = x;
                this.qO = motionEvent.getPointerId(0);
                break;
            case 1:
                if (this.qP) {
                    VelocityTracker velocityTracker = this.rc;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.qT);
                    xVelocity = (int) velocityTracker.getXVelocity(this.qO);
                    this.Nm = true;
                    int width = getWidth();
                    int scrollX = getScrollX();
                    ItemInfo dV = dV();
                    a(a(dV.position, ((((float) scrollX) / ((float) width)) - dV.Oa) / dV.widthFactor, xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.qO)) - this.Ns)), true, true, xVelocity);
                    z = dU();
                    break;
                }
                break;
            case 2:
                if (!this.qP) {
                    xVelocity = motionEvent.findPointerIndex(this.qO);
                    if (xVelocity == -1) {
                        z = dU();
                        break;
                    }
                    float x2 = motionEvent.getX(xVelocity);
                    float abs = Math.abs(x2 - this.mLastMotionX);
                    x = Math.abs(motionEvent.getY(xVelocity) - this.mLastMotionY);
                    if (abs > ((float) this.fO) && abs > x) {
                        this.qP = true;
                        if (x2 - this.Ns > 0.0f) {
                            x = this.Ns + ((float) this.fO);
                        } else {
                            x = this.Ns - ((float) this.fO);
                        }
                        this.mLastMotionX = x;
                        ac(1);
                        setScrollingCacheEnabled(true);
                    }
                }
                if (this.qP) {
                    z = b(motionEvent.getX(motionEvent.findPointerIndex(this.qO)));
                    break;
                }
                break;
            case 3:
                if (this.qP) {
                    b(this.MI, true, true);
                    z = dU();
                    break;
                }
                break;
            case 5:
                xVelocity = motionEvent.getActionIndex();
                this.mLastMotionX = motionEvent.getX(xVelocity);
                this.qO = motionEvent.getPointerId(xVelocity);
                break;
            case 6:
                a(motionEvent);
                this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.qO));
                break;
        }
        if (z) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    private boolean dU() {
        this.qO = -1;
        dW();
        this.NB.onRelease();
        this.ND.onRelease();
        return this.NB.isFinished() | this.ND.isFinished();
    }

    private boolean b(float f) {
        boolean z;
        boolean z2;
        float f2 = this.mLastMotionX - f;
        this.mLastMotionX = f;
        f = ((float) getScrollX()) + f2;
        f2 = (float) getWidth();
        float f3 = this.Ng * f2;
        float f4 = this.Nh * f2;
        boolean z3 = false;
        ItemInfo itemInfo = (ItemInfo) this.oc.get(0);
        ItemInfo itemInfo2 = (ItemInfo) this.oc.get(this.oc.size() - 1);
        if (itemInfo.position != 0) {
            f3 = itemInfo.Oa * f2;
            z = false;
        } else {
            z = true;
        }
        if (itemInfo2.position != this.MF.getCount() - 1) {
            f4 = itemInfo2.Oa * f2;
            z2 = false;
        } else {
            z2 = true;
        }
        if (f < f3) {
            if (z) {
                this.NB.onPull(Math.abs(f3 - f) / f2);
                z3 = true;
            }
            f = f3;
        } else if (f > f4) {
            if (z2) {
                this.ND.onPull(Math.abs(f - f4) / f2);
                z3 = true;
            }
            f = f4;
        }
        int i = (int) f;
        this.mLastMotionX += f - ((float) i);
        scrollTo(i, getScrollY());
        g(i, true);
        return z3;
    }

    private ItemInfo dV() {
        float scrollX;
        float f;
        int width = getWidth();
        if (width > 0) {
            scrollX = ((float) getScrollX()) / ((float) width);
        } else {
            scrollX = 0.0f;
        }
        if (width > 0) {
            f = ((float) this.Nc) / ((float) width);
        } else {
            f = 0.0f;
        }
        float f2 = 0.0f;
        float f3 = f2;
        int i = 0;
        int i2 = -1;
        ItemInfo itemInfo = null;
        int i3 = 1;
        while (i < this.oc.size()) {
            ItemInfo itemInfo2 = (ItemInfo) this.oc.get(i);
            if (i3 == 0) {
                i2++;
                if (itemInfo2.position != i2) {
                    itemInfo2 = this.My;
                    itemInfo2.Oa = (f2 + f3) + f;
                    itemInfo2.position = i2;
                    itemInfo2.widthFactor = this.MF.getPageWidth(itemInfo2.position);
                    i--;
                }
            }
            f2 = itemInfo2.Oa;
            float f4 = (itemInfo2.widthFactor + f2) + f;
            if (i3 == 0 && scrollX < f2) {
                return itemInfo;
            }
            if (scrollX < f4 || i == this.oc.size() - 1) {
                return itemInfo2;
            }
            i2 = itemInfo2.position;
            f3 = itemInfo2.widthFactor;
            i++;
            i3 = 0;
            itemInfo = itemInfo2;
        }
        return itemInfo;
    }

    private int a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.Nv || Math.abs(i2) <= this.qS) {
            i = (int) ((((float) i) + f) + 0.5f);
        } else if (i2 <= 0) {
            i++;
        }
        if (this.oc.size() <= 0) {
            return i;
        }
        return Math.max(((ItemInfo) this.oc.get(0)).position, Math.min(i, ((ItemInfo) this.oc.get(this.oc.size() - 1)).position));
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        int i = 0;
        if (overScrollMode == 0 || (overScrollMode == 1 && this.MF != null && this.MF.getCount() > 1)) {
            int width;
            if (!this.NB.isFinished()) {
                overScrollMode = canvas.save();
                i = (getHeight() - getPaddingTop()) - getPaddingBottom();
                width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-i) + getPaddingTop()), this.Ng * ((float) width));
                this.NB.setSize(i, width);
                i = this.NB.draw(canvas);
                canvas.restoreToCount(overScrollMode);
            }
            if (!this.ND.isFinished()) {
                overScrollMode = canvas.save();
                width = getWidth();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.Nh + 1.0f)) * ((float) width));
                this.ND.setSize(height, width);
                i |= this.ND.draw(canvas);
                canvas.restoreToCount(overScrollMode);
            }
        } else {
            this.NB.finish();
            this.ND.finish();
        }
        if (i != 0) {
            postInvalidateOnAnimation();
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.Nc > 0 && this.Nd != null && this.oc.size() > 0 && this.MF != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = (float) width;
            float f2 = ((float) this.Nc) / f;
            int i = 0;
            ItemInfo itemInfo = (ItemInfo) this.oc.get(0);
            float f3 = itemInfo.Oa;
            int size = this.oc.size();
            int i2 = itemInfo.position;
            int i3 = ((ItemInfo) this.oc.get(size - 1)).position;
            while (i2 < i3) {
                float f4;
                float f5;
                while (i2 > itemInfo.position && i < size) {
                    i++;
                    itemInfo = (ItemInfo) this.oc.get(i);
                }
                if (i2 == itemInfo.position) {
                    f4 = (itemInfo.Oa + itemInfo.widthFactor) * f;
                    f3 = (itemInfo.Oa + itemInfo.widthFactor) + f2;
                } else {
                    float pageWidth = this.MF.getPageWidth(i2);
                    f4 = (f3 + pageWidth) * f;
                    f3 += pageWidth + f2;
                }
                if (((float) this.Nc) + f4 > ((float) scrollX)) {
                    f5 = f2;
                    this.Nd.setBounds((int) f4, this.Ne, (int) ((((float) this.Nc) + f4) + 0.5f), this.Nf);
                    this.Nd.draw(canvas);
                } else {
                    Canvas canvas2 = canvas;
                    f5 = f2;
                }
                if (f4 <= ((float) (scrollX + width))) {
                    i2++;
                    f2 = f5;
                } else {
                    return;
                }
            }
        }
    }

    public boolean beginFakeDrag() {
        if (this.qP) {
            return false;
        }
        this.Ny = true;
        ac(1);
        this.mLastMotionX = 0.0f;
        this.Ns = 0.0f;
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        } else {
            this.rc.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.rc.addMovement(obtain);
        obtain.recycle();
        this.Nz = uptimeMillis;
        return true;
    }

    public void endFakeDrag() {
        if (this.Ny) {
            VelocityTracker velocityTracker = this.rc;
            velocityTracker.computeCurrentVelocity(1000, (float) this.qT);
            int xVelocity = (int) velocityTracker.getXVelocity(this.qO);
            this.Nm = true;
            int width = getWidth();
            int scrollX = getScrollX();
            ItemInfo dV = dV();
            a(a(dV.position, ((((float) scrollX) / ((float) width)) - dV.Oa) / dV.widthFactor, xVelocity, (int) (this.mLastMotionX - this.Ns)), true, true, xVelocity);
            dW();
            this.Ny = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public void fakeDragBy(float f) {
        if (this.Ny) {
            this.mLastMotionX += f;
            float scrollX = ((float) getScrollX()) - f;
            float width = (float) getWidth();
            float f2 = this.Ng * width;
            float f3 = this.Nh * width;
            ItemInfo itemInfo = (ItemInfo) this.oc.get(0);
            ItemInfo itemInfo2 = (ItemInfo) this.oc.get(this.oc.size() - 1);
            if (itemInfo.position != 0) {
                f2 = itemInfo.Oa * width;
            }
            if (itemInfo2.position != this.MF.getCount() - 1) {
                f3 = itemInfo2.Oa * width;
            }
            if (scrollX < f2) {
                scrollX = f2;
            } else if (scrollX > f3) {
                scrollX = f3;
            }
            int i = (int) scrollX;
            this.mLastMotionX += scrollX - ((float) i);
            scrollTo(i, getScrollY());
            g(i, true);
            MotionEvent obtain = MotionEvent.obtain(this.Nz, SystemClock.uptimeMillis(), 2, this.mLastMotionX, 0.0f, 0);
            this.rc.addMovement(obtain);
            obtain.recycle();
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public boolean isFakeDragging() {
        return this.Ny;
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.qO) {
            actionIndex = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(actionIndex);
            this.qO = motionEvent.getPointerId(actionIndex);
            if (this.rc != null) {
                this.rc.clear();
            }
        }
    }

    private void dW() {
        this.qP = false;
        this.No = false;
        if (this.rc != null) {
            this.rc.recycle();
            this.rc = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.Nl != z) {
            this.Nl = z;
        }
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        View view2 = view;
        boolean z2 = true;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view2.getScrollX();
            int scrollY = view2.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i4 = i2 + scrollX;
                if (i4 >= childAt.getLeft() && i4 < childAt.getRight()) {
                    int i5 = i3 + scrollY;
                    if (i5 >= childAt.getTop() && i5 < childAt.getBottom()) {
                        if (canScroll(childAt, true, i, i4 - childAt.getLeft(), i5 - childAt.getTop())) {
                            return true;
                        }
                    }
                }
            }
        }
        if (!(z && view2.canScrollHorizontally(-i))) {
            z2 = false;
        }
        return z2;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                switch (keyCode) {
                    case 21:
                        return arrowScroll(17);
                    case 22:
                        return arrowScroll(66);
                }
            } else if (VERSION.SDK_INT >= 11) {
                if (keyEvent.hasNoModifiers()) {
                    return arrowScroll(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return arrowScroll(1);
                }
            }
        }
        return false;
    }

    public boolean arrowScroll(int i) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        boolean z = false;
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int i2;
        int i3;
        boolean requestFocus;
        if (findNextFocus == null || findNextFocus == findFocus) {
            if (i == 17 || i == 1) {
                z = dX();
            } else if (i == 66 || i == 2) {
                z = dY();
            }
        } else if (i == 17) {
            i2 = a(this.Mz, findNextFocus).left;
            i3 = a(this.Mz, findFocus).left;
            if (findFocus == null || i2 < i3) {
                requestFocus = findNextFocus.requestFocus();
            } else {
                requestFocus = dX();
            }
            z = requestFocus;
        } else if (i == 66) {
            i2 = a(this.Mz, findNextFocus).left;
            i3 = a(this.Mz, findFocus).left;
            if (findFocus == null || i2 > i3) {
                requestFocus = findNextFocus.requestFocus();
            } else {
                requestFocus = dY();
            }
            z = requestFocus;
        }
        if (z) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z;
    }

    private Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewPager parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    boolean dX() {
        if (this.MI <= 0) {
            return false;
        }
        setCurrentItem(this.MI - 1, true);
        return true;
    }

    boolean dY() {
        if (this.MF == null || this.MI >= this.MF.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.MI + 1, true);
        return true;
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    ItemInfo k = k(childAt);
                    if (k != null && k.position == this.MI) {
                        childAt.addFocusables(arrayList, i, i2);
                    }
                }
            }
        }
        if ((descendantFocusability == nexEngine.ExportHEVCMainTierLevel52 && (arrayList == null || size != arrayList.size())) || !isFocusable()) {
            return;
        }
        if (!(((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null)) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo k = k(childAt);
                if (k != null && k.position == this.MI) {
                    childAt.addTouchables(arrayList);
                }
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int childCount = getChildCount();
        int i3 = -1;
        if ((i & 2) != 0) {
            i3 = childCount;
            childCount = 0;
            i2 = 1;
        } else {
            childCount--;
            i2 = -1;
        }
        while (childCount != i3) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                ItemInfo k = k(childAt);
                if (k != null && k.position == this.MI && childAt.requestFocus(i, rect)) {
                    return true;
                }
            }
            childCount += i2;
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo k = k(childAt);
                if (k != null && k.position == this.MI && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ViewPager.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ViewPager.class.getName());
        boolean z = this.MF != null && this.MF.getCount() > 1;
        accessibilityNodeInfo.setScrollable(z);
        if (this.MF != null && this.MI >= 0 && this.MI < this.MF.getCount() - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        if (this.MF != null && this.MI > 0 && this.MI < this.MF.getCount()) {
            accessibilityNodeInfo.addAction(8192);
        }
    }

    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (i != 4096) {
            if (i != 8192 || this.MF == null || this.MI <= 0 || this.MI >= this.MF.getCount()) {
                return false;
            }
            setCurrentItem(this.MI - 1);
            return true;
        } else if (this.MF == null || this.MI < 0 || this.MI >= this.MF.getCount() - 1) {
            return false;
        } else {
            setCurrentItem(this.MI + 1);
            return true;
        }
    }

    public void setDraggable(boolean z) {
        this.NS = z;
    }

    int dZ() {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) ActionBarUtils.getActionBarOverlayLayout(this);
        if (actionBarOverlayLayout == null || actionBarOverlayLayout.getActionBarView() == null) {
            return 0;
        }
        return actionBarOverlayLayout.getActionBarView().getSplitActionBarHeight(true);
    }

    public void setBottomMarginProgress(float f) {
        this.Nt = f;
        this.Nu = true;
        requestLayout();
        invalidate();
    }
}
