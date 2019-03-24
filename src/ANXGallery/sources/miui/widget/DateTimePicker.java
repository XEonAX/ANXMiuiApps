package miui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.miui.internal.R;
import java.util.Locale;
import miui.date.Calendar;
import miui.date.DateUtils;
import miui.util.AppConstants;
import miui.widget.NumberPicker.OnValueChangeListener;

public class DateTimePicker extends LinearLayout {
    private static final int QO = 1;
    private static final int QP = 7;
    private static final int QQ = 6;
    private static final int QR = 2;
    private static final DayFormatter QX = new DayFormatter();
    private static final ThreadLocal<Calendar> Ra = new ThreadLocal();
    private static ThreadLocal<Calendar> Re = new ThreadLocal();
    private Calendar QE;
    private Calendar QF;
    private boolean QI;
    private NumberPicker QS;
    private NumberPicker QT;
    private NumberPicker QU;
    private String[] QV;
    private DayFormatter QW;
    private DayFormatter QY;
    private OnDateTimeChangedListener QZ;
    private int Rb;
    private int Rc;
    String[] Rd;
    private Calendar wW;

    public static class DayFormatter {
        public String formatDay(int i, int i2, int i3) {
            Calendar calendar = (Calendar) DateTimePicker.Re.get();
            if (calendar == null) {
                calendar = new Calendar();
                DateTimePicker.Re.set(calendar);
            }
            calendar.set(1, i);
            calendar.set(5, i2);
            calendar.set(9, i3);
            if (!Locale.getDefault().getLanguage().equals(Locale.CHINESE.getLanguage())) {
                return DateUtils.formatDateTime(calendar.getTimeInMillis(), 13696);
            }
            String formatDateTime = DateUtils.formatDateTime(calendar.getTimeInMillis(), 4480);
            String formatDateTime2 = DateUtils.formatDateTime(calendar.getTimeInMillis(), 9216);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(formatDateTime.replace(" ", ""));
            stringBuilder.append(" ");
            stringBuilder.append(formatDateTime2);
            return stringBuilder.toString();
        }
    }

    public static class LunarFormatter extends DayFormatter {
        public String formatDay(int i, int i2, int i3) {
            Calendar calendar = (Calendar) DateTimePicker.Re.get();
            if (calendar == null) {
                calendar = new Calendar();
                DateTimePicker.Re.set(calendar);
            }
            calendar.set(1, i);
            calendar.set(5, i2);
            calendar.set(9, i3);
            return calendar.format(AppConstants.getCurrentApplication().getString(R.string.fmt_chinese_date));
        }
    }

    public interface OnDateTimeChangedListener {
        void onDateTimeChanged(DateTimePicker dateTimePicker, long j);
    }

    private class PickerValueChangeListener implements OnValueChangeListener {
        private PickerValueChangeListener() {
        }

        public void onValueChange(NumberPicker numberPicker, int i, int i2) {
            if (numberPicker == DateTimePicker.this.QS) {
                i2 = 1;
                if (((numberPicker.getValue() - DateTimePicker.this.Rc) + 7) % 7 != 1) {
                    i2 = -1;
                }
                DateTimePicker.this.wW.add(12, i2);
                DateTimePicker.this.Rc = numberPicker.getValue();
            } else if (numberPicker == DateTimePicker.this.QT) {
                DateTimePicker.this.wW.set(18, DateTimePicker.this.QT.getValue());
            } else if (numberPicker == DateTimePicker.this.QU) {
                DateTimePicker.this.wW.set(20, DateTimePicker.this.Rb * DateTimePicker.this.QU.getValue());
            }
            DateTimePicker.this.ew();
            DateTimePicker.this.ez();
            DateTimePicker.this.ey();
            DateTimePicker.this.ex();
            l(DateTimePicker.this);
        }

        private void l(DateTimePicker dateTimePicker) {
            DateTimePicker.this.sendAccessibilityEvent(4);
            if (DateTimePicker.this.QZ != null) {
                DateTimePicker.this.QZ.onDateTimeChanged(dateTimePicker, DateTimePicker.this.getTimeInMillis());
            }
        }
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: i */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: ao */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private long Rg;

        public SavedState(Parcelable parcelable, long j) {
            super(parcelable);
            this.Rg = j;
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.Rg = parcel.readLong();
        }

