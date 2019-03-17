package com.alipay.sdk.authjs;

import android.widget.Toast;
import com.alipay.sdk.authjs.a.a;
import com.taobao.ma.common.constants.MaConstants;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

final class e implements Runnable {
    final /* synthetic */ a a;
    final /* synthetic */ d b;

    e(d dVar, a aVar) {
        this.b = dVar;
        this.a = aVar;
    }

    public final void run() {
        int i;
        d dVar = this.b;
        a aVar = this.a;
        if (aVar != null && "toast".equals(aVar.k)) {
            JSONObject jSONObject = aVar.m;
            CharSequence optString = jSONObject.optString(MaConstants.UT_PARAM_KEY_CONTENT);
            int optInt = jSONObject.optInt("duration");
            i = 1;
            if (optInt < 2500) {
                i = 0;
            }
            Toast.makeText(dVar.b, optString, i).show();
            new Timer().schedule(new f(dVar, aVar), (long) i);
        }
        i = a.a;
        if (i != a.a) {
            try {
                this.b.a(this.a.i, i);
            } catch (JSONException e) {
            }
        }
    }
}
