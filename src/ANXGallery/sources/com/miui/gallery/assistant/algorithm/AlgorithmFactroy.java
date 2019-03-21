package com.miui.gallery.assistant.algorithm;

import android.util.SparseArray;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.assistant.FlagUtil;
import java.lang.ref.SoftReference;

public class AlgorithmFactroy {
    private static final SparseArray<SoftReference<Algorithm>> sAlgorithmCache = new SparseArray();
    private static Runnable sRunnable = new Runnable() {
        public void run() {
            synchronized (AlgorithmFactroy.class) {
                for (int i = 0; i < AlgorithmFactroy.sAlgorithmCache.size(); i++) {
                    SoftReference<Algorithm> algorithmSoftReference = (SoftReference) AlgorithmFactroy.sAlgorithmCache.valueAt(i);
                    if (algorithmSoftReference != null) {
                        Log.d("AlgorithmFactroy", "release algorithm flag:%d", Integer.valueOf(AlgorithmFactroy.sAlgorithmCache.keyAt(i)));
                        algorithmSoftReference.clear();
                    }
                }
            }
        }
    };

    private AlgorithmFactroy() {
    }

    public static synchronized <T extends Algorithm> T getAlgorithmByFlag(int flag) {
        Algorithm algorithm;
        synchronized (AlgorithmFactroy.class) {
            flag = ensureFlag(flag);
            algorithm = getAlgorithmFromCache(flag);
            if (algorithm == null) {
                algorithm = createAlgorithmByFlag(flag);
                Log.d("AlgorithmFactroy", "Create new algorithm %d", Integer.valueOf(flag));
            } else {
                Log.d("AlgorithmFactroy", "Get algorithm %d from Cache", Integer.valueOf(flag));
            }
            if (algorithm != null) {
                addAlgorithmToCache(flag, algorithm);
            }
        }
        return algorithm;
    }

    private static int ensureFlag(int flag) {
        if (FlagUtil.hasFlag(flag, 1)) {
            return 1;
        }
        if (FlagUtil.hasFlag(flag, 2)) {
            return 2;
        }
        if (FlagUtil.hasFlag(flag, 4)) {
            return 4;
        }
        if (FlagUtil.hasFlag(flag, 8)) {
            return 8;
        }
        return 16;
    }

    private static void scheduleAlgorithmRelease() {
        ThreadManager.getWorkHandler().removeCallbacks(sRunnable);
        ThreadManager.getWorkHandler().postDelayed(sRunnable, 5000);
    }

    private static Algorithm createAlgorithmByFlag(int flag) {
        Algorithm algorithm = null;
        if (FlagUtil.hasFlag(flag, 1)) {
            algorithm = new QualityScoreAlgorithm();
        } else if (FlagUtil.hasFlag(flag, 2)) {
            algorithm = new SceneFilterAlgorithm();
        } else if (FlagUtil.hasFlag(flag, 4) || FlagUtil.hasFlag(flag, 8)) {
            algorithm = new ClusterAlgorithm();
        } else if (FlagUtil.hasFlag(flag, 16)) {
            algorithm = new BaiduSceneFilterAlgorithm();
        }
        if (algorithm != null) {
            algorithm.init();
        }
        return algorithm;
    }

    private static synchronized void addAlgorithmToCache(int flag, Algorithm algorithm) {
        synchronized (AlgorithmFactroy.class) {
            if (algorithm != null) {
                sAlgorithmCache.put(getCacheKey(flag), new SoftReference(algorithm));
                scheduleAlgorithmRelease();
            }
        }
    }

    private static synchronized Algorithm getAlgorithmFromCache(int flag) {
        Algorithm algorithm;
        synchronized (AlgorithmFactroy.class) {
            int cacheKey = getCacheKey(flag);
            SoftReference<Algorithm> algorithmRef = (SoftReference) sAlgorithmCache.get(cacheKey);
            algorithm = null;
            if (algorithmRef != null) {
                algorithm = (Algorithm) algorithmRef.get();
                algorithmRef.clear();
                sAlgorithmCache.remove(cacheKey);
            }
        }
        return algorithm;
    }

    private static int getCacheKey(int flag) {
        if (flag == 4 || flag == 8) {
            return 12;
        }
        return flag;
    }
}
