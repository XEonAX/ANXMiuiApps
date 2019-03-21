package org.apache.thrift;

import java.io.Serializable;
import org.apache.thrift.protocol.TProtocol;

public interface TBase<T extends TBase, F> extends Serializable, Comparable<T> {
    void read(TProtocol tProtocol) throws TException;

    void write(TProtocol tProtocol) throws TException;
}
