package org.jcodec.movtool;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.jcodec.containers.mp4.MP4Util;
import org.jcodec.containers.mp4.MP4Util.Movie;
import org.jcodec.containers.mp4.boxes.MetaBox;
import org.jcodec.containers.mp4.boxes.MetaValue;
import org.jcodec.containers.mp4.boxes.NodeBox;

public class MetadataEditor {
    private Map<String, MetaValue> keyedMeta;
    private File source;

    public MetadataEditor(File source, Map<String, MetaValue> keyedMeta) {
        this.source = source;
        this.keyedMeta = keyedMeta;
    }

    public static MetadataEditor createFrom(File f) throws IOException {
        Movie movie = MP4Util.parseFullMovie(f);
        MetaBox keyedMeta = null;
        if (movie != null) {
            keyedMeta = (MetaBox) NodeBox.findFirst(movie.getMoov(), MetaBox.class, MetaBox.fourcc());
        }
        return new MetadataEditor(f, keyedMeta == null ? new HashMap() : keyedMeta.getKeyedMeta());
    }

    public Map<String, MetaValue> getKeyedMeta() {
        return this.keyedMeta;
    }
}
