package com.miui.gallery.card.preprocess;

import com.miui.gallery.assistant.process.BaseImageTask;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ScenarioTask extends BaseImageTask {
    protected abstract boolean onProcess(JSONObject jSONObject, long j) throws Exception;

    ScenarioTask(int type) {
        super(type);
    }

    public final boolean process(JSONObject data) throws Exception {
        long recordId = parseRecordId(data);
        if (recordId != 0) {
            return onProcess(data, recordId);
        }
        Log.e("ScenarioTask", "data parse failed");
        return false;
    }

    public int getNetworkType() {
        return 2;
    }

    public boolean requireCharging() {
        return false;
    }

    public boolean requireDeviceIdle() {
        return true;
    }

    private static JSONObject wrapTaskData(long recordId) {
        JSONObject result = new JSONObject();
        try {
            result.put("recordId", recordId);
        } catch (Object e) {
            Log.e("ScenarioTask", "wrap task data error.\n", e);
        }
        return result;
    }

    private static long parseRecordId(JSONObject data) throws JSONException {
        if (data == null) {
            return 0;
        }
        return data.getLong("recordId");
    }

    public static void post(int taskType, String taskTag, long recordId) {
        PendingTaskManager.getInstance().postTask(taskType, wrapTaskData(recordId), taskTag);
    }
}
