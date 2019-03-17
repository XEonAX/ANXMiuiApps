package mtopsdk.mtop.common;

import android.os.Handler;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.network.Call;

public class ApiID implements IMTOPDataObject {
    private static final String TAG = "mtopsdk.ApiID";
    private volatile Call call;
    private MtopProxy mtopProxy;

    public ApiID(Call call, MtopProxy mtopProxy) {
        this.call = call;
        this.mtopProxy = mtopProxy;
    }

    public MtopProxy getMtopProxy() {
        return this.mtopProxy;
    }

    public void setMtopProxy(MtopProxy mtopProxy) {
        this.mtopProxy = mtopProxy;
    }

    public Call getCall() {
        return this.call;
    }

    public void setCall(Call call) {
        this.call = call;
    }

    public boolean cancelApiCall() {
        if (this.call == null) {
            TBSdkLog.e(TAG, "Future is null,cancel apiCall failed");
            return false;
        }
        this.call.cancel();
        return true;
    }

    public ApiID retryApiCall(Handler handler) {
        if (this.mtopProxy == null) {
            return null;
        }
        return this.mtopProxy.asyncApiCall(handler);
    }

    public ApiID retryApiCall() {
        return retryApiCall(null);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ApiID [");
        stringBuilder.append("call=").append(this.call);
        stringBuilder.append(", mtopProxy=").append(this.mtopProxy);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
