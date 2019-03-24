package miui.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.miui.internal.R;
import miui.widget.DateTimePicker;

public class DateTimePickerDialog extends AlertDialog {
    private DateTimePicker xa;
    private OnTimeSetListener xb;

    public interface OnTimeSetListener {
        void onTimeSet(DateTimePickerDialog dateTimePickerDialog, long j);
    }

    public DateTimePickerDialog(Context context, OnTimeSetListener onTimeSetListener) {
        this(context, onTimeSetListener, 1);
    }

    public DateTimePickerDialog(Context context, OnTimeSetListener onTimeSetListener, int i) {
        super(context);
        this.xb = onTimeSetListener;
        init(i);
        setTitle(R.string.date_time_picker_dialog_title);
    }

    private void init(int i) {
        setButton(-1, getContext().getText(17039370), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (DateTimePickerDialog.this.xb != null) {
                    DateTimePickerDialog.this.xb.onTimeSet(DateTimePickerDialog.this, DateTimePickerDialog.this.xa.getTimeInMillis());
                }
            }
        });
        setButton(-2, getContext().getText(17039360), (OnClickListener) null);
        View inflate = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.datetime_picker_dialog, null);
        setView(inflate);
        this.xa = (DateTimePicker) inflate.findViewById(R.id.dateTimePicker);
        this.xa.setMinuteInterval(i);
    }

    public void update(long j) {
        this.xa.update(j);
    }

    public void setMinDateTime(long j) {
        this.xa.setMinDateTime(j);
    }

    public void setMaxDateTime(long j) {
        this.xa.setMaxDateTime(j);
    }

    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }
}
