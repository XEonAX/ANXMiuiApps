package com.miui.gallery.sdk;

public enum SyncStatus {
    STATUS_NONE,
    STATUS_INIT,
    STATUS_INTERRUPT,
    STATUS_SUCCESS,
    STATUS_ABADON;

    public static SyncStatus toSyncStatus(int status) {
        switch (status) {
            case -1:
                return STATUS_NONE;
            case 0:
                return STATUS_INIT;
            case 1:
                return STATUS_INTERRUPT;
            case 2:
                return STATUS_SUCCESS;
            case 3:
                return STATUS_ABADON;
            default:
                throw new IllegalArgumentException("unknown status: " + status);
        }
    }
}
