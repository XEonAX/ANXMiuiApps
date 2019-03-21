package com.miui.gallery.cloud;

import com.google.common.collect.Lists;
import java.util.ArrayList;

public class CloudShareAlbumMediator {
    private static final CloudShareAlbumMediator sSingleton = new CloudShareAlbumMediator();
    private final ArrayList<OnShareAlbumExitedListener> mListeners = Lists.newArrayList();

    public interface OnShareAlbumExitedListener {
        void onExit(String str);
    }

    public static CloudShareAlbumMediator getInstance() {
        return sSingleton;
    }

    public void onShareAlbumExited(String albumId) {
        for (int i = this.mListeners.size() - 1; i >= 0; i--) {
            ((OnShareAlbumExitedListener) this.mListeners.get(i)).onExit(albumId);
        }
    }
}
