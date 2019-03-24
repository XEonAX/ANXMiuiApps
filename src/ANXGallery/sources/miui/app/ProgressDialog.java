package miui.app;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.miui.internal.R;
import java.text.NumberFormat;

public class ProgressDialog extends AlertDialog {
    public static final int STYLE_HORIZONTAL = 1;
    public static final int STYLE_SPINNER = 0;
    private TextView cy;
    private CharSequence mMessage;
    private ProgressBar xg;
    private TextView xh;
    private int xi = 0;
    private String xj;
    private NumberFormat xk;
    private int xl;
    private int xm;
    private int xn;
    private int xo;
    private int xp;
    private Drawable xq;
    private Drawable xr;
    private boolean xs;
    private boolean xt;
    private Handler xu;

    public ProgressDialog(Context context) {
        super(context);
        cb();
    }

    public ProgressDialog(Context context, int i) {
        super(context, i);
        cb();
    }

    private void cb() {
        this.xj = "%1d/%2d";
        this.xk = NumberFormat.getPercentInstance();
        this.xk.setMaximumFractionDigits(0);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2) {
        return show(context, charSequence, charSequence2, false);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return show(context, charSequence, charSequence2, z, false, null);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        return show(context, charSequence, charSequence2, z, z2, null);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, OnCancelListener onCancelListener) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle(charSequence);
        progressDialog.setMessage(charSequence2);
        progressDialog.setIndeterminate(z);
        progressDialog.setCancelable(z2);
        progressDialog.setOnCancelListener(onCancelListener);
        progressDialog.show();
        return progressDialog;
    }

    protected void onCreate(Bundle bundle) {
        View inflate;
        LayoutInflater from = LayoutInflater.from(getContext());
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.AlertDialog, 16842845, 0);
        if (this.xi == 1) {
            this.xu = new Handler() {
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    ProgressDialog.this.cy.setText(ProgressDialog.this.mMessage);
                    if (ProgressDialog.this.xk != null && ProgressDialog.this.xh != null) {
                        double progress = ((double) ProgressDialog.this.xg.getProgress()) / ((double) ProgressDialog.this.xg.getMax());
                        CharSequence spannableStringBuilder = new SpannableStringBuilder();
                        Object format = ProgressDialog.this.xk.format(progress);
                        spannableStringBuilder.append(format);
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(ProgressDialog.this.getContext().getResources().getColor(R.color.progress_percent_color)), 0, format.length(), 34);
                        ProgressDialog.this.xh.setText(spannableStringBuilder);
                    }
                }
            };
            inflate = from.inflate(obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_horizontalProgressLayout, R.layout.alert_dialog_progress), null);
            this.xh = (TextView) inflate.findViewById(R.id.progress_percent);
        } else {
            inflate = from.inflate(obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_progressLayout, R.layout.progress_dialog), null);
        }
        this.xg = (ProgressBar) inflate.findViewById(16908301);
        this.cy = (TextView) inflate.findViewById(miui.R.id.message);
        setView(inflate);
        obtainStyledAttributes.recycle();
        if (this.xl > 0) {
            setMax(this.xl);
        }
        if (this.xm > 0) {
            setProgress(this.xm);
        }
        if (this.xn > 0) {
            setSecondaryProgress(this.xn);
        }
        if (this.xo > 0) {
            incrementProgressBy(this.xo);
        }
        if (this.xp > 0) {
            incrementSecondaryProgressBy(this.xp);
        }
        if (this.xq != null) {
            setProgressDrawable(this.xq);
        }
        if (this.xr != null) {
            setIndeterminateDrawable(this.xr);
        }
        if (this.mMessage != null) {
            setMessage(this.mMessage);
        }
        setIndeterminate(this.xs);
        onProgressChanged();
        super.onCreate(bundle);
    }

    public void onStart() {
        super.onStart();
        this.xt = true;
    }

    protected void onStop() {
        super.onStop();
        this.xt = false;
    }

    public void setProgress(int i) {
        if (this.xt) {
            this.xg.setProgress(i);
            onProgressChanged();
            return;
        }
        this.xm = i;
    }

    public void setSecondaryProgress(int i) {
        if (this.xg != null) {
            this.xg.setSecondaryProgress(i);
            onProgressChanged();
            return;
        }
        this.xn = i;
    }

    public int getProgress() {
        if (this.xg != null) {
            return this.xg.getProgress();
        }
        return this.xm;
    }

    public int getSecondaryProgress() {
        if (this.xg != null) {
            return this.xg.getSecondaryProgress();
        }
        return this.xn;
    }

    public int getMax() {
        if (this.xg != null) {
            return this.xg.getMax();
        }
        return this.xl;
    }

    public void setMax(int i) {
        if (this.xg != null) {
            this.xg.setMax(i);
            onProgressChanged();
            return;
        }
        this.xl = i;
    }

    public void incrementProgressBy(int i) {
        if (this.xg != null) {
            this.xg.incrementProgressBy(i);
            onProgressChanged();
            return;
        }
        this.xo += i;
    }

    public void incrementSecondaryProgressBy(int i) {
        if (this.xg != null) {
            this.xg.incrementSecondaryProgressBy(i);
            onProgressChanged();
            return;
        }
        this.xp += i;
    }

    public void setProgressDrawable(Drawable drawable) {
        if (this.xg != null) {
            this.xg.setProgressDrawable(drawable);
        } else {
            this.xq = drawable;
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (this.xg != null) {
            this.xg.setIndeterminateDrawable(drawable);
        } else {
            this.xr = drawable;
        }
    }

    public void setIndeterminate(boolean z) {
        if (this.xg != null) {
            this.xg.setIndeterminate(z);
        } else {
            this.xs = z;
        }
    }

    public boolean isIndeterminate() {
        if (this.xg != null) {
            return this.xg.isIndeterminate();
        }
        return this.xs;
    }

    public void setMessage(CharSequence charSequence) {
        if (this.xg != null) {
            if (this.xi == 1) {
                this.mMessage = charSequence;
            }
            this.cy.setText(charSequence);
            return;
        }
        this.mMessage = charSequence;
    }

    public void setProgressStyle(int i) {
        this.xi = i;
    }

    public void setProgressNumberFormat(String str) {
        this.xj = str;
        onProgressChanged();
    }

    public void setProgressPercentFormat(NumberFormat numberFormat) {
        this.xk = numberFormat;
        onProgressChanged();
    }

    private void onProgressChanged() {
        if (this.xi == 1 && this.xu != null && !this.xu.hasMessages(0)) {
            this.xu.sendEmptyMessage(0);
        }
    }
}
