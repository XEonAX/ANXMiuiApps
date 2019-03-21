package com.miui.gallery.movie.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import com.meicam.sdk.NvsMultiThumbnailSequenceView;

public class MultiThumbnailSequenceView extends NvsMultiThumbnailSequenceView {
    public MultiThumbnailSequenceView(Context context) {
        super(context);
    }

    public MultiThumbnailSequenceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MultiThumbnailSequenceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MultiThumbnailSequenceView(Context context, AttributeSet attributeSet, int i, int i1) {
        super(context, attributeSet, i, i1);
    }

    public int getSequenceWidth(long timeDuration, double pixelPerMicrosecond) {
        return (int) Math.floor(((((double) timeDuration) * pixelPerMicrosecond) * 1000.0d) + 0.5d);
    }
}
