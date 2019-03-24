package miui.graphics.drawable;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.net.Uri;
import android.os.SystemClock;
import com.miui.internal.graphics.gif.DecodeGifImageHelper;
import com.miui.internal.graphics.gif.DecodeGifImageHelper.GifDecodeResult;
import com.miui.internal.graphics.gif.DecodeGifImageHelper.GifFrame;
import com.miui.internal.graphics.gif.GifDecoder;
import java.util.ArrayList;
import miui.io.ResettableInputStream;

public class GifAnimationDrawable extends AnimationDrawable {
    private Resources nY;
    private final DecodeGifImageHelper ym = new DecodeGifImageHelper();
    private DrawableContainerState yn;
    private ArrayList<Integer> yo = new ArrayList();
    private ArrayList<Integer> yp = new ArrayList();
    private int yq;

    public final boolean selectDrawable(int i) {
        L(i);
        this.yq = i;
        return super.selectDrawable(i);
    }

    private void L(int i) {
        if (!this.ym.mFrames.isEmpty()) {
            GifFrame gifFrame = (GifFrame) this.ym.mFrames.get(0);
            if (this.ym.mFrames.size() > 1) {
                this.ym.mFrames.remove(0);
            }
            this.ym.decodeNextFrames();
            this.yn.getChildren()[i] = new BitmapDrawable(this.nY, gifFrame.mImage);
            this.yo.add(i, Integer.valueOf(gifFrame.mDuration));
        }
    }

    private boolean a(GifDecodeResult gifDecodeResult) {
        if (gifDecodeResult.mGifDecoder == null || !gifDecodeResult.mIsDecodeOk) {
            return false;
        }
        GifDecoder gifDecoder = gifDecodeResult.mGifDecoder;
        this.ym.mDecodedAllFrames = gifDecoder.isDecodeToTheEnd();
        int frameCount = gifDecoder.getFrameCount();
        if (frameCount <= 0) {
            return false;
        }
        for (int i = 0; i < frameCount; i++) {
            if (this.ym.mDecodedAllFrames) {
                addFrame(new BitmapDrawable(this.nY, gifDecoder.getFrame(i)), gifDecoder.getDelay(i));
            } else {
                this.ym.mFrames.add(new GifFrame(gifDecoder.getFrame(i), gifDecoder.getDelay(i), i));
            }
        }
        if (!this.ym.mDecodedAllFrames) {
            this.ym.firstDecodeNextFrames();
            GifFrame gifFrame = (GifFrame) this.ym.mFrames.get(0);
            Drawable bitmapDrawable = new BitmapDrawable(this.nY, gifFrame.mImage);
            addFrame(bitmapDrawable, gifFrame.mDuration);
            addFrame(bitmapDrawable, gifFrame.mDuration);
        }
        setOneShot(false);
        super.selectDrawable(0);
        return true;
    }

    protected final void setConstantState(DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        this.yn = drawableContainerState;
    }

    public final int getDuration(int i) {
        return ((Integer) this.yo.get(i)).intValue();
    }

    public final void addFrame(Drawable drawable, int i) {
        super.addFrame(drawable, i);
        this.yo.add(Integer.valueOf(i));
        this.yp.add(Integer.valueOf(i));
    }

    public final void scheduleSelf(Runnable runnable, long j) {
        if (j == SystemClock.uptimeMillis() + ((long) ((Integer) this.yp.get(this.yq)).intValue())) {
            j = SystemClock.uptimeMillis() + ((long) ((Integer) this.yo.get(this.yq)).intValue());
        }
        super.scheduleSelf(runnable, j);
    }

    private boolean a(Resources resources, ResettableInputStream resettableInputStream) {
        this.nY = resources;
        this.ym.mGifSource = resettableInputStream;
        return a(this.ym.decodeFrom(0));
    }

    public boolean load(Context context, Uri uri) {
        return a(context.getResources(), new ResettableInputStream(context, uri));
    }

    public boolean load(Context context, String str) {
        return a(context.getResources(), new ResettableInputStream(str));
    }

    public boolean load(Context context, AssetManager assetManager, String str) {
        return a(context.getResources(), new ResettableInputStream(assetManager, str));
    }

    public final void setMaxDecodeSize(long j) {
        this.ym.mMaxDecodeSize = j;
    }
}
