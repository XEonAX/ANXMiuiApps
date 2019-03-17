package com.ali.auth.third.core.history;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.HistoryAccount;
import com.ali.auth.third.core.service.StorageService;
import com.alibaba.wireless.security.open.nocaptcha.INoCaptchaComponent;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AccountHistoryManager {
    private static volatile AccountHistoryManager a;

    private AccountHistoryManager() {
    }

    private String a(List<HistoryAccount> list) {
        if (list == null || list.size() <= 0) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        for (HistoryAccount historyAccount : list) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("userId", historyAccount.userId);
                jSONObject.put("tokenKey", historyAccount.tokenKey);
                jSONObject.put("nick", historyAccount.nick);
                jSONObject.put(NotificationCompat.CATEGORY_EMAIL, historyAccount.email);
                jSONObject.put("mobile", historyAccount.mobile);
                jSONArray.put(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
                return "";
            }
        }
        return jSONArray.toString();
    }

    private List<HistoryAccount> a(String str) throws JSONException {
        List<HistoryAccount> arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONArray jSONArray = new JSONArray(str);
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            if (jSONObject != null) {
                HistoryAccount historyAccount = new HistoryAccount();
                historyAccount.userId = jSONObject.optString("userId");
                historyAccount.tokenKey = jSONObject.optString("tokenKey");
                historyAccount.mobile = jSONObject.optString("mobile");
                historyAccount.nick = jSONObject.optString("nick");
                historyAccount.email = jSONObject.optString(NotificationCompat.CATEGORY_EMAIL);
                arrayList.add(historyAccount);
            }
        }
        return arrayList;
    }

    public static AccountHistoryManager getInstance() {
        if (a == null) {
            synchronized (AccountHistoryManager.class) {
                if (a == null) {
                    a = new AccountHistoryManager();
                }
            }
        }
        return a;
    }

    public HistoryAccount findHistoryAccount(String str) {
        try {
            List<HistoryAccount> historyAccounts = getHistoryAccounts();
            if (historyAccounts == null) {
                return null;
            }
            for (HistoryAccount historyAccount : historyAccounts) {
                if (historyAccount.userId != null && historyAccount.userId.equals(str)) {
                    return historyAccount;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public List<HistoryAccount> getHistoryAccounts() {
        String dDpExValue = ((StorageService) KernelContext.getService(StorageService.class)).getDDpExValue("taesdk_history_acounts");
        if (TextUtils.isEmpty(dDpExValue)) {
            return new ArrayList();
        }
        try {
            return a(dDpExValue);
        } catch (JSONException e) {
            ArrayList arrayList = new ArrayList();
            ((StorageService) KernelContext.getService(StorageService.class)).removeDDpExValue("taesdk_history_acounts");
            return arrayList;
        }
    }

    public HistoryAccount matchHistoryAccount(String str) {
        List<HistoryAccount> historyAccounts = getHistoryAccounts();
        if (historyAccounts != null) {
            for (HistoryAccount historyAccount : historyAccounts) {
                if (TextUtils.equals(str, historyAccount.nick) || TextUtils.equals(str, historyAccount.email)) {
                    return historyAccount;
                }
                if (TextUtils.equals(str, historyAccount.mobile)) {
                    return historyAccount;
                }
            }
        }
        return null;
    }

    public void putLoginHistory(HistoryAccount historyAccount, String str) {
        if (!ConfigManager.getInstance().isSaveHistoryWithSalt() || ((StorageService) KernelContext.getService(StorageService.class)).saveSafeToken(historyAccount.tokenKey, str)) {
            List<HistoryAccount> historyAccounts = getHistoryAccounts();
            if (historyAccounts != null) {
                List arrayList = new ArrayList();
                arrayList.add(historyAccount);
                for (HistoryAccount historyAccount2 : historyAccounts) {
                    if (arrayList.size() >= ConfigManager.getInstance().getMaxHistoryAccount()) {
                        break;
                    } else if (TextUtils.isEmpty(historyAccount2.userId) || !historyAccount2.userId.equals(historyAccount.userId)) {
                        arrayList.add(historyAccount2);
                    }
                }
                ((StorageService) KernelContext.getService(StorageService.class)).putDDpExValue("taesdk_history_acounts", a(arrayList));
                return;
            }
            List arrayList2 = new ArrayList();
            arrayList2.add(historyAccount);
            ((StorageService) KernelContext.getService(StorageService.class)).putDDpExValue("taesdk_history_acounts", a(arrayList2));
        }
    }

    public void removeHistoryAccount(HistoryAccount historyAccount) {
        if (historyAccount != null) {
            List arrayList;
            String str;
            try {
                ((StorageService) KernelContext.getService(StorageService.class)).removeSafeToken(historyAccount.tokenKey);
                str = "";
                try {
                    str = ((StorageService) KernelContext.getService(StorageService.class)).getDDpExValue("taesdk_history_acounts");
                } catch (Exception e) {
                }
                List arrayList2 = TextUtils.isEmpty(str) ? new ArrayList() : a(str);
            } catch (JSONException e2) {
                e2.printStackTrace();
                try {
                    Properties properties = new Properties();
                    properties.setProperty(INoCaptchaComponent.errorCode, "80005");
                    properties.setProperty("cause", "JSONException: " + str);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                ArrayList arrayList3 = new ArrayList();
                ((StorageService) KernelContext.getService(StorageService.class)).removeDDpExValue("taesdk_history_acounts");
                Object arrayList22 = arrayList3;
            } catch (Throwable th) {
                th.printStackTrace();
                try {
                    Properties properties2 = new Properties();
                    properties2.setProperty(INoCaptchaComponent.errorCode, "80005");
                    properties2.setProperty("cause", "Throwable: " + th);
                    return;
                } catch (Exception e32) {
                    e32.printStackTrace();
                    return;
                }
            }
            if (arrayList22 != null) {
                arrayList = new ArrayList();
                for (HistoryAccount historyAccount2 : arrayList22) {
                    if (!historyAccount2.userId.equals(historyAccount.userId)) {
                        arrayList.add(historyAccount2);
                    }
                }
            } else {
                arrayList = arrayList22;
            }
            if (arrayList == null) {
                return;
            }
            if (arrayList == null || arrayList.isEmpty()) {
                ((StorageService) KernelContext.getService(StorageService.class)).removeDDpExValue("taesdk_history_acounts");
            } else {
                ((StorageService) KernelContext.getService(StorageService.class)).putDDpExValue("taesdk_history_acounts", a(arrayList));
            }
        }
    }
}
