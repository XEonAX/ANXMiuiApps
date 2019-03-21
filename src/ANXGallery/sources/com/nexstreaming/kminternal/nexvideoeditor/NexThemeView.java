package com.nexstreaming.kminternal.nexvideoeditor;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View.MeasureSpec;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class NexThemeView extends TextureView implements SurfaceTextureListener {
    private static String LOG_TAG = "VideoEditor_ThemeView";
    public static final int kEventType_Available = 1;
    public static final int kEventType_Destroyed = 3;
    public static final int kEventType_SizeChanged = 2;
    private static float mAspectRatio = 1.7777778f;
    private Surface actualSurface;
    private SurfaceTexture actualSurfaceTexture;
    private boolean isAvailable = false;
    private boolean mBlackOut = false;
    private Queue<Object> mClearListenerList = new LinkedList();
    private int mCurrentTime;
    private NexEditor mEditor = null;
    private boolean mHadNativeRenderSinceClear = false;
    private Handler mHandler = new Handler();
    private RenderType mRenderType = RenderType.None;
    private a m_captureListener = null;
    private int m_height = 0;
    private int m_width = 0;
    private b nexThemeViewCallback;
    private List<Runnable> postOnPrepareSurfaceRunnables = new ArrayList();

    private enum RenderType {
        None,
        Native,
        Clear
    }

    public static abstract class a {
    }

    public interface b {
        void onEventNotify(int i, Object obj, int i2, int i3, int i4);
    }

    protected void setNotify(b bVar) {
        this.nexThemeViewCallback = bVar;
    }

    private void updateActualSurface(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != this.actualSurfaceTexture) {
            this.actualSurfaceTexture = surfaceTexture;
            if (this.actualSurfaceTexture != null) {
                this.actualSurface = new Surface(this.actualSurfaceTexture);
            } else {
                this.actualSurface = null;
            }
        }
    }

    private String diagString() {
        return "[0x" + Integer.toHexString(System.identityHashCode(this)) + " " + getWidth() + "x" + getHeight() + "] ";
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        updateActualSurface(surfaceTexture);
        this.m_width = i;
        this.m_height = i2;
        Log.d(LOG_TAG, "onSurfaceTextureAvailable " + diagString() + (this.mEditor == null ? "(editor is null)" : "(editor is SET)"));
        if (this.mEditor != null) {
            this.mEditor.a(this.actualSurface);
            this.mEditor.w();
            for (Runnable post : this.postOnPrepareSurfaceRunnables) {
                post(post);
            }
            this.postOnPrepareSurfaceRunnables.clear();
        }
        if (this.nexThemeViewCallback != null) {
            this.nexThemeViewCallback.onEventNotify(1, null, i, i2, 0);
        }
        this.isAvailable = true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        updateActualSurface(surfaceTexture);
        this.m_width = i;
        this.m_height = i2;
        Log.d(LOG_TAG, "onSurfaceTextureSizeChanged " + diagString() + (this.mEditor == null ? "(editor is null)" : "(editor is SET)"));
        if (this.mEditor != null) {
            this.mEditor.a(this.actualSurface);
            this.mEditor.w();
        }
        if (this.nexThemeViewCallback != null) {
            this.nexThemeViewCallback.onEventNotify(2, null, i, i2, 0);
        }
    }

    public void postOnPrepareSurface(Runnable runnable) {
        this.postOnPrepareSurfaceRunnables.add(runnable);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Log.d(LOG_TAG, "onSurfaceTextureDestroyed " + diagString() + (this.mEditor == null ? "(editor is null)" : "(editor is SET)"));
        if (this.mEditor != null) {
            this.mEditor.a(null);
        }
        this.actualSurfaceTexture = null;
        this.actualSurface = null;
        if (this.nexThemeViewCallback != null) {
            this.nexThemeViewCallback.onEventNotify(3, null, 0, 0, 0);
        }
        this.isAvailable = false;
        return true;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void capture(a aVar) {
        this.m_captureListener = aVar;
    }

    public void setBlackOut(boolean z) {
        this.mBlackOut = z;
    }

    public NexThemeView(Context context) {
        super(context);
        init(false, 0, 1);
    }

    public NexThemeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(false, 0, 0);
    }

    public NexThemeView(Context context, boolean z, int i, int i2) {
        super(context);
        init(z, i, i2);
    }

    void linkToEditor(NexEditor nexEditor) {
        Log.d(LOG_TAG, "linkToEditor " + diagString() + " editor=" + (nexEditor == null ? "NULL" : "not-null"));
        this.mEditor = nexEditor;
        if (this.mEditor != null && this.actualSurface != null) {
            this.mEditor.a(this.actualSurface);
        }
    }

    public static void setAspectRatio(float f) {
        mAspectRatio = f;
    }

    public static float getAspectRatio() {
        return mAspectRatio;
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (mode == 1073741824 && mode2 == 1073741824) {
            mode = size;
            mode2 = size2;
        } else if (mode == 1073741824) {
            mode2 = (int) Math.min((float) size2, ((float) size) / mAspectRatio);
            mode = (int) (((float) mode2) * mAspectRatio);
        } else if (mode2 == 1073741824) {
            mode = (int) Math.min((float) size, ((float) size2) * mAspectRatio);
            mode2 = (int) (((float) mode) / mAspectRatio);
        } else if (((float) size) > ((float) size2) * mAspectRatio) {
            mode = (int) (((float) size2) * mAspectRatio);
            mode2 = size2;
        } else {
            mode2 = (int) (((float) size) / mAspectRatio);
            mode = size;
        }
        setMeasuredDimension(mode, mode2);
        Log.d(LOG_TAG, String.format("onMeasure(%X %X %d %d %f)", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(size), Integer.valueOf(size2), Float.valueOf(mAspectRatio)}));
    }

    public boolean isSurfaceAvailable() {
        return this.isAvailable;
    }

    private void init(boolean z, int i, int i2) {
        setSurfaceTextureListener(this);
    }

    public void requestDraw(int i) {
        Log.e(LOG_TAG, "requestDraw(" + i + ")");
        this.mRenderType = RenderType.Native;
        this.mCurrentTime = i;
    }
}
