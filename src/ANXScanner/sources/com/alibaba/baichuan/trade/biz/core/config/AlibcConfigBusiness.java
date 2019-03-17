package com.alibaba.baichuan.trade.biz.core.config;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.AlibcTradeBiz;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlibcCodeUtils;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import com.alibaba.baichuan.trade.common.utils.network.NetworkUtils;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Map;

public class AlibcConfigBusiness {
    public static final String CHECK_GROUP_NAME = "group0";
    public static final String EM_ANALYSE_FAILURE = "解析错误";
    public static final String EM_CHECK_FAILURE = "校验错误";
    public static final String EM_NETWORK_ERROR = "网络错误";
    public static final String MD5_SALT = "ALITRADE20160628";
    public static final String SIGN_KEY = "sign";
    public static final String UTF_8 = "UTF-8";
    private String a = e();
    private Context b;
    private ConfigPullCallback c;
    private final long d = 5000000;

    public interface ConfigPullCallback {
        void onError(String str);

        void onSuccess(AlibcConfigAdapter alibcConfigAdapter, String str);
    }

    public AlibcConfigBusiness(Context context, ConfigPullCallback configPullCallback) {
        this.b = context;
        this.c = configPullCallback;
        b();
    }

    private void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(EM_CHECK_FAILURE)) {
                AlibcUserTradeHelper.sendUseabilityFailure("Fetch_Config", EM_CHECK_FAILURE, "130101");
            } else if (str.equals(EM_ANALYSE_FAILURE)) {
                AlibcUserTradeHelper.sendUseabilityFailure("Fetch_Config", EM_ANALYSE_FAILURE, "130102");
            }
        }
    }

    private void a(String str, String str2) {
        AlibcUserTradeHelper.sendUseabilityFailure("Fetch_Config", "网络错误", "1301" + str);
    }

    private boolean a(AlibcConfigAdapter alibcConfigAdapter) {
        if (alibcConfigAdapter.removeCheckGroup()) {
            String b = b(alibcConfigAdapter);
            alibcConfigAdapter.restoreCheckGroup();
            Map map = (Map) alibcConfigAdapter.config.get("group0");
            if (map != null) {
                String str = (String) map.get("sign");
                if (str != null && str.equals(b)) {
                    return true;
                }
            }
        }
        return false;
    }

    private String b(AlibcConfigAdapter alibcConfigAdapter) {
        StringBuilder stringBuilder = new StringBuilder();
        for (String str : alibcConfigAdapter.config.keySet()) {
            stringBuilder.append(str);
            Map map = (Map) alibcConfigAdapter.config.get(str);
            for (String str2 : map.keySet()) {
                stringBuilder.append(str2).append((String) map.get(str2));
            }
        }
        try {
            stringBuilder.append(MD5_SALT);
            char[] toCharArray = stringBuilder.toString().toCharArray();
            Arrays.sort(toCharArray);
            return AlibcCodeUtils.md5Digest(new String(toCharArray).getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            AlibcLogger.e("AlibcConfigBusiness", "生成摘要错误" + e.getMessage());
            return null;
        }
    }

    private void b() {
        this.a = e();
    }

    private void c() {
        ExecutorServiceUtils.getInstance().postDelayTask(new a(this), 2000);
    }

    private void d() {
        AlibcUserTradeHelper.sendUseabilitySuccess("Fetch_Config");
    }

    private static String e() {
        String str;
        switch (AlibcTradeCommon.getEnvironment()) {
            case PRE:
                str = "http://100.69.205.47/%s/%s/%s/meta.htm?plat=android";
                break;
            case TEST:
                str = "http://100.69.205.47/%s/%s/%s/meta.htm?plat=android";
                break;
            default:
                str = "https://nbsdk-baichuan.alicdn.com/%s/%s/%s/meta.htm?plat=android";
                break;
        }
        return String.format(str, new Object[]{AlibcTradeBiz.systemVersion, AlibcTradeCommon.getAppKey(), "1.0.0"});
    }

    public void startProcessor() {
        AlibcLogger.d("AlibcConfigBusiness", "开启拉取网络配置");
        if (NetworkUtils.isNetworkAvaiable(this.b)) {
            c();
            return;
        }
        this.c.onError("没有网络，无法拉取config配置");
        AlibcLogger.i("AlibcConfigBusiness", "没有网络，无法拉取config配置");
    }
}
