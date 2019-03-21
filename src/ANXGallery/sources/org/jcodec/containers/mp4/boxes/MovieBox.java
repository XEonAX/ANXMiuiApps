package org.jcodec.containers.mp4.boxes;

import android.support.annotation.Keep;

@Keep
public class MovieBox extends NodeBox {
    public MovieBox(Header atom) {
        super(atom);
    }

    public static String fourcc() {
        return "moov";
    }
}
