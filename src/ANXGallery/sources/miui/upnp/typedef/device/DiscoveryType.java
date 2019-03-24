package miui.upnp.typedef.device;

import miui.yellowpage.YellowPageContract.Search;

public enum DiscoveryType {
    UNDEFINED("undefined"),
    LOCAL(Search.LOCAL_SEARCH),
    LAN("lan"),
    BLUETOOTH("bluetooth"),
    BLE("ble"),
    AP("ap"),
    AIRTUNES("airtunes");
    
    private String string;

    private DiscoveryType(String string) {
        this.string = string;
    }

    public String toString() {
        return this.string;
    }

    public static DiscoveryType retrieveType(String s) {
        for (DiscoveryType T : values()) {
            if (T.toString().equals(s)) {
                return T;
            }
        }
        return UNDEFINED;
    }
}
