package com.xiaomi.scanner.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.util.DeviceUtil;
import java.util.Locale;

public class CtaDialog extends Dialog implements OnClickListener {
    private CTAClick ctaClick;
    private TextView tvMessage;

    public interface CTAClick {
        void onAccept();

        void onReject();
    }

    private static class SpanClick extends ClickableSpan {
        private Context context;
        private String url;

        public SpanClick(String url, Context context) {
            this.url = url;
            this.context = context;
        }

        public void onClick(View widget) {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.url)));
        }
    }

    public static CtaDialog showCta(Context context, CTAClick ctaClick) {
        CtaDialog ctaDialog = new CtaDialog(context);
        ctaDialog.setCtaClick(ctaClick);
        return ctaDialog;
    }

    public void setCtaClick(CTAClick ctaClick) {
        this.ctaClick = ctaClick;
    }

    public CtaDialog(@NonNull Context context) {
        super(context, R.style.CustomProgressDialog);
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View root = View.inflate(getContext(), R.layout.dialog_cta, null);
        setContentView(root);
        getWindow().setLayout(-1, -1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        findViewById(R.id.dialog_exit).setOnClickListener(this);
        findViewById(R.id.dialog_commit).setOnClickListener(this);
        this.tvMessage = (TextView) root.findViewById(R.id.tv_message);
        setUrlColor();
    }

    private void setUrlColor() {
        int i = 0;
        this.tvMessage.setText(Html.fromHtml(String.format(getContext().getResources().getString(R.string.impunity_declaration_content), new Object[]{DeviceUtil.getRegion(), Locale.getDefault()})));
        this.tvMessage.setMovementMethod(LinkMovementMethod.getInstance());
        CharSequence str = this.tvMessage.getText();
        if (str instanceof Spannable) {
            Spannable spannable = (Spannable) str;
            URLSpan[] urlSpans = (URLSpan[]) spannable.getSpans(0, str.length(), URLSpan.class);
            SpannableStringBuilder build = new SpannableStringBuilder(str);
            int length = urlSpans.length;
            while (i < length) {
                URLSpan urlSpan = urlSpans[i];
                build.setSpan(new SpanClick(urlSpan.getURL(), getContext()), spannable.getSpanStart(urlSpan), spannable.getSpanEnd(urlSpan), 33);
                i++;
            }
        }
    }

    public void onClick(View v) {
        dismiss();
        if (this.ctaClick != null) {
            switch (v.getId()) {
                case R.id.dialog_exit /*2131558597*/:
                    this.ctaClick.onReject();
                    return;
                case R.id.dialog_commit /*2131558598*/:
                    this.ctaClick.onAccept();
                    return;
                default:
                    return;
            }
        }
    }
}
