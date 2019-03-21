package com.miui.gallery.widget.editwrapper;

import android.widget.ImageView;
import android.widget.TextView;

public interface PickAnimationHelper {

    public interface BackgroundImageViewable {
        ImageView getBackgroundImageView();
    }

    public interface ShowNumberWhenPicking {
        ImageView getBackgroundMask();

        TextView getShowNumberTextView();
    }
}
