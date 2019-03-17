package com.alibaba.baichuan.trade.biz.alipay;

import android.app.Activity;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageBusManager;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import com.alibaba.baichuan.trade.common.utils.ReflectionUtils;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus;
import com.alipay.sdk.packet.d;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AlibcAlipay implements IAlibcAlipay {
    public static final String ALIPASDK_CLASS_NAME = "com.alipay.sdk.app.PayTask";
    public static final int PAY_COMMON_ERROR = 808;
    public static final int PAY_IN_PROGRESS = 804;
    public static final int PAY_NETWORK_FAILED = 807;
    public static final int PAY_ORDER_FAILED = 805;
    public static final int PAY_SDK_FAILED = 809;
    public static final String PAY_SUCCESS_CODE = "9000";
    public static final int PAY_USER_CANCEL = 806;
    public static final String TAG = "AlibcAlipay";
    private static volatile AlibcAlipay a = null;

    private AlibcAlipay() {
    }

    private AliPayResult a(ArrayList<String> arrayList) {
        NetworkResponse a = new f().a((List) arrayList);
        if (a == null || !a.isSuccess()) {
            a("160101", a == null ? "查询失败" : "code = " + a.errorCode + " ,errmsg=" + a.errorMsg);
        }
        return a == null ? null : f.a(a);
    }

    private String a(AlipayCallback alipayCallback, WebView webView, String str) {
        try {
            return (String) ReflectionUtils.invoke(ALIPASDK_CLASS_NAME, "pay", new String[]{"java.lang.String", "boolean"}, ReflectionUtils.newInstance(ALIPASDK_CLASS_NAME, new String[]{"android.app.Activity"}, new Object[]{webView.getContext()}), new Object[]{str, Boolean.TRUE});
        } catch (Exception e) {
            AlibcLogger.e(TAG, "调用ApliPaySDK失败" + e.getMessage());
            if (alipayCallback != null) {
                alipayCallback.a(PAY_SDK_FAILED, "使用Apliay SDK调用方法失败，请下载最新的ApliaySDK lib包或者使用H5方式付款");
            }
            AlibcTradeContext context = AlibcTradeContextManager.getContext(webView);
            boolean isClose = (context == null || context.showParam == null) ? true : context.showParam.isClose();
            if ((webView.getContext() instanceof Activity) && isClose) {
                ((Activity) webView.getContext()).finish();
            } else {
                AlibcMessageBusManager.getInstance().sendMessage(6001, webView);
            }
            return null;
        }
    }

    private String a(String str, String str2, String str3) {
        int indexOf = str.indexOf(str2) + str2.length();
        if (str3 == null) {
            return str.substring(indexOf);
        }
        try {
            return str.substring(indexOf, str.indexOf(str3));
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    private ArrayList<String> a(Uri uri) {
        Object queryParameter = uri.getQueryParameter("pay_order_id");
        ArrayList<String> arrayList = new ArrayList();
        if (!TextUtils.isEmpty(queryParameter)) {
            for (Object add : queryParameter.split(",")) {
                arrayList.add(add);
            }
        }
        return arrayList;
    }

    private void a() {
        AlibcUserTradeHelper.sendUseabilitySuccess("Pay_Result_Alipay");
    }

    private void a(AlipayCallback alipayCallback, WebView webView, AliPayResult aliPayResult) {
        if (alipayCallback != null) {
            ExecutorServiceUtils.getInstance().postUITask(new c(this, alipayCallback, aliPayResult, webView));
        }
    }

    private void a(AlipayCallback alipayCallback, String str, WebView webView) {
        AlibcLogger.e(TAG, "alipay支付失败");
        ExecutorServiceUtils.getInstance().postUITask(new b(this, str, alipayCallback, webView));
    }

    private void a(String str, String str2) {
        AlibcUserTradeHelper.sendUseabilityFailure("Pay_Result_Alipay", str2, str);
    }

    private static int b(String str) {
        try {
            switch (Integer.parseInt(str)) {
                case 4000:
                    return 805;
                case 6001:
                    return 806;
                case 6002:
                    return PAY_NETWORK_FAILED;
                case 8000:
                    return 804;
                case 10002:
                    return PAY_SDK_FAILED;
                default:
                    return PAY_COMMON_ERROR;
            }
        } catch (Exception e) {
            AlibcLogger.e(TAG, "fail to parse the response code " + str);
            return PAY_COMMON_ERROR;
        }
    }

    private String b(String str, String str2, String str3) {
        StringBuilder append = new StringBuilder("trade_no=\"").append(str).append("\"&extern_token=\"").append(str2).append("\"&partner=\"").append("PARTNER_TAOBAO_ORDER").append("\"");
        if (!TextUtils.isEmpty(str3)) {
            append.append("&payPhaseId=\"").append(str3).append("\"");
        }
        return append.toString();
    }

    public static synchronized AlibcAlipay getInstance() {
        AlibcAlipay alibcAlipay;
        synchronized (AlibcAlipay.class) {
            if (a == null) {
                a = new AlibcAlipay();
            }
            alibcAlipay = a;
        }
        return alibcAlipay;
    }

    public static AliPayResult parseAliPayResult(String str) {
        int i = 0;
        AliPayResult aliPayResult = new AliPayResult();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(d.k);
            JSONArray optJSONArray = jSONObject.optJSONArray("paySuccessOrders");
            if (optJSONArray != null) {
                List arrayList = new ArrayList(optJSONArray.length());
                aliPayResult.paySuccessOrders = arrayList;
                int length = optJSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add(optJSONArray.optString(i2));
                }
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("payFailedOrders");
            if (optJSONArray2 == null) {
                return aliPayResult;
            }
            List arrayList2 = new ArrayList(optJSONArray2.length());
            aliPayResult.payFailedOrders = arrayList2;
            int length2 = optJSONArray2.length();
            while (i < length2) {
                arrayList2.add(optJSONArray2.optString(i));
                i++;
            }
            return aliPayResult;
        } catch (JSONException e) {
            AlibcLogger.e("JSONUtils", e.toString());
            return null;
        }
    }

    public void init() {
        AlibcUrlBus.registInterceptor(d.a());
    }

    public boolean isAlipaySDKAvailable() {
        try {
            Class.forName(ALIPASDK_CLASS_NAME);
            return true;
        } catch (ClassNotFoundException e) {
            AlibcLogger.e(TAG, "Alipay SDK is not available");
            return false;
        }
    }

    public boolean openAlipay(AlipayCallback alipayCallback, WebView webView, String str) {
        if (!isAlipaySDKAvailable()) {
            return false;
        }
        Uri parse = Uri.parse(str);
        String queryParameter = parse.getQueryParameter("alipay_trade_no");
        if (queryParameter == null) {
            queryParameter = parse.getQueryParameter("trade_nos");
        }
        String queryParameter2 = parse.getQueryParameter("payPhaseId");
        if (queryParameter2 == null) {
            queryParameter2 = parse.getQueryParameter("pay_phase_id");
        }
        ExecutorServiceUtils.getInstance().postHandlerTask(new a(this, webView, alipayCallback, b(queryParameter, parse.getQueryParameter("s_id"), queryParameter2), parse));
        return true;
    }
}
