package com.xiaomi.stats;

import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.thrift.ChannelStatsType;
import com.xiaomi.push.thrift.StatsEvent;
import com.xiaomi.push.thrift.StatsEvents;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.util.Hashtable;

public class StatsHelper {
    private static final int PING_RTT = ChannelStatsType.PING_RTT.getValue();

    static class Holder {
        static Hashtable<Integer, Long> sTimeTracker = new Hashtable();
    }

    public static void connectFail(String host, Exception e) {
        try {
            TypeWraper wraper = StatsAnalyser.fromConnectionException(e);
            StatsEvent evt = StatsHandler.getInstance().createStatsEvent();
            evt.setType(wraper.type.getValue());
            evt.setAnnotation(wraper.annotation);
            evt.setHost(host);
            StatsHandler.getInstance().add(evt);
        } catch (NullPointerException e2) {
        }
    }

    public static void connectionDown(String host, Exception e) {
        try {
            TypeWraper wraper = StatsAnalyser.fromDisconnectEx(e);
            StatsEvent evt = StatsHandler.getInstance().createStatsEvent();
            evt.setType(wraper.type.getValue());
            evt.setAnnotation(wraper.annotation);
            evt.setHost(host);
            StatsHandler.getInstance().add(evt);
        } catch (NullPointerException e2) {
        }
    }

    public static void statsGslb(String host, int cost, Exception e) {
        StatsEvent evt = StatsHandler.getInstance().createStatsEvent();
        if (cost > 0) {
            evt.setType(ChannelStatsType.GSLB_REQUEST_SUCCESS.getValue());
            evt.setHost(host);
            evt.setValue(cost);
            StatsHandler.getInstance().add(evt);
            return;
        }
        try {
            TypeWraper wraper = StatsAnalyser.fromGslbException(e);
            evt.setType(wraper.type.getValue());
            evt.setAnnotation(wraper.annotation);
            evt.setHost(host);
            StatsHandler.getInstance().add(evt);
        } catch (NullPointerException e2) {
        }
    }

    public static void statsBind(XMPushService pushService, ClientLoginInfo client) {
        new BindTracker(pushService, client).track();
    }

    public static synchronized void trackStart(int chid, int key) {
        synchronized (StatsHelper.class) {
            if (key < 16777215) {
                Holder.sTimeTracker.put(Integer.valueOf((chid << 24) | key), Long.valueOf(System.currentTimeMillis()));
            } else {
                MyLog.e("stats key should less than 16777215");
            }
        }
    }

    public static synchronized void trackEnd(int chid, int key, String host, int subVal) {
        synchronized (StatsHelper.class) {
            long time = System.currentTimeMillis();
            int tKey = (chid << 24) | key;
            if (Holder.sTimeTracker.containsKey(Integer.valueOf(tKey))) {
                StatsEvent evt = StatsHandler.getInstance().createStatsEvent();
                evt.setType(key);
                evt.setValue((int) (time - ((Long) Holder.sTimeTracker.get(Integer.valueOf(tKey))).longValue()));
                evt.setHost(host);
                if (subVal > -1) {
                    evt.setSubvalue(subVal);
                }
                StatsHandler.getInstance().add(evt);
                Holder.sTimeTracker.remove(Integer.valueOf(key));
            } else {
                MyLog.e("stats key not found");
            }
        }
    }

    public static void pingStarted() {
        trackStart(0, PING_RTT);
    }

    public static void pingEnded() {
        trackEnd(0, PING_RTT, null, -1);
    }

    public static void stats(int chid, int key, int val, String host, int subVal) {
        StatsEvent evt = StatsHandler.getInstance().createStatsEvent();
        evt.setChid((byte) chid);
        evt.setType(key);
        evt.setValue(val);
        evt.setHost(host);
        evt.setSubvalue(subVal);
        StatsHandler.getInstance().add(evt);
    }

    public static void count(int key) {
        StatsEvent evt = StatsHandler.getInstance().createStatsEvent();
        evt.setType(ChannelStatsType.CHANNEL_STATS_COUNTER.getValue());
        evt.setSubvalue(key);
        StatsHandler.getInstance().add(evt);
    }

    public static byte[] retriveStatsAsByte() {
        StatsEvents evts = StatsHandler.getInstance().retriveStatsEvents();
        if (evts != null) {
            return XmPushThriftSerializeUtils.convertThriftObjectToBytes(evts);
        }
        return null;
    }
}
