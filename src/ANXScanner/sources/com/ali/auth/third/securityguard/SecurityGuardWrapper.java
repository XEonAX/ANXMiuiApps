package com.ali.auth.third.securityguard;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.exception.SecRuntimeException;
import com.ali.auth.third.core.service.StorageService;
import com.alibaba.wireless.security.open.SecException;
import com.alibaba.wireless.security.open.SecurityGuardManager;
import com.alibaba.wireless.security.open.dynamicdataencrypt.IDynamicDataEncryptComponent;
import com.alibaba.wireless.security.open.safetoken.ISafeTokenComponent;
import com.ut.mini.UTAnalytics;
import com.ut.mini.UTHitBuilders.UTCustomHitBuilder;
import java.io.UnsupportedEncodingException;
import java.util.Map.Entry;
import java.util.TreeMap;

public class SecurityGuardWrapper implements StorageService {
    public static final String TAG = "SecurityGuardWrapper";

    private SecurityGuardManager a() {
        try {
            return SecurityGuardManager.getInstance(KernelContext.context);
        } catch (Throwable e) {
            e.printStackTrace();
            throw new SecRuntimeException(e.getErrorCode(), e);
        }
    }

    public String getValue(String str, boolean z) {
        if (!z) {
            return a().getStaticDataStoreComp().getExtraData(str, ConfigManager.POSTFIX_OF_SECURITY_JPG);
        }
        try {
            return a().getDynamicDataStoreComp().getString(str);
        } catch (SecException e) {
            return null;
        }
    }

    public void putValue(String str, String str2, boolean z) {
        try {
            a().getDynamicDataStoreComp().putString(str, str2);
        } catch (SecException e) {
            e.printStackTrace();
        }
    }

    public void removeValue(String str, boolean z) {
        if (z) {
            try {
                a().getDynamicDataStoreComp().removeString(str);
            } catch (SecException e) {
                e.printStackTrace();
            }
        }
    }

    public void putDDpExValue(String str, String str2) {
        try {
            a().getDynamicDataStoreComp().putStringDDpEx(str, str2, 0);
        } catch (SecException e) {
            e.printStackTrace();
        }
    }

    public String getDDpExValue(String str) {
        try {
            return a().getDynamicDataStoreComp().getStringDDpEx(str, 0);
        } catch (SecException e) {
            return null;
        }
    }

    public void removeDDpExValue(String str) {
        try {
            a().getDynamicDataStoreComp().removeStringDDpEx(str, 0);
        } catch (SecException e) {
            e.printStackTrace();
        }
    }

