package com.miui.internal.analytics;

import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.PatternSyntaxException;

public class PolicyHelper {
    private static final String SPLITTER = ":";
    private static final String TAG = "PolicyHelper";
    private Map<String, Policy> ap = new HashMap();
    private ObjectBuilder<Policy> aq = new ObjectBuilder();

    public PolicyHelper() {
        this.aq.registerClass(LastPolicy.class, LastPolicy.TAG);
        this.aq.registerClass(NormalPolicy.class, NormalPolicy.TAG);
        this.aq.registerClass(CountPolicy.class, "count");
    }

    public void clear() {
        this.ap.clear();
    }

    public Policy getPolicy(String str) {
        Throwable e;
        Policy policy = null;
        if (TextUtils.isEmpty(str)) {
            return policy;
        }
        try {
            String[] split = str.split(SPLITTER);
            if (split.length <= 0) {
                return policy;
            }
            Policy policy2 = (Policy) this.ap.get(split[0]);
            try {
                String str2 = split.length > 1 ? split[1] : "";
                if (policy2 == null) {
                    policy = (Policy) this.aq.buildObject(str);
                    if (policy == null) {
                        return policy;
                    }
                    this.ap.put(str, policy);
                    policy.setParam(str2);
                    policy.prepare();
                    return policy;
                }
                policy2.setParam(str2);
                return policy2;
            } catch (PatternSyntaxException e2) {
                e = e2;
                policy = policy2;
                Log.e(TAG, "PatternSyntaxException catched when getPolicy", e);
                return policy;
            }
        } catch (PatternSyntaxException e3) {
            e = e3;
        }
    }

    public void end() {
        for (String str : this.ap.keySet()) {
            ((Policy) this.ap.get(str)).end();
        }
    }
}
