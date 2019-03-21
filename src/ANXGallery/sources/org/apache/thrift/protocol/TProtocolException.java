package org.apache.thrift.protocol;

import org.apache.thrift.TException;

public class TProtocolException extends TException {
    private static final long serialVersionUID = 1;
    protected int type_ = 0;

    public TProtocolException(int type, String message) {
        super(message);
        this.type_ = type;
    }

    public TProtocolException(String message) {
        super(message);
    }
}
