package org.jcodec.containers.mp4.boxes;

import android.support.annotation.Keep;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.LinkedList;
import org.jcodec.common.JCodecUtil2;
import org.jcodec.common.io.NIOUtils;

@Keep
public class FileTypeBox extends Box {
    private Collection<String> compBrands = new LinkedList();
    private String majorBrand;
    private int minorVersion;

    public FileTypeBox(Header header) {
        super(header);
    }

    public static String fourcc() {
        return "ftyp";
    }

    public static FileTypeBox createFileTypeBox(String majorBrand, int minorVersion, Collection<String> compBrands) {
        FileTypeBox ftyp = new FileTypeBox(new Header(fourcc()));
        ftyp.majorBrand = majorBrand;
        ftyp.minorVersion = minorVersion;
        ftyp.compBrands = compBrands;
        return ftyp;
    }

    public void parse(ByteBuffer input) {
        this.majorBrand = NIOUtils.readString(input, 4);
        this.minorVersion = input.getInt();
        while (input.hasRemaining()) {
            String brand = NIOUtils.readString(input, 4);
            if (brand != null) {
                this.compBrands.add(brand);
            } else {
                return;
            }
        }
    }

    public String getMajorBrand() {
        return this.majorBrand;
    }

    public Collection<String> getCompBrands() {
        return this.compBrands;
    }

    public void doWrite(ByteBuffer out) {
        out.put(JCodecUtil2.asciiString(this.majorBrand));
        out.putInt(this.minorVersion);
        for (String string : this.compBrands) {
            out.put(JCodecUtil2.asciiString(string));
        }
    }

    public int estimateSize() {
        int size = 13;
        for (String string : this.compBrands) {
            size += JCodecUtil2.asciiString(string).length;
        }
        return size;
    }
}
