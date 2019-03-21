package com.miui.gallery.agreement;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.agreement.core.OnAgreementInvokedListener;
import com.miui.gallery.agreement.cta.CtaAgreement.Licence;
import com.miui.gallery.agreement.cta.CtaAgreementFragment;
import com.miui.gallery.preference.BaseGalleryPreferences.Agreement;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Locale;

public class AgreementsUtils {
    public static void showUserAgreements(final Activity activity, final OnAgreementInvokedListener listener) {
        if (isKoreaRegion()) {
            if (Agreement.isRequiredAgreementsAllowed()) {
                listener.onAgreementInvoked(true);
            } else {
                AgreementDialogFragment.newInstance(getAgreements(activity)).invoke(activity, new OnAgreementInvokedListener() {
                    public void onAgreementInvoked(boolean agreed) {
                        Agreement.setRequiredAgreementsAllowed(agreed);
                        if (agreed) {
                            CTA.setCanConnectNetwork(true);
                        } else {
                            activity.finish();
                        }
                        listener.onAgreementInvoked(agreed);
                    }
                });
            }
        } else if (BaseBuildUtil.isInternational()) {
            CTA.setCanConnectNetwork(true);
            listener.onAgreementInvoked(true);
        } else {
            new CtaAgreementFragment().invoke(activity, listener);
        }
    }

    public static void showNetworkingAgreement(Activity activity, OnAgreementInvokedListener listener) {
        new CtaAgreementFragment().invoke(activity, listener);
    }

    public static boolean isNetworkingAgreementAccepted() {
        if (!BaseBuildUtil.isInternational()) {
            return CTA.canConnectNetwork();
        }
        if (isKoreaRegion()) {
            if (!Agreement.isRequiredAgreementsAllowed()) {
                return CTA.canConnectNetwork();
            }
            if (CTA.canConnectNetwork()) {
                return true;
            }
            CTA.setCanConnectNetwork(true);
            return true;
        } else if (CTA.canConnectNetwork()) {
            return true;
        } else {
            CTA.setCanConnectNetwork(true);
            return true;
        }
    }

    public static void viewAgreement(Context context, com.miui.gallery.agreement.core.Agreement agreement) {
        if (agreement == null || TextUtils.isEmpty(agreement.mLink)) {
            Log.w("AgreementsUtils", "agreement can't view");
            return;
        }
        String url = String.format(Locale.US, "%s?region=%s&lang=%s", new Object[]{agreement.mLink, BaseBuildUtil.getRegion(), Locale.getDefault().toString()});
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(url));
        try {
            context.startActivity(intent);
        } catch (Throwable e) {
            Log.e("AgreementsUtils", e);
        }
    }

    private static ArrayList<com.miui.gallery.agreement.core.Agreement> getAgreements(Context context) {
        ArrayList<com.miui.gallery.agreement.core.Agreement> list = new ArrayList();
        com.miui.gallery.agreement.core.Agreement terms = new com.miui.gallery.agreement.core.Agreement(context.getResources().getString(R.string.user_agreement2), Licence.URL_MIUI_USER_AGREEMENT, true);
        com.miui.gallery.agreement.core.Agreement privacy = new com.miui.gallery.agreement.core.Agreement(context.getResources().getString(R.string.user_agreement4), Licence.URL_MIUI_PRIVACY_POLICY, true);
        list.add(terms);
        list.add(privacy);
        return list;
    }

    public static boolean isKoreaRegion() {
        return "KR".equalsIgnoreCase(BaseBuildUtil.getRegion());
    }
}
