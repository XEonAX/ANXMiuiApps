package miui.cta;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import com.miui.system.internal.R;
import miui.app.AlertDialog.Builder;

public class CTADialogBuilder extends Builder {
    private Context mContext;

    public CTADialogBuilder(Context context) {
        super(context);
        initialize(context);
    }

    public CTADialogBuilder(Context context, int theme) {
        super(context, theme);
        initialize(context);
    }

    private void initialize(Context context) {
        this.mContext = context;
        setTitle(R.string.cta_title);
        setCancelable(false);
    }

    public CTADialogBuilder setPositiveButton(OnClickListener listener) {
        setPositiveButton(R.string.cta_button_continue, listener);
        return this;
    }

    public CTADialogBuilder setNegativeButton(OnClickListener listener) {
        setNegativeButton(R.string.cta_button_quit, listener);
        return this;
    }
}
