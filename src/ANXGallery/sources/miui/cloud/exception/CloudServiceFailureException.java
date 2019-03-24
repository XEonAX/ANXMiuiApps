package miui.cloud.exception;

public class CloudServiceFailureException extends Exception {
    private int errorCode;

    public CloudServiceFailureException(String message) {
        super(message);
    }

    public CloudServiceFailureException(Throwable cause) {
        super(cause);
    }

    public CloudServiceFailureException(Throwable cause, int errorCode) {
        super(cause);
        this.errorCode = errorCode;
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}
