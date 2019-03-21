package org.apache.thrift;

public class TException extends Exception {
    private static final long serialVersionUID = 1;

    public TException(String message) {
        super(message);
    }

    public TException(Throwable cause) {
        super(cause);
    }
}
