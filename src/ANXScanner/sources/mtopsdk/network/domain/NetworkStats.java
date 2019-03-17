package mtopsdk.network.domain;

import java.io.Serializable;
import mtopsdk.common.util.StringUtils;

public class NetworkStats implements Serializable, Cloneable {
    private static final long serialVersionUID = -3538602124202475612L;
    public String connectionType = "";
    public long dataSpeed = 0;
    public long firstDataTime = 0;
    public String host = "";
    public String ip_port = "";
    public boolean isRequestSuccess = false;
    public boolean isSSL = false;
    public String netStatSum;
    public long oneWayTime_ANet = 0;
    public long postBodyTime = 0;
    public long recDataTime = 0;
    public int resultCode = 0;
    public int retryTime;
    public long rtt = 0;
    public long sendBeforeTime = 0;
    public long sendSize = 0;
    public long serverRT = 0;
    public long totalSize = 0;

    public String sumNetStat() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("isRequestSuccess=").append(this.isRequestSuccess);
        stringBuilder.append(",host=").append(this.host);
        stringBuilder.append(",ip_port=").append(this.ip_port);
        stringBuilder.append(",isSSL=").append(this.isSSL);
        stringBuilder.append(",connType=").append(this.connectionType);
        stringBuilder.append(",oneWayTime_ANet=").append(this.oneWayTime_ANet);
        stringBuilder.append(",postBodyTime=").append(this.postBodyTime);
        stringBuilder.append(",firstDataTime=").append(this.firstDataTime);
        stringBuilder.append(",recDataTime=").append(this.recDataTime);
        stringBuilder.append(",serverRT=").append(this.serverRT);
        stringBuilder.append(",rtt=").append(this.rtt);
        stringBuilder.append(",sendSize=").append(this.sendSize);
        stringBuilder.append(",totalSize=").append(this.totalSize);
        stringBuilder.append(",dataSpeed=").append(this.dataSpeed);
        stringBuilder.append(",retryTime=").append(this.retryTime);
        return stringBuilder.toString();
    }

    public String toString() {
        if (StringUtils.isBlank(this.netStatSum)) {
            this.netStatSum = sumNetStat();
        }
        StringBuilder stringBuilder = new StringBuilder("NetworkStats [");
        stringBuilder.append(this.netStatSum);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
