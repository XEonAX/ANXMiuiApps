package com.miui.gallery.movie.ui.adapter;

import android.content.Context;
import com.miui.gallery.movie.entity.AudioResource;

public class AudioAdapter extends BaseResourceAdapter<AudioResource> {
    public AudioAdapter(Context context) {
        super(context);
        this.mSelectedItemPosition = -1;
    }
}
