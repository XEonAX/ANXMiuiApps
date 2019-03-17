package com.tencent.mm.opensdk.diffdev.a;

import com.tencent.mm.opensdk.utils.Log;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

public final class e {
    public static byte[] a(String str) {
        byte[] bArr = null;
        if (str == null || str.length() == 0) {
            Log.e("MicroMsg.SDK.NetUtil", "httpGet, url is null");
            return bArr;
        }
        HttpClient defaultHttpClient = new DefaultHttpClient();
        HttpUriRequest httpGet = new HttpGet(str);
        try {
            HttpConnectionParams.setSoTimeout(defaultHttpClient.getParams(), 60000);
            HttpResponse execute = defaultHttpClient.execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                return EntityUtils.toByteArray(execute.getEntity());
            }
            Log.e("MicroMsg.SDK.NetUtil", "httpGet fail, status code = " + execute.getStatusLine().getStatusCode());
            return bArr;
        } catch (Exception e) {
            Log.e("MicroMsg.SDK.NetUtil", "httpGet, Exception ex = " + e.getMessage());
            return bArr;
        } catch (IncompatibleClassChangeError e2) {
            Log.e("MicroMsg.SDK.NetUtil", "httpGet, IncompatibleClassChangeError ex = " + e2.getMessage());
            return bArr;
        } catch (Throwable th) {
            Log.e("MicroMsg.SDK.NetUtil", "httpGet, Throwable ex = " + th.getMessage());
            return bArr;
        }
    }
}
