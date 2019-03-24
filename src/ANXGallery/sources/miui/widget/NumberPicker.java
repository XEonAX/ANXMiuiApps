package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnFocusChangeListener;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.util.SimpleNumberFormatter;
import com.miui.internal.util.async.WorkerThreads;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import miui.util.AppConstants;
import miui.util.ArraySet;
import miui.util.ViewUtils;

public class NumberPicker extends LinearLayout {
    private static final int[] PRESSED_STATE_SET = new int[]{16842919};
    private static final int VB = 8;
    private static final int VD = 800;
    private static final int VF = 300;
    private static final float VH = 0.9f;
    private static final int VJ = 2;
    private static final int VK = 48;
    private static final int VL = R.layout.numberpicker_layout;
    private static final int VM = -1;
    private static final AtomicInteger VO = new AtomicInteger(0);
    static final Formatter VR = new NumberFormatter(2);
    static final int Vw = 5;
    private static final String Vx = "NumberPicker_sound_play";
    private static final long Vy = 300;
    private static final int Vz = 2;
    private static final float WZ = 45.0f;
    private static final int Xb = 202;
    private static final char[] Xf = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    private int NW;
    private int VP;
    private int VQ;
    private SoundPlayHandler VS;
    private final EditText VT;
    private final int VV;
    private final int VW;
    private final int VX;
    private final int VY;
    private int VZ;
    private int WA;
    private boolean WB;
    private final boolean WC;
    private final int WD;
    private boolean WE;
    private boolean WG;
    private int WH;
    private int WI;
    private int WJ;
    private boolean WK;
    private boolean WL;
    private AccessibilityNodeProviderImpl WM;
    private final PressedStateHelper WN;
    private int WO;
    private Paint WP;
    private int WQ;
    private float WR;
    private int WT;
    private int WU;
    private int WV;
    private int WW;
    private int WX;
    private float WY;
    private final boolean Wa;
    private int Wb;
    private String[] Wc;
    private int Wd;
    private int We;
    private int Wf;
    private OnValueChangeListener Wg;
    private OnScrollListener Wh;
    private Formatter Wi;
    private long Wj;
    private final SparseArray<String> Wk;
    private final int[] Wl;
    private final Paint Wm;
    private int Wn;
    private int Wo;
    private int Wp;
    private final Scroller Wq;
    private final Scroller Wr;
    private int Ws;
    private SetSelectionCommand Wt;
    private ChangeCurrentByOneFromLongPressCommand Wu;
    private BeginSoftInputOnLongPressCommand Wv;
    private float Ww;
    private long Wx;
    private float Wy;
    private int Wz;
    private int Xa;
    private CharSequence Xc;
    private float Xd;
    private String Xe;
    private int fO;
    private final int mr;
    private VelocityTracker rc;
    private final int uK;

    public interface OnValueChangeListener {
        void onValueChange(NumberPicker numberPicker, int i, int i2);
    }

    class AccessibilityNodeProviderImpl extends AccessibilityNodeProvider {
        private static final int UNDEFINED = Integer.MIN_VALUE;
        private static final int Xh = 1;
        private static final int Xi = 2;
        private static final int Xj = 3;
        private final Rect Mz = new Rect();
        private final int[] Xk = new int[2];
        private int Xl = Integer.MIN_VALUE;

        AccessibilityNodeProviderImpl() {
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            if (i == -1) {
                return f(NumberPicker.this.getScrollX(), NumberPicker.this.getScrollY(), NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.getScrollY() + (NumberPicker.this.getBottom() - NumberPicker.this.getTop()));
            }
            switch (i) {
                case 1:
                    return a(1, fw(), NumberPicker.this.getScrollX(), NumberPicker.this.WI - NumberPicker.this.WD, NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.getScrollY() + (NumberPicker.this.getBottom() - NumberPicker.this.getTop()));
                case 2:
                    return e(NumberPicker.this.getScrollX(), NumberPicker.this.WH + NumberPicker.this.WD, NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.WI - NumberPicker.this.WD);
                case 3:
                    return a(3, fv(), NumberPicker.this.getScrollX(), NumberPicker.this.getScrollY(), NumberPicker.this.getScrollX() + (NumberPicker.this.getRight() - NumberPicker.this.getLeft()), NumberPicker.this.WH + NumberPicker.this.WD);
                default:
                    return super.createAccessibilityNodeInfo(i);
            }
        }

        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            if (TextUtils.isEmpty(str)) {
                return Collections.emptyList();
            }
            String toLowerCase = str.toLowerCase();
            List arrayList = new ArrayList();
            if (i != -1) {
                switch (i) {
                    case 1:
                    case 2:
                    case 3:
                        a(toLowerCase, i, arrayList);
                        return arrayList;
                    default:
                        return super.findAccessibilityNodeInfosByText(str, i);
                }
            }
            a(toLowerCase, 3, arrayList);
            a(toLowerCase, 2, arrayList);
            a(toLowerCase, 1, arrayList);
            return arrayList;
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            boolean z = false;
            if (i != -1) {
                switch (i) {
                    case 1:
                        if (i2 != 16) {
                            if (i2 != 64) {
                                if (i2 != 128 || this.Xl != i) {
                                    return false;
                                }
                                this.Xl = Integer.MIN_VALUE;
                                o(i, 65536);
                                NumberPicker.this.invalidate(0, NumberPicker.this.WI, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                                return true;
                            } else if (this.Xl == i) {
                                return false;
                            } else {
                                this.Xl = i;
                                o(i, 32768);
                                NumberPicker.this.invalidate(0, NumberPicker.this.WI, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                                return true;
                            }
                        } else if (!NumberPicker.this.isEnabled()) {
                            return false;
                        } else {
                            NumberPicker.this.x(true);
                            o(i, 1);
                            return true;
                        }
                    case 2:
                        if (i2 == 16) {
                            return NumberPicker.this.isEnabled();
                        } else {
                            if (i2 != 64) {
                                if (i2 != 128) {
                                    switch (i2) {
                                        case 1:
                                            if (!NumberPicker.this.isEnabled() || NumberPicker.this.VT.isFocused()) {
                                                return false;
                                            }
                                            return NumberPicker.this.VT.requestFocus();
                                        case 2:
                                            if (!NumberPicker.this.isEnabled() || !NumberPicker.this.VT.isFocused()) {
                                                return false;
                                            }
                                            NumberPicker.this.VT.clearFocus();
                                            return true;
                                        default:
                                            return NumberPicker.this.VT.performAccessibilityAction(i2, bundle);
                                    }
                                } else if (this.Xl != i) {
                                    return false;
                                } else {
                                    this.Xl = Integer.MIN_VALUE;
                                    o(i, 65536);
                                    NumberPicker.this.VT.invalidate();
                                    return true;
                                }
                            } else if (this.Xl == i) {
                                return false;
                            } else {
                                this.Xl = i;
                                o(i, 32768);
                                NumberPicker.this.VT.invalidate();
                                return true;
                            }
                        }
                    case 3:
                        if (i2 != 16) {
                            if (i2 != 64) {
                                if (i2 != 128 || this.Xl != i) {
                                    return false;
                                }
                                this.Xl = Integer.MIN_VALUE;
                                o(i, 65536);
                                NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.WH);
                                return true;
                            } else if (this.Xl == i) {
                                return false;
                            } else {
                                this.Xl = i;
                                o(i, 32768);
                                NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.WH);
                                return true;
                            }
                        } else if (!NumberPicker.this.isEnabled()) {
                            return false;
                        } else {
                            if (i == 1) {
                                z = true;
                            }
                            NumberPicker.this.x(z);
                            o(i, 1);
                            return true;
                        }
                }
            } else if (i2 != 64) {
                if (i2 != 128) {
                    if (i2 != 4096) {
                        if (i2 == 8192) {
                            if (!NumberPicker.this.isEnabled() || (!NumberPicker.this.getWrapSelectorWheel() && NumberPicker.this.getValue() <= NumberPicker.this.getMinValue())) {
                                return false;
                            }
                            NumberPicker.this.x(false);
                            return true;
                        }
                    } else if (!NumberPicker.this.isEnabled() || (!NumberPicker.this.getWrapSelectorWheel() && NumberPicker.this.getValue() >= NumberPicker.this.getMaxValue())) {
                        return false;
                    } else {
                        NumberPicker.this.x(true);
                        return true;
                    }
                } else if (this.Xl != i) {
                    return false;
                } else {
                    this.Xl = Integer.MIN_VALUE;
                    return true;
                }
            } else if (this.Xl == i) {
                return false;
            } else {
                this.Xl = i;
                return true;
            }
            return super.performAction(i, i2, bundle);
        }

