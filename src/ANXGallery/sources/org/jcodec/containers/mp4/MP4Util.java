package org.jcodec.containers.mp4;

import com.miui.gallery.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.common.io.SeekableByteChannel;
import org.jcodec.containers.mp4.boxes.Box;
import org.jcodec.containers.mp4.boxes.FileTypeBox;
import org.jcodec.containers.mp4.boxes.Header;
import org.jcodec.containers.mp4.boxes.MovieBox;

public class MP4Util {

    public static class Atom {
        private Header header;
        private long offset;

        public Atom(Header header, long offset) {
            this.header = header;
            this.offset = offset;
        }

        public Header getHeader() {
            return this.header;
        }

        public Box parseBox(SeekableByteChannel input) throws IOException {
            input.setPosition(this.offset + this.header.headerSize());
            return BoxUtil.parseBox(NIOUtils.fetchFromChannel(input, (int) this.header.getBodySize()), this.header, BoxFactory.getDefault());
        }
    }

    public static class Movie {
        private FileTypeBox ftyp;
        private MovieBox moov;

        public Movie(FileTypeBox ftyp, MovieBox moov) {
            this.ftyp = ftyp;
            this.moov = moov;
        }

        public MovieBox getMoov() {
            return this.moov;
        }
    }

    public static Movie parseFullMovieChannel(SeekableByteChannel input) throws IOException {
        FileTypeBox ftyp = null;
        for (Atom atom : getRootAtoms(input)) {
            long size;
            if ("ftyp".equals(atom.getHeader().getFourcc())) {
                size = atom.getHeader().getBodySize();
                if (size >= 1024) {
                    Log.w("jcodec", "Ftyp body size %d is too large.", Long.valueOf(size));
                    return null;
                }
                ftyp = (FileTypeBox) atom.parseBox(input);
            } else if ("moov".equals(atom.getHeader().getFourcc())) {
                size = atom.getHeader().getBodySize();
                if (size < 131072) {
                    return new Movie(ftyp, (MovieBox) atom.parseBox(input));
                }
                Log.w("jcodec", "Moov body size %d is too large.", Long.valueOf(size));
                return null;
            }
        }
        return null;
    }

    public static List<Atom> getRootAtoms(SeekableByteChannel input) throws IOException {
        input.setPosition(0);
        List<Atom> result = new ArrayList();
        long off = 0;
        while (off < input.size()) {
            input.setPosition(off);
            Header atom = Header.read(NIOUtils.fetchFromChannel(input, 16));
            if (atom == null) {
                break;
            }
            result.add(new Atom(atom, off));
            off += atom.getSize();
        }
        return result;
    }

    public static Movie parseFullMovie(File source) throws IOException {
        SeekableByteChannel input = null;
        try {
            input = NIOUtils.readableChannel(source);
            Movie parseFullMovieChannel = parseFullMovieChannel(input);
            return parseFullMovieChannel;
        } finally {
            if (input != null) {
                input.close();
            }
        }
    }
}
