package org.jcodec.containers.mp4.boxes;

import java.nio.ByteBuffer;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.platform.Platform;

public class MdtaBox extends Box {
    private String key;

    public MdtaBox(Header header) {
        super(header);
    }

    public static MdtaBox createMdtaBox(String key) {
        MdtaBox box = new MdtaBox(Header.createHeader("mdta", 0));
        box.key = key;
        return box;
    }

    public void parse(ByteBuffer buf) {
        this.key = Platform.stringFromBytes(NIOUtils.toArray(NIOUtils.readBuf(buf)));
    }

    public String getKey() {
        return this.key;
    }

    protected void doWrite(ByteBuffer out) {
        out.put(this.key.getBytes());
    }

    public int estimateSize() {
        return this.key.getBytes().length;
    }

    public static String fourcc() {
        return "mdta";
    }
}
