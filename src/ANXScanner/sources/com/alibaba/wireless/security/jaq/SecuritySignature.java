package com.alibaba.wireless.security.jaq;

import android.content.Context;
import com.alibaba.wireless.security.SecExceptionCode;
import com.alibaba.wireless.security.open.SecException;
import com.alibaba.wireless.security.open.SecurityGuardManager;
import com.alibaba.wireless.security.open.SecurityGuardParamContext;
import com.alibaba.wireless.security.open.securesignature.SecureSignatureDefine;
import java.util.HashMap;
import java.util.Map;

public class SecuritySignature {
    private Context a;

    public SecuritySignature(Context context) {
        if (context != null) {
            this.a = context.getApplicationContext();
        }
    }

    public String atlasSign(String str, String str2) throws JAQException {
        Map hashMap = new HashMap();
        hashMap.put(SecureSignatureDefine.OPEN_KEY_SIGN_INPUT, str);
        hashMap.put(SecureSignatureDefine.OPEN_KEY_SIGN_ATLAS, "a");
        SecurityGuardParamContext securityGuardParamContext = new SecurityGuardParamContext();
        securityGuardParamContext.appKey = str2;
        securityGuardParamContext.paramMap = hashMap;
        securityGuardParamContext.requestType = 5;
        try {
            if (SecurityGuardManager.getInstance(this.a).getAtlasEncryptComp() != null) {
                return SecurityGuardManager.getInstance(this.a).getSecureSignatureComp().signRequest(securityGuardParamContext, "0335");
            }
            throw new SecException(SecExceptionCode.SEC_ERROR_ATLAS_UNSUPPORTED);
        } catch (SecException e) {
            e.printStackTrace();
            throw new JAQException(e.getErrorCode());
        }
    }

    public String sign(String str, String str2) throws JAQException {
        Map hashMap = new HashMap();
        hashMap.put(SecureSignatureDefine.OPEN_KEY_SIGN_INPUT, str);
        SecurityGuardParamContext securityGuardParamContext = new SecurityGuardParamContext();
        securityGuardParamContext.appKey = str2;
        securityGuardParamContext.paramMap = hashMap;
        securityGuardParamContext.requestType = 3;
        try {
            return SecurityGuardManager.getInstance(this.a).getSecureSignatureComp().signRequest(securityGuardParamContext, "0335");
        } catch (SecException e) {
            e.printStackTrace();
            throw new JAQException(e.getErrorCode());
        }
    }

    public String signWithSimulator(String str, String str2) throws JAQException {
        Map hashMap = new HashMap();
        hashMap.put(SecureSignatureDefine.OPEN_KEY_SIGN_INPUT, str);
        SecurityGuardParamContext securityGuardParamContext = new SecurityGuardParamContext();
        securityGuardParamContext.appKey = str2;
        securityGuardParamContext.paramMap = hashMap;
        securityGuardParamContext.requestType = 6;
        try {
            return SecurityGuardManager.getInstance(this.a).getSecureSignatureComp().signRequest(securityGuardParamContext, "0335");
        } catch (SecException e) {
            e.printStackTrace();
            throw new JAQException(e.getErrorCode());
        }
    }
}
