package org.apache.thrift.protocol;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.thrift.TException;
import org.apache.thrift.transport.TTransport;
import org.keyczar.Keyczar;

public class XmPushTBinaryProtocol extends TBinaryProtocol {
    private static int MAX_THRIFT_BINARY_SIZE = 104857600;
    private static int MAX_THRIFT_LIST_SIZE = 10000;
    private static int MAX_THRIFT_MAP_SIZE = 10000;
    private static int MAX_THRIFT_SET_SIZE = 10000;
    private static int MAX_THRIFT_STRING_SIZE = 10485760;

    public static class Factory extends org.apache.thrift.protocol.TBinaryProtocol.Factory {
        public Factory() {
            super(false, true);
        }

        public Factory(boolean strictRead, boolean strictWrite, int readLength) {
            super(strictRead, strictWrite, readLength);
        }

        public TProtocol getProtocol(TTransport trans) {
            TBinaryProtocol proto = new XmPushTBinaryProtocol(trans, this.strictRead_, this.strictWrite_);
            if (this.readLength_ != 0) {
                proto.setReadLength(this.readLength_);
            }
            return proto;
        }
    }

    public XmPushTBinaryProtocol(TTransport trans, boolean strictRead, boolean strictWrite) {
        super(trans, strictRead, strictWrite);
    }

    public TMap readMapBegin() throws TException {
        byte keyType = readByte();
        byte valueType = readByte();
        int size = readI32();
        if (size <= MAX_THRIFT_MAP_SIZE) {
            return new TMap(keyType, valueType, size);
        }
        throw new TProtocolException(3, "Thrift map size " + size + " out of range!");
    }

    public TList readListBegin() throws TException {
        byte type = readByte();
        int size = readI32();
        if (size <= MAX_THRIFT_LIST_SIZE) {
            return new TList(type, size);
        }
        throw new TProtocolException(3, "Thrift list size " + size + " out of range!");
    }

    public TSet readSetBegin() throws TException {
        byte type = readByte();
        int size = readI32();
        if (size <= MAX_THRIFT_SET_SIZE) {
            return new TSet(type, size);
        }
        throw new TProtocolException(3, "Thrift set size " + size + " out of range!");
    }

    public String readString() throws TException {
        int size = readI32();
        if (size > MAX_THRIFT_STRING_SIZE) {
            throw new TProtocolException(3, "Thrift string size " + size + " out of range!");
        } else if (this.trans_.getBytesRemainingInBuffer() < size) {
            return readStringBody(size);
        } else {
            try {
                String s = new String(this.trans_.getBuffer(), this.trans_.getBufferPosition(), size, Keyczar.DEFAULT_ENCODING);
                this.trans_.consumeBuffer(size);
                return s;
            } catch (UnsupportedEncodingException e) {
                throw new TException("JVM DOES NOT SUPPORT UTF-8");
            }
        }
    }

    public ByteBuffer readBinary() throws TException {
        int size = readI32();
        if (size > MAX_THRIFT_BINARY_SIZE) {
            throw new TProtocolException(3, "Thrift binary size " + size + " out of range!");
        }
        checkReadLength(size);
        if (this.trans_.getBytesRemainingInBuffer() >= size) {
            ByteBuffer bb = ByteBuffer.wrap(this.trans_.getBuffer(), this.trans_.getBufferPosition(), size);
            this.trans_.consumeBuffer(size);
            return bb;
        }
        byte[] buf = new byte[size];
        this.trans_.readAll(buf, 0, size);
        return ByteBuffer.wrap(buf);
    }
}
