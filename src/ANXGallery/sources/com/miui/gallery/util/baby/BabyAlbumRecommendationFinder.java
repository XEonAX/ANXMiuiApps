package com.miui.gallery.util.baby;

import android.database.Cursor;
import android.text.TextUtils;
import android.util.SparseArray;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.preference.GalleryPreferences.Baby;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import java.util.ArrayList;

public class BabyAlbumRecommendationFinder {
    private volatile Future<RecommendationDatas> mFuture;
    private String mPeopleId;
    private volatile RecommendationDatas mRecommandationDatas;
    private volatile RecommendationFoundListener mRecommandationFoundListener;

    public interface RecommendationFoundListener {
        void onRecommendationFound(RecommendationDatas recommendationDatas);
    }

    public static final class RecommendationDatas {
        public ArrayList<Long> ids;
        public String peopleLocalId;
        public String peopleServerId;
        public int totalFaceCountInFaceAlbum;

        public boolean hasNewRecommendation() {
            return this.ids != null && this.ids.size() > 0;
        }

        public int getRecommendationSize() {
            if (this.ids != null) {
                return this.ids.size();
            }
            return 0;
        }
    }

    public BabyAlbumRecommendationFinder(String peopleId) {
        this.mPeopleId = peopleId;
    }

    public void setRecommendationFoundListener(RecommendationFoundListener l) {
        this.mRecommandationFoundListener = l;
    }

    public void findRecommendation(final SparseArray<Boolean> babyAlbum, final String babyAlbumLocalId) {
        if (this.mFuture == null) {
            this.mFuture = ThreadManager.getMiscPool().submit(new Job<RecommendationDatas>() {
                public RecommendationDatas run(JobContext jc) {
                    RecommendationDatas datas = new RecommendationDatas();
                    datas.peopleServerId = BabyAlbumRecommendationFinder.this.mPeopleId;
                    datas.peopleLocalId = String.valueOf(FaceManager.getPeopleLocalIdByServerId(BabyAlbumRecommendationFinder.this.mPeopleId));
                    Cursor cursor = null;
                    try {
                        cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.ONE_PERSON_URI, new String[]{"_id", "title", "mixedDateTime"}, null, new String[]{datas.peopleServerId, datas.peopleLocalId}, null);
                        while (cursor != null && cursor.moveToNext()) {
                            if (!TextUtils.isEmpty(cursor.getString(1)) && babyAlbum.get(cursor.getString(1).hashCode()) == null && cursor.getLong(2) > Baby.getLastClickBabyPhotosRecommandationTime(babyAlbumLocalId)) {
                                if (datas.ids == null) {
                                    datas.ids = new ArrayList();
                                }
                                datas.ids.add(Long.valueOf(cursor.getLong(0)));
                            }
                        }
                        if (cursor != null) {
                            datas.totalFaceCountInFaceAlbum = cursor.getCount();
                            cursor.close();
                        }
                    } catch (Exception e) {
                        if (cursor != null) {
                            datas.totalFaceCountInFaceAlbum = cursor.getCount();
                            cursor.close();
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            datas.totalFaceCountInFaceAlbum = cursor.getCount();
                            cursor.close();
                        }
                    }
                    return datas;
                }
            }, new FutureListener<RecommendationDatas>() {
                public void onFutureDone(Future<RecommendationDatas> future) {
                    if (!future.isCancelled()) {
                        BabyAlbumRecommendationFinder.this.mRecommandationDatas = (RecommendationDatas) future.get();
                        RecommendationFoundListener l = BabyAlbumRecommendationFinder.this.mRecommandationFoundListener;
                        if (l != null) {
                            l.onRecommendationFound(BabyAlbumRecommendationFinder.this.mRecommandationDatas);
                        }
                    }
                    if (future == BabyAlbumRecommendationFinder.this.mFuture) {
                        BabyAlbumRecommendationFinder.this.mFuture = null;
                    }
                }
            });
        }
    }
}
