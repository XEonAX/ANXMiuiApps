package com.xiaomi.stats;

import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.stats.Stats;
import com.xiaomi.channel.commonutils.stats.Stats.Item;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.push.service.ServiceConfig;
import com.xiaomi.push.service.ServiceConfig.Listener;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.thrift.ChannelStatsType;
import com.xiaomi.push.thrift.StatsEvent;
import com.xiaomi.push.thrift.StatsEvents;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.thrift.TException;
import org.apache.thrift.protocol.TProtocol;
import org.apache.thrift.protocol.XmPushTBinaryProtocol.Factory;
import org.apache.thrift.transport.TMemoryBuffer;

public class StatsHandler {
    private boolean allowStatsUpload = false;
    private StatsContext context;
    private int duration;
    private long startTime;
    private Stats statsContainer = Stats.instance();
    private String uuid;

    static class Holder {
        static final StatsHandler sStatsHandler = new StatsHandler();
    }

    public static StatsHandler getInstance() {
        return Holder.sStatsHandler;
    }

    public static StatsContext getContext() {
        StatsContext statsContext;
        synchronized (Holder.sStatsHandler) {
            statsContext = Holder.sStatsHandler.context;
        }
        return statsContext;
    }

    public synchronized void init(XMPushService service) {
        this.context = new StatsContext(service);
        this.uuid = "";
        ServiceConfig.getInstance().addListener(new Listener() {
            public void onConfigMsgReceive(PushServiceConfigMsg config) {
                if (config.hasDots()) {
                    StatsHandler.getInstance().setDuration(config.getDots());
                }
            }
        });
    }

    public boolean isAllowStats() {
        return this.allowStatsUpload;
    }

    public void setDuration(int duration) {
        if (duration > 0) {
            duration *= 1000;
            if (duration > 604800000) {
                duration = 604800000;
            }
            if (this.duration != duration || !this.allowStatsUpload) {
                this.allowStatsUpload = true;
                this.startTime = System.currentTimeMillis();
                this.duration = duration;
                MyLog.v("enable dot duration = " + duration + " start = " + this.startTime);
            }
        }
    }

    private void stopStatsIfNeed() {
        if (this.allowStatsUpload && System.currentTimeMillis() - this.startTime > ((long) this.duration)) {
            this.allowStatsUpload = false;
            this.startTime = 0;
        }
    }

    boolean shouldSendStatsNow() {
        stopStatsIfNeed();
        return this.allowStatsUpload && this.statsContainer.getCount() > 0;
    }

    synchronized StatsEvents retriveStatsEvents() {
        StatsEvents evts;
        evts = null;
        if (shouldSendStatsNow()) {
            int limit = 750;
            if (!Network.isWIFIConnected(this.context.pushService)) {
                limit = 750 / 2;
            }
            evts = retriveStatsEvents(limit);
        }
        return evts;
    }

    private StatsEvents retriveStatsEvents(int size) {
        List<StatsEvent> list = new ArrayList();
        StatsEvents evts = new StatsEvents(this.uuid, list);
        if (!Network.isWIFIConnected(this.context.pushService)) {
            evts.setOperator(DeviceInfo.getSimOperatorName(this.context.pushService));
        }
        TMemoryBuffer buffer = new TMemoryBuffer(size);
        TProtocol protocol = new Factory().getProtocol(buffer);
        try {
            evts.write(protocol);
        } catch (TException e) {
        }
        LinkedList<Item> items = this.statsContainer.getStats();
        while (items.size() > 0) {
            try {
                StatsEvent stats = from((Item) items.getLast());
                if (stats != null) {
                    stats.write(protocol);
                }
                if (buffer.length() > size) {
                    break;
                }
                if (stats != null) {
                    list.add(stats);
                }
                items.removeLast();
            } catch (NoSuchElementException e2) {
            } catch (TException e3) {
            }
        }
        return evts;
    }

    synchronized StatsEvent createStatsEvent() {
        StatsEvent evt;
        evt = new StatsEvent();
        evt.setConnpt(Network.getActiveConnPoint(this.context.pushService));
        evt.chid = (byte) 0;
        evt.value = 1;
        evt.setTime((int) (System.currentTimeMillis() / 1000));
        return evt;
    }

    private StatsEvent from(Item item) {
        if (item.key != 0) {
            StatsEvent stats = createStatsEvent();
            stats.setType(ChannelStatsType.CHANNEL_STATS_COUNTER.getValue());
            stats.setSubvalue(item.key);
            stats.setAnnotation(item.annotation);
            return stats;
        } else if (item.obj instanceof StatsEvent) {
            return item.obj;
        } else {
            return null;
        }
    }

    synchronized void add(StatsEvent evt) {
        this.statsContainer.stat(evt);
    }
}
