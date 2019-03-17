package mtopsdk.mtop.common;

import java.io.Serializable;
import java.util.Map;
import mtopsdk.mtop.domain.EnvModeEnum;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.MethodEnum;
import mtopsdk.mtop.domain.ProtocolEnum;

public class MtopNetworkProp implements Serializable, IMTOPDataObject {
    private static final long serialVersionUID = -3528337805304245196L;
    public boolean autoRedirect = true;
    public int bizId;
    public int connTimeout = 15000;
    public boolean correctTimeStamp = false;
    public EnvModeEnum envMode = EnvModeEnum.ONLINE;
    public boolean forceRefreshCache = false;
    public MethodEnum method = MethodEnum.GET;
    public ProtocolEnum protocol = ProtocolEnum.HTTPSECURE;
    public Map<String, String> queryParameterMap;
    public String reqUserId;
    public Map<String, String> requestHeaders;
    public int retryTimes = 1;
    public int socketTimeout = 15000;
    public String ttid;
    public boolean useCache = false;
    public int wuaFlag = -1;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopNetworkProp [");
        stringBuilder.append("protocol=").append(this.protocol);
        stringBuilder.append(", method=").append(this.method);
        stringBuilder.append(", autoRedirect=").append(this.autoRedirect);
        stringBuilder.append(", retryTimes=").append(this.retryTimes);
        stringBuilder.append(", requestHeaders=").append(this.requestHeaders);
        stringBuilder.append(", correctTimeStamp=").append(this.correctTimeStamp);
        stringBuilder.append(", ttid=").append(this.ttid);
        stringBuilder.append(", useCache=").append(this.useCache);
        stringBuilder.append(", forceRefreshCache=").append(this.forceRefreshCache);
        stringBuilder.append(", wuaFlag=").append(this.wuaFlag);
        stringBuilder.append(", queryParameterMap=").append(this.queryParameterMap);
        stringBuilder.append(", connTimeout=").append(this.connTimeout);
        stringBuilder.append(", socketTimeout=").append(this.socketTimeout);
        stringBuilder.append(", bizId=").append(this.bizId);
        stringBuilder.append(", envMode=").append(this.envMode);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
