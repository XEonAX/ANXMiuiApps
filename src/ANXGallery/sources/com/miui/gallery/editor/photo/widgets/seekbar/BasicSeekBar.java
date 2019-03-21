package com.miui.gallery.editor.photo.widgets.seekbar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.miui.gallery.R;

public class BasicSeekBar extends SeekBar {
    private SeekBarChangeDelegate mDelegate;
    private LayerDrawable mThumb;

    private class SeekBarChangeDelegate implements OnSeekBarChangeListener {
        private OnSeekBarChangeListener mDelegated;

        private SeekBarChangeDelegate() {
        }

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            if (this.mDelegated != null) {
                this.mDelegated.onProgressChanged(seekBar, progress, fromUser);
            }
            BasicSeekBar.this.updateThumb(progress);
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            if (this.mDelegated != null) {
                this.mDelegated.onStartTrackingTouch(seekBar);
            }
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            if (this.mDelegated != null) {
                this.mDelegated.onStopTrackingTouch(seekBar);
            }
        }
    }

    public BasicSeekBar(Context context) {
        this(context, null);
    }

    public BasicSeekBar(Context context, AttributeSet attrs) {
        this(context, attrs, 16842875);
    }

    public BasicSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDelegate = new SeekBarChangeDelegate();
        super.setOnSeekBarChangeListener(this.mDelegate);
        updateThumb(getProgress());
    }

    public void setThumb(Drawable thumb) {
        if (thumb instanceof LayerDrawable) {
            LayerDrawable layer = (LayerDrawable) thumb;
            if (!(layer.findDrawableByLayerId(R.id.seekbar_thumb_active_state) == null || layer.findDrawableByLayerId(R.id.seekbar_thumb_reset_state) == null)) {
                this.mThumb = layer;
                updateThumb(getProgress());
                return;
            }
        }
        super.setThumb(thumb);
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener l) {
        this.mDelegate.mDelegated = l;
    }

    void updateThumb(int progress) {
        if (this.mThumb != null) {
            if (progress == 0) {
                super.setThumb(this.mThumb.findDrawableByLayerId(R.id.seekbar_thumb_reset_state));
            } else {
                super.setThumb(this.mThumb.findDrawableByLayerId(R.id.seekbar_thumb_active_state));
            }
        }
    }
}
