package com.miui.gallery.stat;

import com.miui.gallery.preference.BaseGalleryPreferences.SampleStatistic;

public class StatSampling {
    public static final boolean FILTERED = (SampleStatistic.getUniqId() % 9 != 0);
}
