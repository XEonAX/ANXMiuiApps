package miui.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.miui.internal.R;
import miui.widget.TimePicker;

public class TimePickerDialog extends AlertDialog {
    private static final String HOUR = "miui:hour";
    private static final String MINUTE = "miui:minute";
    private static final String xw = "miui:is24hour";
    int xA;
    boolean xB;
    private final TimePicker xx;
    private final OnTimeSetListener xy;
    int xz;

    public interface OnTimeSetListener {
        void onTimeSet(TimePicker timePicker, int i, int i2);
    }

    public TimePickerDialog(Context context, OnTimeSetListener onTimeSetListener, int i, int i2, boolean z) {
        this(context, 0, onTimeSetListener, i, i2, z);
    }

    public TimePickerDialog(Context context, int i, OnTimeSetListener onTimeSetListener, int i2, int i3, boolean z) {
        super(context, i);
        this.xy = onTimeSetListener;
        this.xz = i2;
        this.xA = i3;
        this.xB = z;
        setIcon(0);
        setTitle(R.string.time_picker_dialog_title);
        context = getContext();
        setButton(-1, context.getText(17039370), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                TimePickerDialog.this.cc();
            }
        });
        setButton(-2, getContext().getText(17039360), (OnClickListener) null);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.time_picker_dialog, null);
        setView(inflate);
        this.xx = (TimePicker) inflate.findViewById(R.id.timePicker);
        this.xx.setIs24HourView(Boolean.valueOf(this.xB));
        this.xx.setCurrentHour(Integer.valueOf(this.xz));
        this.xx.setCurrentMinute(Integer.valueOf(this.xA));
        this.xx.setOnTimeChangedListener(null);
    }

    public void updateTime(int i, int i2) {
        this.xx.setCurrentHour(Integer.valueOf(i));
        this.xx.setCurrentMinute(Integer.valueOf(i2));
    }

    private void cc() {
        if (this.xy != null) {
            this.xx.clearFocus();
            this.xy.onTimeSet(this.xx, this.xx.getCurrentHour().intValue(), this.xx.getCurrentMinute().intValue());
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.putInt(HOUR, this.xx.getCurrentHour().intValue());
        onSaveInstanceState.putInt(MINUTE, this.xx.getCurrentMinute().intValue());
        onSaveInstanceState.putBoolean(xw, this.xx.is24HourView());
        return onSaveInstanceState;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        int i = bundle.getInt(HOUR);
        int i2 = bundle.getInt(MINUTE);
        this.xx.setIs24HourView(Boolean.valueOf(bundle.getBoolean(xw)));
        this.xx.setCurrentHour(Integer.valueOf(i));
        this.xx.setCurrentMinute(Integer.valueOf(i2));
    }
}
