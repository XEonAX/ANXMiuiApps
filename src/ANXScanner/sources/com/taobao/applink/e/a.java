package com.taobao.applink.e;

import android.util.Log;
import com.taobao.applink.param.TBAuthParam;
import com.taobao.applink.param.TBBaseParam;
import com.taobao.applink.param.TBDetailParam;
import com.taobao.applink.param.TBNavParam;
import com.taobao.applink.param.TBShopParam;
import com.taobao.applink.param.TBURIParam;
import com.taobao.applink.util.TBAppLinkUtil;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class a {
    private static Map a = new HashMap();

    static {
        a.put("jumpShop", TBShopParam.class);
        a.put("jumpDetail", TBDetailParam.class);
        a.put("jumpH5", TBURIParam.class);
        a.put("doAuth", TBAuthParam.class);
        a.put("jumpNav", TBNavParam.class);
    }

    public static TBBaseParam a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            try {
                Constructor declaredConstructor = ((Class) a.get(jSONObject.getString("method"))).getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                TBBaseParam tBBaseParam = (TBBaseParam) declaredConstructor.newInstance(new Object[0]);
                if (!tBBaseParam.checkParams(jSONObject)) {
                    return null;
                }
                tBBaseParam.setParams(jSONObject);
                return tBBaseParam;
            } catch (Throwable th) {
                Log.d(TBAppLinkUtil.TAG, th.toString());
                return null;
            }
        } catch (JSONException e) {
            Log.d(TBAppLinkUtil.TAG, e.toString());
            return null;
        }
    }
}
