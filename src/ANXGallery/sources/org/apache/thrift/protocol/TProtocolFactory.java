package org.apache.thrift.protocol;

import java.io.Serializable;
import org.apache.thrift.transport.TTransport;

public interface TProtocolFactory extends Serializable {
    TProtocol getProtocol(TTransport tTransport);
}
