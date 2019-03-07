package com.xiaomi.analytics;

import com.xiaomi.analytics.internal.v1.AnalyticsInterface;

public class PolicyConfiguration {
    private static final String DEFAULT_PRIVACY_KEY = "privacy_policy";
    private static final String DEFAULT_PRIVACY_VALUE_NO = "privacy_no";
    private static final String DEFAULT_PRIVACY_VALUE_USER = "privacy_user";
    private Privacy mPrivacy;

    public enum Privacy {
        NO,
        USER
    }

    public PolicyConfiguration setPrivacy(Privacy privacy) {
        this.mPrivacy = privacy;
        return this;
    }

    public void apply(AnalyticsInterface analytics) {
        if (analytics != null) {
            applyPrivacy(analytics);
        }
    }

    private void applyPrivacy(AnalyticsInterface analytics) {
        if (this.mPrivacy != null && analytics != null) {
            if (this.mPrivacy == Privacy.NO) {
                analytics.setDefaultPolicy(DEFAULT_PRIVACY_KEY, DEFAULT_PRIVACY_VALUE_NO);
            } else {
                analytics.setDefaultPolicy(DEFAULT_PRIVACY_KEY, DEFAULT_PRIVACY_VALUE_USER);
            }
        }
    }
}
