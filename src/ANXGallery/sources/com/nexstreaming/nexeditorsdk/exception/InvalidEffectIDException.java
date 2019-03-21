package com.nexstreaming.nexeditorsdk.exception;

public class InvalidEffectIDException extends nexSDKException {
    private static final long serialVersionUID = 1;

    public InvalidEffectIDException(String str, String str2) {
        super(str2 + " is not valid " + str + " ID.");
    }
}
