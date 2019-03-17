package com.xiaomi.scanner.module.code.ui;

import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.provider.ContactsContract.Contacts;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.alipay.sdk.packet.d;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsLatitudeRef;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsTrackRef;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.QRCodeMatcher;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.module.code.ui.TextViewPreference.OnSmsClickListener;
import com.xiaomi.scanner.module.code.utils.URLInspector;
import com.xiaomi.scanner.module.code.utils.URLInspector.OnInspectedListener;
import com.xiaomi.scanner.module.code.utils.WifiAdmin;
import com.xiaomi.scanner.module.code.utils.WifiDisplayAdmin;
import com.xiaomi.scanner.module.code.zxing.VCard;
import com.xiaomi.scanner.payment.PaymentQRCodeScanning;
import com.xiaomi.scanner.payment.UpiFactory.UpiConstant;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.DialogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import mtopsdk.common.util.SymbolExpUtil;

public class QRResultFragment extends PreferenceFragment {
    private static final String KEY_EMAIL = "email";
    private static final String KEY_PHONE = "phone";
    private static final String MECARD_GROUP_KEY = "pref_mecard_group_key";
    private static final int MSG_MIRACAST_CONNECTING = 4097;
    private static final int MSG_MIRACAST_CONNECT_FAIL = 4098;
    private static final Tag TAG = new Tag("QRResultFragment");
    private static final String TEXT_CONTENT_KEY = "pref_text_content_key";
    private static final String TITLE_PAYTM = "Paytm";
    private static int mCardMaxCount = 3;
    private Context mActivity;
    private Button mBtnDone;
    private String mCallingApp;
    private ArrayList<VCard> mCards;
    private OnClickListener mClickListener = new OnClickListener() {
        public void onClick(View v) {
            if (QRResultFragment.this.mType == null) {
                Log.i(QRResultFragment.TAG, "QRCodeType is null");
                return;
            }
            switch (AnonymousClass8.$SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRResultFragment.this.mType.ordinal()]) {
                case 1:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_URL_BUTTON_CLICK_COUNT);
                    QRResultFragment.this.launchBrowser();
                    return;
                case 2:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_MARKET_BUTTON_CLICK_COUNT);
                    QRResultFragment.this.launchMIUIMarket();
                    return;
                case 3:
                case 4:
                case 5:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CARD_BUTTON_CLICK_COUNT);
                    QRResultFragment.this.insertContact();
                    return;
                case 6:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_WIFI_BUTTON_CLICK_COUNT);
                    QRResultFragment.this.connectWiFi();
                    return;
                case 7:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_WECHAT_BUTTON_CLICK_COUNT);
                    QRResultFragment.this.launchBrowser();
                    return;
                case 8:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_TEXT_BUTTON_CLICK_COUNT);
                    QRResultFragment.this.copyToClipboard();
                    return;
                case 9:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_MIRACAST_BUTTON_CLICK_COUNT);
                    QRResultFragment.this.connectMiracast();
                    return;
                case 10:
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_PAYTM_BUTTON_CLICK_COUNT);
                    new PaymentQRCodeScanning().scanningCompleted(QRResultFragment.this.mContent, QRResultFragment.this.mActivity, UpiConstant.PAYTM);
                    return;
                default:
                    return;
            }
        }
    };
    private String mContent;
    private TextView mContentTitle;
    private boolean mIsWifiHide = true;
    private AlertDialog mMiracastDialog = null;
    private Runnable mMiracastRunnable;
    private String mPhone;
    private OnPreferenceClickListener mPrefClickListener = new OnPreferenceClickListener() {
        public boolean onPreferenceClick(Preference preference) {
            if (preference.getKey().equalsIgnoreCase("pref_mecard_web_key")) {
                QRResultFragment.this.mContent = preference.getSummary().toString();
                QRResultFragment.this.launchBrowser();
            } else if (preference.getKey().equalsIgnoreCase("pref_mecard_phone_key")) {
                QRResultFragment.this.startActivitySafely(new Intent("android.intent.action.CALL", Uri.parse("tel:" + preference.getSummary())));
            } else if (preference.getKey().equalsIgnoreCase("pref_mecard_email_key")) {
                Intent data = new Intent("android.intent.action.SENDTO");
                data.setData(Uri.parse("mailto:" + preference.getSummary()));
                QRResultFragment.this.startActivitySafely(data);
            } else if (preference.getKey().equalsIgnoreCase(QRResultFragment.TEXT_CONTENT_KEY) && QRResultFragment.this.mType != null && QRResultFragment.this.mType == QRCodeType.WIFI) {
                boolean z;
                QRResultFragment qRResultFragment = QRResultFragment.this;
                if (QRResultFragment.this.mIsWifiHide) {
                    z = false;
                } else {
                    z = true;
                }
                qRResultFragment.mIsWifiHide = z;
                QRResultFragment.this.showQRResult(QRResultFragment.this.mType, QRResultFragment.this.mContent, QRResultFragment.this.mCallingApp, false);
            }
            return false;
        }
    };
    private QRCodeMatcher mQrCodeMatcher;
    private TextView mTxvWarning;
    private QRCodeType mType = null;
    private View mViewSymbol;
    private OnInspectedListener mWebCheckListener = new OnInspectedListener() {
        public void onInspected(int risk) {
            if (QRResultFragment.this.isAdded()) {
                int btnRes;
                int warningRes;
                int color = ViewCompat.MEASURED_STATE_MASK;
                switch (risk) {
                    case 0:
                        btnRes = R.string.continue_access_web_url;
                        warningRes = R.string.url_is_safety;
                        break;
                    case 1:
                        color = SupportMenu.CATEGORY_MASK;
                        btnRes = R.string.not_recommend_access_web_url;
                        warningRes = R.string.url_is_phish;
                        break;
                    case 2:
                        color = SupportMenu.CATEGORY_MASK;
                        btnRes = R.string.not_recommend_access_web_url;
                        warningRes = R.string.url_is_unsafety;
                        break;
                    default:
                        btnRes = R.string.continue_to_website;
                        warningRes = R.string.url_is_unknown;
                        break;
                }
                QRResultFragment.this.mBtnDone.setText(btnRes);
                QRResultFragment.this.mTxvWarning.setTextColor(color);
                QRResultFragment.this.mTxvWarning.setText(warningRes);
            }
        }
    };
    private Handler mWorkHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 4097:
                    QRResultFragment.this.showToast((int) R.string.miracast_connecting);
                    return;
                case 4098:
                    QRResultFragment.this.showToast((int) R.string.miracast_connect_fail);
                    QRResultFragment.this.startMiracastSettings();
                    return;
                default:
                    Log.w(QRResultFragment.TAG, "unexpected msg " + msg.what);
                    return;
            }
        }
    };

    /* renamed from: com.xiaomi.scanner.module.code.ui.QRResultFragment$8 */
    static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType = new int[QRCodeType.values().length];

        static {
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.WEB_URL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.MARKET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.MECARD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.VCARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.CARD.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.WIFI.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.WECHAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.MIRACAST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType[QRCodeType.PAYTM.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    private void sendMessage(int msgId) {
        if (this.mWorkHandler != null) {
            this.mWorkHandler.removeMessages(msgId);
            this.mWorkHandler.sendEmptyMessage(msgId);
            return;
        }
        Log.w(TAG, "null handler, drop message");
    }

    private void showToast(int msgId) {
        if (this.mActivity != null) {
            Toast.makeText(this.mActivity, msgId, 0).show();
        }
    }

    private void showToast(CharSequence text) {
        if (this.mActivity != null) {
            Toast.makeText(this.mActivity, text, 0).show();
        }
    }

    public void showQRResult(QRCodeType type, String text, String caller, boolean isCheckWebsite) {
        PreferenceGroup group = getPreferenceScreen();
        if (group != null) {
            group.removeAll();
        }
        addPreferencesFromResource(R.xml.qrcode_details);
        group = getPreferenceScreen();
        if (text != null) {
            this.mContent = text;
            this.mType = type;
            this.mCallingApp = caller;
            if ((type == QRCodeType.MECARD || type == QRCodeType.VCARD || type == QRCodeType.CARD) && this.mActivity != null) {
                PreferenceScreen preferences = getPreferenceManager().createPreferenceScreen(this.mActivity);
                if (this.mQrCodeMatcher == null) {
                    this.mQrCodeMatcher = new QRCodeMatcher();
                }
                this.mCards = this.mQrCodeMatcher.contactsCardSpliter(text, type, this.mActivity);
                group.removePreference((PreferenceCategory) findPreference("pref_text_group_key"));
                Iterator it = this.mCards.iterator();
                while (it.hasNext()) {
                    VCard card = (VCard) it.next();
                    if (!(card == null || card.getValues() == null)) {
                        Iterator it2 = card.getValues().iterator();
                        while (it2.hasNext()) {
                            String value = (String) it2.next();
                            PreferenceCategory cardGroup = (PreferenceCategory) findPreference(MECARD_GROUP_KEY);
                            Preference textViewPreference = new TextViewPreference(this.mActivity, card.getIsMobile());
                            textViewPreference.setTitle(card.getName());
                            textViewPreference.setSummary(value);
                            cardGroup.addItemFromInflater(textViewPreference);
                            preferences.addItemFromInflater(cardGroup);
                            if (card.getIsMobile()) {
                                cardGroup.setOnPreferenceClickListener(this.mPrefClickListener);
                                textViewPreference.setOnSmsClickListener(new OnSmsClickListener() {
                                    public void onSmsClick() {
                                        if (!TextUtils.isEmpty(QRResultFragment.this.mPhone)) {
                                            QRResultFragment.this.startActivitySafely(new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + QRResultFragment.this.mPhone)));
                                        }
                                    }
                                });
                            }
                        }
                    }
                }
                this.mViewSymbol.setBackgroundResource(R.drawable.ic_qrcode_contacts_symbol);
                this.mBtnDone.setText(R.string.import_contact);
                this.mContentTitle.setText(R.string.contact_details);
                this.mTxvWarning.setVisibility(8);
            } else if (type == QRCodeType.WEB_URL || type == QRCodeType.WECHAT) {
                this.mViewSymbol.setBackgroundResource(R.drawable.ic_qrcode_web_symbol);
                this.mBtnDone.setText(R.string.secure_access_web_url);
                this.mContentTitle.setText(R.string.website_details);
                this.mTxvWarning.setVisibility(DeviceUtil.isInternationalBuild() ? 8 : 0);
                group.findPreference(TEXT_CONTENT_KEY).setTitle("\n" + text + " \n");
                removePreference(group, MECARD_GROUP_KEY);
            } else if (type == QRCodeType.MARKET) {
                this.mViewSymbol.setBackgroundResource(R.drawable.ic_qrcode_app_symbol);
                this.mBtnDone.setText(R.string.see_app_details);
                this.mContentTitle.setText(R.string.app_details);
                this.mTxvWarning.setVisibility(8);
                group.findPreference(TEXT_CONTENT_KEY).setTitle(text);
                removePreference(group, MECARD_GROUP_KEY);
            } else if (type == QRCodeType.TEXT || type == QRCodeType.WECHAT) {
                isQRCodeTextOrPayment(text, group, getString(R.string.copy_text), R.drawable.ic_qrcode_text_symbol);
            } else if (type == QRCodeType.PAYTM) {
                isQRCodeTextOrPayment(text, group, String.format(getString(R.string.payment_text), new Object[]{TITLE_PAYTM}), R.drawable.ic_paytm_logo);
            } else if (type == QRCodeType.WIFI) {
                String ssid;
                String security;
                String pwd;
                this.mViewSymbol.setBackgroundResource(R.drawable.ic_qrcode_wifi_symbol);
                this.mBtnDone.setText(R.string.connect_wifi);
                this.mContentTitle.setText(R.string.wifi_details);
                this.mTxvWarning.setVisibility(8);
                StringBuilder builder = new StringBuilder();
                HashMap<String, String> map = QRCodeMatcher.wifiSpliter(this.mContent);
                String tempPwd = (String) map.get("P");
                if (this.mIsWifiHide && !TextUtils.isEmpty(tempPwd)) {
                    tempPwd = tempPwd.replaceAll(SymbolExpUtil.SYMBOL_DOT, "*");
                }
                if (this.mActivity != null) {
                    ssid = this.mActivity.getString(R.string.wifi_ssid) + ((String) map.get(GpsLatitudeRef.SOUTH));
                    security = this.mActivity.getString(R.string.wifi_security) + ((String) map.get(GpsTrackRef.TRUE_DIRECTION));
                    pwd = this.mActivity.getString(R.string.wifi_pwd) + tempPwd;
                } else {
                    ssid = (String) map.get(GpsLatitudeRef.SOUTH);
                    security = (String) map.get(GpsTrackRef.TRUE_DIRECTION);
                    pwd = tempPwd;
                }
                builder.append(10);
                builder.append(ssid);
                builder.append(10);
                builder.append(pwd);
                builder.append(10);
                builder.append(security);
                builder.append(10);
                Preference wifiPreference = group.findPreference(TEXT_CONTENT_KEY);
                wifiPreference.setTitle(builder.toString());
                wifiPreference.setOnPreferenceClickListener(this.mPrefClickListener);
                removePreference(group, MECARD_GROUP_KEY);
            } else if (type == QRCodeType.MIRACAST) {
                this.mViewSymbol.setBackgroundResource(R.drawable.ic_qrcode_miracast_symbol);
                this.mBtnDone.setText(R.string.miracast_connect);
                this.mContentTitle.setText(R.string.miracast_details);
                this.mTxvWarning.setVisibility(8);
                try {
                    String msg;
                    Uri uri = Uri.parse(this.mContent);
                    try {
                        msg = getString(R.string.miracast_message, new Object[]{uri.getQueryParameter(QRCodeMatcher.MIRACAST_PARAM_NAME)});
                    } catch (Exception e) {
                        Log.e(TAG, "format string error", e);
                        msg = getString(R.string.miracast_message);
                    }
                    group.findPreference(TEXT_CONTENT_KEY).setTitle(msg);
                } catch (Exception e2) {
                    Log.e(TAG, "TEXT_CONTENT_KEY set error", e2);
                }
                removePreference(group, MECARD_GROUP_KEY);
                if (WifiDisplayAdmin.isWifiDisplayOn()) {
                    new WifiDisplayAdmin().startWifiDisplayScan();
                } else {
                    Log.v(TAG, "switch is closed, jump it when click connect");
                }
            }
        } else {
            this.mContent = null;
            this.mType = null;
            this.mCallingApp = null;
            group.removeAll();
        }
        if (isCheckWebsite && type == QRCodeType.WEB_URL && !DeviceUtil.isInternationalBuild()) {
            URLInspector request = new URLInspector();
            request.setOnReceivedDataListener(this.mWebCheckListener);
            request.execute(new String[]{this.mContent});
            return;
        }
        this.mTxvWarning.setText(R.string.url_is_unknown);
    }

    private void isQRCodeTextOrPayment(String text, PreferenceGroup group, String btnText, int drawableId) {
        this.mViewSymbol.setBackgroundResource(drawableId);
        this.mBtnDone.setText(btnText);
        this.mContentTitle.setText(R.string.qr_code_details);
        this.mTxvWarning.setVisibility(8);
        group.findPreference(TEXT_CONTENT_KEY).setTitle("\n" + text + " \n");
        removePreference(group, MECARD_GROUP_KEY);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.qrresult_fragment, null);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mActivity = getActivity();
        initUI(view);
    }

    private void initUI(View v) {
        this.mViewSymbol = v.findViewById(R.id.type_symbol);
        this.mBtnDone = (Button) v.findViewById(R.id.btn_done);
        this.mContentTitle = (TextView) v.findViewById(R.id.content_title);
        this.mTxvWarning = (TextView) v.findViewById(R.id.txv_warning);
        this.mBtnDone.setOnClickListener(this.mClickListener);
    }

    private void connectMiracast() {
        final String p2pMac = Uri.parse(this.mContent).getQueryParameter(QRCodeMatcher.MIRACAST_PARAM_MAC);
        if (WifiDisplayAdmin.isWifiDisplayOn()) {
            if (this.mMiracastRunnable == null) {
                this.mMiracastRunnable = new Runnable() {
                    int count = 10;

                    public void run() {
                        WifiDisplayAdmin wifiDisplay = new WifiDisplayAdmin();
                        if (wifiDisplay.checkAndConnectDisplay(p2pMac)) {
                            Log.d(QRResultFragment.TAG, "check true");
                            wifiDisplay.connectWifiDisplay(p2pMac);
                        } else if (this.count > 0) {
                            this.count--;
                            QRResultFragment.this.mWorkHandler.postDelayed(this, 300);
                        } else {
                            QRResultFragment.this.sendMessage(4098);
                        }
                    }
                };
                if (this.mWorkHandler != null) {
                    sendMessage(4097);
                    this.mWorkHandler.postDelayed(this.mMiracastRunnable, 300);
                    return;
                }
                return;
            }
            sendMessage(4097);
        } else if (this.mActivity != null) {
            if (this.mMiracastDialog == null) {
                this.mMiracastDialog = DialogUtil.showConfirmAlertWithCancel(this.mActivity, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        QRResultFragment.this.startMiracastSettings();
                    }
                }, null, (int) R.string.miracast_switch_off, (int) R.string.miracast_switch_tip, (int) R.string.switch_open, (int) R.string.cancel);
            }
            this.mMiracastDialog.show();
        }
    }

    private void copyToClipboard() {
        if (this.mActivity == null) {
            Log.w(TAG, "mActivity is null");
            return;
        }
        ((ClipboardManager) this.mActivity.getApplicationContext().getSystemService("clipboard")).setText(this.mContent);
        Toast.makeText(this.mActivity, R.string.copy_text_success, 0).show();
    }

    private void insertContact() {
        Intent intent = new Intent("android.intent.action.INSERT", Contacts.CONTENT_URI);
        Iterator it = this.mCards.iterator();
        while (it.hasNext()) {
            VCard card = (VCard) it.next();
            if (!(card == null || card.getKey() == null || card.getValues() == null)) {
                setCardToIntent(card, intent);
            }
        }
        startActivitySafely(intent, R.string.not_insert_contact);
    }

    private void setCardToIntent(VCard card, Intent intent) {
        int count = card.getValues().size();
        if (count > mCardMaxCount) {
            count = mCardMaxCount;
        }
        for (int i = 0; i < count; i++) {
            String value = (String) card.getValues().get(i);
            if (i == 1) {
                if (card.getKey().equalsIgnoreCase("email")) {
                    intent.putExtra("secondary_email", value);
                } else if (card.getKey().equalsIgnoreCase(KEY_PHONE)) {
                    intent.putExtra("secondary_phone", value);
                }
            } else if (i == 2) {
                if (card.getKey().equalsIgnoreCase("email")) {
                    intent.putExtra("tertiary_email", value);
                } else if (card.getKey().equalsIgnoreCase(KEY_PHONE)) {
                    intent.putExtra("tertiary_phone", value);
                }
            } else if (card.getKey().equalsIgnoreCase(QRCodeMatcher.INTENT_CARD_KEY_BIRTH)) {
                ArrayList<ContentValues> data = new ArrayList();
                ContentValues row = new ContentValues();
                row.put("mimetype", "vnd.android.cursor.item/contact_event");
                row.put("data2", Integer.valueOf(3));
                row.put("data1", value);
                data.add(row);
                intent.putParcelableArrayListExtra(d.k, data);
            } else {
                intent.putExtra(card.getKey(), value);
            }
        }
    }

    public void launchMIUIMarket() {
        Intent intent;
        try {
            intent = new Intent("android.intent.action.VIEW");
            if (this.mType == QRCodeType.MARKET) {
                intent.setClassName("com.xiaomi.market", "com.xiaomi.market.ui.AppDetailActivity");
                intent.setData(Uri.parse(this.mContent));
            } else {
                intent.setClassName("com.xiaomi.market", "com.xiaomi.market.ui.MarketTabActivity");
            }
            startActivitySafely(intent);
        } catch (Exception e) {
            intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(this.mContent));
            startActivitySafely(intent);
        }
    }

    private void launchBrowser(String componentStr) {
        if (componentStr != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            ComponentName component = ComponentName.unflattenFromString(componentStr);
            if (component != null) {
                intent.setComponent(component);
                intent.setData(Uri.parse(this.mContent));
                startActivitySafely(intent);
                return;
            }
            launchDefaultBrowser();
        }
    }

    private void launchDefaultBrowser() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(this.mContent));
        if (!startActivitySafely(intent)) {
            try {
                launchBrowser("com.android.browser/.BrowserActivity");
            } catch (Exception ex) {
                Log.e(TAG, ex.getMessage());
            }
        }
    }

    private void launchBrowser() {
        if (this.mCallingApp != null) {
            try {
                launchBrowser(this.mCallingApp);
                return;
            } catch (Exception e) {
                launchDefaultBrowser();
                return;
            }
        }
        launchDefaultBrowser();
    }

    private void connectWiFi() {
        HashMap<String, String> map = QRCodeMatcher.wifiSpliter(this.mContent);
        String ssid = (String) map.get(GpsLatitudeRef.SOUTH);
        String security = (String) map.get(GpsTrackRef.TRUE_DIRECTION);
        String pwd = (String) map.get("P");
        if (this.mActivity == null) {
            Log.v(TAG, "context is null");
            return;
        }
        WifiAdmin wifiAdmin = new WifiAdmin(this.mActivity.getApplicationContext());
        wifiAdmin.openWifi();
        int type = 1;
        if (security.equalsIgnoreCase("WPA")) {
            type = 3;
        } else if (security.equalsIgnoreCase("WEP")) {
            type = 2;
        }
        if (wifiAdmin.connectWifi(wifiAdmin.createWifiInfo(ssid, pwd, type))) {
            startActivitySafely(new Intent("android.settings.WIFI_SETTINGS"), R.string.wifi_open_fail);
        } else if (wifiAdmin.isExist(ssid)) {
            showToast(this.mActivity.getString(R.string.wifi_exist_fail, new Object[]{ssid}));
        } else {
            showToast((int) R.string.wifi_open_fail);
        }
    }

    private boolean removePreference(PreferenceGroup root, String key) {
        Preference child = root.findPreference(key);
        if (child != null && root.removePreference(child)) {
            return true;
        }
        int count = root.getPreferenceCount();
        for (int i = 0; i < count; i++) {
            child = root.getPreference(i);
            if ((child instanceof PreferenceGroup) && removePreference((PreferenceGroup) child, key)) {
                return true;
            }
        }
        return false;
    }

    public void onDestroyView() {
        if (this.mType == QRCodeType.MIRACAST && WifiDisplayAdmin.isWifiDisplayOn()) {
            new WifiDisplayAdmin().stopWifiDisplayScan();
        }
        super.onDestroyView();
        if (this.mWorkHandler != null) {
            this.mWorkHandler.removeCallbacksAndMessages(null);
        }
        DialogUtil.dismissDialog(this.mMiracastDialog);
    }

    private boolean startActivitySafely(Intent intent) {
        return startActivitySafely(intent, -1);
    }

    private boolean startActivitySafely(Intent intent, int msgId) {
        try {
            getActivity().startActivity(intent);
            return true;
        } catch (Exception e) {
            Log.e(TAG, "startActivity fail", e);
            if (this.mActivity == null || msgId == -1) {
                return false;
            }
            Toast.makeText(this.mActivity, msgId, 0).show();
            return false;
        }
    }

    private void startMiracastSettings() {
        startActivitySafely(new Intent(WifiDisplayAdmin.ACTION_MIRACAST_SETTINGS));
    }
}
