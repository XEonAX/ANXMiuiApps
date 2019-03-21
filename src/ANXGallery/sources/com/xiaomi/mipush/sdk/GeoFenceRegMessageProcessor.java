package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.GeoFenceDao;
import com.xiaomi.push.service.GeoFenceMessageDao;
import com.xiaomi.push.service.GeoFenceUtils;
import com.xiaomi.push.service.PacketHelper;
import com.xiaomi.push.service.PushServiceConstants;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.GeoFencing;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.RegisteredGeoFencing;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.apache.thrift.TException;

public class GeoFenceRegMessageProcessor {
    private static volatile GeoFenceRegMessageProcessor sInstance;
    private final String TAG = "GeoFenceRegMessageProcessor.";
    private Context mContext;

    private GeoFenceRegMessageProcessor(Context context) {
        this.mContext = context;
    }

    public static GeoFenceRegMessageProcessor getInstance(Context context) {
        if (sInstance == null) {
            synchronized (GeoFenceRegMessageProcessor.class) {
                if (sInstance == null) {
                    sInstance = new GeoFenceRegMessageProcessor(context);
                }
            }
        }
        return sInstance;
    }

    public void processGeoFenceRegistration(XmPushActionNotification notification) {
        boolean localCache = isGeoLocalCache(notification);
        GeoFencing geoFencing = convertGeoFence(notification, localCache);
        if (geoFencing == null) {
            MyLog.v("GeoFenceRegMessageProcessor. registration convert geofence object failed notification_id:" + notification.getId());
        } else if (!GeoFenceUtils.getGeoEnableSwitch(this.mContext)) {
            reportGeoFencingProcessedResultNotification(geoFencing, true, true);
        } else if (AppInfoUtils.isPkgInstalled(this.mContext, geoFencing.getPackageName())) {
            if (localCache) {
                if (GeoFenceDao.getInstance(this.mContext).insertGeoFencing(geoFencing) == -1) {
                    MyLog.w("GeoFenceRegMessageProcessor. insert a new geofence failed about geo_id:" + geoFencing.getId());
                }
                new GeoFenceRegister(this.mContext).registerGeoFencer(geoFencing);
                reportGeoFencingProcessedResultNotification(geoFencing, true, false);
                MyLog.v("GeoFenceRegMessageProcessor. receive geo reg notification");
                return;
            }
            reportGeoFencingProcessedResultNotification(geoFencing, true, false);
        } else if (localCache) {
            reportPackageUninstalledNotification(geoFencing);
        }
    }

    public void processGeoFenceUnregistration(XmPushActionNotification notification) {
        boolean localCache = isGeoLocalCache(notification);
        GeoFencing geoFencing = convertGeoFence(notification, localCache);
        if (geoFencing == null) {
            MyLog.v("GeoFenceRegMessageProcessor. unregistration convert geofence object failed notification_id:" + notification.getId());
        } else if (!GeoFenceUtils.getGeoEnableSwitch(this.mContext)) {
            reportGeoFencingProcessedResultNotification(geoFencing, false, true);
        } else if (AppInfoUtils.isPkgInstalled(this.mContext, geoFencing.getPackageName())) {
            if (localCache) {
                if (GeoFenceDao.getInstance(this.mContext).deleteGeoFencingByGeoId(geoFencing.getId()) == 0) {
                    MyLog.w("GeoFenceRegMessageProcessor. delete a geofence about geo_id:" + geoFencing.getId() + " falied");
                }
                if (GeoFenceMessageDao.getInstance(this.mContext).deleteGeoMessageByGeoId(geoFencing.getId()) == 0) {
                    MyLog.w("GeoFenceRegMessageProcessor. delete all geofence messages about geo_id:" + geoFencing.getId() + " failed");
                }
                new GeoFenceRegister(this.mContext).unRegisterGeoFencer(geoFencing.getId());
                reportGeoFencingProcessedResultNotification(geoFencing, false, false);
                MyLog.v("GeoFenceRegMessageProcessor. receive geo unreg notification");
                return;
            }
            reportGeoFencingProcessedResultNotification(geoFencing, false, false);
        } else if (localCache) {
            reportPackageUninstalledNotification(geoFencing);
        }
    }

    private GeoFencing convertGeoFence(XmPushActionNotification notification, boolean localCache) {
        if (localCache && !GeoFenceUtils.checkMetoknlpVersionAbove(this.mContext)) {
            return null;
        }
        if (localCache && !GeoFenceUtils.verifyGeoChannel(this.mContext)) {
            return null;
        }
        try {
            GeoFencing geoFencing = new GeoFencing();
            XmPushThriftSerializeUtils.convertByteArrayToThriftObject(geoFencing, notification.getBinaryExtra());
            return geoFencing;
        } catch (TException e) {
            e.printStackTrace();
            return null;
        }
    }

