package com.miui.internal.variable;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import com.miui.internal.util.ClassProxy;
import com.miui.internal.util.async.ConcurrentWeakHashMap;
import miui.R;

public abstract class Android_View_View_class extends ClassProxy<View> implements IManagedClassProxy {
    private static final SparseIntArray kK = new SparseIntArray();
    private static final SparseArray<int[]> kL = new SparseArray();
    private static final ConcurrentWeakHashMap<View, CustomizedValue> kM = new ConcurrentWeakHashMap();

    public static class CustomizedValue {
        public boolean mHasInitViewSequenceStates = false;
        public int mHorizontalState = 0;
        public boolean mTagChildrenSequenceState = false;
        public int mVerticalState = 0;
    }

    public static class Factory extends AbsClassFactory {
        private Android_View_View_class kN;

        private static class Holder {
            static final Factory kO = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.kN = (Android_View_View_class) create("Android_View_View_class");
        }

        public static Factory getInstance() {
            return Holder.kO;
        }

        public Android_View_View_class get() {
            return this.kN;
        }
    }

    public abstract Bitmap createSnapshot(View view, Config config, int i, boolean z);

    public abstract void relayout(View view);

    public abstract void setImportantForAccessibilityNoHideDescendants(View view);

    public abstract void setLeftDirectly(View view, int i);

    public abstract void setRightDirectly(View view, int i);

    public abstract void setScrollXDirectly(View view, int i);

    public abstract void setScrollYDirectly(View view, int i);

    static {
        kK.put(16842908, 1);
        kK.put(16842910, 1 << kK.size());
        kK.put(16842911, 1 << kK.size());
        kK.put(16842912, 1 << kK.size());
        kK.put(16842913, 1 << kK.size());
        kK.put(16842914, 1 << kK.size());
        kK.put(16842915, 1 << kK.size());
        kK.put(16842916, 1 << kK.size());
        kK.put(16842917, 1 << kK.size());
        kK.put(16842918, 1 << kK.size());
        kK.put(16842919, 1 << kK.size());
        kK.put(16842921, 1 << kK.size());
        kK.put(16843518, 1 << kK.size());
        kK.put(R.attr.state_first_h, 1 << kK.size());
        kK.put(R.attr.state_middle_h, 1 << kK.size());
        kK.put(R.attr.state_last_h, 1 << kK.size());
        kK.put(R.attr.state_single_h, 1 << kK.size());
        kK.put(R.attr.state_first_v, 1 << kK.size());
        kK.put(R.attr.state_middle_v, 1 << kK.size());
        kK.put(R.attr.state_last_v, 1 << kK.size());
        kK.put(R.attr.state_single_v, 1 << kK.size());
    }

    public Android_View_View_class() {
        super(View.class);
    }

    protected CustomizedValue getCustomizedValue(View view) {
        CustomizedValue customizedValue = (CustomizedValue) kM.get(view);
        if (customizedValue != null) {
            return customizedValue;
        }
        customizedValue = new CustomizedValue();
        kM.put(view, customizedValue);
        return customizedValue;
    }

    public int getHorizontalState(View view) {
        return getCustomizedValue(view).mHorizontalState;
    }

    public void setHorizontalState(View view, int i) {
        getCustomizedValue(view).mHorizontalState = i;
    }

    public int getVerticalState(View view) {
        return getCustomizedValue(view).mVerticalState;
    }

    public void setVerticalState(View view, int i) {
        getCustomizedValue(view).mVerticalState = i;
    }

    public boolean hasInitViewSequenceStates(View view) {
        return getCustomizedValue(view).mHasInitViewSequenceStates;
    }

    public void setHasInitViewSequenceStates(View view, boolean z) {
        getCustomizedValue(view).mHasInitViewSequenceStates = z;
    }

    private static synchronized int i(int i) {
        int i2;
        synchronized (Android_View_View_class.class) {
            i2 = 0;
            if (i != 0) {
                i2 = kK.get(i, 0);
                if (i2 == 0) {
                    if (kK.size() < 32) {
                        i2 = 1 << kK.size();
                        kK.put(i, i2);
                    } else {
                        throw new IllegalArgumentException("State attribute cannot exceed 32!");
                    }
                }
            }
        }
        return i2;
    }

    private static int a(int[] iArr) {
        int i = 0;
        if (iArr == null) {
            return 0;
        }
        int i2 = 0;
        while (i < iArr.length) {
            i2 |= i(iArr[i]);
            i++;
        }
        return i2;
    }

    protected int[] onCreateDrawableState(View view, int[] iArr, int i) {
        int[] iArr2;
        int horizontalState = getHorizontalState(view);
        int verticalState = getVerticalState(view);
        if (horizontalState == 0 || verticalState == 0) {
            iArr2 = iArr;
        } else {
            int a = (a(iArr) | i(horizontalState)) | i(verticalState);
            synchronized (Android_View_View_class.class) {
                iArr2 = (int[]) kL.get(a);
            }
            if (iArr2 == null) {
                int length;
                if (iArr != null) {
                    length = iArr.length;
                } else {
                    length = 0;
                }
                iArr2 = new int[(length + 2)];
                if (length != 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, length);
                }
                iArr2[length] = horizontalState;
                iArr2[length + 1] = verticalState;
                synchronized (Android_View_View_class.class) {
                    if (kL.get(a) == null) {
                        kL.put(a, iArr2);
                    }
                }
            }
        }
        if (i == 0) {
            return iArr2;
        }
        if (iArr2 == null) {
            return new int[i];
        }
        Object obj = new int[(iArr2.length + i)];
        System.arraycopy(iArr2, 0, obj, 0, iArr2.length);
        return obj;
    }
}
