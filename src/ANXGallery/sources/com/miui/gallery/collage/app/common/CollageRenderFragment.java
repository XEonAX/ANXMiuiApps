package com.miui.gallery.collage.app.common;

import android.app.Fragment;
import android.graphics.Bitmap;
import com.miui.gallery.collage.CollageActivity.ReplaceImageListener;
import com.miui.gallery.collage.core.RenderData;
import java.util.HashMap;

public abstract class CollageRenderFragment extends Fragment {
    protected boolean mBitmapReady;
    protected Bitmap[] mBitmaps;
    protected ReplaceImageListener mReplaceImageListener;

    public abstract void dismissControlWindow();

    public abstract RenderData export();

    public abstract void onBitmapReplace(Bitmap bitmap, Bitmap bitmap2);

    protected abstract void onBitmapsReceive();

    public abstract HashMap<String, String> onSimple();

    public final void setBitmap(Bitmap[] bitmaps) {
        if (bitmaps != null && bitmaps.length != 0) {
            this.mBitmaps = bitmaps;
            this.mBitmapReady = true;
            onBitmapsReceive();
        }
    }

    public boolean isActivating() {
        return false;
    }

    public void setReplaceImageListener(ReplaceImageListener replaceImageListener) {
        this.mReplaceImageListener = replaceImageListener;
    }
}
