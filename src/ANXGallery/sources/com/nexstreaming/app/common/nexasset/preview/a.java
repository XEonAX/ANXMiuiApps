package com.nexstreaming.app.common.nexasset.preview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.opengl.GLSurfaceView.Renderer;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View.MeasureSpec;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.config.NexEditorDeviceProfile;
import com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader;
import com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.d;
import com.nexstreaming.kminternal.nexvideoeditor.NexThemeRenderer;
import java.io.IOException;
import java.util.Collections;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: AssetPreviewView */
public class a extends GLSurfaceView {
    private static final long FRAME_RATE = 30;
    private static final long FRAME_TIME = 33;
    private static String TAG = "NexThemePreviewView";
    private float mAspectRatio = 1.7777778f;
    private float mColor = 0.0f;
    private int m_absTime = 0;
    private c m_assetPackageManager;
    public boolean m_done = false;
    private f m_effect;
    private String m_effectOptions = null;
    private long m_effectTime = 2000;
    private long m_frameEnd;
    private long m_frameStart;
    private Handler m_handler = new Handler();
    private boolean m_isClipEffect;
    private boolean m_isRenderItem;
    private NexThemeRenderer m_nexThemeRenderer = null;
    private d m_overlayPathResolver = null;
    private long m_pauseTime = 1000;
    private Object m_renderLock = new Object();
    private f m_setEffect;
    private String m_setEffectOptions = null;
    private long m_setEffectTime = -1;
    private boolean m_showOnRender = false;
    private long m_startTime;
    private boolean m_swapPlaceholders = false;

    /* compiled from: AssetPreviewView */
    private class a implements Renderer {
        private a() {
        }

