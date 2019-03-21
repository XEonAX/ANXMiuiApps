package org.keyczar.enums;

import org.keyczar.i18n.Messages;

public enum Flag {
    LOCATION("location"),
    NAME("name"),
    SIZE("size"),
    STATUS("status"),
    PURPOSE("purpose"),
    PADDING("padding"),
    DESTINATION("destination"),
    VERSION("version"),
    ASYMMETRIC("asymmetric"),
    CRYPTER("crypter"),
    PEMFILE("pemfile"),
    PASSPHRASE("passphrase");
    
    private final String name;

    private Flag(String str) {
        this.name = str;
    }

    public String toString() {
        return this.name;
    }

    public static Flag getFlag(String str) {
        if (str == null) {
            throw new NullPointerException();
        } else if (str.equalsIgnoreCase(LOCATION.toString())) {
            return LOCATION;
        } else {
            if (str.equalsIgnoreCase(NAME.toString())) {
                return NAME;
            }
            if (str.equalsIgnoreCase(SIZE.toString())) {
                return SIZE;
            }
            if (str.equalsIgnoreCase(STATUS.toString())) {
                return STATUS;
            }
            if (str.equalsIgnoreCase(PURPOSE.toString())) {
                return PURPOSE;
            }
            if (str.equalsIgnoreCase(DESTINATION.toString())) {
                return DESTINATION;
            }
            if (str.equalsIgnoreCase(VERSION.toString())) {
                return VERSION;
            }
            if (str.equalsIgnoreCase(ASYMMETRIC.toString())) {
                return ASYMMETRIC;
            }
            if (str.equalsIgnoreCase(CRYPTER.toString())) {
                return CRYPTER;
            }
            if (str.equalsIgnoreCase(PEMFILE.toString())) {
                return PEMFILE;
            }
            if (str.equalsIgnoreCase(PASSPHRASE.toString())) {
                return PASSPHRASE;
            }
            if (str.equalsIgnoreCase(PADDING.toString())) {
                return PADDING;
            }
            throw new IllegalArgumentException(Messages.getString("Flag.UnknownFlag", str));
        }
    }
}
