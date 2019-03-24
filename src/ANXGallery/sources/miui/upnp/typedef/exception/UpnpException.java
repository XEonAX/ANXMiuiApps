package miui.upnp.typedef.exception;

import miui.upnp.typedef.error.UpnpError;

public class UpnpException extends Exception {
    private int errorCode;

    public UpnpException(int errorCode, String detailMessage) {
        super(detailMessage);
        this.errorCode = errorCode;
    }

    public UpnpException(UpnpError error, String detailMessage) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(error.getMessage());
        stringBuilder.append(" -> ");
        stringBuilder.append(detailMessage);
        super(stringBuilder.toString());
        this.errorCode = error.getCode();
    }

    public UpnpException(UpnpError error) {
        super(error.getMessage());
        this.errorCode = error.getCode();
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public UpnpError toUpnpError() {
        return new UpnpError(this.errorCode, getMessage());
    }
}
