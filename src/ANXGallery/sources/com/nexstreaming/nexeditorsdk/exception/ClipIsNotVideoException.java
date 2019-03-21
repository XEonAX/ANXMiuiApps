package com.nexstreaming.nexeditorsdk.exception;

public class ClipIsNotVideoException extends nexSDKException {
    private static final long serialVersionUID = 1;

    public ClipIsNotVideoException() {
        super("This clip is not a video clip.");
    }
}
