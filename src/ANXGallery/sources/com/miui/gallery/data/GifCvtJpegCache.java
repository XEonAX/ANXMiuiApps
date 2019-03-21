package com.miui.gallery.data;

import com.miui.gallery.util.Utils;
import java.io.File;

public class GifCvtJpegCache {
    private int mCurrentLoopPosition = 0;
    private final String[] mDestinations;
    private final boolean mInitSuccess;
    private final int mSize;
    private final String[] mSources;

    public GifCvtJpegCache(File dir, int size) {
        boolean z;
        boolean z2 = true;
        if (size > 0) {
            z = true;
        } else {
            z = false;
        }
        Utils.assertTrue(z);
        if (dir == null || !((dir.isDirectory() || dir.mkdirs()) && dir.canWrite())) {
            z2 = false;
        }
        this.mInitSuccess = z2;
        this.mSize = size;
        this.mSources = new String[size];
        this.mDestinations = new String[size];
        for (int i = 0; i < size; i++) {
            this.mDestinations[i] = new File(dir, "gif_cvt" + i + ".jpg").getAbsolutePath();
        }
    }
}
