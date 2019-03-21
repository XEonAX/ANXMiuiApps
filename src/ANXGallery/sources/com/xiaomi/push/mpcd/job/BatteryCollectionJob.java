package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import java.util.Set;
import org.json.JSONObject;

public class BatteryCollectionJob extends CollectionJob {
    public BatteryCollectionJob(Context context, int period) {
        super(context, period);
    }

    public int getJobId() {
        return 20;
    }

    public String collectInfo() {
        return doFormatData();
    }

    private String doFormatData() {
        StringBuilder builder = new StringBuilder();
        try {
            Intent batteryStatus = this.context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (batteryStatus != null) {
                Bundle bundle = batteryStatus.getExtras();
                if (bundle != null) {
                    Set<String> keys = bundle.keySet();
                    JSONObject json = new JSONObject();
                    if (keys != null && keys.size() > 0) {
                        for (String key : keys) {
                            if (!TextUtils.isEmpty(key)) {
                                try {
                                    json.put(key, String.valueOf(bundle.get(key)));
                                } catch (Exception e) {
                                }
                            }
                        }
                        builder.append(json);
                    }
                }
            }
        } catch (Exception e2) {
        }
        return builder.toString();
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.Battery;
    }
}
