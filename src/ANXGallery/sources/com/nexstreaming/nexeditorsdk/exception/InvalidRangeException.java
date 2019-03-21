package com.nexstreaming.nexeditorsdk.exception;

public class InvalidRangeException extends nexSDKException {
    private static final long serialVersionUID = 1;

    public InvalidRangeException(int i, int i2) {
        super("end is low then start (" + i + " >= " + i2 + ")");
    }

    public InvalidRangeException(int i) {
        super("duration is zero or minus. (" + i + ")");
    }

    public InvalidRangeException(int i, int i2, int i3) {
        super("value is not range. (" + i + " < " + i3 + " < " + i2 + ")");
    }

    public InvalidRangeException(int i, int i2, boolean z) {
        super("value is low then limit. (" + i2 + " < " + i + ")");
    }
}
