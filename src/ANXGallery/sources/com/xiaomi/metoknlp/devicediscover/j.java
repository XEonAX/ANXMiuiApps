package com.xiaomi.metoknlp.devicediscover;

import android.os.AsyncTask;
import com.xiaomi.metoknlp.a.b;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: DiscoverService */
class j extends AsyncTask {
    final /* synthetic */ m a;
    private boolean mRunning;

    private j(m mVar) {
        this.a = mVar;
        this.mRunning = true;
    }

    /* synthetic */ j(m mVar, a aVar) {
        this(mVar);
    }

    /* renamed from: a */
    protected String doInBackground(String... strArr) {
        if (this.mRunning) {
            try {
                return n(strArr[0]);
            } catch (Exception e) {
            }
        }
        return null;
    }

    protected void onCancelled() {
        this.mRunning = false;
    }

    /* renamed from: m */
    protected void onPostExecute(String str) {
        if (this.mRunning) {
            this.a.mHandler.sendMessage(this.a.mHandler.obtainMessage(3, str));
        }
    }

    private String n(String str) {
        String str2 = null;
        String a = b.a(str, str2);
        if (a == null) {
            return str2;
        }
        try {
            return new JSONObject(a).getString("real-ip");
        } catch (JSONException e) {
            return str2;
        }
    }
}
