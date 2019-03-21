package com.miui.gallery.movie.ui.factory;

import com.miui.gallery.R;
import com.miui.gallery.movie.MovieConfig;
import com.miui.gallery.movie.entity.AudioResource;
import java.io.File;
import java.util.ArrayList;

public class AudioFactory {
    private static final AudioResource LOCAL = new AudioResource(2, null, R.drawable.movie_icon_audio_local, R.string.movie_audio_custom);
    private static final AudioResource NONE = new AudioResource(1, null, R.drawable.movie_icon_audio_none, R.string.movie_audio_none);

    public static ArrayList<AudioResource> getAllLocalAudios() {
        ArrayList<AudioResource> audioEntities = new ArrayList();
        audioEntities.add(NONE);
        audioEntities.add(LOCAL);
        return audioEntities;
    }

    public static String getAudioDownloadPath(String name) {
        return MovieConfig.sAudioDir + File.separator + name;
    }
}
