package miui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.miui.internal.R;
import java.util.Locale;
import miui.date.Calendar;
import miui.date.CalendarFormatSymbols;
import miui.date.DateUtils;
import miui.widget.NumberPicker.OnValueChangeListener;

public class TimePicker extends FrameLayout {
    private static final boolean Qo = true;
    private static final int aaG = 12;
    private static final OnTimeChangedListener aaH = new OnTimeChangedListener() {
        public void onTimeChanged(TimePicker timePicker, int i, int i2) {
        }
    };
    private boolean QH;
    private Locale Qt;
    private boolean aaI;
    private final NumberPicker aaJ;
    private final NumberPicker aaK;
    private final NumberPicker aaL;
    private final Button aaM;
    private OnTimeChangedListener aaN;
    private Calendar aaO;
    private boolean xB;

    public interface OnTimeChangedListener {
        void onTimeChanged(TimePicker timePicker, int i, int i2);
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: l */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: aL */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private final int aaQ;
        private final int aaR;

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        /* synthetic */ SavedState(Parcelable parcelable, int i, int i2, AnonymousClass1 anonymousClass1) {
            this(parcelable, i, i2);
        }

        private SavedState(Parcelable parcelable, int i, int i2) {
            super(parcelable);
            this.aaQ = i;
            this.aaR = i2;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.aaQ = parcel.readInt();
            this.aaR = parcel.readInt();
        }

        public int getHour() {
            return this.aaQ;
        }

