package mtopsdk.mtop.util;

import mtopsdk.common.util.MtopUtils;
import mtopsdk.common.util.StringUtils;
import mtopsdk.network.domain.NetworkStats;

public class MtopStatistics implements Cloneable {
    private static final String TAG = "mtopsdk.MtopStatistics";
    public String apiKey = "";
    public boolean commitStat = true;
    public String domain;
    protected long endTime;
    public int intSeqNo = MtopUtils.createIntSeqNo();
    protected long mtopResponseParseEndTime;
    protected long mtopResponseParseStartTime;
    public long mtopResponseParseTime;
    protected long netSendEndTime;
    protected long netSendStartTime;
    protected NetworkStats netStat;
    public long netTotalTime;
    private RbStatisticData rbStatData;
    public String retCode;
    private String seqNo = ("MTOP" + this.intSeqNo);
    protected long startTime;
    protected String statSum = "";
    public int statusCode;
    public long totalTime;

    public class RbStatisticData implements Cloneable {
        public long afterReqTime;
        public long beforeReqTime;
        public int isCache;
        public long jsonParseTime;
        public long mtopReqTime;
        public long parseTime;
        public long rbReqTime;
        public long toMainThTime;

        private RbStatisticData() {
            this.isCache = 0;
        }

        public String getStatSum() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("rbReqTime=").append(this.rbReqTime);
            stringBuilder.append(",mtopReqTime=").append(this.mtopReqTime);
            stringBuilder.append(",mtopJsonParseTime=").append(this.jsonParseTime);
            stringBuilder.append(",toMainThTime=").append(this.toMainThTime);
            stringBuilder.append(",isCache=").append(this.isCache);
            return stringBuilder.toString();
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("rbReqTime=").append(this.rbReqTime);
            stringBuilder.append(",mtopReqTime=").append(this.mtopReqTime);
            stringBuilder.append(",mtopJsonParseTime=").append(this.jsonParseTime);
            stringBuilder.append(",toMainThTime=").append(this.toMainThTime);
            stringBuilder.append(",isCache=").append(this.isCache);
            stringBuilder.append(",beforeReqTime=").append(this.beforeReqTime);
            stringBuilder.append(",afterReqTime=").append(this.afterReqTime);
            stringBuilder.append(",parseTime=").append(this.parseTime);
            return stringBuilder.toString();
        }

        public Object clone() throws CloneNotSupportedException {
            return super.clone();
        }
    }

    private long currentTimeMillis() {
        return System.nanoTime() / 1000000;
    }

    public void onStart() {
        this.startTime = currentTimeMillis();
    }

    public void onEnd() {
        this.endTime = currentTimeMillis();
    }

    public void onParseResponseDataStart() {
        this.mtopResponseParseStartTime = currentTimeMillis();
    }

    public void onParseResponseDataEnd() {
        this.mtopResponseParseEndTime = currentTimeMillis();
    }

    public void onNetSendStart() {
        this.netSendStartTime = currentTimeMillis();
    }

    public void onNetSendEnd() {
        this.netSendEndTime = currentTimeMillis();
    }

    public void onNetStat(NetworkStats networkStats) {
        this.netStat = networkStats;
    }

    public String getSeqNo() {
        return this.seqNo;
    }

    public void onStatSum() {
        this.totalTime = this.endTime - this.startTime;
        this.netTotalTime = this.netSendEndTime - this.netSendStartTime;
        this.mtopResponseParseTime = this.mtopResponseParseEndTime - this.mtopResponseParseStartTime;
        StringBuilder stringBuilder = new StringBuilder("");
        stringBuilder.append("mtopOneWayTime=").append(this.totalTime);
        stringBuilder.append(",oneWayTime=").append(this.netTotalTime);
        stringBuilder.append(",mtopResponseParseTime=").append(this.mtopResponseParseTime);
        stringBuilder.append(",httpResponseStatus=").append(this.statusCode);
        stringBuilder.append(",ret=").append(this.retCode);
        if (this.netStat != null) {
            stringBuilder.append(",");
            if (StringUtils.isBlank(this.netStat.netStatSum)) {
                stringBuilder.append(this.netStat.sumNetStat());
            } else {
                stringBuilder.append(this.netStat.netStatSum);
            }
        }
        this.statSum = stringBuilder.toString();
    }

    public NetworkStats getNetStat() {
        return this.netStat;
    }

    public long getTotalTime() {
        return this.totalTime;
    }

    public String getStatSum() {
        if (this.rbStatData == null) {
            return this.statSum;
        }
        if ("".equals(this.statSum)) {
            return this.rbStatData.getStatSum();
        }
        return this.statSum + "," + this.rbStatData.getStatSum();
    }

    public void commitStatData(boolean z) {
        this.commitStat = z;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopStatistics [Detail]:");
        stringBuilder.append("startTime=" + this.startTime);
        stringBuilder.append(",mtopResponseParseStartTime=" + this.mtopResponseParseStartTime);
        stringBuilder.append(",mtopResponseParseEndTime=" + this.mtopResponseParseEndTime);
        stringBuilder.append(",endTime=" + this.endTime);
        stringBuilder.append("\nMtopStatistics[sumstat(ms)]:" + this.statSum);
        if (this.rbStatData != null) {
            stringBuilder.append("\nrbStatData=" + this.rbStatData);
        }
        return stringBuilder.toString();
    }

    public synchronized RbStatisticData getRbStatData() {
        if (this.rbStatData == null) {
            this.rbStatData = new RbStatisticData();
        }
        return this.rbStatData;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
