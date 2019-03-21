package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.content.SyncStats;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryErrorCode.MiCloudServerExceptionHandler;
import com.miui.gallery.cloud.baby.SyncBabyInfoFromLocal;
import com.miui.gallery.cloud.card.SyncCardFromServer;
import com.miui.gallery.cloud.card.SyncCardToServer;
import com.miui.gallery.cloud.control.BatteryMonitor;
import com.miui.gallery.cloud.control.ServerTagCache;
import com.miui.gallery.cloud.control.SyncMonitor;
import com.miui.gallery.cloud.download.BatchDownloadManager;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.cloud.peopleface.SyncFaceFromLocal;
import com.miui.gallery.cloud.peopleface.SyncPeopleFaceFromServer;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloudcontrol.CloudControlRequestHelper;
import com.miui.gallery.preference.GalleryPreferences.CloudControl;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.settingssync.GallerySettingsSyncHelper;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deprecated.Preference;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashMap;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONException;

public class GallerySyncAdapterImpl {
    public static boolean sNeedSyncUserNames;
    Account mAccount;
    Context mContext;
    GalleryExtendedAuthToken mExtToken;
    SyncResult mSyncResult;

    public GallerySyncAdapterImpl(Context context) {
        this.mContext = context;
    }

    private boolean fetchSyncExtraInfoFromV2ToV3() throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        if (Preference.getSyncFetchSyncExtraInfoFromV2ToV3()) {
            new FetchSyncExtraInfoTask(this.mContext, this.mAccount, this.mExtToken).run();
            if (Preference.getSyncFetchSyncExtraInfoFromV2ToV3()) {
                SyncLog.e("GallerySyncAdapterImpl", "fail to fetch syncExtraInfo when upgrade from v2 to v3");
                return false;
            }
        }
        return true;
    }

    protected void onPerformMiCloudSync(Bundle extrasIn, Account account, SyncResult syncResult, GalleryExtendedAuthToken extToken) throws GalleryMiCloudServerException {
        SyncStats syncStats;
        Throwable syncThrowable;
        Bundle extras = ApplicationHelper.getUtilsProvider().processMiCloudSyncBundle(this.mContext, account, extrasIn);
        boolean syncNoDelay = extrasIn.getBoolean("sync_no_delay", false);
        boolean isPush = extras != null && extras.containsKey("sync_tag_type");
        if (!isPush) {
            SyncStateManager.getInstance().setSyncType(SyncUtil.unpackSyncParams(extrasIn), false);
        }
        this.mAccount = account;
        this.mSyncResult = syncResult;
        this.mExtToken = extToken;
        long startTime = System.currentTimeMillis();
        WifiLock wifiLock = null;
        boolean result = true;
        boolean needResyncFaceDataLaterForBaby = false;
        try {
            SyncLog.i("GallerySyncAdapterImpl", "onPerformMiCloudSync start, extras: %s", extrasIn != null ? extrasIn.toString() : "");
            if (CloudUtils.checkAccount(null, true, null)) {
                BatteryMonitor.getInstance().start();
                SyncConditionManager.setCancelledForAllBackground(false);
                sNeedSyncUserNames = false;
                wifiLock = ((WifiManager) this.mContext.getSystemService("wifi")).createWifiLock(3, "GallerySyncAdapterImpl");
                wifiLock.acquire();
                if (SyncConditionManager.check(0) == 2) {
                    result = false;
                    if (wifiLock != null) {
                        wifiLock.release();
                    }
                    if (null != null) {
                        SyncMonitor.monitorSyncThrowable(null);
                        result = false;
                    }
                    GalleryDBHelper.getInstance(this.mContext).analyze();
                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                    BatteryMonitor.getInstance().end();
                    if (result) {
                        Sync.setSyncCompletelyFinish(true);
                        if (!(isPush || Preference.sIsFirstSynced())) {
                            Preference.sSetFirstSynced();
                            doPostFirstSyncJob();
                        }
                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                            if (null != null) {
                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                            }
                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                        }
                    } else {
                        Sync.setSyncCompletelyFinish(false);
                    }
                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                    recordSyncError(null);
                    return;
                } else if (this.mAccount == null || TextUtils.isEmpty(this.mAccount.name) || TextUtils.isEmpty(this.mAccount.type)) {
                    String str;
                    String str2;
                    String str3 = "GallerySyncAdapterImpl";
                    String str4 = "account: %s, name: %s, type %s, have none value, return.";
                    Account account2 = this.mAccount;
                    if (this.mAccount == null) {
                        str = "";
                    } else {
                        str = this.mAccount.name;
                    }
                    if (this.mAccount == null) {
                        str2 = "";
                    } else {
                        str2 = this.mAccount.type;
                    }
                    SyncLog.e(str3, str4, account2, str, str2);
                    if (wifiLock != null) {
                        wifiLock.release();
                    }
                    if (null != null) {
                        SyncMonitor.monitorSyncThrowable(null);
                        result = false;
                    }
                    GalleryDBHelper.getInstance(this.mContext).analyze();
                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                    BatteryMonitor.getInstance().end();
                    if (result) {
                        Sync.setSyncCompletelyFinish(true);
                        if (!(isPush || Preference.sIsFirstSynced())) {
                            Preference.sSetFirstSynced();
                            doPostFirstSyncJob();
                        }
                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                            if (null != null) {
                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                            }
                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                        }
                    } else {
                        Sync.setSyncCompletelyFinish(false);
                    }
                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                    recordSyncError(null);
                    return;
                } else {
                    resetAccountInfo(this.mAccount, this.mExtToken);
                    GalleryCloudSyncTagUtils.insertAccountToDB(this.mContext, this.mAccount);
                    MiCloudServerExceptionHandler.checkMiCloudServerException();
                    if (SyncConditionManager.check(1) == 2) {
                        SyncLog.i("GallerySyncAdapterImpl", "SyncConditionManager.check PRI_SERVER_TAG Exit");
                        result = false;
                        if (wifiLock != null) {
                            wifiLock.release();
                        }
                        if (null != null) {
                            SyncMonitor.monitorSyncThrowable(null);
                            result = false;
                        }
                        GalleryDBHelper.getInstance(this.mContext).analyze();
                        SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                        BatteryMonitor.getInstance().end();
                        if (result) {
                            Sync.setSyncCompletelyFinish(true);
                            if (!(isPush || Preference.sIsFirstSynced())) {
                                Preference.sSetFirstSynced();
                                doPostFirstSyncJob();
                            }
                            if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                if (null != null) {
                                    try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                }
                                Preference.sSetHaveCheckBabyForNewService(this.mContext);
                            }
                        } else {
                            Sync.setSyncCompletelyFinish(false);
                        }
                        DeleteAccount.deleteAccountAfterSyncIfNeeded();
                        recordSyncError(null);
                        return;
                    } else if (fetchSyncExtraInfoFromV2ToV3()) {
                        ClearDataManager.getInstance().clearDataBaseIfNeeded(this.mContext, this.mAccount);
                        boolean isSpaceFullPreSync = SpaceFullHandler.isOwnerSpaceFull();
                        if (isPush) {
                            int type = extras.getInt("sync_tag_type");
                            Object pushData = extras.getString("sync_tag_data");
                            SyncLog.d("GallerySyncAdapterImpl", "request caused by push: %s, just start appointed sync.", pushData);
                            if (type == 1) {
                                if (ServerTagCache.getInstance().contains(pushData)) {
                                    SyncLog.d("GallerySyncAdapterImpl", "operation server tag, ignore push: %s", pushData);
                                    if (wifiLock != null) {
                                        wifiLock.release();
                                    }
                                    if (null != null) {
                                        SyncMonitor.monitorSyncThrowable(null);
                                        result = false;
                                    }
                                    GalleryDBHelper.getInstance(this.mContext).analyze();
                                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                    BatteryMonitor.getInstance().end();
                                    if (result) {
                                        Sync.setSyncCompletelyFinish(true);
                                        if (!(isPush || Preference.sIsFirstSynced())) {
                                            Preference.sSetFirstSynced();
                                            doPostFirstSyncJob();
                                        }
                                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                            if (null != null) {
                                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                            }
                                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                        }
                                    } else {
                                        Sync.setSyncCompletelyFinish(false);
                                    }
                                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                    recordSyncError(null);
                                    return;
                                }
                                SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerAlbum start");
                                if (new SyncOwnerAlbum(this.mContext, this.mAccount, this.mExtToken).sync()) {
                                    SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerAlbum end");
                                    SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerCloud start");
                                    if (!new SyncOwnerAll(this.mContext, this.mAccount, this.mExtToken).sync()) {
                                        result = false;
                                    }
                                    SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerCloud end");
                                    if (ClearDataManager.getInstance().checkClear(this.mContext)) {
                                        if (wifiLock != null) {
                                            wifiLock.release();
                                        }
                                        if (null != null) {
                                            SyncMonitor.monitorSyncThrowable(null);
                                            result = false;
                                        }
                                        GalleryDBHelper.getInstance(this.mContext).analyze();
                                        SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                        BatteryMonitor.getInstance().end();
                                        if (result) {
                                            Sync.setSyncCompletelyFinish(true);
                                            if (!(isPush || Preference.sIsFirstSynced())) {
                                                Preference.sSetFirstSynced();
                                                doPostFirstSyncJob();
                                            }
                                            if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                                if (null != null) {
                                                    try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                                }
                                                Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                            }
                                        } else {
                                            Sync.setSyncCompletelyFinish(false);
                                        }
                                        DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                        recordSyncError(null);
                                        return;
                                    }
                                }
                                result = false;
                                SyncLog.d("GallerySyncAdapterImpl", "isPush %s, sync owner album error, return", Boolean.valueOf(isPush));
                                if (wifiLock != null) {
                                    wifiLock.release();
                                }
                                if (null != null) {
                                    SyncMonitor.monitorSyncThrowable(null);
                                    result = false;
                                }
                                GalleryDBHelper.getInstance(this.mContext).analyze();
                                SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                BatteryMonitor.getInstance().end();
                                if (result) {
                                    Sync.setSyncCompletelyFinish(true);
                                    if (!(isPush || Preference.sIsFirstSynced())) {
                                        Preference.sSetFirstSynced();
                                        doPostFirstSyncJob();
                                    }
                                    if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                        if (null != null) {
                                            try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                        }
                                        Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                    }
                                } else {
                                    Sync.setSyncCompletelyFinish(false);
                                }
                                DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                recordSyncError(null);
                                return;
                            } else if (type == 11) {
                                SyncLog.i("GallerySyncAdapterImpl", "SyncFaceData start from push");
                                if (ApplicationHelper.isFaceAlbumFeatureOpen()) {
                                    GallerySettingsSyncHelper.doSync(this.mContext);
                                }
                                needResyncFaceDataLaterForBaby = needResyncFaceDataLaterForBaby();
                                syncFaceData();
                                SyncLog.i("GallerySyncAdapterImpl", "SyncFaceData end from push");
                                if (ClearDataManager.getInstance().checkClear(this.mContext)) {
                                    if (wifiLock != null) {
                                        wifiLock.release();
                                    }
                                    if (null != null) {
                                        SyncMonitor.monitorSyncThrowable(null);
                                        result = false;
                                    }
                                    GalleryDBHelper.getInstance(this.mContext).analyze();
                                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                    BatteryMonitor.getInstance().end();
                                    if (result) {
                                        Sync.setSyncCompletelyFinish(true);
                                        if (!(isPush || Preference.sIsFirstSynced())) {
                                            Preference.sSetFirstSynced();
                                            doPostFirstSyncJob();
                                        }
                                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                            if (needResyncFaceDataLaterForBaby) {
                                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                            }
                                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                        }
                                    } else {
                                        Sync.setSyncCompletelyFinish(false);
                                    }
                                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                    recordSyncError(null);
                                    return;
                                }
                            } else if (ApplicationHelper.supportShare()) {
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerAll start");
                                new SyncSharerAll(this.mContext, this.mAccount, this.mExtToken, extras).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerAll end");
                                if (ClearDataManager.getInstance().checkClear(this.mContext)) {
                                    if (wifiLock != null) {
                                        wifiLock.release();
                                    }
                                    if (null != null) {
                                        SyncMonitor.monitorSyncThrowable(null);
                                        result = false;
                                    }
                                    GalleryDBHelper.getInstance(this.mContext).analyze();
                                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                    BatteryMonitor.getInstance().end();
                                    if (result) {
                                        Sync.setSyncCompletelyFinish(true);
                                        if (!(isPush || Preference.sIsFirstSynced())) {
                                            Preference.sSetFirstSynced();
                                            doPostFirstSyncJob();
                                        }
                                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                            if (null != null) {
                                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                            }
                                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                        }
                                    } else {
                                        Sync.setSyncCompletelyFinish(false);
                                    }
                                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                    recordSyncError(null);
                                    return;
                                }
                            }
                            if (wifiLock != null) {
                                wifiLock.release();
                            }
                            if (null != null) {
                                SyncMonitor.monitorSyncThrowable(null);
                                result = false;
                            }
                            GalleryDBHelper.getInstance(this.mContext).analyze();
                            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                            BatteryMonitor.getInstance().end();
                            if (result) {
                                Sync.setSyncCompletelyFinish(true);
                                if (!(isPush || Preference.sIsFirstSynced())) {
                                    Preference.sSetFirstSynced();
                                    doPostFirstSyncJob();
                                }
                                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                    if (needResyncFaceDataLaterForBaby) {
                                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                    }
                                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                }
                            } else {
                                Sync.setSyncCompletelyFinish(false);
                            }
                            DeleteAccount.deleteAccountAfterSyncIfNeeded();
                            recordSyncError(null);
                            return;
                        }
                        SyncLog.d("GallerySyncAdapterImpl", "request by others, start all the sync.");
                        GallerySettingsSyncHelper.doSync(this.mContext);
                        SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerAlbum start");
                        if (new SyncOwnerAlbum(this.mContext, this.mAccount, this.mExtToken).sync()) {
                            SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerAlbum end");
                            SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerCloud start");
                            SyncOwnerAll syncOwnerAll = new SyncOwnerAll(this.mContext, this.mAccount, this.mExtToken);
                            boolean needFetchAllPrivateData = false;
                            if (ApplicationHelper.isSecretAlbumFeatureOpen() && !Preference.getSyncFetchAllPrivateData()) {
                                if (syncOwnerAll.hasStarted()) {
                                    needFetchAllPrivateData = true;
                                } else {
                                    Preference.setSyncFetchAllPrivateData();
                                }
                            }
                            if (!syncOwnerAll.sync()) {
                                result = false;
                            }
                            SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerCloud end");
                            if (ApplicationHelper.isSecretAlbumFeatureOpen() && needFetchAllPrivateData) {
                                SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerPrivate start");
                                new SyncOwnerPrivate(this.mContext, this.mAccount, this.mExtToken).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerPrivate ends");
                                Preference.setSyncFetchAllPrivateData();
                            }
                            if (ApplicationHelper.isStoryAlbumFeatureOpen()) {
                                SyncLog.i("GallerySyncAdapterImpl", "Sync Story Card from Server start by sync");
                                new SyncCardFromServer(this.mAccount).sync();
                                SyncLog.i("GallerySyncAdapterImpl", "Sync Story Card from Server end by sync");
                            }
                            SyncLog.i("GallerySyncAdapterImpl", "SyncFaceData start by sync");
                            needResyncFaceDataLaterForBaby = needResyncFaceDataLaterForBaby();
                            syncFaceData();
                            SyncLog.i("GallerySyncAdapterImpl", "SyncFaceData end by sync");
                            if (ClearDataManager.getInstance().checkClear(this.mContext)) {
                                if (wifiLock != null) {
                                    wifiLock.release();
                                }
                                if (null != null) {
                                    SyncMonitor.monitorSyncThrowable(null);
                                    result = false;
                                }
                                GalleryDBHelper.getInstance(this.mContext).analyze();
                                SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                BatteryMonitor.getInstance().end();
                                if (result) {
                                    Sync.setSyncCompletelyFinish(true);
                                    if (!(isPush || Preference.sIsFirstSynced())) {
                                        Preference.sSetFirstSynced();
                                        doPostFirstSyncJob();
                                    }
                                    if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                        if (needResyncFaceDataLaterForBaby) {
                                            try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                        }
                                        Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                    }
                                } else {
                                    Sync.setSyncCompletelyFinish(false);
                                }
                                DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                recordSyncError(null);
                                return;
                            }
                            if (ApplicationHelper.supportShare()) {
                                if (SyncConditionManager.check(1) == 2) {
                                    result = false;
                                    if (wifiLock != null) {
                                        wifiLock.release();
                                    }
                                    if (null != null) {
                                        SyncMonitor.monitorSyncThrowable(null);
                                        result = false;
                                    }
                                    GalleryDBHelper.getInstance(this.mContext).analyze();
                                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                    BatteryMonitor.getInstance().end();
                                    if (result) {
                                        Sync.setSyncCompletelyFinish(true);
                                        if (!(isPush || Preference.sIsFirstSynced())) {
                                            Preference.sSetFirstSynced();
                                            doPostFirstSyncJob();
                                        }
                                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                            if (needResyncFaceDataLaterForBaby) {
                                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                            }
                                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                        }
                                    } else {
                                        Sync.setSyncCompletelyFinish(false);
                                    }
                                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                    recordSyncError(null);
                                    return;
                                }
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerAll start");
                                new SyncSharerAll(this.mContext, this.mAccount, this.mExtToken, null).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerAll end");
                                if (ClearDataManager.getInstance().checkClear(this.mContext)) {
                                    if (wifiLock != null) {
                                        wifiLock.release();
                                    }
                                    if (null != null) {
                                        SyncMonitor.monitorSyncThrowable(null);
                                        result = false;
                                    }
                                    GalleryDBHelper.getInstance(this.mContext).analyze();
                                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                    BatteryMonitor.getInstance().end();
                                    if (result) {
                                        Sync.setSyncCompletelyFinish(true);
                                        if (!(isPush || Preference.sIsFirstSynced())) {
                                            Preference.sSetFirstSynced();
                                            doPostFirstSyncJob();
                                        }
                                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                            if (needResyncFaceDataLaterForBaby) {
                                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                            }
                                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                        }
                                    } else {
                                        Sync.setSyncCompletelyFinish(false);
                                    }
                                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                    recordSyncError(null);
                                    return;
                                }
                            }
                            if (SyncConditionManager.check(0) == 2 || !GalleryUtils.sIsStorageReady(this.mContext)) {
                                result = false;
                                SyncLog.d("GallerySyncAdapterImpl", "SyncConditionManager.check owner PRI_INSTANT Exit");
                                if (wifiLock != null) {
                                    wifiLock.release();
                                }
                                if (null != null) {
                                    SyncMonitor.monitorSyncThrowable(null);
                                    result = false;
                                }
                                GalleryDBHelper.getInstance(this.mContext).analyze();
                                SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                BatteryMonitor.getInstance().end();
                                if (result) {
                                    Sync.setSyncCompletelyFinish(true);
                                    if (!(isPush || Preference.sIsFirstSynced())) {
                                        Preference.sSetFirstSynced();
                                        doPostFirstSyncJob();
                                    }
                                    if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                        if (needResyncFaceDataLaterForBaby) {
                                            try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                        }
                                        Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                    }
                                } else {
                                    Sync.setSyncCompletelyFinish(false);
                                }
                                DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                recordSyncError(null);
                                return;
                            }
                            SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerFromLocal start");
                            new SyncOwnerFromLocal(this.mContext, this.mAccount, this.mExtToken, syncNoDelay).sync();
                            SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerFromLocal end");
                            SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerSubUbiFromLocal start");
                            new SyncOwnerSubUbiFromLocal(this.mContext, this.mAccount, this.mExtToken, syncNoDelay).sync();
                            SyncLog.d("GallerySyncAdapterImpl", "SyncOwnerSubUbiFromLocal end");
                            if (ApplicationHelper.supportShare()) {
                                if (SyncConditionManager.check(0) == 2 || !GalleryUtils.sIsStorageReady(this.mContext)) {
                                    result = false;
                                    SyncLog.d("GallerySyncAdapterImpl", "SyncConditionManager.check share PRI_INSTANT Exit");
                                    if (wifiLock != null) {
                                        wifiLock.release();
                                    }
                                    if (null != null) {
                                        SyncMonitor.monitorSyncThrowable(null);
                                        result = false;
                                    }
                                    GalleryDBHelper.getInstance(this.mContext).analyze();
                                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                    BatteryMonitor.getInstance().end();
                                    if (result) {
                                        Sync.setSyncCompletelyFinish(true);
                                        if (!(isPush || Preference.sIsFirstSynced())) {
                                            Preference.sSetFirstSynced();
                                            doPostFirstSyncJob();
                                        }
                                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                            if (needResyncFaceDataLaterForBaby) {
                                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                            }
                                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                        }
                                    } else {
                                        Sync.setSyncCompletelyFinish(false);
                                    }
                                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                    recordSyncError(null);
                                    return;
                                }
                                SyncLog.d("GallerySyncAdapterImpl", "SyncShareAlbumFromLocal starts");
                                new SyncShareAlbumFromLocal(this.mContext, this.mAccount, this.mExtToken).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncShareAlbumFromLocal ends");
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerFromLocal start");
                                new SyncSharerFromLocal(this.mContext, this.mAccount, this.mExtToken).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerFromLocal end");
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerSubUbiFromLocal start");
                                new SyncSharerSubUbiFromLocal(this.mContext, this.mAccount, this.mExtToken).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncSharerSubUbiFromLocal end");
                                if (SyncConditionManager.check(0) == 2 || !GalleryUtils.sIsStorageReady(this.mContext)) {
                                    result = false;
                                    SyncLog.d("GallerySyncAdapterImpl", "SyncConditionManager.check users PRI_INSTANT Exit");
                                    if (wifiLock != null) {
                                        wifiLock.release();
                                    }
                                    if (null != null) {
                                        SyncMonitor.monitorSyncThrowable(null);
                                        result = false;
                                    }
                                    GalleryDBHelper.getInstance(this.mContext).analyze();
                                    SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                                    BatteryMonitor.getInstance().end();
                                    if (result) {
                                        Sync.setSyncCompletelyFinish(true);
                                        if (!(isPush || Preference.sIsFirstSynced())) {
                                            Preference.sSetFirstSynced();
                                            doPostFirstSyncJob();
                                        }
                                        if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                            if (needResyncFaceDataLaterForBaby) {
                                                try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                            }
                                            Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                        }
                                    } else {
                                        Sync.setSyncCompletelyFinish(false);
                                    }
                                    DeleteAccount.deleteAccountAfterSyncIfNeeded();
                                    recordSyncError(null);
                                    return;
                                }
                                SyncLog.d("GallerySyncAdapterImpl", "SyncUserNames start");
                                AlbumShareOperations.syncAllUserInfoFromNetwork();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncUserNames end");
                            }
                            if (ApplicationHelper.isStoryAlbumFeatureOpen()) {
                                Log.d("GallerySyncAdapterImpl", "Sync Story Card to server start");
                                new SyncCardToServer().sync();
                                Log.d("GallerySyncAdapterImpl", "Sync Story Card to server end");
                            }
                            if (AIAlbumStatusHelper.isFaceAlbumEnabled()) {
                                SyncLog.d("GallerySyncAdapterImpl", "SyncFaceFromLocal start");
                                new SyncFaceFromLocal(this.mContext, this.mAccount, this.mExtToken).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncFaceFromLocal end");
                            }
                            if (ApplicationHelper.isBabyAlbumFeatureOpen()) {
                                SyncLog.d("GallerySyncAdapterImpl", "SyncBabyInfoFromLocal start");
                                new SyncBabyInfoFromLocal(this.mContext, this.mAccount, this.mExtToken).sync();
                                SyncLog.d("GallerySyncAdapterImpl", "SyncBabyInfoFromLocal end");
                            }
                            DownloadUtil.resumeInterrupted();
                            Preference.setSyncRetryTimes(0);
                            if (isSpaceFullPreSync) {
                                statSpaceStatus();
                            }
                            SyncLog.i("GallerySyncAdapterImpl", "onPerformMiCloudSync end.");
                            if (wifiLock != null) {
                                wifiLock.release();
                            }
                            if (null != null) {
                                SyncMonitor.monitorSyncThrowable(null);
                                result = false;
                            }
                            GalleryDBHelper.getInstance(this.mContext).analyze();
                            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                            BatteryMonitor.getInstance().end();
                            if (result) {
                                Sync.setSyncCompletelyFinish(true);
                                if (!(isPush || Preference.sIsFirstSynced())) {
                                    Preference.sSetFirstSynced();
                                    doPostFirstSyncJob();
                                }
                                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                    if (needResyncFaceDataLaterForBaby) {
                                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                    }
                                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                                }
                            } else {
                                Sync.setSyncCompletelyFinish(false);
                            }
                            DeleteAccount.deleteAccountAfterSyncIfNeeded();
                            recordSyncError(null);
                            return;
                        }
                        result = false;
                        SyncLog.d("GallerySyncAdapterImpl", "isPush %s, sync owner album error, return", Boolean.valueOf(isPush));
                        if (wifiLock != null) {
                            wifiLock.release();
                        }
                        if (null != null) {
                            SyncMonitor.monitorSyncThrowable(null);
                            result = false;
                        }
                        GalleryDBHelper.getInstance(this.mContext).analyze();
                        SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                        BatteryMonitor.getInstance().end();
                        if (result) {
                            Sync.setSyncCompletelyFinish(true);
                            if (!(isPush || Preference.sIsFirstSynced())) {
                                Preference.sSetFirstSynced();
                                doPostFirstSyncJob();
                            }
                            if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                if (null != null) {
                                    try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                }
                                Preference.sSetHaveCheckBabyForNewService(this.mContext);
                            }
                        } else {
                            Sync.setSyncCompletelyFinish(false);
                        }
                        DeleteAccount.deleteAccountAfterSyncIfNeeded();
                        recordSyncError(null);
                        return;
                    } else {
                        SyncLog.i("GallerySyncAdapterImpl", "fetchSyncExtraInfoFromV2ToV3 Exit");
                        if (wifiLock != null) {
                            wifiLock.release();
                        }
                        if (null != null) {
                            SyncMonitor.monitorSyncThrowable(null);
                            result = false;
                        }
                        GalleryDBHelper.getInstance(this.mContext).analyze();
                        SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
                        BatteryMonitor.getInstance().end();
                        if (result) {
                            Sync.setSyncCompletelyFinish(true);
                            if (!(isPush || Preference.sIsFirstSynced())) {
                                Preference.sSetFirstSynced();
                                doPostFirstSyncJob();
                            }
                            if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                                if (null != null) {
                                    try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                                }
                                Preference.sSetHaveCheckBabyForNewService(this.mContext);
                            }
                        } else {
                            Sync.setSyncCompletelyFinish(false);
                        }
                        DeleteAccount.deleteAccountAfterSyncIfNeeded();
                        recordSyncError(null);
                        return;
                    }
                }
            }
            SyncLog.e("GallerySyncAdapterImpl", "check account failed, return.");
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (null != null) {
                SyncMonitor.monitorSyncThrowable(null);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (null != null) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(null);
        } catch (Throwable e) {
            SyncLog.e("GallerySyncAdapterImpl", e);
            syncStats = this.mSyncResult.stats;
            syncStats.numParseExceptions++;
            syncThrowable = e;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable e2) {
            SyncLog.e("GallerySyncAdapterImpl", e2);
            syncStats = this.mSyncResult.stats;
            syncStats.numParseExceptions++;
            syncThrowable = e2;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable e22) {
            SyncLog.e("GallerySyncAdapterImpl", e22);
            syncThrowable = e22;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable e222) {
            SyncLog.e("GallerySyncAdapterImpl", e222);
            syncStats = this.mSyncResult.stats;
            syncStats.numIoExceptions++;
            syncThrowable = e222;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable e2222) {
            SyncLog.e("GallerySyncAdapterImpl", e2222);
            syncStats = this.mSyncResult.stats;
            syncStats.numParseExceptions++;
            syncThrowable = e2222;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable e22222) {
            SyncLog.e("GallerySyncAdapterImpl", e22222);
            syncStats = this.mSyncResult.stats;
            syncStats.numParseExceptions++;
            syncThrowable = e22222;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable e222222) {
            SyncLog.e("GallerySyncAdapterImpl", e222222);
            syncThrowable = e222222;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable e2222222) {
            if (e2222222 instanceof GalleryMiCloudServerException) {
                SyncLog.e("GallerySyncAdapterImpl", ((GalleryMiCloudServerException) e2222222).getCloudServerException());
                throw ((GalleryMiCloudServerException) e2222222);
            }
            SyncLog.e("GallerySyncAdapterImpl", e2222222);
            syncThrowable = e2222222;
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (syncThrowable != null) {
                SyncMonitor.monitorSyncThrowable(syncThrowable);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(syncThrowable);
        } catch (Throwable th) {
            if (wifiLock != null) {
                wifiLock.release();
            }
            if (null != null) {
                SyncMonitor.monitorSyncThrowable(null);
                result = false;
            }
            GalleryDBHelper.getInstance(this.mContext).analyze();
            SyncLog.d("GallerySyncAdapterImpl", "perform sync finished, time:" + (System.currentTimeMillis() - startTime));
            BatteryMonitor.getInstance().end();
            if (result) {
                Sync.setSyncCompletelyFinish(true);
                if (!(isPush || Preference.sIsFirstSynced())) {
                    Preference.sSetFirstSynced();
                    doPostFirstSyncJob();
                }
                if (!Preference.sHaveCheckBabyForNewService(this.mContext)) {
                    if (needResyncFaceDataLaterForBaby) {
                        try2updatePeopleFace2getBaby(this.mAccount, this.mContext);
                    }
                    Preference.sSetHaveCheckBabyForNewService(this.mContext);
                }
            } else {
                Sync.setSyncCompletelyFinish(false);
            }
            DeleteAccount.deleteAccountAfterSyncIfNeeded();
            recordSyncError(null);
        }
    }

    private void statSpaceStatus() {
        HashMap<String, String> params = new HashMap();
        params.put("spaceFull", String.valueOf(SpaceFullHandler.isOwnerSpaceFull()));
        BaseSamplingStatHelper.recordCountEvent("Sync", "sync_check_cloud_space", params);
    }

    private void recordSyncError(Throwable e) {
        if (e != null) {
            HashMap<String, String> params = new HashMap();
            params.put("error", android.util.Log.getStackTraceString(e));
            BaseSamplingStatHelper.recordErrorEvent("Sync", "sync_error_message", params);
        }
    }

    private boolean needResyncFaceDataLaterForBaby() {
        if (Preference.sHaveCheckBabyForNewService(this.mContext) || !AIAlbumStatusHelper.isFaceAlbumEnabled() || hasBabyInfoForThisAccount(this.mContext)) {
            return false;
        }
        return true;
    }

    private void try2updatePeopleFace2getBaby(Account account, Context context) {
        GalleryCloudSyncTagUtils.setFaceSyncWatermark(account, 0);
        GalleryCloudSyncTagUtils.setFaceSyncToken(account, "");
        SyncLog.d("GallerySyncAdapterImpl", "reset people face wartemark to 0, zero");
    }

    private boolean hasBabyInfoForThisAccount(Context context) {
        return FaceDataManager.ifHaveBabyType(context);
    }

    private void syncFaceData() throws ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, JSONException, URISyntaxException, GalleryMiCloudServerException {
        if (AIAlbumStatusHelper.isFaceAlbumEnabled()) {
            new SyncPeopleFaceFromServer(this.mContext, this.mAccount, this.mExtToken).sync();
        }
    }

    public static void resetAccountInfo(Account account, GalleryExtendedAuthToken extToken) {
        AccountCache.update(account, extToken);
        SyncLog.d("GallerySyncAdapterImpl", "reset AccountCache");
        GalleryKssManager.reset();
        SyncLog.d("GallerySyncAdapterImpl", "reset GalleryKssManager");
    }

    public void onSyncCanceled() {
        SyncConditionManager.setCancelledForAllBackground(true);
        UpDownloadManager.cancelAllBackgroundPriority(true, true);
    }

    private void doPostFirstSyncJob() {
        if (CloudControl.getLastRequestSucceedTime() <= 0) {
            GallerySettingsSyncHelper.doSync(this.mContext);
            SyncLog.d("GallerySyncAdapterImpl", "Request cloud control after first sync, result %s", String.valueOf(new CloudControlRequestHelper(this.mContext).execRequestSync(true)));
        }
        LocalBroadcastManager.getInstance(this.mContext).sendBroadcast(new Intent("com.miui.gallery.action.FIRST_SYNC_FINISHED"));
        if (BatchDownloadManager.canAutoDownload()) {
            BatchDownloadManager.getInstance().startBatchDownload(this.mContext, true);
        }
    }
}
