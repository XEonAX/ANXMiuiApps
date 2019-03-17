package com.xiaomi.scanner.dialog;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CalendarContract.Events;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.ali.auth.third.core.util.StringUtil;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.bean.BusinessClickBean;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.AssistUtils;
import com.xiaomi.scanner.util.Util;
import java.util.Date;

public class ActionDialog extends Dialog implements OnClickListener {
    private BusinessClickBean ocrClickBean;

    public static void showOcrActionDialog(Context context, BusinessClickBean ocrClickBean) {
        ActionDialog dialog = new ActionDialog(context);
        dialog.ocrClickBean = ocrClickBean;
        dialog.show();
    }

    public ActionDialog(@NonNull Context context) {
        super(context, R.style.ActionDialog);
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_business_action);
        LayoutParams params = getWindow().getAttributes();
        params.gravity = 80;
        params.width = Util.screenWidth;
        findViewById(R.id.ocr_dialog_cancel).setOnClickListener(this);
        findViewById(R.id.ocr_dialog_copy).setOnClickListener(this);
        TextView actionView = (TextView) findViewById(R.id.ocr_action);
        actionView.setOnClickListener(this);
        findViewById(R.id.ocr_extra_action).setOnClickListener(this);
        TextView dataView = (TextView) findViewById(R.id.ocr_data);
        View extraAction = findViewById(R.id.ll_extra_action);
        if (this.ocrClickBean != null) {
            dataView.setText(this.ocrClickBean.text);
            int text = 0;
            switch (this.ocrClickBean.type) {
                case 2:
                case 3:
                    text = R.string.call_anyone;
                    extraAction.setVisibility(0);
                    break;
                case 4:
                    text = R.string.send_mail;
                    break;
                case 14:
                case 15:
                    text = R.string.gps;
                    break;
                case 17:
                    text = R.string.open_url;
                    break;
                case 18:
                    text = R.string.new_schedule;
                    break;
            }
            if (text != 0) {
                actionView.setText(text);
            }
        }
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.ocr_extra_action /*2131558592*/:
                newContact();
                trackBCEvent(UsageStatistics.KEY_BUSINESS_PHONE_ACTION_CONTACT_CLICK);
                break;
            case R.id.ocr_action /*2131558593*/:
                sendAction();
                break;
            case R.id.ocr_dialog_copy /*2131558594*/:
                copy();
                break;
            case R.id.ocr_dialog_cancel /*2131558595*/:
                reportCopyOrCancel("_cancel_click");
                break;
        }
        dismiss();
    }

    private void reportCopyOrCancel(String suffix) {
        String key = null;
        if (this.ocrClickBean != null) {
            switch (this.ocrClickBean.type) {
                case 2:
                case 3:
                    key = UsageStatistics.KEY_BUSINESS_PHONE_ACTION + suffix;
                    break;
                case 4:
                    key = UsageStatistics.KEY_BUSINESS_EMAIL_ACTION + suffix;
                    break;
                case 14:
                case 15:
                    key = UsageStatistics.KEY_BUSINESS_ADDRESS_ACTION + suffix;
                    break;
                case 17:
                    key = UsageStatistics.KEY_BUSINESS_LINK_ACTION + suffix;
                    break;
                case 18:
                    key = UsageStatistics.KEY_BUSINESS_DATE_ACTION + suffix;
                    break;
            }
            if (key != null) {
                trackBCEvent(key);
            }
        }
    }

    protected void copy() {
        if (this.ocrClickBean != null) {
            ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, this.ocrClickBean.text));
            Toast.makeText(getContext(), R.string.copy_text_success, 0).show();
            reportCopyOrCancel("_copy_click");
        }
    }

    private void sendAction() {
        if (this.ocrClickBean != null) {
            String key = null;
            switch (this.ocrClickBean.type) {
                case 2:
                case 3:
                    callPhone(this.ocrClickBean.text);
                    key = UsageStatistics.KEY_BUSINESS_PHONE_ACTION_CALL_CLICK;
                    break;
                case 4:
                    sendEmail(this.ocrClickBean.text);
                    key = UsageStatistics.KEY_BUSINESS_EMAIL_ACTION_SEND_CLICK;
                    break;
                case 14:
                case 15:
                    AssistUtils.startMap(getContext(), this.ocrClickBean.text);
                    key = UsageStatistics.KEY_BUSINESS_ADDRESS_ACTION_GPS_CLICK;
                    break;
                case 17:
                    if (!StringUtil.isEmpty(this.ocrClickBean.text)) {
                        open(this.ocrClickBean.text);
                    }
                    key = UsageStatistics.KEY_BUSINESS_LINK_ACTION_OPEN_CLICK;
                    break;
                case 18:
                    newSchedule(this.ocrClickBean.text);
                    key = UsageStatistics.KEY_BUSINESS_DATE_ACTION_SCHEDULE_CLICK;
                    break;
            }
            if (key != null) {
                trackBCEvent(key);
            }
        }
    }

    private void newSchedule(String mDateString) {
        Date date = Utils.parseDate(mDateString);
        if (date != null) {
            Intent intent = new Intent("android.intent.action.INSERT").setData(Events.CONTENT_URI).putExtra("beginTime", date.getTime());
            Context context = getContext();
            if (intent.resolveActivity(context.getPackageManager()) != null) {
                context.startActivity(intent);
            }
        }
    }

    private void open(String url) {
        if (!url.contains("://")) {
            url = "http://" + url;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
        if (intent.resolveActivity(getContext().getPackageManager()) != null) {
            getContext().startActivity(intent);
        }
    }

    private void sendEmail(CharSequence email) {
        Uri uri = Uri.parse("mailto:" + email);
        Intent sendIntent = new Intent("android.intent.action.SENDTO");
        sendIntent.setData(uri);
        getContext().startActivity(Intent.createChooser(sendIntent, "发Email"));
    }

    private void newContact() {
        Intent addIntent = new Intent("android.intent.action.INSERT", Uri.withAppendedPath(Uri.parse("content://com.android.contacts"), "contacts"));
        addIntent.setType("vnd.android.cursor.dir/person");
        addIntent.setType("vnd.android.cursor.dir/contact");
        addIntent.setType("vnd.android.cursor.dir/raw_contact");
        if (this.ocrClickBean != null) {
            addIntent.putExtra("phone", this.ocrClickBean.text);
        }
        getContext().startActivity(addIntent);
    }

    private void callPhone(String phoneNum) {
        Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + phoneNum));
        intent.setFlags(268435456);
        getContext().startActivity(intent);
    }

    private void trackBCEvent(String key) {
        if (getContext() instanceof ScanActivity) {
            UsageStatistics.trackBCEvent(((ScanActivity) getContext()).isOnlyBusinessCardScan(), key);
        }
    }
}
