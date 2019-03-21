package com.xiaomi.smack.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor.SerializedAsyncTask;
import com.xiaomi.push.providers.TrafficDatabaseHelper;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.keyczar.Keyczar;

public class TrafficUtils {
    private static TrafficDatabaseHelper dbHelper = null;
    private static String imsi = "";
    private static long lastRxTs = System.currentTimeMillis();
    private static final Object lock = new Object();
    private static SerializedAsyncTaskProcessor mAsyncProcessor = new SerializedAsyncTaskProcessor(true);
    private static int networkType = -1;
    private static List<TrafficInfo> trafficList = Collections.synchronizedList(new ArrayList());

    static class TrafficInfo {
        public long bytes = 0;
        public String imsi = "";
        public long messageTs = 0;
        public int networkType = -1;
        public String packageName = "";
        public int rcv = -1;

        public TrafficInfo(String packageName, long messageTs, int networkType, int rcv, String imsi, long bytes) {
            this.packageName = packageName;
            this.messageTs = messageTs;
            this.networkType = networkType;
            this.rcv = rcv;
            this.imsi = imsi;
            this.bytes = bytes;
        }

        public boolean canAccumulate(TrafficInfo info) {
            if (TextUtils.equals(info.packageName, this.packageName) && TextUtils.equals(info.imsi, this.imsi) && info.networkType == this.networkType && info.rcv == this.rcv && Math.abs(info.messageTs - this.messageTs) <= 5000) {
                return true;
            }
            return false;
        }
    }

    public static void notifyNetworkChanage(Context context) {
        networkType = getActiveNetworkType(context);
    }

    public static int getNetworkType(Context context) {
        if (networkType == -1) {
            networkType = getActiveNetworkType(context);
        }
        return networkType;
    }

    private static int getActiveNetworkType(Context context) {
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
            if (cm == null) {
                return -1;
            }
            try {
                NetworkInfo info = cm.getActiveNetworkInfo();
                if (info != null) {
                    return info.getType();
                }
                return -1;
            } catch (Exception e) {
                return -1;
            }
        } catch (Exception e2) {
            return -1;
        }
    }

    private static synchronized String getIMSI(Context context) {
        String str;
        synchronized (TrafficUtils.class) {
            if (MIUIUtils.isGDPREnable()) {
                str = "";
            } else if (TextUtils.isEmpty(imsi)) {
                try {
                    TelephonyManager telephony = (TelephonyManager) context.getSystemService("phone");
                    if (telephony != null) {
                        imsi = telephony.getSubscriberId();
                    }
                } catch (Exception e) {
                }
                str = imsi;
            } else {
                str = imsi;
            }
        }
        return str;
    }

    public static void distributionTraffic(Context context, String packageName, long bytesLength, boolean isRx, boolean isSlim, long ts) {
        saveTraffic(context, packageName, getTraffic(getNetworkType(context), bytesLength, isRx, ts, isSlim), isRx, ts);
    }

    private static void saveTraffic(final Context context, String packageName, long bytesLength, boolean isRx, long ts) {
        if (context != null && !TextUtils.isEmpty(packageName) && "com.xiaomi.xmsf".equals(context.getPackageName()) && !"com.xiaomi.xmsf".equals(packageName)) {
            int type = getNetworkType(context);
            if (-1 != type) {
                boolean listEmpty;
                synchronized (lock) {
                    listEmpty = trafficList.isEmpty();
                    insertTrafficInfo2List(new TrafficInfo(packageName, ts, type, isRx ? 1 : 0, type == 0 ? getIMSI(context) : "", bytesLength));
                }
                if (listEmpty) {
                    mAsyncProcessor.addNewTaskWithDelayed(new SerializedAsyncTask() {
                        public void process() {
                            Throwable th;
                            synchronized (TrafficUtils.lock) {
                                try {
                                    List<TrafficInfo> infoList = new ArrayList(TrafficUtils.trafficList);
                                    try {
                                        TrafficUtils.trafficList.clear();
                                        TrafficUtils.insertTraffic(context, infoList);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        List<TrafficInfo> list = infoList;
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                        }
                    }, 5000);
                }
            }
        }
    }

    private static long getTraffic(int networkType, long byteLength, boolean isRx, long ts, boolean isSlim) {
        if (isRx && isSlim) {
            long last = lastRxTs;
            lastRxTs = ts;
            if (ts - last > 30000 && byteLength > 1024) {
                return 2 * byteLength;
            }
        }
        return (((long) (networkType == 0 ? 13 : 11)) * byteLength) / 10;
    }

    private static void insertTraffic(Context context, List<TrafficInfo> infoList) {
        try {
            synchronized (TrafficDatabaseHelper.DataBaseLock) {
                SQLiteDatabase db = getTrafficDatabaseHelper(context).getWritableDatabase();
                db.beginTransaction();
                try {
                    for (TrafficInfo trafficInfo : infoList) {
                        ContentValues values = new ContentValues();
                        values.put("package_name", trafficInfo.packageName);
                        values.put("message_ts", Long.valueOf(trafficInfo.messageTs));
                        values.put("network_type", Integer.valueOf(trafficInfo.networkType));
                        values.put("bytes", Long.valueOf(trafficInfo.bytes));
                        values.put("rcv", Integer.valueOf(trafficInfo.rcv));
                        values.put("imsi", trafficInfo.imsi);
                        db.insert("traffic", null, values);
                    }
                    db.setTransactionSuccessful();
                } finally {
                    db.endTransaction();
                }
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
    }

    private static TrafficDatabaseHelper getTrafficDatabaseHelper(Context context) {
        if (dbHelper != null) {
            return dbHelper;
        }
        dbHelper = new TrafficDatabaseHelper(context);
        return dbHelper;
    }

    public static int getTrafficFlow(String s) {
        try {
            return s.getBytes(Keyczar.DEFAULT_ENCODING).length;
        } catch (UnsupportedEncodingException e) {
            return s.getBytes().length;
        }
    }

    private static void insertTrafficInfo2List(TrafficInfo info) {
        for (TrafficInfo element : trafficList) {
            if (element.canAccumulate(info)) {
                element.bytes += info.bytes;
                return;
            }
        }
        trafficList.add(info);
    }
}