    private void reportGeoFencingProcessedResultNotification(GeoFencing geoFencing, boolean isReg, boolean isUnauthorized) {
        byte[] data = XmPushThriftSerializeUtils.convertThriftObjectToBytes(geoFencing);
        XmPushActionNotification geoProcessedNotification = new XmPushActionNotification(PacketHelper.generatePacketID(), false);
        geoProcessedNotification.setType(isReg ? NotificationType.GeoRegsiterResult.value : NotificationType.GeoUnregsiterResult.value);
        geoProcessedNotification.setBinaryExtra(data);
        if (isUnauthorized) {
            geoProcessedNotification.putToExtra("permission_to_location", PushServiceConstants.GEO_VALUE_AUTHORIZATION_NOT_GRANT);
        }
        PushServiceClient.getInstance(this.mContext).sendMessage(geoProcessedNotification, ActionType.Notification, true, null);
        MyLog.v("GeoFenceRegMessageProcessor. report geo_fencing id:" + geoFencing.getId() + " " + (isReg ? "geo_reg" : "geo_unreg") + "  isUnauthorized:" + isUnauthorized);
    }

    private void reportPackageUninstalledNotification(GeoFencing geoFencing) {
        byte[] data = XmPushThriftSerializeUtils.convertThriftObjectToBytes(geoFencing);
        XmPushActionNotification packageUninstalledNotification = new XmPushActionNotification(PacketHelper.generatePacketID(), false);
        packageUninstalledNotification.setType(NotificationType.GeoPackageUninstalled.value);
        packageUninstalledNotification.setBinaryExtra(data);
        PushServiceClient.getInstance(this.mContext).sendMessage(packageUninstalledNotification, ActionType.Notification, true, null);
        MyLog.v("GeoFenceRegMessageProcessor. report package not exist geo_fencing id:" + geoFencing.getId());
    }

    public static void reportGeoAuthorizationNotificaion(Context context, boolean isEnbale) {
        XmPushActionNotification notification = new XmPushActionNotification(PacketHelper.generatePacketID(), false);
        notification.setAppId(AppInfoHolder.getInstance(context).getAppID());
        notification.setType(NotificationType.GeoAuthorized.value);
        notification.extra = new HashMap();
        notification.extra.put("permission_to_location", String.valueOf(isEnbale));
        PushServiceClient.getInstance(context).sendMessage(notification, ActionType.Notification, false, null);
    }

    public void syncGeoFencing(XmPushActionNotification notification) {
        if (GeoFenceUtils.getGeoEnableSwitch(this.mContext)) {
            boolean localCache = isGeoLocalCache(notification);
            if (localCache && !GeoFenceUtils.checkMetoknlpVersionAbove(this.mContext)) {
                return;
            }
            if ((!localCache || GeoFenceUtils.verifyGeoChannel(this.mContext)) && AppInfoUtils.isPkgInstalled(this.mContext, notification.packageName)) {
                RegisteredGeoFencing syncGeoFencings = constructRegistedGeoFencing(localCache);
                byte[] data = XmPushThriftSerializeUtils.convertThriftObjectToBytes(syncGeoFencings);
                XmPushActionNotification lbsLocationNotification = new XmPushActionNotification("-1", false);
                lbsLocationNotification.setType(NotificationType.GeoUpload.value);
                lbsLocationNotification.setBinaryExtra(data);
                PushServiceClient.getInstance(this.mContext).sendMessage(lbsLocationNotification, ActionType.Notification, true, null);
                MyLog.v("GeoFenceRegMessageProcessor. sync_geo_data. geos size:" + syncGeoFencings.getGeoFencings().size());
            }
        }
    }

    private RegisteredGeoFencing constructRegistedGeoFencing(boolean localCache) {
        RegisteredGeoFencing syncGeoFencings = new RegisteredGeoFencing();
        Set<GeoFencing> syncGeoSet = new TreeSet();
        if (localCache) {
            Iterator it = GeoFenceDao.getInstance(this.mContext).findAllGeoFencing().iterator();
            while (it.hasNext()) {
                syncGeoSet.add((GeoFencing) it.next());
            }
        }
        syncGeoFencings.setGeoFencings(syncGeoSet);
        return syncGeoFencings;
    }

    public static boolean shouldGeoLocalCache(Map<String, String> extra) {
        if (extra == null) {
            return false;
        }
        return TextUtils.equals("1", (CharSequence) extra.get("__geo_local_cache"));
    }

    private boolean isGeoLocalCache(XmPushActionNotification notification) {
        return shouldGeoLocalCache(notification.getExtra()) && GeoFenceUtils.canLocalCheck(this.mContext);
    }
}
