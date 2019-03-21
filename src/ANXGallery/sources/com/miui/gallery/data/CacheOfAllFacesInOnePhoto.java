package com.miui.gallery.data;

import android.util.LruCache;
import com.miui.gallery.cloud.peopleface.PeopleFace;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import java.util.ArrayList;

public class CacheOfAllFacesInOnePhoto {
    private static CacheOfAllFacesInOnePhoto mInstance;
    private LruCache<String, ArrayList<PeopleFace>> mFacesCache = new LruCache(5);

    public interface PhotoViewProvider {
        void onInvalidated();
    }

    public static CacheOfAllFacesInOnePhoto getInstance() {
        if (mInstance == null) {
            mInstance = new CacheOfAllFacesInOnePhoto();
        }
        return mInstance;
    }

    public ArrayList<PeopleFace> requestFacesOfThePhoto(final PhotoViewProvider provider, final String photoServerId) {
        ArrayList<PeopleFace> faces;
        synchronized (this.mFacesCache) {
            faces = (ArrayList) this.mFacesCache.get(photoServerId);
        }
        if (faces == null) {
            ThreadManager.getMiscPool().submit(new Job<ArrayList<PeopleFace>>() {
                public ArrayList<PeopleFace> run(JobContext jc) {
                    return NormalPeopleFaceMediaSet.getBrothers(photoServerId);
                }
            }, new FutureListener<ArrayList<PeopleFace>>() {
                public void onFutureDone(Future<ArrayList<PeopleFace>> future) {
                    if (future.get() != null) {
                        CacheOfAllFacesInOnePhoto.this.saveFacesOfThePhoto((ArrayList) future.get(), photoServerId);
                        provider.onInvalidated();
                    }
                }
            });
        }
        return faces;
    }

    public void saveFacesOfThePhoto(ArrayList<PeopleFace> faces, String photoKey) {
        synchronized (this.mFacesCache) {
            this.mFacesCache.put(photoKey, faces);
        }
    }

    public void clearCache() {
        synchronized (this.mFacesCache) {
            this.mFacesCache.trimToSize(-1);
        }
    }
}
