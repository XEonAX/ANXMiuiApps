package org.jcodec.containers.mp4.boxes;

import java.nio.ByteBuffer;
import org.jcodec.common.Preconditions;
import org.jcodec.common.StringUtils;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.containers.mp4.IBoxFactory;
import org.jcodec.platform.Platform;

public abstract class Box {
    public static final int MAX_BOX_SIZE = 134217728;
    public Header header;

    public static class LeafBox extends Box {
        ByteBuffer data;

        public LeafBox(Header atom) {
            super(atom);
        }

        public void parse(ByteBuffer input) {
            this.data = NIOUtils.read(input, (int) this.header.getBodySize());
        }

        protected void doWrite(ByteBuffer out) {
            NIOUtils.write(out, this.data);
        }

        public int estimateSize() {
            return this.data.remaining() + Header.estimateHeaderSize(this.data.remaining());
        }
    }

    protected abstract void doWrite(ByteBuffer byteBuffer);

    public abstract int estimateSize();

    public abstract void parse(ByteBuffer byteBuffer);

    public Box(Header header) {
        this.header = header;
    }

    public Header getHeader() {
        return this.header;
    }

    public void write(ByteBuffer buf) {
        ByteBuffer dup = buf.duplicate();
        NIOUtils.skip(buf, 8);
        doWrite(buf);
        this.header.setBodySize((buf.position() - dup.position()) - 8);
        Preconditions.checkState(this.header.headerSize() == 8);
        this.header.write(dup);
    }

    public String getFourcc() {
        return this.header.getFourcc();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        dump(sb);
        return sb.toString();
    }

    protected void dump(StringBuilder sb) {
        sb.append("{\"tag\":\"" + this.header.getFourcc() + "\"}");
    }

    public static Box terminatorAtom() {
        return createLeafBox(new Header(Platform.stringFromBytes(new byte[4])), ByteBuffer.allocate(0));
    }

    public static String[] path(String path) {
        return StringUtils.splitC(path, '.');
    }

    public static LeafBox createLeafBox(Header atom, ByteBuffer data) {
        LeafBox leaf = new LeafBox(atom);
        leaf.data = data;
        return leaf;
    }

    public static Box parseBox(ByteBuffer input, Header childAtom, IBoxFactory factory) {
        Box box = factory.newBox(childAtom);
        if (childAtom.getBodySize() >= 134217728) {
            return new LeafBox(Header.createHeader("free", 8));
        }
        box.parse(input);
        return box;
    }

    public static <T extends Box> T asBox(Class<T> class1, Box box) {
        try {
            Box res = (Box) Platform.newInstance(class1, new Object[]{box.getHeader()});
            ByteBuffer buffer = ByteBuffer.allocate((int) box.getHeader().getBodySize());
            box.doWrite(buffer);
            buffer.flip();
            res.parse(buffer);
            return res;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
