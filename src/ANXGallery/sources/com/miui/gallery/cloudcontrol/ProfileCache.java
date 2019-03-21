package com.miui.gallery.cloudcontrol;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.R;
import com.miui.gallery.cloudcontrol.FeatureProfile.Deserializer;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.cloudcontrol.strategies.BaseStrategy;
import com.miui.gallery.provider.GalleryContract.CloudControl;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

class ProfileCache {
    private HashMap<String, FeatureProfile> mCloudCache = new HashMap();
    private HashMap<String, Object> mCloudStrategyCache = new HashMap();
    private volatile boolean mIsLoadFinished;
    private HashMap<String, FeatureProfile> mLocalCache = new HashMap();
    private HashMap<String, Object> mLocalStrategyCache = new HashMap();
    private final Object mObserverLock = new Object();
    private Map<String, List<FeatureStatusObserver>> mObserversMap = new HashMap();
    private volatile boolean mPendingNotify;
    private final Object mSyncLock = new Object();

    ProfileCache() {
    }

    void insertToCloudCache(FeatureProfile featureProfile) {
        String str = null;
        String featureName = featureProfile.getName();
        String featureStatus = featureProfile.getStatus();
        String featureStrategy = featureProfile.getStrategy();
        FeatureProfile cache = (FeatureProfile) this.mCloudCache.get(featureName);
        synchronized (this.mSyncLock) {
            if (featureStatus != null) {
                if (Status.REMOVE.getValue().equals(featureStatus)) {
                    if (cache != null) {
                        this.mCloudCache.remove(featureName);
                        this.mCloudStrategyCache.remove(featureName);
                    }
                    if (cache != null) {
                        str = cache.getStatus();
                    }
                    notifyObserversByName(featureName, str, featureStatus);
                }
            }
            if (cache != null) {
                if (cache.getStatus() != null && cache.getStatus().equals(Status.ENABLE.getValue())) {
                    featureStatus = Status.ENABLE.getValue();
                }
                if (!TextUtils.equals(cache.getStrategy(), featureStrategy)) {
                    cache.setStrategy(featureStrategy);
                    this.mCloudStrategyCache.remove(featureName);
                }
                if (!TextUtils.equals(cache.getStatus(), featureStatus)) {
                    cache.setStatus(featureStatus);
                    notifyObserversByName(featureName, cache.getStatus(), featureStatus);
                }
            } else {
                FeatureProfile newItem = new FeatureProfile();
                newItem.setStrategy(featureStrategy);
                newItem.setStatus(featureStatus);
                newItem.setName(featureName);
                this.mCloudCache.put(featureName, newItem);
                notifyObserversByName(featureName, null, featureStatus);
            }
        }
    }

