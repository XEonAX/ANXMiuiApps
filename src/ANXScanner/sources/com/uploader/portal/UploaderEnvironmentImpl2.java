package com.uploader.portal;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.wireless.security.open.SecurityGuardManager;
import com.alibaba.wireless.security.open.SecurityGuardParamContext;
import com.alibaba.wireless.security.open.securesignature.SecureSignatureDefine;
import com.ta.utdid2.device.UTDevice;
import com.uploader.export.UploaderEnvironment;
import com.uploader.export.UploaderGlobal;
import java.util.HashMap;

public class UploaderEnvironmentImpl2 extends UploaderEnvironment {
    private final Context context;
    private volatile int environment;
    private volatile String utdid;

    public UploaderEnvironmentImpl2(Context context, int instanceType) {
        super(instanceType);
        this.environment = 0;
        if (context == null) {
            this.context = UploaderGlobal.retrieveContext();
        } else {
            this.context = context;
        }
    }

    public UploaderEnvironmentImpl2(Context context) {
        this(context, 0);
    }

    public int getEnvironment() {
        return this.environment;
    }

    public void setEnvironment(int environment) {
        this.environment = environment;
    }

    public String getUtdid() {
        if (this.utdid != null) {
            return this.utdid;
        }
        try {
            this.utdid = UTDevice.getUtdid(this.context);
        } catch (Throwable e) {
            e.printStackTrace();
        }
        return this.utdid;
    }

    public String getAppVersion() {
        try {
            String versionName = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionName;
            if (TextUtils.isEmpty(versionName)) {
                return "0";
            }
            return versionName;
        } catch (Throwable th) {
            return "0";
        }
    }

    public String getUserId() {
        return null;
    }

    public String signature(String data) {
        HashMap<String, String> paramMap = new HashMap(1);
        paramMap.put(SecureSignatureDefine.OPEN_KEY_SIGN_INPUT, data);
        SecurityGuardParamContext paramContext = new SecurityGuardParamContext();
        paramContext.appKey = getAppKey();
        paramContext.paramMap = paramMap;
        paramContext.requestType = 3;
        String sign = null;
        try {
            return SecurityGuardManager.getInstance(this.context).getSecureSignatureComp().signRequest(paramContext, getCurrentElement().authCode);
        } catch (Exception e) {
            e.printStackTrace();
            return sign;
        }
    }

    public int putSslTicket(Context context, String host, byte[] value) {
        int result = -1;
        try {
            return SecurityGuardManager.getInstance(context).getDynamicDataStoreComp().putByteArray(host, value);
        } catch (Exception e) {
            e.printStackTrace();
            return result;
        }
    }

    public byte[] getSslTicket(Context context, String host) {
        byte[] result = null;
        try {
            return SecurityGuardManager.getInstance(context).getDynamicDataStoreComp().getByteArray(host);
        } catch (Exception e) {
            e.printStackTrace();
            return result;
        }
    }

    public byte[] decrypt(Context context, String key, byte[] text) {
        byte[] result = null;
        try {
            return SecurityGuardManager.getInstance(context).getStaticDataEncryptComp().staticBinarySafeDecryptNoB64(16, key, text, getCurrentElement().authCode);
        } catch (Exception e) {
            e.printStackTrace();
            return result;
        }
    }

    public boolean enableFlowControl() {
        return false;
    }
}
