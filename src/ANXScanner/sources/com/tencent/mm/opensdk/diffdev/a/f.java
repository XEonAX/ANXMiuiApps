package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import com.ali.auth.third.core.rpc.protocol.RpcException.ErrorCode;
import com.alibaba.wireless.security.SecExceptionCode;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import com.tencent.mm.opensdk.utils.Log;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONObject;

final class f extends AsyncTask<Void, Void, a> {
    private OAuthListener l;
    private String o;
    private int u;
    private String url;

    static class a {
        public OAuthErrCode n;
        public String v;
        public int w;

        a() {
        }

        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static a b(byte[] bArr) {
            a aVar = new a();
            if (bArr == null || bArr.length == 0) {
                Log.e("MicroMsg.SDK.NoopingResult", "parse fail, buf is null");
                aVar.n = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, SymbolExpUtil.CHARSET_UTF8));
                        aVar.w = jSONObject.getInt("wx_errcode");
                        Log.d("MicroMsg.SDK.NoopingResult", String.format("nooping uuidStatusCode = %d", new Object[]{Integer.valueOf(aVar.w)}));
                        switch (aVar.w) {
                            case 402:
                                aVar.n = OAuthErrCode.WechatAuth_Err_Timeout;
                                break;
                            case 403:
                                aVar.n = OAuthErrCode.WechatAuth_Err_Cancel;
                                break;
                            case SecExceptionCode.SEC_ERROR_DYN_ENC_GET_DATA_FILE_KEY_FAILED /*404*/:
                                aVar.n = OAuthErrCode.WechatAuth_Err_OK;
                                break;
                            case SecExceptionCode.SEC_ERROR_DYN_ENC_GET_ENCRYPT_KEY_FAILED /*405*/:
                                aVar.n = OAuthErrCode.WechatAuth_Err_OK;
                                aVar.v = jSONObject.getString("wx_code");
                                break;
                            case ErrorCode.API_UNAUTHORIZED /*408*/:
                                aVar.n = OAuthErrCode.WechatAuth_Err_OK;
                                break;
                            case 500:
                                aVar.n = OAuthErrCode.WechatAuth_Err_NormalErr;
                                break;
                            default:
                                aVar.n = OAuthErrCode.WechatAuth_Err_NormalErr;
                                break;
                        }
                    } catch (Exception e) {
                        Log.e("MicroMsg.SDK.NoopingResult", String.format("parse json fail, ex = %s", new Object[]{e.getMessage()}));
                        aVar.n = OAuthErrCode.WechatAuth_Err_NormalErr;
                    }
                } catch (Exception e2) {
                    Log.e("MicroMsg.SDK.NoopingResult", String.format("parse fail, build String fail, ex = %s", new Object[]{e2.getMessage()}));
                    aVar.n = OAuthErrCode.WechatAuth_Err_NormalErr;
                }
            }
            return aVar;
        }
    }

    public f(String str, OAuthListener oAuthListener) {
        this.o = str;
        this.l = oAuthListener;
        this.url = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", new Object[]{str});
    }

    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        a aVar;
        if (this.o == null || this.o.length() == 0) {
            Log.e("MicroMsg.SDK.NoopingTask", "run fail, uuid is null");
            aVar = new a();
            aVar.n = OAuthErrCode.WechatAuth_Err_NormalErr;
            return aVar;
        }
        while (!isCancelled()) {
            String str = this.url + (this.u == 0 ? "" : "&last=" + this.u);
            long currentTimeMillis = System.currentTimeMillis();
            byte[] a = e.a(str);
            long currentTimeMillis2 = System.currentTimeMillis();
            aVar = a.b(a);
            Log.d("MicroMsg.SDK.NoopingTask", String.format("nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)", new Object[]{str, aVar.n.toString(), Integer.valueOf(aVar.w), Long.valueOf(currentTimeMillis2 - currentTimeMillis)}));
            if (aVar.n == OAuthErrCode.WechatAuth_Err_OK) {
                this.u = aVar.w;
                if (aVar.w == g.UUID_SCANED.getCode()) {
                    this.l.onQrcodeScanned();
                } else if (aVar.w != g.UUID_KEEP_CONNECT.getCode() && aVar.w == g.UUID_CONFIRM.getCode()) {
                    if (aVar.v != null && aVar.v.length() != 0) {
                        return aVar;
                    }
                    Log.e("MicroMsg.SDK.NoopingTask", "nooping fail, confirm with an empty code!!!");
                    aVar.n = OAuthErrCode.WechatAuth_Err_NormalErr;
                    return aVar;
                }
            }
            Log.e("MicroMsg.SDK.NoopingTask", String.format("nooping fail, errCode = %s, uuidStatusCode = %d", new Object[]{aVar.n.toString(), Integer.valueOf(aVar.w)}));
            return aVar;
        }
        Log.i("MicroMsg.SDK.NoopingTask", "IDiffDevOAuth.stopAuth / detach invoked");
        aVar = new a();
        aVar.n = OAuthErrCode.WechatAuth_Err_Auth_Stopped;
        return aVar;
    }

    protected final /* synthetic */ void onPostExecute(Object obj) {
        a aVar = (a) obj;
        this.l.onAuthFinish(aVar.n, aVar.v);
    }
}
