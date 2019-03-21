package org.keyczar.enums;

public enum KeyStatus {
    PRIMARY(0, "primary"),
    ACTIVE(1, "active"),
    INACTIVE(2, "inactive");
    
    private String name;
    private int value;

    private KeyStatus(int i, String str) {
        this.value = i;
        this.name = str;
    }

    int getValue() {
        return this.value;
    }

    String getName() {
        return this.name;
    }

    public static KeyStatus getStatus(int i) {
        switch (i) {
            case 0:
                return PRIMARY;
            case 1:
                return ACTIVE;
            case 2:
                return INACTIVE;
            default:
                return null;
        }
    }

    public static KeyStatus getStatus(String str) {
        if (str != null) {
            if (str.equalsIgnoreCase(PRIMARY.getName())) {
                return PRIMARY;
            }
            if (str.equalsIgnoreCase(ACTIVE.getName())) {
                return ACTIVE;
            }
            if (str.equalsIgnoreCase(INACTIVE.getName())) {
                return INACTIVE;
            }
        }
        return ACTIVE;
    }
}
