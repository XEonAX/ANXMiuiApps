package com.miui.gallery.util.baby;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.preference.GalleryPreferences.Baby;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.face.PeopleCursorHelper;

public class BabyFaceFinder implements FutureListener<Boolean> {
    private static final Long TIME_INTERVAL_FOR_CHECK_CANDIDATE_PEOPLE = Long.valueOf(604800000);
    private Boolean mFoundBabyAlbums;
    private Future mFuture;
    private BabyAlbumsFoundListener mListener;

    public interface BabyAlbumsFoundListener {
        void onBabyAlbumsFound(Boolean bool);
    }

    private boolean accept(String name, int relationType) {
        return PeopleContactInfo.isBabyRelation(relationType) && !TextUtils.isEmpty(name);
    }

    public synchronized void setBabyAlbumsFoundListener(BabyAlbumsFoundListener l) {
        this.mListener = l;
    }

    public synchronized void startFindFace(String babyAlbumLocalId) {
        if (this.mFuture != null) {
            this.mFuture.cancel();
        }
        if (System.currentTimeMillis() - Baby.getLastClickPeopleRecommandationTime(babyAlbumLocalId) >= TIME_INTERVAL_FOR_CHECK_CANDIDATE_PEOPLE.longValue()) {
            this.mFuture = ThreadManager.getMiscPool().submit(new Job<Boolean>() {
                public Boolean run(JobContext jc) {
                    Cursor cursor = null;
                    try {
                        cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.PERSONS_URI, PeopleCursorHelper.PROJECTION, null, null, null);
                        while (cursor != null && cursor.moveToNext()) {
                            if (BabyFaceFinder.this.accept(PeopleCursorHelper.getPeopleName(cursor), PeopleCursorHelper.getRelationType(cursor))) {
                                Boolean valueOf = Boolean.valueOf(true);
                                if (cursor == null) {
                                    return valueOf;
                                }
                                cursor.close();
                                return valueOf;
                            }
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Exception e) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                    return Boolean.valueOf(false);
                }
            }, this);
        }
    }

    public synchronized void onFutureDone(Future<Boolean> future) {
        if (!future.isCancelled()) {
            this.mFoundBabyAlbums = (Boolean) future.get();
            if (this.mListener != null) {
                this.mListener.onBabyAlbumsFound(this.mFoundBabyAlbums);
            }
        }
        if (future == this.mFuture) {
            this.mFuture = null;
        }
    }
}
