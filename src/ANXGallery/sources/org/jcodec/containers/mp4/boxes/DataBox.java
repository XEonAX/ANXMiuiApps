package org.jcodec.containers.mp4.boxes;

import java.nio.ByteBuffer;
import org.jcodec.common.io.NIOUtils;

public class DataBox extends Box {
    private byte[] data;
    private int locale;
    private int type;

    public DataBox(Header header) {
        super(header);
    }

    public static DataBox createDataBox(int type, int locale, byte[] data) {
        DataBox box = new DataBox(Header.createHeader("data", 0));
        box.type = type;
        box.locale = locale;
        box.data = data;
        return box;
    }

    public void parse(ByteBuffer buf) {
        this.type = buf.getInt();
        this.locale = buf.getInt();
        this.data = NIOUtils.toArray(NIOUtils.readBuf(buf));
    }

    public int getType() {
        return this.type;
    }

    public int getLocale() {
        return this.locale;
    }

    public byte[] getData() {
        return this.data;
    }

    protected void doWrite(ByteBuffer out) {
        out.putInt(this.type);
        out.putInt(this.locale);
        out.put(this.data);
    }

    public int estimateSize() {
        return this.data.length + 16;
    }

    public static String fourcc() {
        return "data";
    }
}
