package org.apache.thrift.transport;

import org.apache.thrift.TException;

public class TTransportException extends TException {
    private static final long serialVersionUID = 1;
    protected int type_ = 0;

    public TTransportException(int type) {
        this.type_ = type;
    }

    public TTransportException(int type, String message) {
        super(message);
        this.type_ = type;
    }

    public TTransportException(String message) {
        super(message);
    }

    public TTransportException(int type, Throwable cause) {
        super(cause);
        this.type_ = type;
    }
}
