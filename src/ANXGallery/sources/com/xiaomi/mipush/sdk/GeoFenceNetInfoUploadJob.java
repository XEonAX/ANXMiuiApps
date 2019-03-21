package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.channel.commonutils.misc.JobMutualExclusor;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.push.service.GeoFenceUtils;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.Cellular;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.GPS;
import com.xiaomi.xmpush.thrift.LocationInfo;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.Wifi;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class GeoFenceNetInfoUploadJob extends Job {
    private final int DEFAULT_LAST_UPDATE_DATA_TIMESTAMP = -1;
    private final int PERIOD_UPLOAD_WITHOUT_WIFI = 3600;
    private Context mContext;
    private int period;

    public GeoFenceNetInfoUploadJob(Context context, int period) {
        this.mContext = context;
        this.period = period;
    }

    public int getJobId() {
        return 11;
    }

    public void run() {
        if (GeoFenceUtils.getGeoEnableSwitch(this.mContext) && OnlineConfig.getInstance(this.mContext).getBooleanValue(ConfigKey.UploadGeoAppLocSwitch.getValue(), true) && Network.isConnected(this.mContext) && verifyUploadData() && JobMutualExclusor.checkPeriodAndRecordWithFileLock(this.mContext, String.valueOf(11), (long) this.period)) {
            reportLocInfo(this.mContext, false);
        }
    }

    public static void reportLocInfo(Context context, boolean isGeoInitilization) {
        Object obj;
        LocationInfo locationInfo = collectLocationInfo(context);
        byte[] data = XmPushThriftSerializeUtils.convertThriftObjectToBytes(locationInfo);
        XmPushActionNotification lbsLocationNotification = new XmPushActionNotification("-1", false);
        lbsLocationNotification.setType(NotificationType.GeoUpdateLoc.value);
        lbsLocationNotification.setBinaryExtra(data);
        lbsLocationNotification.setExtra(new HashMap());
        lbsLocationNotification.getExtra().put("initial_wifi_upload", String.valueOf(isGeoInitilization));
        boolean isXMSFGeoWork = GeoFenceUtils.isXMSFGeoWork(context);
        if (isXMSFGeoWork) {
            lbsLocationNotification.getExtra().put("xmsf_geo_is_work", String.valueOf(isXMSFGeoWork));
        }
        StringBuilder append = new StringBuilder().append("reportLocInfo locInfo timestamp:").append(System.currentTimeMillis()).append(",").append(String.valueOf(locationInfo.getGps() != null ? locationInfo.getGps() : "null")).append(",");
        if (locationInfo.cellList != null) {
            obj = locationInfo.cellList.toString();
        } else {
            obj = null;
        }
        append = append.append(String.valueOf(obj)).append(",");
        if (locationInfo.wifiList != null) {
            obj = locationInfo.wifiList.toString();
        } else {
            obj = null;
        }
        MyLog.v(append.append(String.valueOf(obj)).toString());
        PushServiceClient.getInstance(context).sendMessage(lbsLocationNotification, ActionType.Notification, true, null);
        updateUploadTimeStamp(context);
    }

    private boolean verifyUploadData() {
        if (Network.isWIFIConnected(this.mContext)) {
            return true;
        }
        int frequency = Math.max(60, OnlineConfig.getInstance(this.mContext).getIntValue(ConfigKey.UploadNOWIFIGeoLocFrequency.getValue(), 3600));
        if (Network.isUsingMobileDataConnection(this.mContext) && verifyUploadDataPeriod((long) frequency)) {
            return true;
        }
        return false;
    }

    private boolean verifyUploadDataPeriod(long period) {
        return ((float) Math.abs((System.currentTimeMillis() / 1000) - this.mContext.getSharedPreferences("mipush_extra", 4).getLong("last_upload_lbs_data_timestamp", -1))) > ((float) period) * 0.9f;
    }

    private static LocationInfo collectLocationInfo(Context context) {
        LocationInfo locationInfo = new LocationInfo();
        if (!MIUIUtils.isGDPREnable()) {
            locationInfo.setWifiList(collectWIFIListInfo(context));
            locationInfo.setCellList(collectCellListInfo(context));
            locationInfo.setGps(collectGPSInfo(context));
        }
        return locationInfo;
    }

    private static List<Wifi> collectWIFIListInfo(Context context) {
        ArrayList<Wifi> wifiListRes = null;
        Comparator<ScanResult> comparator = new Comparator<ScanResult>() {
            public int compare(ScanResult lhs, ScanResult rhs) {
                return rhs.level - lhs.level;
            }
        };
        try {
            List<ScanResult> wifiList = ((WifiManager) context.getSystemService("wifi")).getScanResults();
            if (!CollectionUtils.isEmpty(wifiList)) {
                Collections.sort(wifiList, comparator);
                ArrayList<Wifi> wifiListRes2 = new ArrayList();
                int i = 0;
                while (i < Math.min(30, wifiList.size())) {
                    try {
                        ScanResult result = (ScanResult) wifiList.get(i);
                        if (result != null) {
                            Wifi wifi = new Wifi();
                            wifi.setMacAddress(TextUtils.isEmpty(result.BSSID) ? "" : result.BSSID);
                            wifi.setSignalStrength(result.level);
                            wifi.setSsid(result.SSID);
                            wifiListRes2.add(wifi);
                        }
                        i++;
                    } catch (Throwable th) {
                        wifiListRes = wifiListRes2;
                        return null;
                    }
                }
                wifiListRes = wifiListRes2;
            }
            return wifiListRes;
        } catch (Throwable th2) {
            return null;
        }
    }

    private static List<Cellular> collectCellListInfo(Context context) {
        ArrayList<Cellular> cellularArrayList = null;
        try {
            List<NeighboringCellInfo> infoLists = ((TelephonyManager) context.getSystemService("phone")).getNeighboringCellInfo();
            int i = 0;
            while (true) {
                ArrayList<Cellular> cellularArrayList2;
                try {
                    cellularArrayList2 = cellularArrayList;
                    if (i < infoLists.size()) {
                        NeighboringCellInfo info = (NeighboringCellInfo) infoLists.get(i);
                        cellularArrayList = new ArrayList();
                        if (info.getLac() > 0 || info.getCid() > 0) {
                            Cellular cellular = new Cellular();
                            cellular.setId(info.getCid());
                            cellular.setSignalStrength((info.getRssi() * 2) - 113);
                            cellularArrayList.add(cellular);
                        }
                        i++;
                    } else {
                        cellularArrayList = cellularArrayList2;
                        return cellularArrayList2;
                    }
                } catch (Throwable th) {
                    cellularArrayList = cellularArrayList2;
                    return null;
                }
            }
        } catch (Throwable th2) {
            return null;
        }
    }

    private static GPS collectGPSInfo(Context context) {
        if (!checkGPSPermission(context)) {
            return null;
        }
        Location lastKnownLocation = getLastKnownLocation(context);
        if (lastKnownLocation == null) {
            return null;
        }
        com.xiaomi.xmpush.thrift.Location mLocation = new com.xiaomi.xmpush.thrift.Location();
        mLocation.setLatitude(lastKnownLocation.getLatitude());
        mLocation.setLongitude(lastKnownLocation.getLongitude());
        GPS gps = new GPS();
        gps.setAccuracy((double) lastKnownLocation.getAccuracy());
        gps.setLocation(mLocation);
        gps.setProvider(lastKnownLocation.getProvider());
        gps.setPeriod(new Date().getTime() - lastKnownLocation.getTime());
        return gps;
    }

    private static Location getLastKnownLocation(Context context) {
        Location networkLocation;
        Location gpslastKnownLocation;
        Location passlastKnownLocation;
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        try {
            networkLocation = locationManager.getLastKnownLocation("network");
        } catch (Exception e) {
            networkLocation = null;
        }
        try {
            gpslastKnownLocation = locationManager.getLastKnownLocation("gps");
        } catch (Exception e2) {
            gpslastKnownLocation = null;
        }
        try {
            passlastKnownLocation = locationManager.getLastKnownLocation("passive");
        } catch (Exception e3) {
            passlastKnownLocation = null;
        }
        return findAccurateLocation(passlastKnownLocation, findAccurateLocation(networkLocation, gpslastKnownLocation));
    }

    private static Location findAccurateLocation(Location locationA, Location locationB) {
        if (locationA == null) {
            return locationB;
        }
        return (locationB == null || locationA.getTime() > locationB.getTime()) ? locationA : locationB;
    }

    protected static boolean checkGPSPermission(Context context) {
        boolean coarseLocation;
        PackageManager packageManager = context.getPackageManager();
        String pkgName = context.getPackageName();
        if (packageManager.checkPermission("android.permission.ACCESS_COARSE_LOCATION", pkgName) == 0) {
            coarseLocation = true;
        } else {
            coarseLocation = false;
        }
        boolean fineLocation;
        if (packageManager.checkPermission("android.permission.ACCESS_FINE_LOCATION", pkgName) == 0) {
            fineLocation = true;
        } else {
            fineLocation = false;
        }
        if (coarseLocation || fineLocation) {
            return true;
        }
        return false;
    }

    private static void updateUploadTimeStamp(Context context) {
        Editor editor = context.getSharedPreferences("mipush_extra", 4).edit();
        editor.putLong("last_upload_lbs_data_timestamp", System.currentTimeMillis() / 1000);
        editor.commit();
    }
}
