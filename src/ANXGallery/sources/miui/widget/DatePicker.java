package miui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View.BaseSavedState;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import miui.date.Calendar;
import miui.date.CalendarFormatSymbols;
import miui.date.DateUtils;
import miui.util.AppConstants;
import miui.widget.NumberPicker.OnValueChangeListener;

public class DatePicker extends FrameLayout {
    private static final String DATE_FORMAT = "MM/dd/yyyy";
    private static final String LOG_TAG = DatePicker.class.getSimpleName();
    private static final int Qk = 1900;
    private static final int Ql = 2100;
    private static final boolean Qm = false;
    private static final boolean Qn = true;
    private static final boolean Qo = true;
    private static final String[] Qw = CalendarFormatSymbols.getDefault().getChineseDays();
    private static final String[] Qx = CalendarFormatSymbols.getDefault().getChineseMonths();
    private static final String[] Qy = new String[(Qx.length + 1)];
    private static final String Qz = CalendarFormatSymbols.getDefault().getChineseLeapMonths()[1];
    private final DateFormat QB;
    private int QC;
    private Calendar QD;
    private Calendar QE;
    private Calendar QF;
    private Calendar QG;
    private boolean QH;
    private boolean QI;
    private final LinearLayout Qp;
    private final NumberPicker Qq;
    private final NumberPicker Qr;
    private final NumberPicker Qs;
    private Locale Qt;
    private String[] Qu;
    private char[] Qv;
    private OnDateChangedListener wY;

    public interface OnDateChangedListener {
        void onDateChanged(DatePicker datePicker, int i, int i2, int i3, boolean z);
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: h */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: an */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private final int QK;
        private final int QL;
        private final int QM;
        private final boolean QN;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        /* synthetic */ SavedState(Parcelable parcelable, int i, int i2, int i3, boolean z, AnonymousClass1 anonymousClass1) {
            this(parcelable, i, i2, i3, z);
        }

