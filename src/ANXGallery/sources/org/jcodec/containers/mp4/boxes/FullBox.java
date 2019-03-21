package org.jcodec.containers.mp4.boxes;

import java.nio.ByteBuffer;

public abstract class FullBox extends Box {
    protected int flags;
    protected byte version;

    public FullBox(Header atom) {
        super(atom);
    }

    public void parse(ByteBuffer input) {
        int vf = input.getInt();
        this.version = (byte) ((vf >> 24) & 255);
        this.flags = 16777215 & vf;
    }

    protected void doWrite(ByteBuffer out) {
        out.putInt((this.version << 24) | (this.flags & 16777215));
    }

    public byte getVersion() {
        return this.version;
    }

    public int getFlags() {
        return this.flags;
    }

    public void setVersion(byte version) {
        this.version = version;
    }

    public void setFlags(int flags) {
        this.flags = flags;
    }
}