        public long getTimeInMillis() {
            return this.Rg;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.Rg);
        }
    }

    public DateTimePicker(Context context) {
        this(context, null);
    }

    public DateTimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dateTimePickerStyle);
    }

    public DateTimePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Rb = 1;
        this.QE = null;
        this.QF = null;
        this.Rd = null;
        this.QI = false;
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.datetime_picker, this, true);
        OnValueChangeListener pickerValueChangeListener = new PickerValueChangeListener();
        this.wW = new Calendar();
        a(this.wW, true);
        Calendar calendar = (Calendar) Ra.get();
        if (calendar == null) {
            calendar = new Calendar();
            Ra.set(calendar);
        }
        calendar.setTimeInMillis(0);
        this.QS = (NumberPicker) findViewById(R.id.day);
        this.QT = (NumberPicker) findViewById(R.id.hour);
        this.QU = (NumberPicker) findViewById(R.id.minute);
        this.QS.setOnValueChangedListener(pickerValueChangeListener);
        this.QS.setMaxFlingSpeedFactor(3.0f);
        this.QT.setOnValueChangedListener(pickerValueChangeListener);
        this.QU.setOnValueChangedListener(pickerValueChangeListener);
        this.QU.setMinValue(0);
        this.QU.setMaxValue(59);
        this.QT.setFormatter(NumberPicker.VR);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DateTimePicker, i, 0);
        this.QI = obtainStyledAttributes.getBoolean(R.styleable.DateTimePicker_lunarCalendar, false);
        obtainStyledAttributes.recycle();
        ev();
        ew();
        ez();
        ey();
        ex();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void a(Calendar calendar, boolean z) {
        calendar.set(22, 0);
        calendar.set(21, 0);
        int i = calendar.get(20) % this.Rb;
        if (i == 0) {
            return;
        }
        if (z) {
            calendar.add(20, this.Rb - i);
        } else {
            calendar.add(20, -i);
        }
    }

    private void ev() {
        Resources resources = getResources();
        Object obj = null;
        Object obj2 = resources.getConfiguration().getLayoutDirection() == 1 ? 1 : null;
        boolean startsWith = resources.getString(R.string.fmt_time_12hour_minute).startsWith("h");
        if ((startsWith && obj2 != null) || (!startsWith && obj2 == null)) {
            obj = 1;
        }
        if (obj != null) {
            ViewGroup viewGroup = (ViewGroup) this.QT.getParent();
            viewGroup.removeView(this.QT);
            viewGroup.addView(this.QT, viewGroup.getChildCount());
        }
    }

    private void ew() {
        if (this.QE != null && this.QE.getTimeInMillis() > this.wW.getTimeInMillis()) {
            this.wW.setTimeInMillis(this.QE.getTimeInMillis());
        }
        if (this.QF != null && this.QF.getTimeInMillis() < this.wW.getTimeInMillis()) {
            this.wW.setTimeInMillis(this.QF.getTimeInMillis());
        }
    }

    private void ex() {
        int i;
        boolean z;
        int i2 = 0;
        if (this.QF != null && a(this.wW, this.QF) == 0 && this.wW.get(18) == this.QF.get(18)) {
            i = this.QF.get(20);
            this.QU.setMinValue(0);
            this.QU.setMaxValue(i / this.Rb);
            this.QU.setWrapSelectorWheel(false);
            z = true;
        } else {
            z = false;
        }
        if (this.QE != null && a(this.wW, this.QE) == 0 && this.wW.get(18) == this.QE.get(18)) {
            this.QU.setMinValue(this.QE.get(20) / this.Rb);
            this.QU.setWrapSelectorWheel(false);
            z = true;
        }
        if (!z) {
            b(this.QU, 0, (60 / this.Rb) - 1);
            this.QU.setMinValue(0);
            this.QU.setMaxValue((60 / this.Rb) - 1);
            this.QU.setWrapSelectorWheel(true);
        }
        i = (this.QU.getMaxValue() - this.QU.getMinValue()) + 1;
        if (this.QV == null || this.QV.length != i) {
            this.QV = new String[i];
            while (i2 < i) {
                this.QV[i2] = NumberPicker.VR.format((this.QU.getMinValue() + i2) * this.Rb);
                i2++;
            }
            this.QU.setDisplayedValues(this.QV);
        }
        this.QU.setValue(this.wW.get(20) / this.Rb);
    }

    private void ey() {
        boolean z;
        if (this.QF == null || a(this.wW, this.QF) != 0) {
            z = false;
        } else {
            this.QT.setMaxValue(this.QF.get(18));
            this.QT.setWrapSelectorWheel(false);
            z = true;
        }
        if (this.QE != null && a(this.wW, this.QE) == 0) {
            this.QT.setMinValue(this.QE.get(18));
            this.QT.setWrapSelectorWheel(false);
            z = true;
        }
        if (!z) {
            this.QT.setMinValue(0);
            this.QT.setMaxValue(23);
            this.QT.setWrapSelectorWheel(true);
        }
        this.QT.setValue(this.wW.get(18));
    }

    private int a(Calendar calendar, Calendar calendar2) {
        calendar = (Calendar) calendar.clone();
        calendar2 = (Calendar) calendar2.clone();
        calendar.set(18, 0);
        calendar.set(20, 0);
        calendar.set(21, 0);
        calendar.set(22, 0);
        calendar2.set(18, 0);
        calendar2.set(20, 0);
        calendar2.set(21, 0);
        calendar2.set(22, 0);
        return (int) (((((calendar.getTimeInMillis() / 1000) / 60) / 60) / 24) - ((((calendar2.getTimeInMillis() / 1000) / 60) / 60) / 24));
    }

    private void ez() {
        int i;
        int i2;
        int i3;
        int i4 = Integer.MAX_VALUE;
        if (this.QE == null) {
            i = Integer.MAX_VALUE;
        } else {
            i = a(this.wW, this.QE);
        }
        if (this.QF != null) {
            i4 = a(this.QF, this.wW);
        }
        if (i > 2 || i4 > 2) {
            b(this.QS, 0, 6);
            this.QS.setMinValue(0);
            this.QS.setMaxValue(6);
            if (i <= 2) {
                this.QS.setValue(i);
                this.Rc = i;
                this.QS.setWrapSelectorWheel(false);
            }
            if (i4 <= 2) {
                this.Rc = 6 - i4;
                this.QS.setValue(this.Rc);
                this.QS.setWrapSelectorWheel(false);
            }
            if (i > 2 && i4 > 2) {
                this.QS.setWrapSelectorWheel(true);
            }
        } else {
            i4 = a(this.QF, this.QE);
            b(this.QS, 0, i4);
            this.QS.setMinValue(0);
            this.QS.setMaxValue(i4);
            this.QS.setValue(i);
            this.Rc = i;
            this.QS.setWrapSelectorWheel(false);
        }
        i = (this.QS.getMaxValue() - this.QS.getMinValue()) + 1;
        if (this.Rd == null || this.Rd.length != i) {
            this.Rd = new String[i];
        }
        i = this.QS.getValue();
        Calendar calendar = (Calendar) Ra.get();
        if (calendar == null) {
            calendar = new Calendar();
            Ra.set(calendar);
        }
        calendar.setTimeInMillis(this.wW.getTimeInMillis());
        this.Rd[i] = formatDay(calendar.get(1), calendar.get(5), calendar.get(9));
        for (i2 = 1; i2 <= 3; i2++) {
            calendar.add(12, 1);
            i3 = (i + i2) % 7;
            if (i3 >= this.Rd.length) {
                break;
            }
            this.Rd[i3] = formatDay(calendar.get(1), calendar.get(5), calendar.get(9));
        }
        calendar.setTimeInMillis(this.wW.getTimeInMillis());
        for (i2 = 1; i2 <= 3; i2++) {
            calendar.add(12, -1);
            i3 = ((i - i2) + 7) % 7;
            if (i3 >= this.Rd.length) {
                break;
            }
            this.Rd[i3] = formatDay(calendar.get(1), calendar.get(5), calendar.get(9));
        }
        this.QS.setDisplayedValues(this.Rd);
    }

    private void b(NumberPicker numberPicker, int i, int i2) {
        String[] displayedValues = numberPicker.getDisplayedValues();
        if (displayedValues != null && displayedValues.length < (i2 - i) + 1) {
            numberPicker.setDisplayedValues(null);
        }
    }

    public void setOnTimeChangedListener(OnDateTimeChangedListener onDateTimeChangedListener) {
        this.QZ = onDateTimeChangedListener;
    }

    public void setMinuteInterval(int i) {
        if (this.Rb != i) {
            this.Rb = i;
            a(this.wW, true);
            ew();
            ex();
        }
    }

    public void update(long j) {
        this.wW.setTimeInMillis(j);
        a(this.wW, true);
        ew();
        ez();
        ey();
        ex();
    }

    public long getTimeInMillis() {
        return this.wW.getTimeInMillis();
    }

    public void setMinDateTime(long j) {
        if (j <= 0) {
            this.QE = null;
        } else {
            this.QE = new Calendar();
            this.QE.setTimeInMillis(j);
            if (!(this.QE.get(21) == 0 && this.QE.get(22) == 0)) {
                this.QE.add(20, 1);
            }
            a(this.QE, true);
            if (this.QF != null && this.QF.getTimeInMillis() < this.QE.getTimeInMillis()) {
                this.QE.setTimeInMillis(this.QF.getTimeInMillis());
            }
        }
        ew();
        ez();
        ey();
        ex();
    }

    public void setMaxDateTime(long j) {
        if (j <= 0) {
            this.QF = null;
        } else {
            this.QF = new Calendar();
            this.QF.setTimeInMillis(j);
            a(this.QF, false);
            if (this.QE != null && this.QE.getTimeInMillis() > this.QF.getTimeInMillis()) {
                this.QF.setTimeInMillis(this.QE.getTimeInMillis());
            }
        }
        ew();
        ez();
        ey();
        ex();
    }

    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), getTimeInMillis());
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        update(savedState.getTimeInMillis());
    }

    public void setDayFormatter(DayFormatter dayFormatter) {
        this.QW = dayFormatter;
        ez();
    }

    public void setLunarMode(boolean z) {
        this.QI = z;
        ez();
    }

    private String formatDay(int i, int i2, int i3) {
        DayFormatter dayFormatter = QX;
        if (this.QI) {
            if (this.QY == null) {
                this.QY = new LunarFormatter();
            }
            dayFormatter = this.QY;
        }
        if (this.QW != null) {
            dayFormatter = this.QW;
        }
        return dayFormatter.formatDay(i, i2, i3);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.wW.getTimeInMillis(), 1420));
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(DateTimePicker.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(DateTimePicker.class.getName());
    }
}
