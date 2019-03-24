package miui.upnp.typedef.deviceupdate;

public enum DeviceUpdateType {
    UNDEFINED("undefined"),
    DEVICE_FOUND("deviceFound"),
    DEVICE_LOST("deviceLost");
    
    private String string;

    private DeviceUpdateType(String string) {
        this.string = string;
    }

    public String toString() {
        return this.string;
    }

    public static DeviceUpdateType retrieveType(String s) {
        for (DeviceUpdateType T : values()) {
            if (T.toString().equals(s)) {
                return T;
            }
        }
        return UNDEFINED;
    }
}
