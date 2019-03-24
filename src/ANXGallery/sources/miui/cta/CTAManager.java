package miui.cta;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.util.DeviceHelper;
import com.miui.system.internal.R;
import java.util.ArrayList;
import miui.cta.CTAConfig.MatchResult;
import miui.util.AppConstants;
import miui.util.ResourceHelper;

public class CTAManager {
    private static final String CTA_CONFIG_NAME = "miui_cta";
    private static final String EXTRA_KEY_ACCEPT = "extra_accept";
    private static final String INTENT_ACTION_ACCEPT_CHANGED_SUFFIX = ".intent.action.ACCEPT_CHANGED";
    private static final String META_KEY_CTA = "com.miui.system.cta";
    private static final String TAG = "CTAManager";
    private String mAcceptChangedAction;
    private boolean mAccepted;
    private CTAConfig mConfig;
    private ArrayList<CTAListener> mListeners;

    public interface CTAListener {
        void onAccept();

        void onReject();
    }

    private class CTAReceiver extends BroadcastReceiver {
        private CTAReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            if (CTAManager.this.mAcceptChangedAction.equals(intent.getAction())) {
                boolean accept = intent.getBooleanExtra(CTAManager.EXTRA_KEY_ACCEPT, false);
                if (accept != CTAManager.this.mAccepted) {
                    CTAManager.this.mAccepted = accept;
                    if (CTAManager.this.mAccepted) {
                        CTAManager.this.notifyAccept();
                    } else {
                        CTAManager.this.notifyReject();
                    }
                }
            }
        }
    }

    private static class Holder {
        static final CTAManager INSTANCE = new CTAManager(AppConstants.getCurrentApplication());

        private Holder() {
        }
    }

    public static CTAManager getInstance() {
        return Holder.INSTANCE;
    }

    public static void showAgreementIfNeed(Activity activity) {
        CTAManager instance = getInstance();
        if (!instance.isAccepted()) {
            instance.showAgreement(activity);
        }
    }

    private CTAManager(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(context.getPackageName());
        stringBuilder.append(INTENT_ACTION_ACCEPT_CHANGED_SUFFIX);
        this.mAcceptChangedAction = stringBuilder.toString();
        this.mListeners = new ArrayList();
        registerReceiver(context);
        initialize(context);
    }

    private void registerReceiver(Context context) {
        Context ctx = context.getApplicationContext();
        if (ctx == null) {
            ctx = context;
        }
        ctx.registerReceiver(new CTAReceiver(), new IntentFilter(this.mAcceptChangedAction));
    }

    private void initialize(Context context) {
        boolean z = DeviceHelper.IS_INTERNATIONAL_BUILD || CTAPreference.isAccepted(context);
        this.mAccepted = z;
        if (!this.mAccepted) {
            loadConfig(context);
            if (this.mConfig == null) {
                this.mAccepted = true;
                return;
            }
            this.mAccepted = this.mConfig.canMatch() ^ true;
            if (this.mAccepted) {
                CTAPreference.setAccepted(context, true);
            }
        }
    }

    private void loadConfig(Context context) {
        XmlResourceParser parser = ResourceHelper.loadXml(context, META_KEY_CTA, CTA_CONFIG_NAME);
        if (parser == null) {
            this.mConfig = CTAConfig.EMPTY;
            return;
        }
        this.mConfig = new CTAConfig(context, parser);
        parser.close();
    }

    public void addListener(CTAListener listener) {
        synchronized (this.mListeners) {
            this.mListeners.add(listener);
        }
    }

    public void removeListener(CTAListener listener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(listener);
        }
    }

    public boolean isAccepted() {
        return this.mAccepted;
    }

    public void showAgreement(Activity activity) {
        MatchResult matchResult = this.mConfig.match(activity.getClass());
        if (matchResult != null) {
            String message = matchResult.messageId == 0 ? null : activity.getText(matchResult.messageId).toString();
            if (TextUtils.isEmpty(message)) {
                if (CTAPermission.getMessage(activity, matchResult.permission) == null) {
                    Log.e(TAG, "Fail to show agreement for permission message is empty");
                    return;
                } else {
                    String appName = activity.getString(activity.getApplicationInfo().labelRes);
                    message = activity.getString(R.string.cta_message_permission, new Object[]{appName, permissionMessage});
                }
            }
            showAgreementDialog(activity, message, matchResult.optional);
        }
    }

    private void showAgreementDialog(Activity activity, String message, boolean optional) {
        if (((CTADialogFragment) activity.getFragmentManager().findFragmentByTag("CTADialog")) == null) {
            new CTADialogFragment().showDialog(activity, message, optional);
        }
    }

    void onAccept(Activity activity) {
        this.mAccepted = true;
        CTAPreference.setAccepted(activity, true);
        notifyAccept();
        sendBroadcast();
    }

    void onReject() {
        notifyReject();
        sendBroadcast();
    }

    private void notifyAccept() {
        for (CTAListener listener : getListenersCopy()) {
            listener.onAccept();
        }
    }

    private void notifyReject() {
        for (CTAListener listener : getListenersCopy()) {
            listener.onReject();
        }
    }

    private CTAListener[] getListenersCopy() {
        CTAListener[] listeners;
        synchronized (this.mListeners) {
            listeners = new CTAListener[this.mListeners.size()];
            this.mListeners.toArray(listeners);
        }
        return listeners;
    }

    private void sendBroadcast() {
        Intent intent = new Intent(this.mAcceptChangedAction);
        intent.putExtra(EXTRA_KEY_ACCEPT, this.mAccepted);
        AppConstants.getCurrentApplication().sendBroadcast(intent);
    }
}
