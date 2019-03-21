package com.miui.gallery.movie.net;

import com.miui.gallery.movie.entity.AudioResource;
import com.miui.gallery.movie.entity.MovieResource;

public class AudioResourceRequest extends LocalResourceRequest {
    protected long getParentId() {
        return 10142147245244480L;
    }

    protected MovieResource newLocalResource() {
        return new AudioResource();
    }
}
