package mtopsdk.mtop.domain;

import java.io.Serializable;
import java.util.Map;
import mtopsdk.common.util.StringUtils;

public class MtopRequest implements Serializable, IMTOPDataObject {
    private static final long serialVersionUID = -439476282014493612L;
    private String apiName;
    private String data = "{}";
    public Map<String, String> dataParams;
    private boolean needEcode;
    private boolean needSession;
    private String version;

    public String getApiName() {
        return this.apiName;
    }

    public void setApiName(String str) {
        this.apiName = str;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String str) {
        this.data = str;
    }

    public boolean isNeedEcode() {
        return this.needEcode;
    }

    public void setNeedEcode(boolean z) {
        this.needEcode = z;
    }

    public boolean isNeedSession() {
        return this.needSession;
    }

    public void setNeedSession(boolean z) {
        this.needSession = z;
    }

    public boolean isLegalRequest() {
        if (StringUtils.isNotBlank(this.apiName) && StringUtils.isNotBlank(this.version) && StringUtils.isNotBlank(this.data)) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopRequest [");
        stringBuilder.append(" apiName=").append(this.apiName);
        stringBuilder.append(", version=").append(this.version);
        stringBuilder.append(", data=").append(this.data);
        stringBuilder.append(", needEcode=").append(this.needEcode);
        stringBuilder.append(", needSession=").append(this.needSession);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public String getKey() {
        if (StringUtils.isBlank(this.apiName) || StringUtils.isBlank(this.version)) {
            return null;
        }
        return StringUtils.concatStr2LowerCase(this.apiName, this.version);
    }
}
