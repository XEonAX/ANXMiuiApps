package com.miui.gallery.movie.entity;

import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.net.resource.Resource;
import java.util.HashMap;

public abstract class MovieResource extends Resource implements Comparable<MovieResource> {
    private static HashMap<String, Integer> resourcesNames = new HashMap<String, Integer>() {
        {
            put("movieAudioDefault", Integer.valueOf(R.string.movie_audio_default));
            put("movieAudioSoft", Integer.valueOf(R.string.movie_audio_soft));
            put("movieAudioLight", Integer.valueOf(R.string.movie_audio_light));
            put("movieAudioLinear", Integer.valueOf(R.string.movie_audio_linear));
            put("movieAudioSport", Integer.valueOf(R.string.movie_audio_sport));
            put("movieAudioKawaii", Integer.valueOf(R.string.movie_audio_kawaii));
            put("movieTemplateTravel", Integer.valueOf(R.string.movie_template_travel));
            put("movieTemplateBaby", Integer.valueOf(R.string.movie_template_baby));
            put("movieTemplateParty", Integer.valueOf(R.string.movie_template_party));
            put("movieTemplateFood", Integer.valueOf(R.string.movie_template_food));
            put("movieTemplateXmas", Integer.valueOf(R.string.movie_template_xmas));
            put("movieTemplateNewYear", Integer.valueOf(R.string.movie_template_new_year));
            put("movieTemplateSelfie", Integer.valueOf(R.string.movie_template_selfie));
            put("movieTemplatePet", Integer.valueOf(R.string.movie_template_pet));
        }
    };
    public int downloadState = 19;
    public String enName;
    public int imageId;
    public int index;
    public boolean isPackageAssets;
    public String nameKey;
    public String pathKey;
    public String srcPath;
    public int stringId;

    public abstract String getDownloadSrcPath();

    public abstract String getStatNameString();

    public abstract String getStatTypeString();

    public MovieResource(String srcPath, int imageId, int stringId) {
        this.srcPath = srcPath;
        this.imageId = imageId;
        this.stringId = stringId;
        this.isPackageAssets = true;
    }

    public String getSrcPath() {
        if (this.isPackageAssets) {
            return this.nameKey;
        }
        return getDownloadSrcPath();
    }

    public String getDownloadFilePath() {
        return getDownloadSrcPath() + ".zip";
    }

    public boolean isDownloaded() {
        if (this.downloadState == 17 || this.downloadState == 0) {
            return true;
        }
        return false;
    }

    public int getDownloadState() {
        if (this.downloadState == 0 || !isDownloaded()) {
            return this.downloadState;
        }
        return 17;
    }

    public int getNameId() {
        if (this.stringId == 0 && !TextUtils.isEmpty(this.nameKey) && resourcesNames.containsKey(this.nameKey)) {
            this.stringId = ((Integer) resourcesNames.get(this.nameKey)).intValue();
        }
        return this.stringId;
    }

    public int compareTo(MovieResource o) {
        return this.index - o.index;
    }
}
