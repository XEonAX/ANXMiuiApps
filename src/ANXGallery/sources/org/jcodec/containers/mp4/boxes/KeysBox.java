package org.jcodec.containers.mp4.boxes;

import android.support.annotation.Keep;
import java.nio.ByteBuffer;
import org.jcodec.containers.mp4.Boxes;

@Keep
public class KeysBox extends NodeBox {
    private static final String FOURCC = "keys";

    private static class LocalBoxes extends Boxes {
        LocalBoxes() {
            this.mappings.put(MdtaBox.fourcc(), MdtaBox.class);
        }
    }

    public KeysBox(Header atom) {
        super(atom);
        this.factory = new SimpleBoxFactory(new LocalBoxes());
    }

    public static KeysBox createKeysBox() {
        return new KeysBox(Header.createHeader(FOURCC, 0));
    }

    public void parse(ByteBuffer input) {
        int vf = input.getInt();
        int cnt = input.getInt();
        super.parse(input);
    }

    protected void doWrite(ByteBuffer out) {
        out.putInt(0);
        out.putInt(this.boxes.size());
        super.doWrite(out);
    }

    public static String fourcc() {
        return FOURCC;
    }

    public int estimateSize() {
        return super.estimateSize() + 8;
    }
}
