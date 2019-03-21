package com.xiaomi.push.service.awake.module;

public enum HelpType {
    ACTIVITY("activity"),
    SERVICE_ACTION("service_action"),
    SERVICE_COMPONENT("service_component"),
    PROVIDER("provider");
    
    public String typeValue;

    private HelpType(String type) {
        this.typeValue = type;
    }
}