        public void o(int i, int i2) {
            switch (i) {
                case 1:
                    if (fu()) {
                        a(i, i2, fw());
                        return;
                    }
                    return;
                case 2:
                    az(i2);
                    return;
                case 3:
                    if (ft()) {
                        a(i, i2, fv());
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        private void az(int i) {
            if (((AccessibilityManager) NumberPicker.this.getContext().getSystemService("accessibility")).isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
                NumberPicker.this.VT.onInitializeAccessibilityEvent(obtain);
                NumberPicker.this.VT.onPopulateAccessibilityEvent(obtain);
                obtain.setSource(NumberPicker.this, 2);
                NumberPicker.this.requestSendAccessibilityEvent(NumberPicker.this, obtain);
            }
        }

        private void a(int i, int i2, String str) {
            if (((AccessibilityManager) NumberPicker.this.getContext().getSystemService("accessibility")).isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
                obtain.setClassName(Button.class.getName());
                obtain.setPackageName(NumberPicker.this.getContext().getPackageName());
                obtain.getText().add(str);
                obtain.setEnabled(NumberPicker.this.isEnabled());
                obtain.setSource(NumberPicker.this, i);
                NumberPicker.this.requestSendAccessibilityEvent(NumberPicker.this, obtain);
            }
        }

        private void a(String str, int i, List<AccessibilityNodeInfo> list) {
            Object fw;
            switch (i) {
                case 1:
                    fw = fw();
                    if (!TextUtils.isEmpty(fw) && fw.toString().toLowerCase().contains(str)) {
                        list.add(createAccessibilityNodeInfo(1));
                    }
                    return;
                case 2:
                    CharSequence text = NumberPicker.this.VT.getText();
                    if (TextUtils.isEmpty(text) || !text.toString().toLowerCase().contains(str)) {
                        text = NumberPicker.this.VT.getText();
                        if (!TextUtils.isEmpty(text) && text.toString().toLowerCase().contains(str)) {
                            list.add(createAccessibilityNodeInfo(2));
                            return;
                        }
                    }
                    list.add(createAccessibilityNodeInfo(2));
                    return;
                    break;
                case 3:
                    fw = fv();
                    if (!TextUtils.isEmpty(fw) && fw.toString().toLowerCase().contains(str)) {
                        list.add(createAccessibilityNodeInfo(3));
                    }
                    return;
            }
        }

        private AccessibilityNodeInfo e(int i, int i2, int i3, int i4) {
            AccessibilityNodeInfo createAccessibilityNodeInfo = NumberPicker.this.VT.createAccessibilityNodeInfo();
            createAccessibilityNodeInfo.setSource(NumberPicker.this, 2);
            if (this.Xl != 2) {
                createAccessibilityNodeInfo.addAction(64);
            }
            if (this.Xl == 2) {
                createAccessibilityNodeInfo.addAction(128);
            }
            Rect rect = this.Mz;
            rect.set(i, i2, i3, i4);
            createAccessibilityNodeInfo.setVisibleToUser(NumberPicker.this.getVisibility() == 0);
            createAccessibilityNodeInfo.setBoundsInParent(rect);
            int[] iArr = this.Xk;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            createAccessibilityNodeInfo.setBoundsInScreen(rect);
            return createAccessibilityNodeInfo;
        }

        private AccessibilityNodeInfo a(int i, String str, int i2, int i3, int i4, int i5) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
            obtain.setClassName(Button.class.getName());
            obtain.setPackageName(NumberPicker.this.getContext().getPackageName());
            obtain.setSource(NumberPicker.this, i);
            obtain.setParent(NumberPicker.this);
            obtain.setText(str);
            obtain.setClickable(true);
            obtain.setLongClickable(true);
            obtain.setEnabled(NumberPicker.this.isEnabled());
            Rect rect = this.Mz;
            rect.set(i2, i3, i4, i5);
            obtain.setVisibleToUser(NumberPicker.this.getVisibility() == 0);
            obtain.setBoundsInParent(rect);
            int[] iArr = this.Xk;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            obtain.setBoundsInScreen(rect);
            if (this.Xl != i) {
                obtain.addAction(64);
            }
            if (this.Xl == i) {
                obtain.addAction(128);
            }
            if (NumberPicker.this.isEnabled()) {
                obtain.addAction(16);
            }
            return obtain;
        }

        private AccessibilityNodeInfo f(int i, int i2, int i3, int i4) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
            obtain.setClassName(NumberPicker.class.getName());
            obtain.setPackageName(NumberPicker.this.getContext().getPackageName());
            obtain.setSource(NumberPicker.this);
            if (ft()) {
                obtain.addChild(NumberPicker.this, 3);
            }
            obtain.addChild(NumberPicker.this, 2);
            if (fu()) {
                obtain.addChild(NumberPicker.this, 1);
            }
            obtain.setParent((View) NumberPicker.this.getParentForAccessibility());
            obtain.setEnabled(NumberPicker.this.isEnabled());
            obtain.setScrollable(true);
            Rect rect = this.Mz;
            rect.set(i, i2, i3, i4);
            obtain.setBoundsInParent(rect);
            obtain.setVisibleToUser(NumberPicker.this.getVisibility() == 0);
            int[] iArr = this.Xk;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            obtain.setBoundsInScreen(rect);
            if (this.Xl != -1) {
                obtain.addAction(64);
            }
            if (this.Xl == -1) {
                obtain.addAction(128);
            }
            if (NumberPicker.this.isEnabled()) {
                if (NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() < NumberPicker.this.getMaxValue()) {
                    obtain.addAction(4096);
                }
                if (NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() > NumberPicker.this.getMinValue()) {
                    obtain.addAction(8192);
                }
            }
            return obtain;
        }

        private boolean ft() {
            return NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() > NumberPicker.this.getMinValue();
        }

        private boolean fu() {
            return NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() < NumberPicker.this.getMaxValue();
        }

        private String fv() {
            int j = NumberPicker.this.Wf - 1;
            if (NumberPicker.this.WB) {
                j = NumberPicker.this.av(j);
            }
            if (j < NumberPicker.this.Wd) {
                return null;
            }
            String d;
            if (NumberPicker.this.Wc == null) {
                d = NumberPicker.this.ax(j);
            } else {
                d = NumberPicker.this.Wc[j - NumberPicker.this.Wd];
            }
            return d;
        }

        private String fw() {
            int j = NumberPicker.this.Wf + 1;
            if (NumberPicker.this.WB) {
                j = NumberPicker.this.av(j);
            }
            if (j > NumberPicker.this.We) {
                return null;
            }
            String d;
            if (NumberPicker.this.Wc == null) {
                d = NumberPicker.this.ax(j);
            } else {
                d = NumberPicker.this.Wc[j - NumberPicker.this.Wd];
            }
            return d;
        }
    }

