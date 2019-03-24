package com.miui.internal.analytics;

import android.content.Context;
import java.util.Collections;
import java.util.List;

public class EventReader {
    private PersistenceHelper R = null;

    public void open(Context context) {
        this.R = PersistenceHelper.getInstance();
    }

    public void close() {
        if (this.R != null) {
            this.R = null;
        }
    }

    public List<Event> readEvents(String str, List<Item> list) {
        if (this.R != null) {
            return this.R.readEvents(str, list);
        }
        return Collections.emptyList();
    }
}
