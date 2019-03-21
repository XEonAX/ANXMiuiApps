package com.miui.gallery.agreement.cta;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import com.miui.gallery.R;
import com.miui.gallery.text.UrlSpan;
import com.miui.gallery.text.UrlSpan.UrlSpanOnClickListener;
import com.miui.settings.Settings;
import java.util.Locale;

public class CtaAgreement {

    public static class Licence {
        public static String URL_MIUI_PRIVACY_POLICY = "http://www.miui.com/res/doc/privacy.html";
        public static String URL_MIUI_USER_AGREEMENT = "http://www.miui.com/res/doc/eula.html";

        public static Intent getUserAgreementIntent() {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(getUrlByLocale(URL_MIUI_USER_AGREEMENT)));
            return intent;
        }

        public static Intent getPrivacyIntent() {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(getUrlByLocale(URL_MIUI_PRIVACY_POLICY)));
            return intent;
        }

        private static String getUrlByLocale(String url) {
            return String.format(Locale.US, "%s?region=%s&lang=%s", new Object[]{url, Settings.getRegion(), Locale.getDefault().toString()});
        }
    }

    public static SpannableStringBuilder buildUserNotice(Context context, int userNoticeMessageFormat) {
        Resources res = context.getResources();
        return buildUserNotice(context, res.getString(userNoticeMessageFormat, new Object[]{res.getString(R.string.user_agreement2), res.getString(R.string.user_agreement4)}), res.getString(R.string.user_agreement2), res.getString(R.string.user_agreement4));
    }

    public static SpannableStringBuilder buildUserNotice(final Context context, String userNoticeMessage, String userAgreement, String privacyPolicy) {
        UrlSpanOnClickListener agreementUrlClickListener = new UrlSpanOnClickListener() {
            public void onClick() {
                context.startActivity(Licence.getUserAgreementIntent());
            }
        };
        UrlSpanOnClickListener privacyUrlClickListener = new UrlSpanOnClickListener() {
            public void onClick() {
                context.startActivity(Licence.getPrivacyIntent());
            }
        };
        SpannableStringBuilder userNotice = new SpannableStringBuilder(userNoticeMessage);
        int start = userNoticeMessage.indexOf(userAgreement);
        userNotice.setSpan(new UrlSpan(agreementUrlClickListener), start, userAgreement.length() + start, 33);
        start = userNoticeMessage.indexOf(privacyPolicy);
        userNotice.setSpan(new UrlSpan(privacyUrlClickListener), start, privacyPolicy.length() + start, 33);
        return userNotice;
    }
}
