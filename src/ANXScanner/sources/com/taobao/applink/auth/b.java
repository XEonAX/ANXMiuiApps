package com.taobao.applink.auth;

import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import com.taobao.applink.auth.userinfo.TBAppLinkUserInfo;
import com.taobao.applink.util.TBAppLinkUtil;

class b implements Callback {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public boolean handleMessage(Message message) {
        if (message != null) {
            switch (message.what) {
                case 11802:
                    TBAppLinkUserInfo tBAppLinkUserInfo = new TBAppLinkUserInfo();
                    Bundle data = message.getData();
                    if (data != null) {
                        tBAppLinkUserInfo.result = "true".equals(data.getString("result"));
                        if (tBAppLinkUserInfo.result) {
                            tBAppLinkUserInfo.mixedNick = data.getString("mixedNick");
                            tBAppLinkUserInfo.icon = data.getString("icon");
                            if (this.a.d != null) {
                                this.a.d.onSuccess(tBAppLinkUserInfo);
                            }
                        } else if (this.a.d != null) {
                            this.a.d.onFailure();
                        }
                        Log.d(TBAppLinkUtil.TAG, tBAppLinkUserInfo.toString());
                    } else if (this.a.d != null) {
                        this.a.d.onFailure();
                    }
                    this.a.d = null;
                    break;
            }
            if (TBAppLinkUtil.getApplication() != null) {
                TBAppLinkUtil.getApplication().unbindService(a.a);
            }
        }
        return false;
    }
}
