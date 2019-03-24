package com.miui.gallery.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import java.util.HashMap;
import miui.yellowpage.Tag.TagWebService.CommonResult;
import miui.yellowpage.YellowPageStatistic.Display;

public class StatReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String statType = intent.getStringExtra("stat_type");
        if ("count_event".equals(statType)) {
            HashMap<String, String> params = null;
            String[] paramKeys = intent.getStringArrayExtra("param_keys");
            if (paramKeys != null && paramKeys.length > 0) {
                String[] paramValues = intent.getStringArrayExtra("param_values");
                if (paramValues == null || paramValues.length != paramKeys.length) {
                    Log.e("StatReceiver", "Param keys and values has not the same count.");
                    return;
                }
                params = new HashMap();
                for (int i = 0; i < paramKeys.length; i++) {
                    params.put(paramKeys[i], paramValues[i]);
                }
            }
            BaseSamplingStatHelper.recordCountEvent(intent.getStringExtra(Display.CATEGORY), intent.getStringExtra(CommonResult.RESULT_TYPE_EVENT), params);
        } else if ("numeric_event".equals(statType)) {
            BaseSamplingStatHelper.recordNumericPropertyEvent(intent.getStringExtra(Display.CATEGORY), intent.getStringExtra(CommonResult.RESULT_TYPE_EVENT), intent.getLongExtra("value", 0));
        } else {
            Log.w("StatReceiver", "Unsupported stat broadcast: " + intent.toUri(0));
        }
    }
}
