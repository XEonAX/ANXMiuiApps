package com.nexstreaming.kminternal.kinemaster.utils.facedetect;

import android.content.Context;
import android.graphics.RectF;
import android.util.Log;
import android.util.LruCache;
import com.nexstreaming.app.common.task.ResultTask;
import com.nexstreaming.nexeditorsdk.module.nexFaceDetectionProvider;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: FaceInfo */
public class a {
    public static nexFaceDetectionProvider a;
    private static LruCache<String, a> b = new LruCache(100);
    private static Executor c = Executors.newFixedThreadPool(4);
    private static Map<String, WeakReference<ResultTask<a>>> d = new HashMap();
    private static Thread i = null;
    private float e;
    private float f;
    private float g;
    private float h;

    public void a(RectF rectF) {
        rectF.set(this.e, this.f, this.g, this.h);
    }

    public void b(RectF rectF) {
        this.e = Math.max(0.0f, rectF.left);
        this.f = Math.max(0.0f, rectF.top);
        this.g = Math.min(rectF.right, 1.0f);
        this.h = Math.min(rectF.bottom, 1.0f);
    }

    private void a(File file, boolean z, Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        if (file != null) {
            if (a != null) {
                if (i != null) {
                    try {
                        i.join();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    i = null;
                }
                if (a != null) {
                    a.init(file.getAbsolutePath(), context);
                    if (a != null) {
                        RectF rectF = new RectF();
                        if (a.detect(rectF)) {
                            b(rectF);
                        }
                    } else {
                        Log.d("FaceInfo", "faceDetectProc:skip detect(faceModule is null)");
                    }
                } else {
                    Log.d("FaceInfo", "faceDetectProc:skip init(faceModule is null)");
                }
                Log.d("FaceInfo", "FaceDetector elapsed time:(" + (System.currentTimeMillis() - currentTimeMillis) + ")");
                return;
            }
            Log.d("FaceInfo", "Can not find FaceDetector module");
        }
    }

    public a(File file, boolean z, Context context) {
        a(file, z, context);
    }

    public a(File file, int i, Context context) {
        a(file, true, context);
    }

    public static nexFaceDetectionProvider a() {
        return a;
    }

    public static void a(nexFaceDetectionProvider nexfacedetectionprovider) {
        if (a != null) {
            a.deinit();
        }
        a = nexfacedetectionprovider;
        b();
    }

    public static a a(String str) {
        return (a) b.get(str);
    }

    public static void a(String str, a aVar) {
        b.put(str, aVar);
    }

    public static boolean b() {
        Log.d("FaceInfo", "clearFaceInfo");
        b.evictAll();
        return true;
    }
}
