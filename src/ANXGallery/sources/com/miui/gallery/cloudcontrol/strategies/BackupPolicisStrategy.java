package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.HashMap;
import java.util.List;

public class BackupPolicisStrategy extends BaseStrategy {
    @SerializedName("policies")
    private List<PolicyWrapper> mPolicies;
    private transient HashMap<String, PolicyWrapper> mPoliciesMap;

    public static class Policy {
        @SerializedName("disallow-metered")
        private boolean mDisallowMetered;
        @SerializedName("expedited")
        private boolean mExpedited;
        @SerializedName("ignore-battery")
        private boolean mIgnoreBattery;
        @SerializedName("manual")
        private boolean mManual;
        @SerializedName("require-charging")
        private boolean mRequireCharging;

        public boolean isDisallowMetered() {
            return this.mDisallowMetered;
        }

        public boolean isRequireCharging() {
            return this.mRequireCharging;
        }

        public boolean isIgnoreBattery() {
            return this.mIgnoreBattery;
        }

        public boolean isManual() {
            return this.mManual;
        }

        public boolean isExpedited() {
            return this.mExpedited;
        }

        public String toString() {
            return "Policy{mDisallowMetered='" + this.mDisallowMetered + ", mRequireCharging=" + this.mRequireCharging + ", mIgnoreBattery=" + this.mIgnoreBattery + ", mManual=" + this.mManual + ", mExpedited=" + this.mExpedited + '}';
        }
    }

    public static class PolicyWrapper {
        @SerializedName("enable")
        private boolean mEnable;
        @SerializedName("policy")
        private Policy mPolicy;
        @SerializedName("type")
        private String mType;

        public String getType() {
            return this.mType;
        }

        public boolean isEnable() {
            return this.mEnable;
        }

        public boolean isDisallowMetered() {
            return this.mPolicy != null ? this.mPolicy.isDisallowMetered() : true;
        }

        public boolean isRequireCharging() {
            return this.mPolicy != null ? this.mPolicy.isRequireCharging() : false;
        }

        public boolean isIgnoreBattery() {
            return this.mPolicy != null ? this.mPolicy.isIgnoreBattery() : false;
        }

        public boolean isManual() {
            return this.mPolicy != null ? this.mPolicy.isManual() : false;
        }

        public boolean isExpedited() {
            return this.mPolicy != null ? this.mPolicy.isExpedited() : false;
        }

        public String toString() {
            return "PolicyWrapper{mType='" + this.mType + ", mPolicy=" + this.mPolicy + '}';
        }
    }

    public PolicyWrapper getPolicy(String type) {
        return (PolicyWrapper) this.mPoliciesMap.get(type);
    }

    public String toString() {
        return "BackupPolicisStrategy{mPolicies=" + this.mPolicies + '}';
    }

    public void doAdditionalProcessing() {
        if (this.mPoliciesMap == null) {
            this.mPoliciesMap = new HashMap();
        } else {
            this.mPoliciesMap.clear();
        }
        if (BaseMiscUtil.isValid(this.mPolicies)) {
            for (PolicyWrapper policy : this.mPolicies) {
                if (!TextUtils.isEmpty(policy.getType())) {
                    this.mPoliciesMap.put(policy.getType(), policy);
                }
            }
        }
    }
}
