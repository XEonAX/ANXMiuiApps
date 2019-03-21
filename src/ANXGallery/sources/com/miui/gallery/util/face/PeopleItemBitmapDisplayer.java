package com.miui.gallery.util.face;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.util.StateSet;
import android.view.View;
import com.miui.gallery.R;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.display.CircleBitmapDisplayer.CircleDrawable;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class PeopleItemBitmapDisplayer implements BitmapDisplayer {
    private boolean mClickable;

    public static class PressableCircleBitmapDrawable extends CircleDrawable {
        private PorterDuffColorFilter mPressedColorFilter;
        private int[] mStateSpec = new int[]{16842919};

        public PressableCircleBitmapDrawable(Bitmap bitmap, Integer pressedColor, Integer strokeColor, float strokeWidth) {
            super(bitmap, strokeColor, strokeWidth);
            if (pressedColor != null) {
                this.mPressedColorFilter = new PorterDuffColorFilter(pressedColor.intValue(), Mode.DARKEN);
            }
        }

        protected boolean onStateChange(int[] state) {
            if (this.mPressedColorFilter == null) {
                return super.onStateChange(state);
            }
            if (StateSet.stateSetMatches(this.mStateSpec, state)) {
                setColorFilter(this.mPressedColorFilter);
            } else {
                clearColorFilter();
            }
            invalidateSelf();
            return true;
        }

        public boolean isStateful() {
            return true;
        }
    }

    public PeopleItemBitmapDisplayer(boolean clickable) {
        this.mClickable = clickable;
    }

    public void display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom) {
        if (imageAware instanceof ImageViewAware) {
            View view = imageAware.getWrappedView();
            if (view != null) {
                Resources resources = view.getResources();
                imageAware.saveBitmap(bitmap);
                imageAware.setImageDrawable(new PressableCircleBitmapDrawable(bitmap, this.mClickable ? Integer.valueOf(resources.getColor(R.color.image_pressed_color)) : null, Integer.valueOf(resources.getColor(R.color.image_stroke_color)), (float) resources.getDimensionPixelSize(R.dimen.image_stroke_width)));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
}
