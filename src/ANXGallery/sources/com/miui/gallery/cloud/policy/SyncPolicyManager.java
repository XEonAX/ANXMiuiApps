package com.miui.gallery.cloud.policy;

import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.strategies.BackupPolicisStrategy;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.Map;

public class SyncPolicyManager {
    private Map<SyncType, IPolicy> mPolicies;

    private static class Singleton {
        private static SyncPolicyManager sInstance = new SyncPolicyManager();
    }

    public static SyncPolicyManager getInstance() {
        return Singleton.sInstance;
    }

    private SyncPolicyManager() {
        this.mPolicies = new HashMap();
        Object policies = (BackupPolicisStrategy) CloudControlManager.getInstance().queryFeatureStrategy("backup-policies");
        Log.i("SyncPolicyManager", "policies %s", policies);
        for (SyncType type : SyncType.values()) {
            IPolicy policy = new PolicyImpl(type, policies == null ? null : policies.getPolicy(type.getIdentifier()));
            addPolicy(policy.getType(), policy);
        }
    }

    public void addPolicy(SyncType type, IPolicy policy) {
        if (policy != null) {
            this.mPolicies.put(type, policy);
        }
    }

    public IPolicy getPolicy(SyncType type) {
        return (IPolicy) this.mPolicies.get(type);
    }
}
