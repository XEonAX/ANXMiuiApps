package com.miui.gallery.card.preprocess;

import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.util.Log;
import org.json.JSONObject;

public class ScenarioAlbumChargingTask extends ScenarioAlbumTask {
    public ScenarioAlbumChargingTask(int type) {
        super(type);
    }

    public boolean requireCharging() {
        return true;
    }

    public boolean onProcess(JSONObject data, long recordId) throws Exception {
        Record record = (Record) GalleryEntityManager.getInstance().find(Record.class, recordId);
        if (!(record == null || record.getState() == 2)) {
            if (isCancelled()) {
                Log.d("ScenarioAlbumChargingTask", "task is cancelled");
            } else {
                Log.d("ScenarioAlbumChargingTask", "start generate card");
                generateCard(data, record, true);
            }
        }
        return false;
    }
}
