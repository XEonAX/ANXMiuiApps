package com.xiaomi.analytics;

public class TrackAction extends Action {
    public TrackAction setCategory(String category) {
        addContent("_category_", (Object) category);
        return this;
    }

    public TrackAction setAction(String action) {
        addContent("_action_", (Object) action);
        return this;
    }

    public TrackAction setLabel(String label) {
        addContent("_label_", (Object) label);
        return this;
    }

    public TrackAction setValue(long value) {
        addContent("_value_", (Object) value + "");
        return this;
    }
}
