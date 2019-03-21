package com.miui.gallery.push;

import android.accounts.Account;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.miui.gallery.agreement.AgreementsUtils;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.preference.BaseGalleryPreferences.SampleStatistic;
import com.miui.gallery.push.messagehandler.MessageHandler;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Encode;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.PrintInstallHelper;
import com.miui.gallery.util.PrivacyAgreementUtils;
import com.miui.os.Rom;
import com.xiaomi.mipush.sdk.MiPushClient;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class GalleryPushManager {

    private static class SingletonHolder {
        static final GalleryPushManager INSTANCE = new GalleryPushManager();
    }

    private GalleryPushManager() {
    }

    public static GalleryPushManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    private void subscribeTopics(Context context, boolean unsubscribeOthers, String... topics) {
        if (context != null) {
            List<String> subscribedTopics = MiPushClient.getAllTopic(context);
            Iterator it;
            if (topics != null && topics.length != 0) {
                ArrayList<String> topicList = new ArrayList(Arrays.asList(topics));
                if (BaseMiscUtil.isValid(subscribedTopics)) {
                    for (String subscribedTopic : subscribedTopics) {
                        if (!topicList.contains(subscribedTopic) && unsubscribeOthers) {
                            MiPushClient.unsubscribe(context, subscribedTopic, null);
                        }
                    }
                }
                it = topicList.iterator();
                while (it.hasNext()) {
                    MiPushClient.subscribe(context, (String) it.next(), null);
                }
            } else if (unsubscribeOthers && BaseMiscUtil.isValid(subscribedTopics)) {
                for (String subscribedTopic2 : subscribedTopics) {
                    MiPushClient.unsubscribe(context, subscribedTopic2, null);
                }
            }
        }
    }

    private void setUserAccount(Context context, String userAccount, boolean unsetOthers) {
        String encodedUserAccount;
        if (TextUtils.isEmpty(userAccount)) {
            encodedUserAccount = null;
        } else {
            encodedUserAccount = Encode.SHA1Encode(userAccount.getBytes());
        }
        List<String> registeredAccounts = MiPushClient.getAllUserAccount(context);
        if (BaseMiscUtil.isValid(registeredAccounts)) {
            for (String account : registeredAccounts) {
                if (!(TextUtils.isEmpty(account) || TextUtils.equals(account, encodedUserAccount) || !unsetOthers)) {
                    MiPushClient.unsetUserAccount(context, account, null);
                }
            }
        }
        if (!false && encodedUserAccount != null) {
            MiPushClient.setUserAccount(context, encodedUserAccount, null);
        }
    }

    public void onAddAccount(Context context, Account account) {
        if (context != null) {
            if (account == null || TextUtils.isEmpty(account.name)) {
                setUserAccount(context, null, true);
            } else {
                setUserAccount(context, account.name, true);
            }
            for (MessageHandler handler : MessageHandlerFactory.getAllMessageHandlers()) {
                handler.onAddAccount();
            }
        }
    }

    public void onDeleteAccount(Context context) {
        if (context != null) {
            setUserAccount(context, null, true);
            for (MessageHandler handler : MessageHandlerFactory.getAllMessageHandlers()) {
                handler.onDeleteAccount();
            }
            unsubscribeAccountTopic(context);
            subscribeTopics(context, false, getAccountTopic(null));
        }
    }

    public void setUserAccountAndTopics(Context context) {
        if (context != null) {
            Account account = AccountCache.getAccount();
            if (account == null || TextUtils.isEmpty(account.name)) {
                setUserAccount(context, null, true);
            } else {
                setUserAccount(context, account.name, true);
            }
            ArrayList<String> topics = new ArrayList();
            topics.add("cloud_control");
            String printTopic = getPrintTopic();
            if (!TextUtils.isEmpty(printTopic)) {
                topics.add(printTopic);
            }
            String storyTopic = getStoryTopic();
            if (!TextUtils.isEmpty(storyTopic)) {
                topics.add(storyTopic);
            }
            String versionTopic = getMiuiVersionTopic();
            if (!TextUtils.isEmpty(versionTopic)) {
                topics.add(versionTopic);
            }
            topics.add(getAccountTopic(account));
            subscribeTopics(context, true, (String[]) topics.toArray(new String[topics.size()]));
        }
    }

    private String getPrintTopic() {
        if (PrintInstallHelper.getInstance().isPhotoPrintEnable()) {
            return "photo_print";
        }
        return null;
    }

    private String getStoryTopic() {
        if (ImageFeatureManger.isStoryFunctionEnable()) {
            return "gallery_story";
        }
        return null;
    }

    private String getMiuiVersionTopic() {
        if (Rom.IS_STABLE) {
            return "miui_version_stable";
        }
        if (Rom.IS_ALPHA) {
            return "miui_version_alpha";
        }
        if (Rom.IS_DEV) {
            return "miui_version_dev";
        }
        return null;
    }

    private String getAccountTopic(Account account) {
        if (TextUtils.isEmpty(account == null ? null : account.name)) {
            return String.format(Locale.US, "%s_%s", new Object[]{"xiaomi_account_sample", Long.valueOf(Math.abs(SampleStatistic.getUniqId()) % 10)});
        }
        return String.format(Locale.US, "%s_%s", new Object[]{"xiaomi_account", (account == null ? null : account.name).substring(account.name.length() - 1)});
    }

    private void unsubscribeAccountTopic(Context context) {
        List<String> subscribedTopics = MiPushClient.getAllTopic(context);
        if (BaseMiscUtil.isValid(subscribedTopics)) {
            for (String subscribedTopic : subscribedTopics) {
                if (subscribedTopic != null && subscribedTopic.startsWith("xiaomi_account")) {
                    MiPushClient.unsubscribe(context, subscribedTopic, null);
                }
            }
        }
    }

    private boolean shouldInit(Context context) {
        List<RunningAppProcessInfo> processInfos = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (processInfos != null) {
            String mainProcessName = context.getPackageName();
            int myPid = Process.myPid();
            for (RunningAppProcessInfo info : processInfos) {
                if (info.pid == myPid && mainProcessName.equals(info.processName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void registerPush(Context context) {
        if (!PrivacyAgreementUtils.isGalleryAgreementEnable(context)) {
            Log.w("GalleryPushManager", "Register push failed: privacy agreement disabled");
            unregisterPush(context);
        } else if (AgreementsUtils.isNetworkingAgreementAccepted() && shouldInit(context)) {
            MiPushClient.registerPush(context, "2882303761517492012", "5601749292012");
        }
    }

    private void unregisterPush(Context context) {
        if (shouldInit(context)) {
            MiPushClient.unregisterPush(context);
        }
    }
}
