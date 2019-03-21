package com.miui.gallery.card.model;

import java.util.Comparator;

public class MediaInfoTimeComparator implements Comparator<MediaInfo> {
    public int compare(MediaInfo o1, MediaInfo o2) {
        return -Double.compare((double) o1.getCreateTime(), (double) o2.getCreateTime());
    }
}
