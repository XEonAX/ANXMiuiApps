package com.nexstreaming.nexeditorsdk.exception;

public class ProjectAlreadyAttachedException extends nexSDKException {
    private static final long serialVersionUID = 1;

    public ProjectAlreadyAttachedException() {
        super("Item already attached to the project.");
    }
}
