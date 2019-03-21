package org.jcodec.containers.mp4;

import org.jcodec.containers.mp4.boxes.Box;
import org.jcodec.containers.mp4.boxes.Box.LeafBox;
import org.jcodec.containers.mp4.boxes.Header;
import org.jcodec.containers.mp4.boxes.NodeBox;
import org.jcodec.platform.Platform;

public class BoxFactory implements IBoxFactory {
    private static IBoxFactory instance = new BoxFactory(new DefaultBoxes());
    private Boxes boxes;

    public static IBoxFactory getDefault() {
        return instance;
    }

    public BoxFactory(Boxes boxes) {
        this.boxes = boxes;
    }

    public Box newBox(Header header) {
        Class<? extends Box> claz = this.boxes.toClass(header.getFourcc());
        if (claz == null) {
            return new LeafBox(header);
        }
        Box box = (Box) Platform.newInstance(claz, new Object[]{header});
        if (!(box instanceof NodeBox)) {
            return box;
        }
        ((NodeBox) box).setFactory(this);
        return box;
    }
}
