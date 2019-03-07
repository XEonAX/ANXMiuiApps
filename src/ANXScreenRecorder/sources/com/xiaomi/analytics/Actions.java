package com.xiaomi.analytics;

public class Actions {
    public static CustomAction newCustomAction() {
        return new CustomAction();
    }

    public static EventAction newEventAction(String eventName) {
        return new EventAction(eventName);
    }

    public static EventAction newEventAction(String eventName, String parameter) {
        return new EventAction(eventName, parameter);
    }

    public static AdAction newAdAction(String actionType) {
        return new AdAction(actionType);
    }

    public static AdAction newAdAction(String adCategory, String actionType) {
        return new AdAction(adCategory, actionType);
    }
}
