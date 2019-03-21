package org.jcodec.containers.mp4.boxes;

import android.support.annotation.Keep;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.containers.mp4.Boxes;
import org.jcodec.containers.mp4.IBoxFactory;

@Keep
public class IListBox extends Box {
    private static final String FOURCC = "ilst";
    private IBoxFactory factory = new SimpleBoxFactory(new LocalBoxes());
    private Map<Integer, List<Box>> values = new LinkedHashMap();

    private static class LocalBoxes extends Boxes {
        LocalBoxes() {
            this.mappings.put(DataBox.fourcc(), DataBox.class);
        }
    }

    public IListBox(Header atom) {
        super(atom);
    }

    public static IListBox createIListBox(Map<Integer, List<Box>> values) {
        IListBox box = new IListBox(Header.createHeader(FOURCC, 0));
        box.values = values;
        return box;
    }

    public void parse(ByteBuffer input) {
        while (input.remaining() >= 4) {
            ByteBuffer local = NIOUtils.read(input, input.getInt() - 4);
            int index = local.getInt();
            List<Box> children = new ArrayList();
            this.values.put(Integer.valueOf(index), children);
            while (local.hasRemaining()) {
                Header childAtom = Header.read(local);
                if (childAtom != null && ((long) local.remaining()) >= childAtom.getBodySize()) {
                    children.add(Box.parseBox(NIOUtils.read(local, (int) childAtom.getBodySize()), childAtom, this.factory));
                }
            }
        }
    }

    public Map<Integer, List<Box>> getValues() {
        return this.values;
    }

    protected void doWrite(ByteBuffer out) {
        for (Entry<Integer, List<Box>> entry : this.values.entrySet()) {
            ByteBuffer fork = out.duplicate();
            out.putInt(0);
            out.putInt(((Integer) entry.getKey()).intValue());
            for (Box box : (List) entry.getValue()) {
                box.write(out);
            }
            fork.putInt(out.position() - fork.position());
        }
    }

    public int estimateSize() {
        int sz = 8;
        for (Entry<Integer, List<Box>> entry : this.values.entrySet()) {
            for (Box box : (List) entry.getValue()) {
                sz += box.estimateSize() + 8;
            }
        }
        return sz;
    }

    public static String fourcc() {
        return FOURCC;
    }
}