        public int getMinute() {
            return this.aaR;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.aaQ);
            parcel.writeInt(this.aaR);
        }
    }

    public TimePicker(Context context) {
        this(context, null);
    }

    public TimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.QH = true;
        b(Locale.getDefault());
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.time_picker, this, true);
        this.aaJ = (NumberPicker) findViewById(R.id.hour);
        this.aaJ.setOnValueChangedListener(new OnValueChangeListener() {
            public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                if (!TimePicker.this.is24HourView() && ((i == 11 && i2 == 12) || (i == 12 && i2 == 11))) {
                    TimePicker.this.aaI = TimePicker.this.aaI ^ 1;
                    TimePicker.this.fR();
                }
                TimePicker.this.fS();
            }
        });
        ((EditText) this.aaJ.findViewById(R.id.numberpicker_input)).setImeOptions(5);
        this.aaK = (NumberPicker) findViewById(R.id.minute);
        this.aaK.setMinValue(0);
        this.aaK.setMaxValue(59);
        this.aaK.setOnLongPressUpdateInterval(100);
        this.aaK.setFormatter(NumberPicker.VR);
        this.aaK.setOnValueChangedListener(new OnValueChangeListener() {
            public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                TimePicker.this.fS();
            }
        });
        ((EditText) this.aaK.findViewById(R.id.numberpicker_input)).setImeOptions(5);
        View findViewById = findViewById(R.id.amPm);
        if (findViewById instanceof Button) {
            this.aaL = null;
            this.aaM = (Button) findViewById;
            this.aaM.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    view.requestFocus();
                    TimePicker.this.aaI = TimePicker.this.aaI ^ 1;
                    TimePicker.this.fR();
                    TimePicker.this.fS();
                }
            });
        } else {
            this.aaM = null;
            this.aaL = (NumberPicker) findViewById;
            this.aaL.setMinValue(0);
            this.aaL.setMaxValue(1);
            this.aaL.setDisplayedValues(CalendarFormatSymbols.getDefault().getAmPms());
            this.aaL.setOnValueChangedListener(new OnValueChangeListener() {
                public void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    numberPicker.requestFocus();
                    TimePicker.this.aaI = TimePicker.this.aaI ^ 1;
                    TimePicker.this.fR();
                    TimePicker.this.fS();
                }
            });
            ((EditText) this.aaL.findViewById(R.id.numberpicker_input)).setImeOptions(6);
        }
        if (fP()) {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.timePickerLayout);
            viewGroup.removeView(findViewById);
            viewGroup.addView(findViewById, 0);
        }
        fQ();
        fR();
        setOnTimeChangedListener(aaH);
        setCurrentHour(Integer.valueOf(this.aaO.get(18)));
        setCurrentMinute(Integer.valueOf(this.aaO.get(20)));
        if (!isEnabled()) {
            setEnabled(false);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private boolean fP() {
        boolean startsWith = getContext().getString(R.string.fmt_time_12hour_pm).startsWith("a");
        return getResources().getConfiguration().getLayoutDirection() == 1 ? startsWith ^ 1 : startsWith;
    }

    public void setEnabled(boolean z) {
        if (this.QH != z) {
            super.setEnabled(z);
            this.aaK.setEnabled(z);
            this.aaJ.setEnabled(z);
            if (this.aaL != null) {
                this.aaL.setEnabled(z);
            } else {
                this.aaM.setEnabled(z);
            }
            this.QH = z;
        }
    }

    public boolean isEnabled() {
        return this.QH;
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b(configuration.locale);
    }

    private void b(Locale locale) {
        if (!locale.equals(this.Qt)) {
            this.Qt = locale;
            if (this.aaO == null) {
                this.aaO = new Calendar();
            }
        }
    }

    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), getCurrentHour().intValue(), getCurrentMinute().intValue(), null);
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentHour(Integer.valueOf(savedState.getHour()));
        setCurrentMinute(Integer.valueOf(savedState.getMinute()));
    }

    public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
        this.aaN = onTimeChangedListener;
    }

    public Integer getCurrentHour() {
        int value = this.aaJ.getValue();
        if (is24HourView()) {
            return Integer.valueOf(value);
        }
        if (this.aaI) {
            return Integer.valueOf(value % 12);
        }
        return Integer.valueOf((value % 12) + 12);
    }

    public void setCurrentHour(Integer num) {
        if (num != null && !num.equals(getCurrentHour())) {
            if (!is24HourView()) {
                if (num.intValue() >= 12) {
                    this.aaI = false;
                    if (num.intValue() > 12) {
                        num = Integer.valueOf(num.intValue() - 12);
                    }
                } else {
                    this.aaI = true;
                    if (num.intValue() == 0) {
                        num = Integer.valueOf(12);
                    }
                }
                fR();
            }
            this.aaJ.setValue(num.intValue());
            fS();
        }
    }

    public void setIs24HourView(Boolean bool) {
        if (this.xB != bool.booleanValue()) {
            this.xB = bool.booleanValue();
            int intValue = getCurrentHour().intValue();
            fQ();
            setCurrentHour(Integer.valueOf(intValue));
            fR();
        }
    }

    public boolean is24HourView() {
        return this.xB;
    }

    public Integer getCurrentMinute() {
        return Integer.valueOf(this.aaK.getValue());
    }

    public void setCurrentMinute(Integer num) {
        if (!num.equals(getCurrentMinute())) {
            this.aaK.setValue(num.intValue());
            fS();
        }
    }

    public int getBaseline() {
        return this.aaJ.getBaseline();
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        if (this.xB) {
            i = 44;
        } else {
            i = 28;
        }
        this.aaO.set(18, getCurrentHour().intValue());
        this.aaO.set(20, getCurrentMinute().intValue());
        accessibilityEvent.getText().add(DateUtils.formatDateTime(this.aaO.getTimeInMillis(), i));
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TimePicker.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TimePicker.class.getName());
    }

    private void fQ() {
        if (is24HourView()) {
            this.aaJ.setMinValue(0);
            this.aaJ.setMaxValue(23);
            this.aaJ.setFormatter(NumberPicker.VR);
            return;
        }
        this.aaJ.setMinValue(1);
        this.aaJ.setMaxValue(12);
        this.aaJ.setFormatter(null);
    }

    private void fR() {
        if (!is24HourView()) {
            int i = this.aaI ^ 1;
            if (this.aaL != null) {
                this.aaL.setValue(i);
                this.aaL.setVisibility(0);
            } else {
                this.aaM.setText(CalendarFormatSymbols.getDefault().getAmPms()[i]);
                this.aaM.setVisibility(0);
            }
        } else if (this.aaL != null) {
            this.aaL.setVisibility(8);
        } else {
            this.aaM.setVisibility(8);
        }
        sendAccessibilityEvent(4);
    }

    private void fS() {
        sendAccessibilityEvent(4);
        if (this.aaN != null) {
            this.aaN.onTimeChanged(this, getCurrentHour().intValue(), getCurrentMinute().intValue());
        }
    }

    private void c(View view, int i, int i2) {
        view = view.findViewById(i);
        if (view != null) {
            view.setContentDescription(getContext().getString(i2));
        }
    }
}
