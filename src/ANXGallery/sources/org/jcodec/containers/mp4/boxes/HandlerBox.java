package org.jcodec.containers.mp4.boxes;

import android.support.annotation.Keep;
import java.nio.ByteBuffer;
import org.jcodec.common.JCodecUtil2;
import org.jcodec.common.io.NIOUtils;

@Keep
public class HandlerBox extends FullBox {
    private int componentFlags;
    private int componentFlagsMask;
    private String componentManufacturer;
    private String componentName;
    private String componentSubType;
    private String componentType;

    public HandlerBox(Header atom) {
        super(atom);
    }

    public static String fourcc() {
        return "hdlr";
    }

    public static HandlerBox createHandlerBox(String componentType, String componentSubType, String componentManufacturer, int componentFlags, int componentFlagsMask) {
        HandlerBox hdlr = new HandlerBox(new Header(fourcc()));
        hdlr.componentType = componentType;
        hdlr.componentSubType = componentSubType;
        hdlr.componentManufacturer = componentManufacturer;
        hdlr.componentFlags = componentFlags;
        hdlr.componentFlagsMask = componentFlagsMask;
        hdlr.componentName = "";
        return hdlr;
    }

    public void parse(ByteBuffer input) {
        super.parse(input);
        this.componentType = NIOUtils.readString(input, 4);
        this.componentSubType = NIOUtils.readString(input, 4);
        this.componentManufacturer = NIOUtils.readString(input, 4);
        this.componentFlags = input.getInt();
        this.componentFlagsMask = input.getInt();
        this.componentName = NIOUtils.readString(input, input.remaining());
    }

    public void doWrite(ByteBuffer out) {
        super.doWrite(out);
        out.put(JCodecUtil2.asciiString(this.componentType));
        out.put(JCodecUtil2.asciiString(this.componentSubType));
        out.put(JCodecUtil2.asciiString(this.componentManufacturer));
        out.putInt(this.componentFlags);
        out.putInt(this.componentFlagsMask);
        if (this.componentName != null) {
            out.put(JCodecUtil2.asciiString(this.componentName));
        }
    }

    public int estimateSize() {
        return (((JCodecUtil2.asciiString(this.componentType).length + 12) + JCodecUtil2.asciiString(this.componentSubType).length) + JCodecUtil2.asciiString(this.componentManufacturer).length) + 9;
    }
}
