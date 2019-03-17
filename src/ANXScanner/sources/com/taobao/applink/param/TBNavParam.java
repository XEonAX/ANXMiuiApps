package com.taobao.applink.param;

import android.util.Log;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.taobao.applink.a.a;
import com.taobao.applink.exception.TBAppLinkException;
import com.taobao.applink.util.TBAppLinkUtil;
import com.taobao.applink.util.e;
import java.net.URLEncoder;
import java.util.Iterator;
import org.json.JSONObject;

public class TBNavParam extends TBBaseParam {
    public static final String ACTION_NAME = "ali.open.nav";

    protected TBNavParam() {
        super(a.JUMP);
        this.mParams.put("action", "ali.open.nav");
    }

    private void setExtraParams(JSONObject jSONObject) {
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String encode = URLEncoder.encode((String) keys.next(), "UTF-8");
                this.mExtraParams.put(encode, URLEncoder.encode(jSONObject.getString(encode), "UTF-8"));
            } catch (Throwable th) {
                Log.d(TBAppLinkUtil.TAG, th.toString());
            }
        }
    }

    public boolean checkParams(JSONObject jSONObject) {
        return false;
    }

    public String getH5URL() throws TBAppLinkException {
        return super.getH5URL(null);
    }

    public void setParams(JSONObject jSONObject) {
        if (jSONObject != null) {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    String encode = URLEncoder.encode((String) keys.next(), "UTF-8");
                    String encode2 = URLEncoder.encode(jSONObject.getString(encode), "UTF-8");
                    if (!e.a(encode2)) {
                        if (AppLinkConstants.E.equals(encode)) {
                            setE(encode2);
                        } else if ("type".equals(encode)) {
                            setType(encode2);
                        } else if (AppLinkConstants.PID.equals(encode)) {
                            this.mExtraParams.put(AppLinkConstants.PID, encode2);
                        } else if ("params".equals(encode)) {
                            encode = jSONObject.getString("params");
                            if (!e.a(encode)) {
                                setExtraParams(new JSONObject(encode));
                            }
                        } else {
                            this.mParams.put(encode, encode2);
                        }
                    }
                } catch (Throwable th) {
                    Log.d(TBAppLinkUtil.TAG, th.toString());
                }
            }
        }
    }
}
