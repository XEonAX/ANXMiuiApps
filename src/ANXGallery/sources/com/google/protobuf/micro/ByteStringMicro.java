package com.google.protobuf.micro;

public final class ByteStringMicro {
    public static final ByteStringMicro EMPTY = new ByteStringMicro(new byte[0]);
    private final byte[] bytes;
    private volatile int hash = 0;

    private ByteStringMicro(byte[] bytes) {
        this.bytes = bytes;
    }

    public int size() {
        return this.bytes.length;
    }

    public static ByteStringMicro copyFrom(byte[] bytes, int offset, int size) {
        byte[] copy = new byte[size];
        System.arraycopy(bytes, offset, copy, 0, size);
        return new ByteStringMicro(copy);
    }

    public static ByteStringMicro copyFrom(byte[] bytes) {
        return copyFrom(bytes, 0, bytes.length);
    }

    public byte[] toByteArray() {
        int size = this.bytes.length;
        byte[] copy = new byte[size];
        System.arraycopy(this.bytes, 0, copy, 0, size);
        return copy;
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof ByteStringMicro)) {
            return false;
        }
        ByteStringMicro other = (ByteStringMicro) o;
        int size = this.bytes.length;
        if (size != other.bytes.length) {
            return false;
        }
        byte[] thisBytes = this.bytes;
        byte[] otherBytes = other.bytes;
        for (int i = 0; i < size; i++) {
            if (thisBytes[i] != otherBytes[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int h = this.hash;
        if (h == 0) {
            byte[] thisBytes = this.bytes;
            int size = this.bytes.length;
            h = size;
            for (int i = 0; i < size; i++) {
                h = (h * 31) + thisBytes[i];
            }
            if (h == 0) {
                h = 1;
            }
            this.hash = h;
        }
        return h;
    }
}
