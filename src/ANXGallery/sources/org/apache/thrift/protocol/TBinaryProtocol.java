package org.apache.thrift.protocol;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.thrift.TException;
import org.apache.thrift.transport.TTransport;
import org.keyczar.Keyczar;

public class TBinaryProtocol extends TProtocol {
    private static final TStruct ANONYMOUS_STRUCT = new TStruct();
    private byte[] bin = new byte[1];
    private byte[] bout = new byte[1];
    protected boolean checkReadLength_ = false;
    private byte[] i16out = new byte[2];
    private byte[] i16rd = new byte[2];
    private byte[] i32out = new byte[4];
    private byte[] i32rd = new byte[4];
    private byte[] i64out = new byte[8];
    private byte[] i64rd = new byte[8];
    protected int readLength_;
    protected boolean strictRead_ = false;
    protected boolean strictWrite_ = true;

    public static class Factory implements TProtocolFactory {
        protected int readLength_;
        protected boolean strictRead_;
        protected boolean strictWrite_;

        public Factory() {
            this(false, true);
        }

        public Factory(boolean strictRead, boolean strictWrite) {
            this(strictRead, strictWrite, 0);
        }

        public Factory(boolean strictRead, boolean strictWrite, int readLength) {
            this.strictRead_ = false;
            this.strictWrite_ = true;
            this.strictRead_ = strictRead;
            this.strictWrite_ = strictWrite;
            this.readLength_ = readLength;
        }

        public TProtocol getProtocol(TTransport trans) {
            TBinaryProtocol proto = new TBinaryProtocol(trans, this.strictRead_, this.strictWrite_);
            if (this.readLength_ != 0) {
                proto.setReadLength(this.readLength_);
            }
            return proto;
        }
    }

    public TBinaryProtocol(TTransport trans, boolean strictRead, boolean strictWrite) {
        super(trans);
        this.strictRead_ = strictRead;
        this.strictWrite_ = strictWrite;
    }

    public void writeStructBegin(TStruct struct) {
    }

    public void writeStructEnd() {
    }

    public void writeFieldBegin(TField field) throws TException {
        writeByte(field.type);
        writeI16(field.id);
    }

    public void writeFieldEnd() {
    }

    public void writeFieldStop() throws TException {
        writeByte((byte) 0);
    }

    public void writeMapBegin(TMap map) throws TException {
        writeByte(map.keyType);
        writeByte(map.valueType);
        writeI32(map.size);
    }

    public void writeMapEnd() {
    }

    public void writeListBegin(TList list) throws TException {
        writeByte(list.elemType);
        writeI32(list.size);
    }

    public void writeListEnd() {
    }

    public void writeSetBegin(TSet set) throws TException {
        writeByte(set.elemType);
        writeI32(set.size);
    }

    public void writeSetEnd() {
    }

    public void writeBool(boolean b) throws TException {
        writeByte(b ? (byte) 1 : (byte) 0);
    }

    public void writeByte(byte b) throws TException {
        this.bout[0] = b;
        this.trans_.write(this.bout, 0, 1);
    }

    public void writeI16(short i16) throws TException {
        this.i16out[0] = (byte) ((i16 >> 8) & 255);
        this.i16out[1] = (byte) (i16 & 255);
        this.trans_.write(this.i16out, 0, 2);
    }

    public void writeI32(int i32) throws TException {
        this.i32out[0] = (byte) ((i32 >> 24) & 255);
        this.i32out[1] = (byte) ((i32 >> 16) & 255);
        this.i32out[2] = (byte) ((i32 >> 8) & 255);
        this.i32out[3] = (byte) (i32 & 255);
        this.trans_.write(this.i32out, 0, 4);
    }

    public void writeI64(long i64) throws TException {
        this.i64out[0] = (byte) ((int) ((i64 >> 56) & 255));
        this.i64out[1] = (byte) ((int) ((i64 >> 48) & 255));
        this.i64out[2] = (byte) ((int) ((i64 >> 40) & 255));
        this.i64out[3] = (byte) ((int) ((i64 >> 32) & 255));
        this.i64out[4] = (byte) ((int) ((i64 >> 24) & 255));
        this.i64out[5] = (byte) ((int) ((i64 >> 16) & 255));
        this.i64out[6] = (byte) ((int) ((i64 >> 8) & 255));
        this.i64out[7] = (byte) ((int) (255 & i64));
        this.trans_.write(this.i64out, 0, 8);
    }

    public void writeDouble(double dub) throws TException {
        writeI64(Double.doubleToLongBits(dub));
    }

