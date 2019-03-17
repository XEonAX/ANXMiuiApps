package mtopsdk.mtop.domain;

import com.alipay.sdk.packet.d;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.MtopStatistics;
import org.json.JSONArray;
import org.json.JSONObject;

public class MtopResponse implements Serializable, IMTOPDataObject {
    private static final String SHARP = "::";
    private static final String TAG = "mtopsdk.MtopResponse";
    private static final long serialVersionUID = 1566423746968673499L;
    private String api;
    private volatile boolean bParsed = false;
    private byte[] bytedata;
    @Deprecated
    private byte[] data;
    private JSONObject dataJsonObject;
    private Map<String, List<String>> headerFields;
    private MtopStatistics mtopStat;
    private int responseCode;
    private ResponseSource responseSource = ResponseSource.NETWORK_REQUEST;
    @Deprecated
    private String[] ret;
    private String retCode;
    private String retMsg;
    private String v;

    public enum ResponseSource {
        FRESH_CACHE,
        EXPIRED_CACHE,
        NETWORK_REQUEST
    }

    public MtopResponse(String str, String str2) {
        this.retCode = str;
        this.retMsg = str2;
    }

    public MtopResponse(String str, String str2, String str3, String str4) {
        this.api = str;
        this.v = str2;
        this.retCode = str3;
        this.retMsg = str4;
    }

    public String getRetCode() {
        return this.retCode;
    }

    public void setRetCode(String str) {
        this.retCode = str;
    }

    public String getRetMsg() {
        if (this.retMsg == null && !this.bParsed) {
            parseJsonByte();
        }
        return this.retMsg;
    }

    public void setRetMsg(String str) {
        this.retMsg = str;
    }

    public String getApi() {
        if (this.api == null && !this.bParsed) {
            parseJsonByte();
        }
        return this.api;
    }

    public void setApi(String str) {
        this.api = str;
    }

    public String getV() {
        if (this.v == null && !this.bParsed) {
            parseJsonByte();
        }
        return this.v;
    }

    public void setV(String str) {
        this.v = str;
    }

    @Deprecated
    public String[] getRet() {
        if (this.ret == null && !this.bParsed) {
            parseJsonByte();
        }
        return this.ret;
    }

    @Deprecated
    public void setRet(String[] strArr) {
        this.ret = strArr;
    }

    @Deprecated
    public byte[] getData() {
        return this.data;
    }

    @Deprecated
    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public JSONObject getDataJsonObject() {
        if (this.dataJsonObject == null && !this.bParsed) {
            parseJsonByte();
        }
        return this.dataJsonObject;
    }

    public void setDataJsonObject(JSONObject jSONObject) {
        this.dataJsonObject = jSONObject;
    }

    public byte[] getBytedata() {
        return this.bytedata;
    }

    public void setBytedata(byte[] bArr) {
        this.bytedata = bArr;
    }

    public Map<String, List<String>> getHeaderFields() {
        return this.headerFields;
    }

    public void setHeaderFields(Map<String, List<String>> map) {
        this.headerFields = map;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public void setResponseCode(int i) {
        this.responseCode = i;
    }

    public MtopStatistics getMtopStat() {
        return this.mtopStat;
    }

    public void setMtopStat(MtopStatistics mtopStatistics) {
        this.mtopStat = mtopStatistics;
    }

    public void parseJsonByte() {
        if (!this.bParsed) {
            synchronized (this) {
                if (this.bParsed) {
                } else if (this.bytedata == null || this.bytedata.length == 0) {
                    if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                        TBSdkLog.w(TAG, "[parseJsonByte]bytedata is blank ---api=" + this.api + ",v=" + this.v);
                    }
                    this.retCode = ErrorConstant.ERRCODE_JSONDATA_BLANK;
                    this.retMsg = ErrorConstant.ERRMSG_JSONDATA_BLANK;
                    this.bParsed = true;
                } else {
                    try {
                        String str = new String(this.bytedata);
                        if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                            TBSdkLog.d(TAG, "[parseJsonByte]response : " + str);
                        }
                        JSONObject jSONObject = new JSONObject(str);
                        if (this.api == null) {
                            this.api = jSONObject.getString("api");
                        }
                        if (this.v == null) {
                            this.v = jSONObject.getString("v");
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("ret");
                        int length = jSONArray.length();
                        this.ret = new String[length];
                        for (int i = 0; i < length; i++) {
                            this.ret[i] = jSONArray.getString(i);
                        }
                        parserRet(this.ret);
                        this.dataJsonObject = jSONObject.optJSONObject(d.k);
                        this.bParsed = true;
                    } catch (Throwable th) {
                        this.bParsed = true;
                    }
                }
            }
        }
    }

    private void parserRet(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            String str = strArr[0];
            if (StringUtils.isNotBlank(str)) {
                String[] split = str.split(SHARP);
                if (split != null && split.length > 1) {
                    this.retCode = split[0];
                    this.retMsg = split[1];
                }
            }
        }
    }

    public void setSource(ResponseSource responseSource) {
        this.responseSource = responseSource;
    }

    public ResponseSource getSource() {
        return this.responseSource;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MtopResponse");
        try {
            stringBuilder.append("[api=").append(this.api);
            stringBuilder.append(",v=").append(this.v);
            stringBuilder.append(",responseCode=").append(this.responseCode);
            stringBuilder.append(",headerFields=").append(this.headerFields);
            stringBuilder.append(",retCode=").append(this.retCode);
            stringBuilder.append(",retMsg=").append(this.retMsg);
            stringBuilder.append(",ret=").append(Arrays.toString(this.ret));
            stringBuilder.append(",data=").append(this.dataJsonObject);
            stringBuilder.append(",bytedata=").append(this.bytedata == null ? null : new String(this.bytedata));
            stringBuilder.append("]");
            return stringBuilder.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return super.toString();
        }
    }

    public String getFullKey() {
        if (StringUtils.isBlank(this.api) || StringUtils.isBlank(this.v)) {
            return null;
        }
        return StringUtils.concatStr2LowerCase(this.api, this.v);
    }

    public boolean isApiSuccess() {
        return ErrorConstant.isSuccess(getRetCode()) && getBytedata() != null;
    }

    public boolean isExpiredRequest() {
        return ErrorConstant.isExpiredRequest(getRetCode());
    }

    public boolean isSystemError() {
        return ErrorConstant.isSystemError(getRetCode());
    }

    public boolean isNetworkError() {
        return ErrorConstant.isNetworkError(getRetCode());
    }

    public boolean isNoNetwork() {
        return ErrorConstant.isNoNetwork(getRetCode());
    }

    public boolean isSessionInvalid() {
        return ErrorConstant.isSessionInvalid(getRetCode());
    }

    public boolean isIllegelSign() {
        return ErrorConstant.isIllegelSign(getRetCode());
    }

    public boolean is41XResult() {
        return ErrorConstant.is41XResult(getRetCode());
    }

    public boolean isApiLockedResult() {
        return ErrorConstant.isApiLockedResult(getRetCode());
    }

    public boolean isMtopSdkError() {
        return ErrorConstant.isMtopSdkError(getRetCode());
    }

    public boolean isMtopServerError() {
        return ErrorConstant.isMtopServerError(getRetCode());
    }
}
