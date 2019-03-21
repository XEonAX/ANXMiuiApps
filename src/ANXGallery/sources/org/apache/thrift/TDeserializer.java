package org.apache.thrift;

import org.apache.thrift.protocol.TBinaryProtocol.Factory;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.TProtocolFactory;
import org.apache.thrift.transport.TMemoryInputTransport;

public class TDeserializer {
    private final TProtocol protocol_;
    private final TMemoryInputTransport trans_;

    public TDeserializer() {
        this(new Factory());
    }

    public TDeserializer(TProtocolFactory protocolFactory) {
        this.trans_ = new TMemoryInputTransport();
        this.protocol_ = protocolFactory.getProtocol(this.trans_);
    }

    public void deserialize(TBase base, byte[] bytes) throws TException {
        try {
            this.trans_.reset(bytes);
            base.read(this.protocol_);
        } finally {
            this.protocol_.reset();
        }
    }
}
