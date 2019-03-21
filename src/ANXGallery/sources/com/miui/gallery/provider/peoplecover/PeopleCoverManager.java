package com.miui.gallery.provider.peoplecover;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.nexstreaming.nexeditorsdk.nexCrop;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PeopleCoverManager {
    private static final int[] SCORES = new int[]{0, 1, 11, BaiduSceneResult.WESTERN_ARCHITECTURE, 1111, 11111, 111111, 1111111};
    private static final int[] SCORE_STAGE = new int[]{0, 1, 2, 3, 4, 5, 6, 7};
    private static PeopleCoverManager sInstance;
    private ArrayList<String> mCoverIds = new ArrayList();
    private ArrayList<BaseStrategy> mCoverStrategies = new ArrayList();
    private volatile boolean mLoadPeopleCoverDone = false;
    private int mMaxCoverScore = 0;

    private PeopleCoverManager() {
        registerCoverStrategy(new CoverImageSizeStrategy(nexCrop.ABSTRACT_DIMENSION), nexCrop.ABSTRACT_DIMENSION);
        registerCoverStrategy(new CoverScaleStrategy(10000), 10000);
        registerCoverStrategy(new CoverCountStrategy(1000), 1000);
        registerCoverStrategy(new CoverCenterStrategy(100), 100);
        registerCoverStrategy(new CoverEyeXStrategy(10), 10);
        registerCoverStrategy(new CoverEyeYStrategy(1), 1);
        registerCoverStrategy(new CoverColorStrategy(1000000), 1000000);
    }

    public static synchronized PeopleCoverManager getInstance() {
        PeopleCoverManager peopleCoverManager;
        synchronized (PeopleCoverManager.class) {
            if (sInstance == null) {
                sInstance = new PeopleCoverManager();
            }
            peopleCoverManager = sInstance;
        }
        return peopleCoverManager;
    }

    private void registerCoverStrategy(BaseStrategy strategy, int value) {
        this.mCoverStrategies.add(strategy);
        this.mMaxCoverScore += value;
    }

    public void startChooseCoverForAllPeople() {
        SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), PeopleFace.PEOPLE_TAG_URI, new String[]{"serverId", "eTag"}, null, null, null, new QueryHandler<Object>() {
            public Object handle(Cursor cursor) {
                if (cursor == null || cursor.getCount() == 0) {
                    return null;
                }
                long start = System.currentTimeMillis();
                int totalScoreStages = 0;
                int successCount = 0;
                while (cursor.moveToNext()) {
                    int score;
                    String peopleServerId = cursor.getString(0);
                    String serverTag = cursor.getString(1);
                    PeopleCover oldPeopleCover = (PeopleCover) GalleryEntityManager.getInstance().find(PeopleCover.class, peopleServerId);
                    if (oldPeopleCover == null || !TextUtils.equals(oldPeopleCover.getServerTag(), serverTag)) {
                        score = PeopleCoverManager.this.doChoosePeopleCover(peopleServerId, serverTag, oldPeopleCover);
                    } else {
                        score = oldPeopleCover.getCoverScore();
                    }
                    totalScoreStages += PeopleCoverManager.this.generatorScoreStage(score);
                    if (score > 0) {
                        successCount++;
                    }
                }
                Log.d("PeopleCoverManager", "finish choose cover for all people, cost time: %d", Long.valueOf(System.currentTimeMillis() - start));
                PeopleCoverManager.this.statPeopleCover((((float) totalScoreStages) * 1.0f) / ((float) cursor.getCount()), successCount);
                PeopleCoverManager.this.finishChoosePeopleCover();
                return null;
            }
        });
    }

    private int generatorScoreStage(int score) {
        int count = SCORES.length;
        for (int i = 0; i < count; i++) {
            if (score <= SCORES[i]) {
                return i;
            }
        }
        return 0;
    }

    private void statPeopleCover(float averageScore, int successCount) {
        BaseSamplingStatHelper.recordNumericPropertyEvent("people", "people_cover_score", (long) BaseSamplingStatHelper.generatorValueStage(averageScore, SCORE_STAGE));
        BaseSamplingStatHelper.recordNumericPropertyEvent("people", "people_cover_success_count", (long) successCount);
    }

    private int doChoosePeopleCover(String peopleServerId, String serverTag, PeopleCover oldPeopleCover) {
        if (TextUtils.isEmpty(peopleServerId)) {
            return 0;
        }
        final long start = System.currentTimeMillis();
        Context sGetAndroidContext = GalleryApp.sGetAndroidContext();
        Uri uri = PeopleFace.ONE_PERSON_URI;
        String[] strArr = BaseStrategy.PROJECTION;
        String[] strArr2 = new String[]{peopleServerId, "-1"};
        final String str = peopleServerId;
        final String str2 = serverTag;
        final PeopleCover peopleCover = oldPeopleCover;
        AnonymousClass2 anonymousClass2 = new QueryHandler<Integer>() {
            public Integer handle(Cursor cursor) {
                if (cursor == null || cursor.getCount() == 0) {
                    return Integer.valueOf(0);
                }
                int coverPosition = 0;
                int coverScore = 0;
                if (cursor.moveToFirst()) {
                    do {
                        int score = 0;
                        Iterator it = PeopleCoverManager.this.mCoverStrategies.iterator();
                        while (it.hasNext()) {
                            int i;
                            BaseStrategy strategy = (BaseStrategy) it.next();
                            int weight = strategy.getWeight();
                            if (strategy.isValid(cursor)) {
                                i = 1;
                            } else {
                                i = 0;
                            }
                            score += i * weight;
                        }
                        if (score > coverScore) {
                            coverPosition = cursor.getPosition();
                            coverScore = score;
                            if (score == PeopleCoverManager.this.mMaxCoverScore) {
                                break;
                            }
                        }
                    } while (cursor.moveToNext());
                }
                if (coverScore != 0) {
                    Log.d("PeopleCoverManager", "success choose cover for person: %s, position: %d, cost : %d", str, Integer.valueOf(coverPosition), Long.valueOf(System.currentTimeMillis() - start));
                    cursor.moveToPosition(coverPosition);
                    PeopleCoverManager.this.setPeopleCover(str, cursor.getString(10), str2, peopleCover, coverScore);
                } else {
                    Log.d("PeopleCoverManager", "choose no cover for person: %s, cost : %d", str, Long.valueOf(System.currentTimeMillis() - start));
                    PeopleCoverManager.this.setPeopleCover(str, null, str2, peopleCover, coverScore);
                }
                return Integer.valueOf(coverScore);
            }
        };
        return ((Integer) SafeDBUtil.safeQuery(sGetAndroidContext, uri, strArr, null, strArr2, "dateTaken DESC ", (QueryHandler) anonymousClass2)).intValue();
    }

    public synchronized void setPeopleCover(String peopleId, String coverId, String serverTag, PeopleCover old, int score) {
        EntityManager em = GalleryEntityManager.getInstance();
        if (old == null) {
            em.insert(new PeopleCover(peopleId, coverId, serverTag, score));
        } else {
            old.setCoverId(coverId);
            old.setServerTag(serverTag);
            old.setCoverScore(score);
            em.update(old);
        }
    }

    private void finishChoosePeopleCover() {
        Iterator it = this.mCoverStrategies.iterator();
        while (it.hasNext()) {
            ((BaseStrategy) it.next()).onFinish();
        }
    }

    public ArrayList getCoverIds() {
        ensureLoadPeopleCoverDone();
        return new ArrayList(this.mCoverIds);
    }

    private void ensureLoadPeopleCoverDone() {
        if (!this.mLoadPeopleCoverDone) {
            long start = System.currentTimeMillis();
            synchronized (this.mCoverIds) {
                if (!this.mLoadPeopleCoverDone) {
                    loadPeopleCover();
                }
            }
            Log.d("PeopleCoverManager", "wait for load cost : %d ", Long.valueOf(System.currentTimeMillis() - start));
        }
    }

    private synchronized void loadPeopleCover() {
        long time = System.currentTimeMillis();
        List<PeopleCover> list = GalleryEntityManager.getInstance().query(PeopleCover.class, null, null, null, null);
        if (BaseMiscUtil.isValid(list)) {
            this.mCoverIds.clear();
            for (PeopleCover peopleCover : list) {
                String coverId = peopleCover.getCoverId();
                if (!TextUtils.isEmpty(coverId)) {
                    this.mCoverIds.add(coverId);
                }
            }
            Log.d("PeopleCoverManager", "finish load people cover, cost time: %d", Long.valueOf(System.currentTimeMillis() - time));
        }
        this.mLoadPeopleCoverDone = true;
    }

    public synchronized void onAccountDelete() {
        if (this.mCoverIds != null) {
            this.mCoverIds.clear();
        }
        this.mLoadPeopleCoverDone = false;
        GalleryEntityManager.getInstance().deleteAll(PeopleCover.class);
        Log.d("PeopleCoverManager", "on account delete");
    }
}