    public String symEncrypt(String str, String str2) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            if (TextUtils.isEmpty(str2)) {
                str2 = "seed_key";
            }
            try {
                return Base64.encodeToString(a(bytes, str2), 11);
            } catch (SecRuntimeException e) {
                throw e;
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException();
        }
    }

    private byte[] a(byte[] bArr, String str) {
        try {
            return a().getStaticKeyEncryptComp().encrypt(16, str, bArr);
        } catch (Throwable e) {
            throw new SecRuntimeException(e.getErrorCode(), e);
        }
    }

    public String symDecrypt(String str, String str2) {
        try {
            byte[] decode = Base64.decode(str, 8);
            if (TextUtils.isEmpty(str2)) {
                str2 = "seed_key";
            }
            return new String(b(decode, str2), "UTF-8");
        } catch (SecRuntimeException e) {
            throw e;
        } catch (Throwable e2) {
            throw new RuntimeException(e2);
        }
    }

    private byte[] b(byte[] bArr, String str) {
        try {
            return a().getStaticKeyEncryptComp().decrypt(16, str, bArr);
        } catch (Throwable e) {
            throw new SecRuntimeException(e.getErrorCode(), e);
        }
    }

    public String getUmid() {
        try {
            return a().getUMIDComp().getSecurityToken();
        } catch (Throwable e) {
            throw new SecRuntimeException(e.getErrorCode(), e);
        }
    }

    public void setUmid(String str) {
    }

    public String getAppKey() {
        try {
            return a().getStaticDataStoreComp().getAppKeyByIndex(ConfigManager.getAppKeyIndex(), ConfigManager.POSTFIX_OF_SECURITY_JPG);
        } catch (Throwable e) {
            throw new SecRuntimeException(e.getErrorCode(), e);
        }
    }

    public synchronized boolean saveSafeToken(String str, String str2) {
        boolean z = false;
        synchronized (this) {
            if (!(TextUtils.isEmpty(str) || a() == null)) {
                try {
                    ISafeTokenComponent safeTokenComp = a().getSafeTokenComp();
                    if (safeTokenComp != null) {
                        int i;
                        String[] strArr = new String[]{"", "", "", ""};
                        if (0 > strArr.length) {
                            i = 0;
                        } else {
                            i = 0;
                        }
                        z = safeTokenComp.saveToken(str, str2, strArr[i], 0);
                    }
                } catch (SecException e) {
                    e.printStackTrace();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return z;
    }

    public void removeSafeToken(String str) {
        try {
            a().getSafeTokenComp().removeToken(str);
        } catch (SecException e) {
            e.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public String signMap(String str, TreeMap<String, String> treeMap) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : treeMap.entrySet()) {
            stringBuilder.append((String) entry.getKey()).append("=").append((String) entry.getValue()).append("&");
        }
        String substring = stringBuilder.substring(0, stringBuilder.length() - 1);
        Log.e("TAG", "map=" + substring);
        return a(str, substring);
    }

    private String a(String str, String str2) {
        try {
            return a().getSafeTokenComp().signWithToken(str, str2.getBytes("UTF-8"), 0);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (SecException e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public String decrypt(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            IDynamicDataEncryptComponent dynamicDataEncryptComp = a().getDynamicDataEncryptComp();
            if (dynamicDataEncryptComp != null) {
                CharSequence dynamicDecrypt = dynamicDataEncryptComp.dynamicDecrypt(str);
                if (TextUtils.isEmpty(dynamicDecrypt)) {
                    return str;
                }
                return dynamicDecrypt;
            }
            UTCustomHitBuilder uTCustomHitBuilder = new UTCustomHitBuilder("SessionManagerDecryptNull");
            uTCustomHitBuilder.setEventPage("Page_Extend");
            UTAnalytics.getInstance().getDefaultTracker().send(uTCustomHitBuilder.build());
            return "";
        } catch (Exception e) {
            UTCustomHitBuilder uTCustomHitBuilder2 = new UTCustomHitBuilder("SessionManagerDecryptException");
            uTCustomHitBuilder2.setEventPage("Page_Extend");
            UTAnalytics.getInstance().getDefaultTracker().send(uTCustomHitBuilder2.build());
            e.printStackTrace();
            return "";
        }
    }

    public String encode(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            IDynamicDataEncryptComponent dynamicDataEncryptComp = a().getDynamicDataEncryptComp();
            if (dynamicDataEncryptComp != null) {
                CharSequence dynamicEncrypt = dynamicDataEncryptComp.dynamicEncrypt(str);
                if (TextUtils.isEmpty(dynamicEncrypt)) {
                    return str;
                }
                return dynamicEncrypt;
            }
            UTCustomHitBuilder uTCustomHitBuilder = new UTCustomHitBuilder("SessionManagerEncryptNull");
            uTCustomHitBuilder.setEventPage("Page_Extend");
            UTAnalytics.getInstance().getDefaultTracker().send(uTCustomHitBuilder.build());
            return str;
        } catch (Exception e) {
            UTCustomHitBuilder uTCustomHitBuilder2 = new UTCustomHitBuilder("SessionManagerEncodeException");
            uTCustomHitBuilder2.setEventPage("Page_Extend");
            UTAnalytics.getInstance().getDefaultTracker().send(uTCustomHitBuilder2.build());
            e.printStackTrace();
            return str;
        }
    }
}
