package com.miui.gallery.share;

import com.google.common.collect.Lists;
import java.util.ArrayList;

public class CloudShareAlbumMediator {
    private static final CloudShareAlbumMediator sSingleton = new CloudShareAlbumMediator();
    private final ArrayList<OnShareAlbumExitedListener> mListeners = Lists.newArrayList();

    public interface OnShareAlbumExitedListener {
    }

    public static CloudShareAlbumMediator getInstance() {
        return sSingleton;
    }

    public void addListener(OnShareAlbumExitedListener l) {
        if (l != null) {
            this.mListeners.add(l);
        }
    }

    public void removeListener(OnShareAlbumExitedListener l) {
        if (l != null) {
            this.mListeners.remove(l);
        }
    }
}
