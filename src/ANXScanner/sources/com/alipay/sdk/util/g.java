package com.alipay.sdk.util;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.alipay.android.app.IRemoteServiceCallback.Stub;
import com.xiaomi.scanner.util.AppUtil;

final class g extends Stub {
    final /* synthetic */ e a;

    g(e eVar) {
        this.a = eVar;
    }

    public final boolean isHideLoadingScreen() throws RemoteException {
        return false;
    }

    public final void payEnd(boolean z, String str) throws RemoteException {
    }

    public final void startActivity(String str, String str2, int i, Bundle bundle) throws RemoteException {
        Intent intent = new Intent(AppUtil.INTENT_ACTION_MAIN, null);
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            bundle.putInt("CallingPid", i);
            intent.putExtras(bundle);
        } catch (Exception e) {
        }
        intent.setClassName(str, str2);
        if (this.a.a != null) {
            this.a.a.startActivity(intent);
        }
    }
}
