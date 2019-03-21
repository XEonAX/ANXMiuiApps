package com.miui.gallery.editor.photo.widgets.seekbar;

import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.miui.gallery.R;

public class BubbleIndicator<V extends View> implements OnSeekBarChangeListener {
    private Callback<V> mCallback;
    private V mContentView;
    private OnSeekBarChangeListener mDelegate;
    private int[] mLocation = new int[2];
    private int mOffsetY;
    private PopupWindow mPopup;

    public interface Callback<V extends View> {
        void updateProgress(V v, int i);
    }

    public BubbleIndicator(V contentView, int offsetY, Callback<V> callback, OnSeekBarChangeListener delegate) {
        this.mContentView = contentView;
        this.mOffsetY = offsetY;
        this.mCallback = callback;
        this.mDelegate = delegate;
    }

    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        if (fromUser) {
            updateProgress(this.mContentView, progress);
            if (this.mPopup != null) {
                this.mPopup.update(computeX(seekBar), computeY(seekBar), -1, -1);
            }
        }
        if (this.mDelegate != null) {
            this.mDelegate.onProgressChanged(seekBar, progress, fromUser);
        }
    }

    public void onStartTrackingTouch(final SeekBar seekBar) {
        if (this.mPopup == null) {
            this.mContentView.setVisibility(4);
            this.mPopup = new PopupWindow(this.mContentView, -2, -2, false);
            this.mPopup.setTouchable(false);
            this.mContentView.addOnLayoutChangeListener(new OnLayoutChangeListener() {
                public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    BubbleIndicator.this.mPopup.update(BubbleIndicator.this.computeX(seekBar), BubbleIndicator.this.computeY(seekBar), -1, -1);
                    v.setVisibility(0);
                    v.removeOnLayoutChangeListener(this);
                }
            });
        }
        seekBar.getLocationInWindow(this.mLocation);
        this.mPopup.setAnimationStyle(R.style.f177PhotoEditor.BubbleIndicatorAnim);
        this.mPopup.showAtLocation(seekBar, 0, computeX(seekBar), computeY(seekBar));
        if (this.mDelegate != null) {
            this.mDelegate.onStartTrackingTouch(seekBar);
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        this.mPopup.dismiss();
        if (this.mDelegate != null) {
            this.mDelegate.onStopTrackingTouch(seekBar);
        }
    }

    public boolean isShowing() {
        return this.mPopup != null && this.mPopup.isShowing();
    }

    public void dismiss() {
        this.mPopup.dismiss();
    }

    private void updateProgress(V contentView, int progress) {
        onProgressUpdate(contentView, progress);
        if (this.mCallback != null) {
            this.mCallback.updateProgress(this.mContentView, progress);
        }
    }

    protected void onProgressUpdate(V v, int progress) {
    }

    private int computeX(SeekBar seekBar) {
        return (((this.mLocation[0] + seekBar.getPaddingLeft()) - seekBar.getThumbOffset()) + seekBar.getThumb().getBounds().centerX()) - (this.mContentView.getWidth() / 2);
    }

    private int computeY(SeekBar seekBar) {
        return ((this.mLocation[1] + (seekBar.getHeight() / 2)) - this.mOffsetY) - (this.mContentView.getHeight() / 2);
    }
}
