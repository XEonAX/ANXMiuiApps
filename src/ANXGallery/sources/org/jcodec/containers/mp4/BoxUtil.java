package org.jcodec.containers.mp4;

import java.nio.ByteBuffer;
import org.jcodec.containers.mp4.boxes.Box;
import org.jcodec.containers.mp4.boxes.Box.LeafBox;
import org.jcodec.containers.mp4.boxes.Header;

public class BoxUtil {
    public static Box parseBox(ByteBuffer input, Header childAtom, IBoxFactory factory) {
        Box box = factory.newBox(childAtom);
        if (childAtom.getBodySize() >= 134217728) {
            return new LeafBox(Header.createHeader("free", 8));
        }
        box.parse(input);
        return box;
    }
}