    private void notifyObserversByName(String featureName, String oldStatus, String newStatus) {
        try {
            synchronized (this.mObserverLock) {
                List<FeatureStatusObserver> observers = (List) this.mObserversMap.get(featureName);
                if (BaseMiscUtil.isValid(observers)) {
                    for (final FeatureStatusObserver observer : observers) {
                        final String str = featureName;
                        final String str2 = oldStatus;
                        final String str3 = newStatus;
                        ThreadManager.getMainHandler().post(new Runnable() {
                            public void run() {
                                observer.onStatusChange(str, Status.fromValue(str2), Status.fromValue(str3));
                            }
                        });
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("CloudControl.ProfileCache", "Failed to notify observers.");
        }
    }

    /* JADX WARNING: Missing block: B:52:?, code:
            return r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    <T extends BaseStrategy> T queryStrategy(String feature, Class<T> classOfT, Merger<T> merger) {
        if (TextUtils.isEmpty(feature)) {
            return null;
        }
        synchronized (this.mSyncLock) {
            Object strategyJson;
            T cloudStrategy = null;
            T localStrategy = null;
            Object cloudStrategyObj = this.mCloudStrategyCache.get(feature);
            if (cloudStrategyObj != null && classOfT.isAssignableFrom(cloudStrategyObj.getClass())) {
                cloudStrategy = (BaseStrategy) cloudStrategyObj;
            } else if (this.mCloudCache.get(feature) != null) {
                strategyJson = ((FeatureProfile) this.mCloudCache.get(feature)).getStrategy();
                try {
                    cloudStrategy = (BaseStrategy) new Gson().fromJson((String) strategyJson, (Class) classOfT);
                    if (cloudStrategy != null) {
                        cloudStrategy.doAdditionalProcessing();
                        this.mCloudStrategyCache.put(feature, cloudStrategy);
                    }
                } catch (Exception e) {
                    Log.e("CloudControl.ProfileCache", "Failed to deserialize strategy: %s", strategyJson);
                    e.printStackTrace();
                }
            }
            Object localStrategyObj = this.mLocalStrategyCache.get(feature);
            if (localStrategyObj != null && classOfT.isAssignableFrom(localStrategyObj.getClass())) {
                localStrategy = (BaseStrategy) localStrategyObj;
            } else if (this.mLocalCache.get(feature) != null) {
                strategyJson = ((FeatureProfile) this.mLocalCache.get(feature)).getStrategy();
                try {
                    localStrategy = (BaseStrategy) new Gson().fromJson((String) strategyJson, (Class) classOfT);
                    if (localStrategy != null) {
                        localStrategy.doAdditionalProcessing();
                        this.mLocalStrategyCache.put(feature, localStrategy);
                    }
                } catch (Exception e2) {
                    Log.e("CloudControl.ProfileCache", "Failed to deserialize strategy: %s", strategyJson);
                    e2.printStackTrace();
                }
            }
            if (merger == null || cloudStrategy == null || localStrategy == null) {
                T t = cloudStrategy != null ? cloudStrategy : localStrategy;
            } else {
                BaseStrategy baseStrategy = (BaseStrategy) merger.merge(localStrategy, cloudStrategy);
                return baseStrategy;
            }
        }
    }

    Status registerStatusObserver(String feature, FeatureStatusObserver observer) {
        if (TextUtils.isEmpty(feature)) {
            throw new IllegalArgumentException("feature should not be empty or null.");
        }
        if (observer != null) {
            synchronized (this.mObserverLock) {
                List<FeatureStatusObserver> observers = (List) this.mObserversMap.get(feature);
                if (observers == null) {
                    observers = new ArrayList();
                    observers.add(observer);
                    this.mObserversMap.put(feature, observers);
                } else if (observers.contains(observer)) {
                    throw new IllegalArgumentException("Observer " + observer + " is already registered.");
                } else {
                    observers.add(observer);
                }
            }
        }
        return queryStatus(feature);
    }

    void unregisterStatusObserver(String feature, FeatureStatusObserver observer) {
        if (TextUtils.isEmpty(feature) || observer == null) {
            throw new IllegalArgumentException("feature and observer should not be empty or null.");
        }
        List<FeatureStatusObserver> observers = (List) this.mObserversMap.get(feature);
        if (BaseMiscUtil.isValid(observers)) {
            synchronized (this.mObserverLock) {
                int index = observers.indexOf(observer);
                if (index == -1) {
                    throw new IllegalStateException("Observer " + observer + " was not registered.");
                }
                observers.remove(index);
            }
            return;
        }
        throw new IllegalStateException("Observer " + observer + " was not registered.");
    }

    Status queryStatus(String feature) {
        if (TextUtils.isEmpty(feature)) {
            return Status.UNAVAILABLE;
        }
        synchronized (this.mSyncLock) {
            Status status;
            if (this.mIsLoadFinished) {
                String status2 = null;
                if (this.mCloudCache.get(feature) != null) {
                    status2 = ((FeatureProfile) this.mCloudCache.get(feature)).getStatus();
                } else if (this.mLocalCache.get(feature) != null) {
                    status2 = ((FeatureProfile) this.mLocalCache.get(feature)).getStatus();
                }
                if (TextUtils.isEmpty(status2)) {
                    status = Status.UNAVAILABLE;
                    return status;
                }
                try {
                    status = Status.fromValue(status2);
                    return status;
                } catch (Exception e) {
                    return Status.UNAVAILABLE;
                }
            }
            this.mPendingNotify = true;
            status = Status.UNAVAILABLE;
            return status;
        }
    }

    void load(Context context) {
        loadFromDB(context);
        loadFromLocalFile(new InputStreamReader(context.getResources().openRawResource(R.raw.cloud_control)));
        this.mIsLoadFinished = true;
    }

    void notifyAfterLoadFinished() {
        synchronized (this.mSyncLock) {
            if (this.mPendingNotify) {
                Log.d("CloudControl.ProfileCache", "Notify all feature status after cache load finished:");
                for (Entry<String, FeatureProfile> entry : this.mCloudCache.entrySet()) {
                    if (!(TextUtils.isEmpty((CharSequence) entry.getKey()) || entry.getValue() == null)) {
                        Log.d("CloudControl.ProfileCache", "Feature name: %s, feature status: %s", entry.getKey(), String.valueOf(((FeatureProfile) entry.getValue()).getStatus()));
                        notifyObserversByName((String) entry.getKey(), null, ((FeatureProfile) entry.getValue()).getStatus());
                    }
                }
                this.mPendingNotify = false;
            }
        }
    }

    private void loadFromDB(Context context) {
        final long start = System.currentTimeMillis();
        SafeDBUtil.safeQuery(context, CloudControl.URI, FeatureDBItem.PROJECTION, null, null, null, new QueryHandler<Object>() {
            public Object handle(Cursor cursor) {
                if (cursor == null || cursor.isClosed()) {
                    Log.e("CloudControl.ProfileCache", "Fill cache failed with a null cursor.");
                } else {
                    synchronized (ProfileCache.this.mSyncLock) {
                        while (cursor.moveToNext()) {
                            FeatureDBItem featureDbItem = FeatureDBItem.fromCursor(cursor);
                            ProfileCache.this.mCloudCache.put(featureDbItem.getName(), featureDbItem);
                        }
                    }
                    Log.d("CloudControl.ProfileCache", "Load %d items from database, cost %d ms.", Integer.valueOf(cursor.getCount()), Long.valueOf(System.currentTimeMillis() - start));
                }
                return null;
            }
        });
    }

    void clearCloudCache() {
        synchronized (this.mSyncLock) {
            for (Entry<String, FeatureProfile> entry : this.mCloudCache.entrySet()) {
                String key = (String) entry.getKey();
                notifyObserversByName(key, ((FeatureProfile) entry.getValue()).getStatus(), this.mLocalCache.get(key) != null ? ((FeatureProfile) this.mLocalCache.get(key)).getStatus() : Status.UNAVAILABLE.getValue());
            }
            this.mCloudCache.clear();
            this.mCloudStrategyCache.clear();
        }
    }

    private void loadFromLocalFile(Reader reader) {
        try {
            GsonBuilder builder = new GsonBuilder();
            builder.registerTypeAdapter(FeatureProfile.class, new Deserializer());
            ArrayList<FeatureProfile> featureProfiles = (ArrayList) builder.create().fromJson(reader, new TypeToken<ArrayList<FeatureProfile>>() {
            }.getType());
            synchronized (this.mSyncLock) {
                Iterator it = featureProfiles.iterator();
                while (it.hasNext()) {
                    FeatureProfile featureProfile = (FeatureProfile) it.next();
                    this.mLocalCache.put(featureProfile.getName(), featureProfile);
                }
            }
            try {
                reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            try {
                Log.e("CloudControl.ProfileCache", "Failed to load from local file, errorClause: %s, errorMessage: %s.", e2.getCause(), e2.getMessage());
                e2.printStackTrace();
                Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
                params.put("errorMsg", e2.getMessage());
                BaseSamplingStatHelper.recordErrorEvent("cloud_control", "parse_local_file_failed", params);
            } finally {
                try {
                    reader.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }
}
