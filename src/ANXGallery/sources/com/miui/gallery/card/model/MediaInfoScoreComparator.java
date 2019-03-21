package com.miui.gallery.card.model;

import java.util.Comparator;

public class MediaInfoScoreComparator implements Comparator<MediaInfo> {
    public int compare(MediaInfo o1, MediaInfo o2) {
        return -Double.compare(o1.getScore(), o2.getScore());
    }
}
