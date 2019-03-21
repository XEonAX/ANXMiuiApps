package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.HashMap;
import java.util.Map;

public class AssemblePushCollectionsManager implements AbstractPushManager {
    private static volatile AssemblePushCollectionsManager sInstance;
    private PushConfiguration mConfiguration;
    private Context mContext;
    private Map<AssemblePush, AbstractPushManager> mManagers = new HashMap();

    private AssemblePushCollectionsManager(Context context) {
        this.mContext = context;
    }

    public static AssemblePushCollectionsManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (AssemblePushCollectionsManager.class) {
                if (sInstance == null) {
                    sInstance = new AssemblePushCollectionsManager(context);
                }
            }
        }
        return sInstance;
    }

    public void setConfiguration(PushConfiguration configuration) {
        this.mConfiguration = configuration;
    }

    public void addManager(AssemblePush key, AbstractPushManager manager) {
        if (manager != null) {
            if (this.mManagers.containsKey(key)) {
                this.mManagers.remove(key);
            }
            this.mManagers.put(key, manager);
        }
    }

    public void removeManager(AssemblePush type) {
        this.mManagers.remove(type);
    }

    public boolean contain(AssemblePush type) {
        return this.mManagers.containsKey(type);
    }

    public AbstractPushManager getManager(AssemblePush managerType) {
        return (AbstractPushManager) this.mManagers.get(managerType);
    }

    public void register() {
        MyLog.w("ASSEMBLE_PUSH : assemble push register");
        if (this.mManagers.size() <= 0) {
            initAssemblePushManager();
        }
        if (this.mManagers.size() > 0) {
            for (AbstractPushManager manager : this.mManagers.values()) {
                if (manager != null) {
                    manager.register();
                }
            }
            AssemblePushHelper.checkAssemblePushStatus(this.mContext);
        }
    }

    public void unregister() {
        MyLog.w("ASSEMBLE_PUSH : assemble push unregister");
        for (AbstractPushManager manager : this.mManagers.values()) {
            if (manager != null) {
                manager.unregister();
            }
        }
        this.mManagers.clear();
    }

    private void initAssemblePushManager() {
        if (this.mConfiguration != null) {
            StringBuilder sb;
            AbstractPushManager manager;
            if (this.mConfiguration.getOpenHmsPush()) {
                sb = new StringBuilder();
                sb.append(" HW user switch : ");
                sb.append(this.mConfiguration.getOpenHmsPush());
                sb.append(" HW online switch : ");
                sb.append(AssemblePushHelper.isOpenAssemblePushOnlineSwitch(this.mContext, AssemblePush.ASSEMBLE_PUSH_HUAWEI));
                sb.append(" HW isSupport : ");
                sb.append(PhoneBrand.HUAWEI.equals(AssemblePushUtils.getPhoneBrand(this.mContext)));
                MyLog.w("ASSEMBLE_PUSH : " + sb.toString());
            }
            if (this.mConfiguration.getOpenHmsPush() && AssemblePushHelper.isOpenAssemblePushOnlineSwitch(this.mContext, AssemblePush.ASSEMBLE_PUSH_HUAWEI) && PhoneBrand.HUAWEI.equals(AssemblePushUtils.getPhoneBrand(this.mContext))) {
                if (!contain(AssemblePush.ASSEMBLE_PUSH_HUAWEI)) {
                    addManager(AssemblePush.ASSEMBLE_PUSH_HUAWEI, PushManagerFactory.getManager(this.mContext, AssemblePush.ASSEMBLE_PUSH_HUAWEI));
                }
                MyLog.v("hw manager add to list");
            } else if (contain(AssemblePush.ASSEMBLE_PUSH_HUAWEI)) {
                manager = getManager(AssemblePush.ASSEMBLE_PUSH_HUAWEI);
                if (manager != null) {
                    removeManager(AssemblePush.ASSEMBLE_PUSH_HUAWEI);
                    manager.unregister();
                }
            }
            if (this.mConfiguration.getOpenFCMPush()) {
                sb = new StringBuilder();
                sb.append(" FCM user switch : ");
                sb.append(this.mConfiguration.getOpenFCMPush());
                sb.append(" FCM online switch : ");
                sb.append(AssemblePushHelper.isOpenAssemblePushOnlineSwitch(this.mContext, AssemblePush.ASSEMBLE_PUSH_FCM));
                sb.append(" FCM isSupport : ");
                sb.append(AssemblePushUtils.isGoogleServiceSatisfied(this.mContext));
                MyLog.w("ASSEMBLE_PUSH : " + sb.toString());
            }
            if (this.mConfiguration.getOpenFCMPush() && AssemblePushHelper.isOpenAssemblePushOnlineSwitch(this.mContext, AssemblePush.ASSEMBLE_PUSH_FCM) && AssemblePushUtils.isGoogleServiceSatisfied(this.mContext)) {
                if (!contain(AssemblePush.ASSEMBLE_PUSH_FCM)) {
                    addManager(AssemblePush.ASSEMBLE_PUSH_FCM, PushManagerFactory.getManager(this.mContext, AssemblePush.ASSEMBLE_PUSH_FCM));
                }
                MyLog.v("fcm manager add to list");
            } else if (contain(AssemblePush.ASSEMBLE_PUSH_FCM)) {
                manager = getManager(AssemblePush.ASSEMBLE_PUSH_FCM);
                if (manager != null) {
                    removeManager(AssemblePush.ASSEMBLE_PUSH_FCM);
                    manager.unregister();
                }
            }
            if (this.mConfiguration.getOpenCOSPush()) {
                sb = new StringBuilder();
                sb.append(" COS user switch : ");
                sb.append(this.mConfiguration.getOpenCOSPush());
                sb.append(" COS online switch : ");
                sb.append(AssemblePushHelper.isOpenAssemblePushOnlineSwitch(this.mContext, AssemblePush.ASSEMBLE_PUSH_COS));
                sb.append(" COS isSupport : ");
                sb.append(AssemblePushUtils.isColorOSPushSupport(this.mContext));
                MyLog.w("ASSEMBLE_PUSH : " + sb.toString());
            }
            if (this.mConfiguration.getOpenCOSPush() && AssemblePushHelper.isOpenAssemblePushOnlineSwitch(this.mContext, AssemblePush.ASSEMBLE_PUSH_COS) && AssemblePushUtils.isColorOSPushSupport(this.mContext)) {
                addManager(AssemblePush.ASSEMBLE_PUSH_COS, PushManagerFactory.getManager(this.mContext, AssemblePush.ASSEMBLE_PUSH_COS));
            } else if (contain(AssemblePush.ASSEMBLE_PUSH_COS)) {
                manager = getManager(AssemblePush.ASSEMBLE_PUSH_COS);
                if (manager != null) {
                    removeManager(AssemblePush.ASSEMBLE_PUSH_COS);
                    manager.unregister();
                }
            }
        }
    }

    public boolean getUserSwitch(AssemblePush type) {
        switch (type) {
            case ASSEMBLE_PUSH_HUAWEI:
                if (this.mConfiguration != null) {
                    return this.mConfiguration.getOpenHmsPush();
                }
                return false;
            case ASSEMBLE_PUSH_FCM:
                if (this.mConfiguration != null) {
                    return this.mConfiguration.getOpenFCMPush();
                }
                return false;
            case ASSEMBLE_PUSH_COS:
                if (this.mConfiguration != null) {
                    return this.mConfiguration.getOpenCOSPush();
                }
                return false;
            default:
                return false;
        }
    }
}
