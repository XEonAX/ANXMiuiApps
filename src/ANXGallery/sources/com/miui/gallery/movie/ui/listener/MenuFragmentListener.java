package com.miui.gallery.movie.ui.listener;

import com.miui.gallery.movie.core.MovieManager;
import com.miui.gallery.movie.entity.MovieInfo;
import java.util.ArrayList;

public interface MenuFragmentListener extends IShareDataCallback {
    void changeEditor();

    void export(boolean z);

    MovieInfo getMovieInfo();

    MovieManager getMovieManager();

    ArrayList<String> getStoryMovieSha1();

    void returnClick();

    void seek(int i);

    void seekToIndex(int i);

    void setDeleteVisible(boolean z);

    void setShowDeleteMode(boolean z);

    void showLoadingView();

    void updateStorySha1Data();
}
