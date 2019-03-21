package com.miui.gallery.assistant.process;

import org.json.JSONObject;

public class ExistImageFeatureChargingTask extends ExistImageFeatureTask {
    public ExistImageFeatureChargingTask(int type) {
        super(type);
    }

    public boolean requireCharging() {
        return true;
    }

    public boolean process(JSONObject data) throws Exception {
        processInternal(data, 9, 5);
        return false;
    }
}
