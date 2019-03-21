package com.miui.gallery.movie.core;

import com.meicam.sdk.NvsMultiThumbnailSequenceView.ThumbnailSequenceDesc;
import com.miui.gallery.movie.core.MovieManager.EncodeStateInterface;
import com.miui.gallery.movie.entity.AudioResource;
import com.miui.gallery.movie.entity.ImageEntity;
import com.miui.gallery.movie.entity.MovieInfo;
import com.miui.gallery.movie.entity.TemplateResource;
import java.util.ArrayList;
import java.util.List;

public interface IMovieManager {
    void addImage(List<ImageEntity> list);

    void export(String str, EncodeStateInterface encodeStateInterface);

    ArrayList<ThumbnailSequenceDesc> getThumbnailImages();

    int getTotalTime();

    boolean isSupportVideo(String str);

    void moveImage(int i, int i2);

    void removeImageAtIndex(int i);

    void replay();

    void resetImage(List<ImageEntity> list, boolean z);

    int seekToIndex(int i);

    void setAudio(AudioResource audioResource);

    void setInfo(MovieInfo movieInfo);

    void setIsShortVideo(boolean z);

    void setTemplate(TemplateResource templateResource);
}
