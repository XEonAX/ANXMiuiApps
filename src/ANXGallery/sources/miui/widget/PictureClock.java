package miui.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import java.util.TimeZone;
import miui.date.Calendar;
import miui.date.CalendarFormatSymbols;
import miui.date.DateUtils;

public class PictureClock extends LinearLayout {
    private final BroadcastReceiver XF;
    private ImageTextView XG;
    private AmPm XH;
    private boolean XI;
    private boolean XJ;
    private final Handler mHandler;
    private Calendar wW;

    static class AmPm {
        private TextView XM;
        private String XN;
        private String XO;

        AmPm(View view) {
            this.XM = (TextView) view.findViewById(R.id.am_pm);
            String[] amPms = CalendarFormatSymbols.getDefault().getAmPms();
            this.XN = amPms[0];
            this.XO = amPms[1];
        }

        void A(boolean z) {
            if (this.XM != null) {
                this.XM.setVisibility(z ? 0 : 8);
            }
        }

        void B(boolean z) {
            if (this.XM != null) {
                this.XM.setText(z ? this.XN : this.XO);
            }
        }
    }

    public PictureClock(Context context) {
        this(context, null);
    }

    public PictureClock(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new Handler();
        this.XF = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if (PictureClock.this.XI && intent.getAction().equals("android.intent.action.TIMEZONE_CHANGED")) {
                    PictureClock.this.wW = new Calendar(TimeZone.getTimeZone(intent.getStringExtra("time-zone")));
                }
                PictureClock.this.mHandler.post(new Runnable() {
                    public void run() {
                        PictureClock.this.fx();
                    }
                });
            }
        };
        this.XI = true;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.XG = (ImageTextView) findViewById(R.id.time_display);
        this.XH = new AmPm(this);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.XJ) {
            this.XJ = true;
            if (this.XI) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.TIME_TICK");
                intentFilter.addAction("android.intent.action.TIME_SET");
                intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
                getContext().registerReceiver(this.XF, intentFilter);
            }
            this.wW = new Calendar();
            fx();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.XJ) {
            this.XJ = false;
            if (this.XI) {
                getContext().unregisterReceiver(this.XF);
            }
        }
    }

    private void fx() {
        if (this.XI) {
            this.wW.setTimeInMillis(System.currentTimeMillis());
        }
        this.XG.setText(DateUtils.formatDateTime(this.wW.getTimeInMillis(), 76));
        boolean z = true;
        this.XH.A(DateFormat.is24HourFormat(getContext()) ^ true);
        AmPm amPm = this.XH;
        if (this.wW.get(17) != 0) {
            z = false;
        }
        amPm.B(z);
    }

    void z(boolean z) {
        this.XI = z;
    }
}
