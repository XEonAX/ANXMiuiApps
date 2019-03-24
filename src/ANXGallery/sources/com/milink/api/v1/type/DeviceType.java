package com.milink.api.v1.type;

public enum DeviceType {
    Unknown,
    TV,
    Speaker;
    
    private static final String AIRKAN = "airkan";
    private static final String AIRPLAY = "airplay";
    private static final String AIRTUNES = "airtunes";
    private static final String DLNA_SPEAKER = "dlna.speaker";
    private static final String DLNA_TV = "dlna.tv";

    public static DeviceType create(String type) {
        if (type.equalsIgnoreCase(AIRKAN)) {
            return TV;
        }
        if (type.equalsIgnoreCase(AIRPLAY)) {
            return TV;
        }
        if (type.equalsIgnoreCase(AIRTUNES)) {
            return Speaker;
        }
        if (type.equalsIgnoreCase(DLNA_TV)) {
            return TV;
        }
        if (type.equalsIgnoreCase(DLNA_SPEAKER)) {
            return Speaker;
        }
        return Unknown;
    }
}