    class BeginSoftInputOnLongPressCommand implements Runnable {
        BeginSoftInputOnLongPressCommand() {
        }

        public void run() {
            NumberPicker.this.WE = true;
        }
    }

    class ChangeCurrentByOneFromLongPressCommand implements Runnable {
        private boolean Xm;

        ChangeCurrentByOneFromLongPressCommand() {
        }

        private void y(boolean z) {
            this.Xm = z;
        }

        public void run() {
            NumberPicker.this.x(this.Xm);
            NumberPicker.this.postDelayed(this, NumberPicker.this.Wj);
        }
    }

    public static class CustomEditText extends EditText {
        public CustomEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void onEditorAction(int i) {
            super.onEditorAction(i);
            if (i == 6) {
                clearFocus();
            }
        }
    }

    public interface Formatter {
        String format(int i);
    }

    class InputTextFilter extends NumberKeyListener {
        InputTextFilter() {
        }

        public int getInputType() {
            return 1;
        }

        protected char[] getAcceptedChars() {
            return NumberPicker.Xf;
        }

        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            int i5 = 0;
            String stringBuilder;
            if (NumberPicker.this.Wc == null) {
                CharSequence filter = super.filter(charSequence, i, i2, spanned, i3, i4);
                if (filter == null) {
                    filter = charSequence.subSequence(i, i2);
                }
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(String.valueOf(spanned.subSequence(0, i3)));
                stringBuilder2.append(filter);
                stringBuilder2.append(spanned.subSequence(i4, spanned.length()));
                stringBuilder = stringBuilder2.toString();
                if ("".equals(stringBuilder)) {
                    return stringBuilder;
                }
                if (NumberPicker.this.N(stringBuilder) > NumberPicker.this.We || stringBuilder.length() > String.valueOf(NumberPicker.this.We).length()) {
                    return "";
                }
                return filter;
            }
            charSequence = String.valueOf(charSequence.subSequence(i, i2));
            if (TextUtils.isEmpty(charSequence)) {
                return "";
            }
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(String.valueOf(spanned.subSequence(0, i3)));
            stringBuilder3.append(charSequence);
            stringBuilder3.append(spanned.subSequence(i4, spanned.length()));
            stringBuilder = stringBuilder3.toString();
            String toLowerCase = String.valueOf(stringBuilder).toLowerCase();
            String[] b = NumberPicker.this.Wc;
            int length = b.length;
            while (i5 < length) {
                String str = b[i5];
                if (str.toLowerCase().startsWith(toLowerCase)) {
                    NumberPicker.this.n(stringBuilder.length(), str.length());
                    return str.subSequence(i3, str.length());
                }
                i5++;
            }
            return "";
        }
    }

    static class NumberFormatter implements Formatter {
        private final int Xn;

        public NumberFormatter() {
            this.Xn = -1;
        }

        public NumberFormatter(int i) {
            this.Xn = i;
        }

        public String format(int i) {
            return SimpleNumberFormatter.format(this.Xn, i);
        }
    }

    public interface OnScrollListener {
        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        void onScrollStateChange(NumberPicker numberPicker, int i);
    }

    class PressedStateHelper implements Runnable {
        public static final int Xo = 1;
        public static final int Xp = 2;
        private final int Xq = 1;
        private final int Xr = 2;
        private int Xs;
        private int Xt;

        PressedStateHelper() {
        }

        public void cancel() {
            this.Xt = 0;
            this.Xs = 0;
            NumberPicker.this.removeCallbacks(this);
            if (NumberPicker.this.WK) {
                NumberPicker.this.WK = false;
                NumberPicker.this.invalidate(0, NumberPicker.this.WI, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
            }
            if (NumberPicker.this.WL) {
                NumberPicker.this.WL = false;
                NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.WH);
            }
        }

        public void aA(int i) {
            cancel();
            this.Xt = 1;
            this.Xs = i;
            NumberPicker.this.postDelayed(this, (long) ViewConfiguration.getTapTimeout());
        }

        public void aB(int i) {
            cancel();
            this.Xt = 2;
            this.Xs = i;
            NumberPicker.this.post(this);
        }

        public void run() {
            switch (this.Xt) {
                case 1:
                    switch (this.Xs) {
                        case 1:
                            NumberPicker.this.WK = true;
                            NumberPicker.this.invalidate(0, NumberPicker.this.WI, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                            return;
                        case 2:
                            NumberPicker.this.WL = true;
                            NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.WH);
                            return;
                        default:
                            return;
                    }
                case 2:
                    switch (this.Xs) {
                        case 1:
                            if (!NumberPicker.this.WK) {
                                NumberPicker.this.postDelayed(this, (long) ViewConfiguration.getPressedStateDuration());
                            }
                            NumberPicker.a(NumberPicker.this, 1);
                            NumberPicker.this.invalidate(0, NumberPicker.this.WI, NumberPicker.this.getRight(), NumberPicker.this.getBottom());
                            return;
                        case 2:
                            if (!NumberPicker.this.WL) {
                                NumberPicker.this.postDelayed(this, (long) ViewConfiguration.getPressedStateDuration());
                            }
                            NumberPicker.b(NumberPicker.this, 1);
                            NumberPicker.this.invalidate(0, 0, NumberPicker.this.getRight(), NumberPicker.this.WH);
                            return;
                        default:
                            return;
                    }
                default:
                    return;
            }
        }
    }

    class SetSelectionCommand implements Runnable {
        private int Xu;
        private int Xv;

        SetSelectionCommand() {
        }

        public void run() {
            if (this.Xv < NumberPicker.this.VT.length()) {
                NumberPicker.this.VT.setSelection(this.Xu, this.Xv);
            }
        }
    }

    private static class SoundPlayHandler extends Handler {
        private static final SoundPlayerContainer Xw = new SoundPlayerContainer();
        private static final int Xx = 0;
        private static final int Xy = 1;
        private static final int Xz = 2;

        private static class SoundPlayerContainer {
            private static final long XA = 50;
            private Set<Integer> XB;
            private SoundPool XC;
            private int XD;
            private long XE;

            private SoundPlayerContainer() {
                this.XB = new ArraySet();
            }

            /* synthetic */ SoundPlayerContainer(AnonymousClass1 anonymousClass1) {
                this();
            }

            void init(int i) {
                if (this.XC == null) {
                    this.XC = new SoundPool(1, 1, 0);
                    this.XD = this.XC.load(AppConstants.getCurrentApplication(), R.raw.numberpicker_value_change, 1);
                }
                this.XB.add(Integer.valueOf(i));
            }

            void play() {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.XC != null && currentTimeMillis - this.XE > XA) {
                    this.XC.play(this.XD, 1.0f, 1.0f, 0, 0, 1.0f);
                    this.XE = currentTimeMillis;
                }
            }

            void release(int i) {
                if (this.XB.remove(Integer.valueOf(i)) && this.XB.isEmpty() && this.XC != null) {
                    this.XC.release();
                    this.XC = null;
                }
            }
        }

        SoundPlayHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    Xw.init(message.arg1);
                    return;
                case 1:
                    Xw.play();
                    return;
                case 2:
                    Xw.release(message.arg1);
                    return;
                default:
                    return;
            }
        }

        void init(int i) {
            sendMessage(obtainMessage(0, i, 0));
        }

        void play() {
            sendMessage(obtainMessage(1));
        }

        void stop() {
            removeMessages(1);
        }

        void release(int i) {
            sendMessage(obtainMessage(2, i, 0));
        }
    }

    public NumberPicker(Context context) {
        this(context, null);
    }

    public NumberPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.numberPickerStyle);
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mr = VO.incrementAndGet();
        this.VP = 1;
        this.VQ = 2;
        this.VZ = 400;
        this.Wj = Vy;
        this.Wk = new SparseArray();
        this.Wl = new int[5];
        this.Wo = Integer.MIN_VALUE;
        this.NW = 0;
        this.WO = -1;
        this.WQ = 30;
        this.WT = 25;
        this.WU = 14;
        this.WV = 10;
        this.WW = -303101;
        this.WX = 2130706432;
        this.Xa = -303101;
        this.Xd = 1.0f;
        float f = getResources().getDisplayMetrics().density;
        if (f != 1.0f) {
            this.WU = (int) (((float) this.WU) * f);
            this.WT = (int) (((float) this.WT) * f);
            this.WV = (int) (((float) this.WV) * f);
            this.VP = (int) (((float) this.VP) * f);
            this.VQ = (int) (((float) this.VQ) * f);
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.NumberPicker, i, 0);
        this.Xc = obtainStyledAttributes.getText(R.styleable.NumberPicker_android_text);
        this.WT = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_textSizeHighlight, this.WT);
        this.WU = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_textSizeHint, this.WU);
        this.WV = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_android_labelTextSize, this.WV);
        this.WW = obtainStyledAttributes.getColor(R.styleable.NumberPicker_android_textColorHighlight, this.WW);
        this.WX = obtainStyledAttributes.getColor(R.styleable.NumberPicker_android_textColorHint, this.WX);
        this.Xa = obtainStyledAttributes.getColor(R.styleable.NumberPicker_labelTextColor, this.Xa);
        this.WQ = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NumberPicker_labelPadding, this.WQ);
        obtainStyledAttributes.recycle();
        fd();
        int i2 = R.layout.numberpicker_layout;
        this.WC = true;
        this.WD = (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
        this.VV = (int) (WZ * f);
        this.VW = -1;
        this.VX = (int) (202.0f * f);
        if (this.VW == -1 || this.VX == -1 || this.VW <= this.VX) {
            this.VY = -1;
            this.VZ = -1;
            if (this.VY == -1 || this.VZ == -1 || this.VY <= this.VZ) {
                this.Wa = this.VZ == -1;
                this.WN = new PressedStateHelper();
                setWillNotDraw(this.WC ^ true);
                ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(i2, this, true);
                this.VT = (EditText) findViewById(R.id.numberpicker_input);
                this.VT.setOnFocusChangeListener(new OnFocusChangeListener() {
                    public void onFocusChange(View view, boolean z) {
                        if (z) {
                            NumberPicker.this.VT.selectAll();
                            return;
                        }
                        NumberPicker.this.VT.setSelection(0, 0);
                        NumberPicker.this.q(view);
                    }
                });
                this.VT.setFilters(new InputFilter[]{new InputTextFilter()});
                this.VT.setRawInputType(2);
                this.VT.setImeOptions(6);
                this.VT.setVisibility(4);
                this.VT.setGravity(8388611);
                this.VT.setScaleX(0.0f);
                this.VT.setSaveEnabled(false);
                this.VT.setPadding(this.WQ, this.VT.getPaddingTop(), this.WQ, this.VT.getPaddingRight());
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                this.fO = viewConfiguration.getScaledTouchSlop();
                this.Wz = viewConfiguration.getScaledMinimumFlingVelocity();
                this.WA = viewConfiguration.getScaledMaximumFlingVelocity() / 8;
                this.uK = (int) this.VT.getTextSize();
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setTextAlign(Align.CENTER);
                paint.setTextSize((float) this.WT);
                paint.setTypeface(this.VT.getTypeface());
                paint.setColor(this.VT.getTextColors().getColorForState(ENABLED_STATE_SET, -1));
                this.Wm = paint;
                this.WY = paint.ascent();
                this.WP = new Paint();
                this.WP.setAntiAlias(true);
                this.WP.setFakeBoldText(true);
                this.WP.setColor(this.Xa);
                this.WP.setTextSize((float) this.WV);
                this.Wq = new Scroller(getContext(), null, true);
                this.Wr = new Scroller(getContext(), new DecelerateInterpolator(2.5f));
                fl();
                if (getImportantForAccessibility() == 0) {
                    setImportantForAccessibility(1);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("minWidth > maxWidth");
        }
        throw new IllegalArgumentException("minHeight > maxHeight");
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        fh();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.WC) {
            i = getMeasuredWidth();
            i2 = getMeasuredHeight();
            i3 = this.VT.getMeasuredWidth();
            i4 = this.VT.getMeasuredHeight();
            i = (i - i3) / 2;
            i2 = (i2 - i4) / 2;
            this.VT.layout(i, i2, i3 + i, i4 + i2);
            if (z) {
                fj();
                fk();
                this.WH = ((getHeight() - this.VV) / 2) - this.WD;
                this.WI = (this.WH + (2 * this.WD)) + this.VV;
            }
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onMeasure(int i, int i2) {
        if (this.WC) {
            super.onMeasure(makeMeasureSpec(i, this.VZ), makeMeasureSpec(i2, this.VX));
            setMeasuredDimension(i(this.VY, getMeasuredWidth(), i), i(this.VW, getMeasuredHeight(), i2));
            return;
        }
        super.onMeasure(i, i2);
    }

    private void fd() {
        if (this.VS == null) {
            this.VS = new SoundPlayHandler(WorkerThreads.aquireWorker(Vx));
            this.VS.init(this.mr);
        }
    }

    private void fe() {
        if (this.VS != null) {
            this.VS.release(this.mr);
            this.VS = null;
        }
    }

    private void ff() {
        if (this.VS != null) {
            this.VS.play();
        }
    }

    private void fg() {
        if (this.VS != null) {
            this.VS.stop();
        }
    }

    private boolean a(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i = this.Wo - ((this.Wp + finalY) % this.Wn);
        if (i == 0) {
            return false;
        }
        if (Math.abs(i) > this.Wn / 2) {
            if (i > 0) {
                i -= this.Wn;
            } else {
                i += this.Wn;
            }
        }
        scrollBy(0, finalY + i);
        return true;
    }

    /* JADX WARNING: Missing block: B:31:0x00ab, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.WC || !isEnabled() || motionEvent.getActionMasked() != 0) {
            return false;
        }
        fp();
        this.VT.setVisibility(4);
        float y = motionEvent.getY();
        this.Ww = y;
        this.Wy = y;
        this.Wx = motionEvent.getEventTime();
        this.WE = false;
        this.WG = false;
        if (this.Ww < ((float) this.WH)) {
            if (this.NW == 0) {
                this.WN.aA(2);
            }
        } else if (this.Ww > ((float) this.WI) && this.NW == 0) {
            this.WN.aA(1);
        }
        if (!this.Wq.isFinished()) {
            this.Wq.forceFinished(true);
            this.Wr.forceFinished(true);
            au(0);
        } else if (!this.Wr.isFinished()) {
            this.Wq.forceFinished(true);
            this.Wr.forceFinished(true);
        } else if (this.Ww < ((float) this.WH)) {
            a(false, (long) ViewConfiguration.getLongPressTimeout());
        } else if (this.Ww > ((float) this.WI)) {
            a(true, (long) ViewConfiguration.getLongPressTimeout());
        } else {
            this.WG = true;
            fn();
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !this.WC) {
            return false;
        }
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        }
        this.rc.addMovement(motionEvent);
        switch (motionEvent.getActionMasked()) {
            case 1:
                fo();
                fm();
                this.WN.cancel();
                VelocityTracker velocityTracker = this.rc;
                velocityTracker.computeCurrentVelocity(1000, (float) this.WA);
                int yVelocity = (int) velocityTracker.getYVelocity();
                if (Math.abs(yVelocity) >= Math.abs(this.WA)) {
                    yVelocity = (int) (((float) yVelocity) * this.Xd);
                }
                if (Math.abs(yVelocity) > this.Wz) {
                    fling(yVelocity);
                    au(2);
                } else {
                    yVelocity = (int) motionEvent.getY();
                    long eventTime = motionEvent.getEventTime() - this.Wx;
                    if (((int) Math.abs(((float) yVelocity) - this.Ww)) > this.fO || eventTime >= ((long) ViewConfiguration.getTapTimeout())) {
                        fq();
                    } else if (this.WG) {
                        this.WG = false;
                    } else {
                        yVelocity = (yVelocity / this.Wn) - 2;
                        if (yVelocity > 0) {
                            x(true);
                            this.WN.aB(1);
                        } else if (yVelocity < 0) {
                            x(false);
                            this.WN.aB(2);
                        }
                    }
                    au(0);
                }
                this.rc.recycle();
                this.rc = null;
                break;
            case 2:
                if (!this.WE) {
                    float y = motionEvent.getY();
                    if (this.NW == 1) {
                        scrollBy(0, (int) (y - this.Wy));
                        invalidate();
                    } else if (((int) Math.abs(y - this.Ww)) > this.fO) {
                        fp();
                        au(1);
                    }
                    this.Wy = y;
                    break;
                }
                break;
        }
        return true;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            fp();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 23 && keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                    if (this.WC) {
                        switch (keyEvent.getAction()) {
                            case 0:
                                if (this.WB || keyCode == 20 ? getValue() >= getMaxValue() : getValue() <= getMinValue()) {
                                    requestFocus();
                                    this.WO = keyCode;
                                    fp();
                                    if (this.Wq.isFinished()) {
                                        x(keyCode == 20);
                                    }
                                    return true;
                                }
                            case 1:
                                if (this.WO == keyCode) {
                                    this.WO = -1;
                                    return true;
                                }
                                break;
                        }
                    }
                    break;
            }
        }
        fp();
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            fp();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.WC) {
            return super.dispatchHoverEvent(motionEvent);
        }
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            int y = (int) motionEvent.getY();
            if (y < this.WH) {
                y = 3;
            } else if (y > this.WI) {
                y = 1;
            } else {
                y = 2;
            }
            int actionMasked = motionEvent.getActionMasked();
            AccessibilityNodeProviderImpl accessibilityNodeProviderImpl = (AccessibilityNodeProviderImpl) getAccessibilityNodeProvider();
            if (actionMasked != 7) {
                switch (actionMasked) {
                    case 9:
                        accessibilityNodeProviderImpl.o(y, 128);
                        this.WJ = y;
                        accessibilityNodeProviderImpl.performAction(y, 64, null);
                        break;
                    case 10:
                        accessibilityNodeProviderImpl.o(y, 256);
                        this.WJ = -1;
                        break;
                }
            } else if (!(this.WJ == y || this.WJ == -1)) {
                accessibilityNodeProviderImpl.o(this.WJ, 256);
                accessibilityNodeProviderImpl.o(y, 128);
                this.WJ = y;
                accessibilityNodeProviderImpl.performAction(y, 64, null);
            }
        }
        return false;
    }

    public void computeScroll() {
        Scroller scroller = this.Wq;
        if (scroller.isFinished()) {
            scroller = this.Wr;
            if (scroller.isFinished()) {
                return;
            }
        }
        scroller.computeScrollOffset();
        int currY = scroller.getCurrY();
        if (this.Ws == 0) {
            this.Ws = scroller.getStartY();
        }
        scrollBy(0, currY - this.Ws);
        this.Ws = currY;
        if (scroller.isFinished()) {
            b(scroller);
        } else {
            invalidate();
        }
    }

    public void scrollBy(int i, int i2) {
        int[] iArr = this.Wl;
        if (!this.WB && i2 > 0 && iArr[2] <= this.Wd) {
            this.Wp = this.Wo;
        } else if (this.WB || i2 >= 0 || iArr[2] < this.We) {
            this.Wp += i2;
            while (this.Wp - this.Wo > this.Wb) {
                this.Wp -= this.Wn;
                d(iArr);
                i(iArr[2], true);
                if (!this.WB && iArr[2] <= this.Wd) {
                    this.Wp = this.Wo;
                }
            }
            while (this.Wp - this.Wo < (-this.Wb)) {
                this.Wp += this.Wn;
                c(iArr);
                i(iArr[2], true);
                if (!this.WB && iArr[2] >= this.We) {
                    this.Wp = this.Wo;
                }
            }
        } else {
            this.Wp = this.Wo;
        }
    }

    public void setLabel(String str) {
        if ((this.Xc == null && str != null) || (this.Xc != null && !this.Xc.equals(str))) {
            this.Xc = str;
            invalidate();
        }
    }

    public void setOnValueChangedListener(OnValueChangeListener onValueChangeListener) {
        this.Wg = onValueChangeListener;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.Wh = onScrollListener;
    }

    public void setFormatter(Formatter formatter) {
        if (formatter != this.Wi) {
            this.Wi = formatter;
            fi();
            fl();
        }
    }

    public void setValue(int i) {
        i(i, false);
    }

    private void fh() {
        if (this.Wa) {
            float f = -1.0f;
            this.Wm.setTextSize((float) this.WT);
            int i = 0;
            if (this.Wc == null) {
                f = 0.0f;
                while (i < 9) {
                    float measureText = this.Wm.measureText(String.valueOf(i));
                    if (measureText > f) {
                        f = measureText;
                    }
                    i++;
                }
                f = (float) ((int) (((float) ax(this.We).length()) * f));
            } else {
                int length = this.Wc.length;
                while (i < length) {
                    float measureText2 = this.Wm.measureText(this.Wc[i]);
                    if (measureText2 > f) {
                        f = measureText2;
                    }
                    i++;
                }
            }
            this.WR = f;
            f = ((f + ((float) (this.VT.getPaddingLeft() + this.VT.getPaddingRight()))) + ((float) getPaddingLeft())) + ((float) getPaddingRight());
            if (((float) this.VZ) != f) {
                if (f > ((float) this.VY)) {
                    this.VZ = (int) f;
                } else {
                    this.VZ = this.VY;
                }
            }
        }
    }

    public boolean getWrapSelectorWheel() {
        return this.WB;
    }

    public void setWrapSelectorWheel(boolean z) {
        Object obj = this.We - this.Wd >= this.Wl.length ? 1 : null;
        if (!((z && obj == null) || z == this.WB)) {
            this.WB = z;
        }
        fr();
    }

    public void setOnLongPressUpdateInterval(long j) {
        this.Wj = j;
    }

    public int getValue() {
        return this.Wf;
    }

    public int getMinValue() {
        return this.Wd;
    }

    public void setMinValue(int i) {
        if (this.Wd != i) {
            if (i >= 0) {
                this.Wd = i;
                if (this.Wd > this.Wf) {
                    this.Wf = this.Wd;
                }
                setWrapSelectorWheel(this.We - this.Wd > this.Wl.length);
                fi();
                fl();
                fh();
                invalidate();
                return;
            }
            throw new IllegalArgumentException("minValue must be >= 0");
        }
    }

    public int getMaxValue() {
        return this.We;
    }

    public void setMaxValue(int i) {
        if (this.We != i) {
            if (i >= 0) {
                this.We = i;
                if (this.We < this.Wf) {
                    this.Wf = this.We;
                }
                setWrapSelectorWheel(this.We - this.Wd > this.Wl.length);
                fi();
                fl();
                fh();
                invalidate();
                return;
            }
            throw new IllegalArgumentException("maxValue must be >= 0");
        }
    }

    public String[] getDisplayedValues() {
        return this.Wc;
    }

    public void setDisplayedValues(String[] strArr) {
        if (this.Wc != strArr) {
            this.Wc = strArr;
            if (this.Wc != null) {
                this.VT.setRawInputType(524289);
            } else {
                this.VT.setRawInputType(2);
            }
            fl();
            fi();
            fh();
        }
    }

    public void setMaxFlingSpeedFactor(float f) {
        if (f >= 0.0f) {
            this.Xd = f;
        }
    }

    protected float getTopFadingEdgeStrength() {
        return VH;
    }

    protected float getBottomFadingEdgeStrength() {
        return VH;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        fd();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        fe();
        fp();
        WorkerThreads.releaseWorker(Vx);
    }

    protected void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        if (this.WC) {
            int paddingLeft = getPaddingLeft();
            float right = (float) ((((getRight() - getLeft()) + paddingLeft) - getPaddingRight()) / 2);
            float f = (float) this.Wp;
            float f2 = (float) (this.Wo + (this.Wn * 2));
            SparseArray sparseArray = this.Wk;
            int[] iArr = this.Wl;
            boolean z = false;
            float f3 = f;
            int i = 0;
            while (i < iArr.length) {
                String str = (String) sparseArray.get(iArr[i]);
                float abs = Math.abs(f2 - f3) / ((float) this.Wn);
                float a = a(abs, this.WT, this.WU);
                this.Wm.setTextSize(a);
                this.Wm.setColor(a(abs, this.WX, z));
                canvas2.drawText(str, right, ((a - ((float) this.WU)) / 2.0f) + f3, this.Wm);
                if (abs < 1.0f) {
                    this.Wm.setColor(a(abs, this.WW, true));
                    canvas2.drawText(str, right, ((a - ((float) this.WU)) / 2.0f) + f3, this.Wm);
                }
                f3 += (float) this.Wn;
                i++;
                z = false;
            }
            if (!(TextUtils.isEmpty(this.Xc) || DeviceHelper.IS_INTERNATIONAL_BUILD)) {
                if (ViewUtils.isLayoutRtl(this)) {
                    right = ((right - (this.WR / 2.0f)) - ((float) this.VP)) - this.WP.measureText(this.Xc.toString());
                } else {
                    right = (right + (this.WR / 2.0f)) + ((float) this.VP);
                }
                canvas2.drawText(this.Xc.toString(), right, ((f2 - ((float) (this.WT / 2))) + ((float) (this.WV / 2))) + ((float) this.VQ), this.WP);
            }
            return;
        }
        super.onDraw(canvas);
    }

    private int a(float f, int i, boolean z) {
        if (f >= 1.0f) {
            return i;
        }
        int alpha;
        if (z) {
            alpha = (int) (((-f) * ((float) Color.alpha(i))) + ((float) Color.alpha(i)));
        } else {
            alpha = (int) (f * ((float) Color.alpha(i)));
        }
        return (alpha << 24) | (i & 16777215);
    }

    private float a(float f, int i, int i2) {
        if (f >= 1.0f) {
            return (float) i2;
        }
        return (f * ((float) (i2 - i))) + ((float) i);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(NumberPicker.class.getName());
        accessibilityEvent.setScrollable(true);
        accessibilityEvent.setScrollY((this.Wd + this.Wf) * this.Wn);
        accessibilityEvent.setMaxScrollY((this.We - this.Wd) * this.Wn);
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        if (!this.WC) {
            return super.getAccessibilityNodeProvider();
        }
        if (this.WM == null) {
            this.WM = new AccessibilityNodeProviderImpl();
        }
        return this.WM;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.VT.getText().toString());
        stringBuilder.append(this.Xc == null ? "" : this.Xc);
        accessibilityEvent.getText().add(stringBuilder.toString());
    }

    private int makeMeasureSpec(int i, int i2) {
        if (i2 == -1) {
            return i;
        }
        int size = MeasureSpec.getSize(i);
        int mode = MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            return MeasureSpec.makeMeasureSpec(Math.min(size, i2), 1073741824);
        }
        if (mode == 0) {
            return MeasureSpec.makeMeasureSpec(i2, 1073741824);
        }
        if (mode == 1073741824) {
            return i;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Unknown measure mode: ");
        stringBuilder.append(mode);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    private int i(int i, int i2, int i3) {
        if (i != -1) {
            return resolveSizeAndState(Math.max(i, i2), i3, 0);
        }
        return i2;
    }

    private void fi() {
        this.Wk.clear();
        int[] iArr = this.Wl;
        int value = getValue();
        for (int i = 0; i < this.Wl.length; i++) {
            int i2 = (i - 2) + value;
            if (this.WB) {
                i2 = av(i2);
            }
            iArr[i] = i2;
            aw(iArr[i]);
        }
    }

    private void i(int i, boolean z) {
        if (this.WB) {
            i = av(i);
        } else {
            i = Math.min(Math.max(i, this.Wd), this.We);
        }
        if (this.Wf != i) {
            int i2 = this.Wf;
            this.Wf = i;
            fl();
            if (z) {
                ay(i2);
            }
            fi();
            invalidate();
        }
    }

    private void x(boolean z) {
        if (this.WC) {
            this.VT.setVisibility(4);
            if (!a(this.Wq)) {
                a(this.Wr);
            }
            this.Ws = 0;
            if (z) {
                this.Wq.startScroll(0, 0, 0, -this.Wn, 300);
            } else {
                this.Wq.startScroll(0, 0, 0, this.Wn, 300);
            }
            invalidate();
        } else if (z) {
            i(this.Wf + 1, true);
        } else {
            i(this.Wf - 1, true);
        }
    }

    private void fj() {
        fi();
        int[] iArr = this.Wl;
        float f = 0.0f;
        float bottom = (float) ((getBottom() - getTop()) - (iArr.length * this.uK));
        if (bottom >= 0.0f) {
            f = bottom;
        }
        this.Wb = (int) ((f / ((float) iArr.length)) + 0.5f);
        this.Wn = this.uK + this.Wb;
        this.Wo = (this.VT.getBaseline() + this.VT.getTop()) - (this.Wn * 2);
        this.Wp = this.Wo;
        fl();
    }

    private void fk() {
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength(((getBottom() - getTop()) - this.uK) / 2);
    }

    private void b(Scroller scroller) {
        if (scroller == this.Wq) {
            if (!fq()) {
                fl();
            }
            au(0);
        } else if (this.NW != 1) {
            fl();
        }
    }

    private void au(int i) {
        if (this.NW != i) {
            if (i == 0) {
                if (!(this.Xe == null || this.Xe.equals(this.VT.getText().toString()))) {
                    this.VT.setText(this.Xe);
                }
                this.Xe = null;
                fg();
            }
            this.NW = i;
            if (this.Wh != null) {
                this.Wh.onScrollStateChange(this, i);
            }
        }
    }

    private void fling(int i) {
        this.Ws = 0;
        if (i > 0) {
            this.Wq.fling(0, 0, 0, i, 0, 0, 0, Integer.MAX_VALUE);
        } else {
            this.Wq.fling(0, Integer.MAX_VALUE, 0, i, 0, 0, 0, Integer.MAX_VALUE);
        }
        invalidate();
    }

    private int av(int i) {
        if (i > this.We) {
            return (this.Wd + ((i - this.We) % (this.We - this.Wd))) - 1;
        }
        if (i < this.Wd) {
            return (this.We - ((this.Wd - i) % (this.We - this.Wd))) + 1;
        }
        return i;
    }

    private void c(int[] iArr) {
        int i = 0;
        while (i < iArr.length - 1) {
            int i2 = i + 1;
            iArr[i] = iArr[i2];
            i = i2;
        }
        i = iArr[iArr.length - 2] + 1;
        if (this.WB && i > this.We) {
            i = this.Wd;
        }
        iArr[iArr.length - 1] = i;
        aw(i);
    }

    private void d(int[] iArr) {
        int length;
        for (length = iArr.length - 1; length > 0; length--) {
            iArr[length] = iArr[length - 1];
        }
        length = iArr[1] - 1;
        if (this.WB && length < this.Wd) {
            length = this.We;
        }
        iArr[0] = length;
        aw(length);
    }

    private void aw(int i) {
        SparseArray sparseArray = this.Wk;
        if (((String) sparseArray.get(i)) == null) {
            Object obj;
            if (i < this.Wd || i > this.We) {
                obj = "";
            } else if (this.Wc != null) {
                obj = this.Wc[i - this.Wd];
            } else {
                obj = ax(i);
            }
            sparseArray.put(i, obj);
        }
    }

    private String ax(int i) {
        return this.Wi != null ? this.Wi.format(i) : SimpleNumberFormatter.format(i);
    }

    private void q(View view) {
        Object valueOf = String.valueOf(((TextView) view).getText());
        if (TextUtils.isEmpty(valueOf)) {
            fl();
        } else {
            i(N(valueOf.toString()), true);
        }
    }

    private boolean fl() {
        CharSequence ax;
        if (this.Wc == null) {
            ax = ax(this.Wf);
        } else {
            ax = this.Wc[this.Wf - this.Wd];
        }
        if (TextUtils.isEmpty(ax)) {
            return false;
        }
        if (this.NW != 0) {
            this.Xe = ax;
        } else if (!ax.equals(this.VT.getText().toString())) {
            this.VT.setText(ax);
        }
        return true;
    }

    private void ay(int i) {
        sendAccessibilityEvent(4);
        ff();
        if (this.Wg != null) {
            this.Wg.onValueChange(this, i, this.Wf);
        }
    }

    private void a(boolean z, long j) {
        if (this.Wu == null) {
            this.Wu = new ChangeCurrentByOneFromLongPressCommand();
        } else {
            removeCallbacks(this.Wu);
        }
        this.Wu.y(z);
        postDelayed(this.Wu, j);
    }

    private void fm() {
        if (this.Wu != null) {
            removeCallbacks(this.Wu);
        }
    }

    private void fn() {
        if (this.Wv == null) {
            this.Wv = new BeginSoftInputOnLongPressCommand();
        } else {
            removeCallbacks(this.Wv);
        }
        postDelayed(this.Wv, (long) ViewConfiguration.getLongPressTimeout());
    }

    private void fo() {
        if (this.Wv != null) {
            removeCallbacks(this.Wv);
        }
    }

    private void fp() {
        if (this.Wu != null) {
            removeCallbacks(this.Wu);
        }
        if (this.Wt != null) {
            removeCallbacks(this.Wt);
        }
        if (this.Wv != null) {
            removeCallbacks(this.Wv);
        }
        this.WN.cancel();
    }

    private int N(String str) {
        if (this.Wc == null) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                return this.Wd;
            }
        }
        for (int i = 0; i < this.Wc.length; i++) {
            str = str.toLowerCase();
            if (this.Wc[i].toLowerCase().startsWith(str)) {
                return this.Wd + i;
            }
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            return this.Wd;
        }
    }

    private void n(int i, int i2) {
        if (this.Wt == null) {
            this.Wt = new SetSelectionCommand();
        } else {
            removeCallbacks(this.Wt);
        }
        this.Wt.Xu = i;
        this.Wt.Xv = i2;
        post(this.Wt);
    }

    private boolean fq() {
        int i = this.Wo - this.Wp;
        if (i == 0) {
            return false;
        }
        this.Ws = 0;
        if (Math.abs(i) > this.Wn / 2) {
            i += i > 0 ? -this.Wn : this.Wn;
        }
        this.Wr.startScroll(0, 0, 0, i, 800);
        invalidate();
        return true;
    }

    private void fr() {
        fi();
        invalidate();
    }
}