    public void writeString(String str) throws TException {
        try {
            byte[] dat = str.getBytes(Keyczar.DEFAULT_ENCODING);
            writeI32(dat.length);
            this.trans_.write(dat, 0, dat.length);
        } catch (UnsupportedEncodingException e) {
            throw new TException("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void writeBinary(ByteBuffer bin) throws TException {
        int length = (bin.limit() - bin.position()) - bin.arrayOffset();
        writeI32(length);
        this.trans_.write(bin.array(), bin.position() + bin.arrayOffset(), length);
    }

    public TStruct readStructBegin() {
        return ANONYMOUS_STRUCT;
    }

    public void readStructEnd() {
    }

    public TField readFieldBegin() throws TException {
        byte type = readByte();
        return new TField("", type, type == (byte) 0 ? (short) 0 : readI16());
    }

    public void readFieldEnd() {
    }

    public TMap readMapBegin() throws TException {
        return new TMap(readByte(), readByte(), readI32());
    }

    public void readMapEnd() {
    }

    public TList readListBegin() throws TException {
        return new TList(readByte(), readI32());
    }

    public void readListEnd() {
    }

    public TSet readSetBegin() throws TException {
        return new TSet(readByte(), readI32());
    }

    public void readSetEnd() {
    }

    public boolean readBool() throws TException {
        return readByte() == (byte) 1;
    }

    public byte readByte() throws TException {
        if (this.trans_.getBytesRemainingInBuffer() >= 1) {
            byte b = this.trans_.getBuffer()[this.trans_.getBufferPosition()];
            this.trans_.consumeBuffer(1);
            return b;
        }
        readAll(this.bin, 0, 1);
        return this.bin[0];
    }

    public short readI16() throws TException {
        byte[] buf = this.i16rd;
        int off = 0;
        if (this.trans_.getBytesRemainingInBuffer() >= 2) {
            buf = this.trans_.getBuffer();
            off = this.trans_.getBufferPosition();
            this.trans_.consumeBuffer(2);
        } else {
            readAll(this.i16rd, 0, 2);
        }
        return (short) (((buf[off] & 255) << 8) | (buf[off + 1] & 255));
    }

    public int readI32() throws TException {
        byte[] buf = this.i32rd;
        int off = 0;
        if (this.trans_.getBytesRemainingInBuffer() >= 4) {
            buf = this.trans_.getBuffer();
            off = this.trans_.getBufferPosition();
            this.trans_.consumeBuffer(4);
        } else {
            readAll(this.i32rd, 0, 4);
        }
        return ((((buf[off] & 255) << 24) | ((buf[off + 1] & 255) << 16)) | ((buf[off + 2] & 255) << 8)) | (buf[off + 3] & 255);
    }

    public long readI64() throws TException {
        byte[] buf = this.i64rd;
        int off = 0;
        if (this.trans_.getBytesRemainingInBuffer() >= 8) {
            buf = this.trans_.getBuffer();
            off = this.trans_.getBufferPosition();
            this.trans_.consumeBuffer(8);
        } else {
            readAll(this.i64rd, 0, 8);
        }
        return (((((((((long) (buf[off] & 255)) << 56) | (((long) (buf[off + 1] & 255)) << 48)) | (((long) (buf[off + 2] & 255)) << 40)) | (((long) (buf[off + 3] & 255)) << 32)) | (((long) (buf[off + 4] & 255)) << 24)) | (((long) (buf[off + 5] & 255)) << 16)) | (((long) (buf[off + 6] & 255)) << 8)) | ((long) (buf[off + 7] & 255));
    }

    public double readDouble() throws TException {
        return Double.longBitsToDouble(readI64());
    }

    public String readString() throws TException {
        int size = readI32();
        if (this.trans_.getBytesRemainingInBuffer() < size) {
            return readStringBody(size);
        }
        try {
            String s = new String(this.trans_.getBuffer(), this.trans_.getBufferPosition(), size, Keyczar.DEFAULT_ENCODING);
            this.trans_.consumeBuffer(size);
            return s;
        } catch (UnsupportedEncodingException e) {
            throw new TException("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public String readStringBody(int size) throws TException {
        try {
            checkReadLength(size);
            byte[] buf = new byte[size];
            this.trans_.readAll(buf, 0, size);
            return new String(buf, Keyczar.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new TException("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public ByteBuffer readBinary() throws TException {
        int size = readI32();
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

    private int readAll(byte[] buf, int off, int len) throws TException {
        checkReadLength(len);
        return this.trans_.readAll(buf, off, len);
    }

    public void setReadLength(int readLength) {
        this.readLength_ = readLength;
        this.checkReadLength_ = true;
    }

    protected void checkReadLength(int length) throws TException {
        if (length < 0) {
            throw new TException("Negative length: " + length);
        } else if (this.checkReadLength_) {
            this.readLength_ -= length;
            if (this.readLength_ < 0) {
                throw new TException("Message length exceeded: " + length);
            }
        }
    }
}
