package miui.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.miui.internal.R;
import miui.date.Calendar;
import miui.date.DateUtils;
import miui.widget.DatePicker;
import miui.widget.DatePicker.OnDateChangedListener;

public class DatePickerDialog extends AlertDialog {
    private static final String DAY = "miui:day";
    private static final String MONTH = "miui:month";
    private static final String YEAR = "miui:year";
    private final DatePicker wU;
    private final OnDateSetListener wV;
    private final Calendar wW;
    private boolean wX;
    private OnDateChangedListener wY;

    public interface OnDateSetListener {
        void onDateSet(DatePicker datePicker, int i, int i2, int i3);
    }

    public DatePickerDialog(Context context, OnDateSetListener onDateSetListener, int i, int i2, int i3) {
        this(context, 0, onDateSetListener, i, i2, i3);
    }

    public DatePickerDialog(Context context, int i, OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        super(context, i);
        this.wX = true;
        this.wY = new OnDateChangedListener() {
            public void onDateChanged(DatePicker datePicker, int i, int i2, int i3, boolean z) {
                if (DatePickerDialog.this.wX) {
                    DatePickerDialog.this.c(i, i2, i3);
                }
            }
        };
        this.wV = onDateSetListener;
        this.wW = new Calendar();
        context = getContext();
        setButton(-1, context.getText(17039370), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                DatePickerDialog.this.ca();
            }
        });
        setButton(-2, getContext().getText(17039360), (OnClickListener) null);
        setIcon(0);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.date_picker_dialog, null);
        setView(inflate);
        this.wU = (DatePicker) inflate.findViewById(R.id.datePicker);
        this.wU.init(i2, i3, i4, this.wY);
        c(i2, i3, i4);
    }

    public DatePicker getDatePicker() {
        return this.wU;
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.wX = false;
    }

    public void setTitle(int i) {
        super.setTitle(i);
        this.wX = false;
    }

    public void updateDate(int i, int i2, int i3) {
        this.wU.updateDate(i, i2, i3);
    }

    private void ca() {
        if (this.wV != null) {
            this.wU.clearFocus();
            this.wV.onDateSet(this.wU, this.wU.getYear(), this.wU.getMonth(), this.wU.getDayOfMonth());
        }
    }

    private void c(int i, int i2, int i3) {
        this.wW.set(1, i);
        this.wW.set(5, i2);
        this.wW.set(9, i3);
        super.setTitle(DateUtils.formatDateTime(this.wW.getTimeInMillis(), 14208));
    }

    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.putInt(YEAR, this.wU.getYear());
        onSaveInstanceState.putInt(MONTH, this.wU.getMonth());
        onSaveInstanceState.putInt(DAY, this.wU.getDayOfMonth());
        return onSaveInstanceState;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.wU.init(bundle.getInt(YEAR), bundle.getInt(MONTH), bundle.getInt(DAY), this.wY);
    }
}