        /* synthetic */ a(a aVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* JADX WARNING: Removed duplicated region for block: B:20:0x00e7 A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x02b3  */
        /* JADX WARNING: Removed duplicated region for block: B:90:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:65:0x02cf  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onDrawFrame(GL10 gl10) {
            boolean z;
            long j;
            Object obj;
            a.this.m_frameEnd = a.miliTime();
            if (a.this.m_frameStart == 0) {
                a.this.m_frameStart = a.this.m_frameEnd;
            }
            long access$100 = (a.FRAME_TIME - (a.this.m_frameEnd - a.this.m_frameStart)) - 5;
            if (access$100 > 5) {
                try {
                    Thread.sleep(access$100);
                } catch (InterruptedException e) {
                    Log.d("NexThemePreviewView", "Preview sleep INTERRUPTED");
                }
            }
            a.this.m_frameStart = a.this.m_frameStart + a.FRAME_TIME;
            a.this.mColor = a.this.mColor + 0.005f;
            if (a.this.mColor > 1.0f) {
                a.this.mColor = 0.0f;
            }
            gl10.glClearColor(1.0f, 0.2f, a.this.mColor, 1.0f);
            gl10.glClear(16640);
            if (a.this.m_effectTime == 0) {
                z = false;
                j = -1;
            } else {
                access$100 = a.this.m_pauseTime + a.this.m_effectTime;
                long access$200 = (a.miliTime() - a.this.m_startTime) % (2 * access$100);
                access$200 -= access$200 % a.FRAME_TIME;
                z = access$200 > access$100 && !a.this.m_isClipEffect;
                j = access$200;
            }
            Object obj2 = null;
            if (z != a.this.m_swapPlaceholders) {
                obj2 = 1;
                a.this.m_swapPlaceholders = z;
                if (a.this.m_swapPlaceholders) {
                    a.this.m_nexThemeRenderer.setPlaceholders("placeholder2.jpg", "placeholder1.jpg");
                    obj = 1;
                    synchronized (a.this.m_renderLock) {
                        if (a.this.m_nexThemeRenderer != null) {
                            obj2 = null;
                            Object obj3 = null;
                            if (a.this.m_effectOptions != a.this.m_setEffectOptions) {
                                a.this.m_setEffectOptions = a.this.m_effectOptions;
                                obj3 = 1;
                            }
                            if (!(a.this.m_effect == null || a.this.m_effect == a.this.m_setEffect)) {
                                a.this.m_setEffect = a.this.m_effect;
                                obj2 = 1;
                            }
                            if (a.this.m_setEffectTime != a.this.m_effectTime) {
                                a.this.m_setEffectTime = a.this.m_effectTime;
                                obj3 = 1;
                            }
                            if (!(a.this.m_assetPackageManager == null || (r2 == null && obj2 == null))) {
                                a.this.m_nexThemeRenderer.clearClipEffect();
                                a.this.m_nexThemeRenderer.clearTransitionEffect();
                                if (obj2 != null) {
                                    String a;
                                    try {
                                        if (a.this.m_isRenderItem) {
                                            a = a.this.m_assetPackageManager.a(Collections.singletonList(a.this.m_effect.getId()));
                                        } else {
                                            a = a.this.m_assetPackageManager.a(Collections.singletonList(a.this.m_effect.getId()), false);
                                        }
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        a = null;
                                    }
                                    Log.d("EffectPreviewView", " m_isRenderItem=" + a.this.m_isRenderItem + ",m_isClipEffect=" + a.this.m_isClipEffect);
                                    if (a != null) {
                                        if (a.this.m_isRenderItem) {
                                            a.this.m_nexThemeRenderer.clearRenderItems();
                                            a.this.m_nexThemeRenderer.loadRenderItem(a.this.m_effect.getId(), a);
                                        } else {
                                            a.this.m_nexThemeRenderer.a(a);
                                        }
                                    }
                                }
                                if (a.this.m_effect != null) {
                                    if (a.this.m_isClipEffect) {
                                        a.this.m_nexThemeRenderer.setClipEffect(a.this.m_effect.getId(), a.this.m_effectOptions, 1, 3, 0, ((int) a.this.m_effectTime) + 100, 50, ((int) a.this.m_effectTime) + 50);
                                    } else {
                                        a.this.m_nexThemeRenderer.setTransitionEffect(a.this.m_effect.getId(), a.this.m_effectOptions, 1, 3, 0, (int) a.this.m_effectTime);
                                    }
                                }
                            }
                            a.this.m_nexThemeRenderer.setCTS((a.this.m_isClipEffect ? 50 : 0) + ((int) Math.min(j % (a.this.m_pauseTime + a.this.m_effectTime), a.this.m_effectTime - 1)));
                            a.this.m_nexThemeRenderer.render();
                        }
                    }
                    if (a.this.m_showOnRender) {
                        a.this.m_showOnRender = false;
                        a.this.m_handler.post(new Runnable() {
                            public void run() {
                                a.this.setVisibility(0);
                            }
                        });
                    }
                    if (obj == null) {
                        access$100 = a.miliTime() - a.this.m_frameEnd;
                        a.this.m_startTime = a.this.m_startTime + access$100;
                        a.this.m_frameStart = access$100 + a.this.m_frameStart;
                        return;
                    }
                    return;
                }
                a.this.m_nexThemeRenderer.setPlaceholders("placeholder1.jpg", "placeholder2.jpg");
            }
            obj = obj2;
            synchronized (a.this.m_renderLock) {
            }
            if (a.this.m_showOnRender) {
            }
            if (obj == null) {
            }
        }

        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            Log.d(a.TAG, "onSurfaceChanged");
            gl10.glViewport(0, 0, i, i2);
            if (a.this.m_nexThemeRenderer != null) {
                a.this.m_nexThemeRenderer.surfaceChange(i, i2);
            }
        }

        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            Log.d(a.TAG, "onSurfaceCreated");
        }
    }

    private static long miliTime() {
        return System.nanoTime() / 1000000;
    }

    public a(Context context) {
        super(context);
        init(false, 0, 1);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(false, 0, 1);
    }

    public a(Context context, boolean z, int i, int i2) {
        super(context);
        init(z, i, 1);
    }

    public void setAspectRatio(float f) {
        this.mAspectRatio = f;
    }

    public float getAspectRatio() {
        return this.mAspectRatio;
    }

    public void setOverlayPathResolver(d dVar) {
        this.m_overlayPathResolver = dVar;
    }

    public void setEffectOptions(String str) {
        if (str == null || this.m_effectOptions == null || !str.equals(this.m_effectOptions)) {
            this.m_effectOptions = str;
        }
    }

    public String getEffectOptions() {
        return this.m_effectOptions;
    }

    public void deinitRenderer() {
    }

    public void setEffect(String str) {
        setEffect(c.a(getContext()).c(str));
    }

    public void setEffect(f fVar) {
        boolean z = true;
        if (fVar != this.m_effect) {
            boolean z2;
            this.m_startTime = miliTime();
            if (fVar.getCategory() == ItemCategory.effect) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.m_isClipEffect = z2;
            if (fVar.getType() != ItemType.renderitem) {
                z = false;
            }
            this.m_isRenderItem = z;
            this.m_effect = fVar;
        }
    }

    public void setEffectTime(int i) {
        if (((long) i) != this.m_effectTime) {
            this.m_startTime = miliTime();
            this.m_effectTime = (long) i;
        }
    }

    public void setPauseTime(int i) {
        this.m_pauseTime = (long) i;
    }

    public int getPauseTime() {
        return (int) this.m_pauseTime;
    }

    public void stepForward(int i) {
        this.m_absTime += i;
        if (this.m_absTime < 0) {
            this.m_absTime = 0;
        }
        if (this.m_absTime > 60) {
            this.m_absTime = 60;
        }
        this.m_effectTime = 0;
    }

    public void stepBackward(int i) {
        this.m_absTime -= i;
        if (this.m_absTime < 0) {
            this.m_absTime = 0;
        }
        if (this.m_absTime > 60) {
            this.m_absTime = 60;
        }
        this.m_effectTime = 0;
    }

    public void showOnRender() {
        this.m_showOnRender = true;
    }

    protected void onDetachedFromWindow() {
        destroyRenderer();
        super.onDetachedFromWindow();
    }

    private void destroyRenderer() {
        synchronized (this.m_renderLock) {
            if (this.m_nexThemeRenderer != null) {
                this.m_nexThemeRenderer.deinit(true);
                this.m_nexThemeRenderer = null;
            }
        }
    }

    private void makeRenderer() {
        if (this.m_nexThemeRenderer == null && !this.m_done) {
            this.m_nexThemeRenderer = new NexThemeRenderer();
            this.m_nexThemeRenderer.init(new NexImageLoader(getContext().getResources(), c.a(getContext()).e(), this.m_overlayPathResolver, 1440, 810, 1500000));
            if (!this.m_swapPlaceholders || this.m_isClipEffect) {
                this.m_nexThemeRenderer.setPlaceholders("placeholder1.jpg", "placeholder2.jpg");
            } else {
                this.m_nexThemeRenderer.setPlaceholders("placeholder2.jpg", "placeholder1.jpg");
            }
        }
    }

    protected void onAttachedToWindow() {
        makeRenderer();
        super.onAttachedToWindow();
    }

    protected void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (this.mAspectRatio > 0.0f) {
            if (((float) size2) * this.mAspectRatio > ((float) size)) {
                size2 = (int) (((float) size) / this.mAspectRatio);
            } else {
                size = (int) (((float) size2) * this.mAspectRatio);
            }
        }
        setMeasuredDimension(size, size2);
    }

    private void init(boolean z, int i, int i2) {
        this.m_assetPackageManager = c.a(getContext());
        setEGLContextClientVersion(2);
        setZOrderOnTop(true);
        getHolder().setFormat(1);
        final NexEditorDeviceProfile deviceProfile = NexEditorDeviceProfile.getDeviceProfile();
        setEGLConfigChooser(new EGLConfigChooser() {
            public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
                int i;
                int[] iArr = new int[19];
                iArr[0] = 12352;
                iArr[1] = 4;
                iArr[2] = 12324;
                iArr[3] = 8;
                iArr[4] = 12323;
                iArr[5] = 8;
                iArr[6] = 12322;
                iArr[7] = 8;
                iArr[8] = 12321;
                iArr[9] = 8;
                iArr[10] = 12326;
                iArr[11] = 1;
                iArr[12] = 12338;
                iArr[13] = deviceProfile.getGLMultisample() ? 1 : 0;
                iArr[14] = 12337;
                if (deviceProfile.getGLMultisample()) {
                    i = 2;
                } else {
                    i = 0;
                }
                iArr[15] = i;
                iArr[16] = 12325;
                iArr[17] = deviceProfile.getGLDepthBufferBits();
                iArr[18] = 12344;
                int[] iArr2 = new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12326, 8, 12344};
                int[] iArr3 = new int[1];
                egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr3);
                if (iArr3[0] < 1) {
                    egl10.eglChooseConfig(eGLDisplay, iArr2, null, 0, iArr3);
                } else {
                    iArr2 = iArr;
                }
                EGLConfig[] eGLConfigArr = new EGLConfig[iArr3[0]];
                egl10.eglChooseConfig(eGLDisplay, iArr2, eGLConfigArr, eGLConfigArr.length, iArr3);
                return eGLConfigArr[0];
            }
        });
        Renderer aVar = new a(this, null);
        setRenderer(aVar);
        setRenderMode(1);
        Log.d(TAG, "GL View Created " + aVar);
        this.m_startTime = miliTime();
    }

    public void suspendRendering() {
        setRenderMode(0);
    }

    public void resumeRendering() {
        setRenderMode(1);
    }

    public int getRenderingMode() {
        return getRenderMode();
    }
}