        private SavedState(Parcelable parcelable, int i, int i2, int i3, boolean z) {
            super(parcelable);
            this.QK = i;
            this.QL = i2;
            this.QM = i3;
            this.QN = z;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.QK = parcel.readInt();
            this.QL = parcel.readInt();
            this.QM = parcel.readInt();
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.QN = z;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.QK);
            parcel.writeInt(this.QL);
            parcel.writeInt(this.QM);
            parcel.writeInt(this.QN);
        }
    }

    static {
        Resources resources = AppConstants.getCurrentApplication().getResources();
        for (int i = 0; i < Qx.length; i++) {
            StringBuilder stringBuilder = new StringBuilder();
            String[] strArr = Qx;
            stringBuilder.append(strArr[i]);
            stringBuilder.append(resources.getString(R.string.chinese_month));
            strArr[i] = stringBuilder.toString();
        }
    }

    public DatePicker(Context context) {
        this(context, null);
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i) {
        Object obj;
        Context context2 = context;
        super(context, attributeSet, i);
        this.QB = new SimpleDateFormat(DATE_FORMAT);
        this.QH = true;
        this.QI = false;
        this.QD = new Calendar();
        this.QE = new Calendar();
        this.QF = new Calendar();
        this.QG = new Calendar();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.DatePicker, i, 0);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_spinnersShown, true);
        int i2 = obtainStyledAttributes.getInt(R.styleable.DatePicker_startYear, 1900);
        int i3 = obtainStyledAttributes.getInt(R.styleable.DatePicker_endYear, Ql);
        Object string = obtainStyledAttributes.getString(R.styleable.DatePicker_minDate);
        String string2 = obtainStyledAttributes.getString(R.styleable.DatePicker_maxDate);
        int i4 = R.layout.date_picker;
        this.QI = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_lunarCalendar, false);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_showYear, true);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_showMonth, true);
        boolean z4 = obtainStyledAttributes.getBoolean(R.styleable.DatePicker_showDay, true);
        obtainStyledAttributes.recycle();
        b(Locale.getDefault());
        ((LayoutInflater) context2.getSystemService("layout_inflater")).inflate(i4, this, true);
        OnValueChangeListener anonymousClass1 = new OnValueChangeListener() {
            public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                DatePicker.this.QD.setTimeInMillis(DatePicker.this.QG.getTimeInMillis());
                if (numberPicker == DatePicker.this.Qq) {
                    DatePicker.this.QD.add(DatePicker.this.QI ? 10 : 9, i2 - i);
                } else if (numberPicker == DatePicker.this.Qr) {
                    DatePicker.this.QD.add(DatePicker.this.QI ? 6 : 5, i2 - i);
                } else if (numberPicker == DatePicker.this.Qs) {
                    DatePicker.this.QD.set(DatePicker.this.QI ? 2 : 1, i2);
                } else {
                    throw new IllegalArgumentException();
                }
                DatePicker.this.h(DatePicker.this.QD.get(1), DatePicker.this.QD.get(5), DatePicker.this.QD.get(9));
                if (numberPicker == DatePicker.this.Qs) {
                    DatePicker.this.er();
                }
                DatePicker.this.et();
                DatePicker.this.eu();
            }
        };
        this.Qp = (LinearLayout) findViewById(R.id.pickers);
        this.Qq = (NumberPicker) findViewById(R.id.day);
        this.Qq.setOnLongPressUpdateInterval(100);
        this.Qq.setOnValueChangedListener(anonymousClass1);
        if (!z4) {
            this.Qq.setVisibility(8);
        }
        this.Qr = (NumberPicker) findViewById(R.id.month);
        this.Qr.setMinValue(0);
        this.Qr.setMaxValue(this.QC - 1);
        this.Qr.setDisplayedValues(this.Qu);
        this.Qr.setOnLongPressUpdateInterval(200);
        this.Qr.setOnValueChangedListener(anonymousClass1);
        if (!z3) {
            this.Qr.setVisibility(8);
        }
        this.Qs = (NumberPicker) findViewById(R.id.year);
        this.Qs.setOnLongPressUpdateInterval(100);
        this.Qs.setOnValueChangedListener(anonymousClass1);
        if (!z2) {
            this.Qs.setVisibility(8);
        }
        eq();
        if (z) {
            setSpinnersShown(z);
        } else {
            setSpinnersShown(true);
        }
        this.QD.setTimeInMillis(0);
        if (TextUtils.isEmpty(string)) {
            obj = string2;
            this.QD.set(i2, 0, 1, 0, 0, 0, 0);
        } else if (a(string, this.QD)) {
            obj = string2;
        } else {
            obj = string2;
            this.QD.set(i2, 0, 1, 0, 0, 0, 0);
        }
        setMinDate(this.QD.getTimeInMillis());
        this.QD.setTimeInMillis(0);
        if (TextUtils.isEmpty(obj)) {
            this.QD.set(i3, 11, 31, 0, 0, 0, 0);
        } else if (!a(obj, this.QD)) {
            this.QD.set(i3, 11, 31, 0, 0, 0, 0);
        }
        setMaxDate(this.QD.getTimeInMillis());
        this.QG.setTimeInMillis(System.currentTimeMillis());
        init(this.QG.get(1), this.QG.get(5), this.QG.get(9), null);
        es();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void eq() {
        if (this.Qq != null && this.Qs != null) {
            this.Qq.setFormatter(NumberPicker.VR);
            this.Qs.setFormatter(new NumberFormatter());
        }
    }

    public long getMinDate() {
        return this.QE.getTimeInMillis();
    }

    public void setMinDate(long j) {
        this.QD.setTimeInMillis(j);
        if (this.QD.get(1) != this.QE.get(1) || this.QD.get(12) == this.QE.get(12)) {
            this.QE.setTimeInMillis(j);
            if (this.QG.before(this.QE)) {
                this.QG.setTimeInMillis(this.QE.getTimeInMillis());
            }
            et();
        }
    }

    public long getMaxDate() {
        return this.QF.getTimeInMillis();
    }

    public void setMaxDate(long j) {
        this.QD.setTimeInMillis(j);
        if (this.QD.get(1) != this.QF.get(1) || this.QD.get(12) == this.QF.get(12)) {
            this.QF.setTimeInMillis(j);
            if (this.QG.after(this.QF)) {
                this.QG.setTimeInMillis(this.QF.getTimeInMillis());
            }
            et();
        }
    }

    public void setEnabled(boolean z) {
        if (this.QH != z) {
            super.setEnabled(z);
            this.Qq.setEnabled(z);
            this.Qr.setEnabled(z);
            this.Qs.setEnabled(z);
            this.QH = z;
        }
    }

    public boolean isEnabled() {
        return this.QH;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.QG.getTimeInMillis(), DateUtils.FORMAT_SHOW_DATE));
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(DatePicker.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(DatePicker.class.getName());
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b(configuration.locale);
    }

    public boolean getSpinnersShown() {
        return this.Qp.isShown();
    }

    public void setSpinnersShown(boolean z) {
        this.Qp.setVisibility(z ? 0 : 8);
    }

    public void setLunarMode(boolean z) {
        if (z != this.QI) {
            this.QI = z;
            er();
            et();
        }
    }

    public void showYearPicker(boolean z) {
        this.Qs.setVisibility(z ? 0 : 8);
    }

    public void showMonthPicker(boolean z) {
        this.Qr.setVisibility(z ? 0 : 8);
    }

    public void showDayPicker(boolean z) {
        this.Qq.setVisibility(z ? 0 : 8);
    }

    private void b(Locale locale) {
        if (!locale.equals(this.Qt)) {
            this.Qt = locale;
            this.QC = this.QD.getActualMaximum(5) + 1;
            er();
            eq();
        }
    }

    private void er() {
        int i = 0;
        if (this.QI) {
            int chineseLeapMonth = this.QG.getChineseLeapMonth();
            if (chineseLeapMonth < 0) {
                this.Qu = Qx;
                return;
            }
            this.Qu = Qy;
            int i2 = chineseLeapMonth + 1;
            System.arraycopy(Qx, 0, this.Qu, 0, i2);
            System.arraycopy(Qx, chineseLeapMonth, this.Qu, i2, Qx.length - chineseLeapMonth);
            String[] strArr = this.Qu;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(Qz);
            stringBuilder.append(this.Qu[i2]);
            strArr[i2] = stringBuilder.toString();
        } else if ("en".equals(this.Qt.getLanguage().toLowerCase())) {
            this.Qu = CalendarFormatSymbols.getDefault().getShortMonths();
        } else {
            this.Qu = new String[12];
            while (i < this.Qu.length) {
                int i3 = i + 1;
                this.Qu[i] = NumberPicker.VR.format(i3);
                i = i3;
            }
        }
    }

    private void es() {
        char[] dateFormatOrder;
        this.Qp.removeAllViews();
        if (this.Qv == null) {
            dateFormatOrder = android.text.format.DateFormat.getDateFormatOrder(getContext());
        } else {
            dateFormatOrder = this.Qv;
        }
        int length = dateFormatOrder.length;
        for (int i = 0; i < length; i++) {
            char c = dateFormatOrder[i];
            if (c == 'M') {
                this.Qp.addView(this.Qr);
                a(this.Qr, length, i);
            } else if (c == 'd') {
                this.Qp.addView(this.Qq);
                a(this.Qq, length, i);
            } else if (c == 'y') {
                this.Qp.addView(this.Qs);
                a(this.Qs, length, i);
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    public void updateDate(int i, int i2, int i3) {
        if (g(i, i2, i3)) {
            h(i, i2, i3);
            et();
            eu();
        }
    }

    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.QG.get(1), this.QG.get(5), this.QG.get(9), this.QI, null);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        h(savedState.QK, savedState.QL, savedState.QM);
        this.QI = savedState.QN;
        et();
    }

    public void init(int i, int i2, int i3, OnDateChangedListener onDateChangedListener) {
        h(i, i2, i3);
        et();
        this.wY = onDateChangedListener;
    }

    private boolean a(String str, Calendar calendar) {
        try {
            calendar.setTimeInMillis(this.QB.parse(str).getTime());
            return true;
        } catch (ParseException e) {
            String str2 = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Date: ");
            stringBuilder.append(str);
            stringBuilder.append(" not in format: ");
            stringBuilder.append(DATE_FORMAT);
            Log.w(str2, stringBuilder.toString());
            return false;
        }
    }

    private boolean g(int i, int i2, int i3) {
        if (this.QG.get(1) == i && this.QG.get(5) == i3 && this.QG.get(9) == i2) {
            return false;
        }
        return true;
    }

    private void h(int i, int i2, int i3) {
        this.QG.set(i, i2, i3, 0, 0, 0, 0);
        if (this.QG.before(this.QE)) {
            this.QG.setTimeInMillis(this.QE.getTimeInMillis());
        } else if (this.QG.after(this.QF)) {
            this.QG.setTimeInMillis(this.QF.getTimeInMillis());
        }
    }

    private void et() {
        int actualMaximum;
        int i;
        if (this.QI) {
            this.Qq.setLabel(null);
            this.Qr.setLabel(null);
            this.Qs.setLabel(null);
        } else {
            this.Qq.setLabel(getContext().getString(R.string.date_picker_label_day));
            this.Qr.setLabel(getContext().getString(R.string.date_picker_label_month));
            this.Qs.setLabel(getContext().getString(R.string.date_picker_label_year));
        }
        this.Qq.setDisplayedValues(null);
        this.Qq.setMinValue(1);
        NumberPicker numberPicker = this.Qq;
        if (this.QI) {
            actualMaximum = this.QG.getActualMaximum(10);
        } else {
            actualMaximum = this.QG.getActualMaximum(9);
        }
        numberPicker.setMaxValue(actualMaximum);
        this.Qq.setWrapSelectorWheel(true);
        this.Qr.setDisplayedValues(null);
        boolean z = false;
        this.Qr.setMinValue(0);
        numberPicker = this.Qr;
        int i2 = 11;
        if (this.QI && this.QG.getChineseLeapMonth() >= 0) {
            i2 = 12;
        }
        numberPicker.setMaxValue(i2);
        this.Qr.setWrapSelectorWheel(true);
        int i3 = this.QI ? 2 : 1;
        if (this.QG.get(i3) == this.QE.get(i3)) {
            this.Qr.setMinValue(this.QI ? this.QE.get(6) : this.QE.get(5));
            this.Qr.setWrapSelectorWheel(false);
            i2 = this.QI ? 6 : 5;
            if (this.QG.get(i2) == this.QE.get(i2)) {
                int i4;
                NumberPicker numberPicker2 = this.Qq;
                if (this.QI) {
                    i4 = this.QE.get(10);
                } else {
                    i4 = this.QE.get(9);
                }
                numberPicker2.setMinValue(i4);
                this.Qq.setWrapSelectorWheel(false);
            }
        }
        if (this.QG.get(i3) == this.QF.get(i3)) {
            this.Qr.setMaxValue(this.QI ? this.QE.get(6) : this.QF.get(5));
            this.Qr.setWrapSelectorWheel(false);
            this.Qr.setDisplayedValues(null);
            i3 = this.QI ? 6 : 5;
            if (this.QG.get(i3) == this.QF.get(i3)) {
                numberPicker = this.Qq;
                if (this.QI) {
                    i = this.QF.get(10);
                } else {
                    i = this.QF.get(9);
                }
                numberPicker.setMaxValue(i);
                this.Qq.setWrapSelectorWheel(false);
            }
        }
        this.Qr.setDisplayedValues((String[]) Arrays.copyOfRange(this.Qu, this.Qr.getMinValue(), this.Qu.length));
        if (this.QI) {
            this.Qq.setDisplayedValues((String[]) Arrays.copyOfRange(Qw, this.Qq.getMinValue() - 1, Qw.length));
        }
        this.Qs.setMinValue(this.QE.get(1));
        this.Qs.setMaxValue(this.QF.get(1));
        this.Qs.setWrapSelectorWheel(false);
        i3 = this.QG.getChineseLeapMonth();
        if (i3 >= 0 && (this.QG.isChineseLeapMonth() || this.QG.get(6) > i3)) {
            z = true;
        }
        this.Qs.setValue(this.QI ? this.QG.get(2) : this.QG.get(1));
        numberPicker = this.Qr;
        i = this.QI ? z ? this.QG.get(6) + 1 : this.QG.get(6) : this.QG.get(5);
        numberPicker.setValue(i);
        numberPicker = this.Qq;
        if (this.QI) {
            i = this.QG.get(10);
        } else {
            i = this.QG.get(9);
        }
        numberPicker.setValue(i);
    }

    public int getYear() {
        return this.QG.get(this.QI ? 2 : 1);
    }

    public int getMonth() {
        if (this.QI) {
            return this.QG.isChineseLeapMonth() ? this.QG.get(6) + 12 : this.QG.get(6);
        } else {
            return this.QG.get(5);
        }
    }

    public int getDayOfMonth() {
        return this.QG.get(this.QI ? 10 : 9);
    }

    public boolean isLunarMode() {
        return this.QI;
    }

    private void eu() {
        sendAccessibilityEvent(4);
        if (this.wY != null) {
            this.wY.onDateChanged(this, getYear(), getMonth(), getDayOfMonth(), this.QI);
        }
    }

    private void a(NumberPicker numberPicker, int i, int i2) {
        if (i2 < i - 1) {
            i = 5;
        } else {
            i = 6;
        }
        ((TextView) numberPicker.findViewById(R.id.numberpicker_input)).setImeOptions(i);
    }

    public void setDateFormatOrder(char[] cArr) {
        this.Qv = cArr;
        es();
    }
}
