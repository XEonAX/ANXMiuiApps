package com.alibaba.baichuan.trade.biz.core.config;

import android.os.Handler;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigBusiness.ConfigPullCallback;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONException;
import org.json.JSONObject;

public class AlibcConfigService {
    public static final int DEFAULT_APPMONITOR_SAMPLING = 10000;
    public static final int DOUBLE_11_OPEN_TYPE_AUTO = 0;
    public static final int DOUBLE_11_OPEN_TYPE_H5 = 2;
    public static final int DOUBLE_11_OPEN_TYPE_NATIVE = 1;
    private static String b = "albbTradeConfig";
    public static String channel;
    private static AlibcConfigService e;
    Runnable a = new b(this);
    private final long c = 21600000;
    private final long d = 3600000;
    public long expiredTimeStamp = (System.currentTimeMillis() + 3600000);
    private AlibcConfigBusiness f;
    private AlibcConfigSPWrapper g = new AlibcConfigSPWrapper();
    private Handler h = new Handler();
    private AlibcConfig i = new AlibcConfig();
    public String isvVersion = "1.0.0";
    public AlibcTaokeParams taokeParams;

    class a implements ConfigPullCallback {
        a() {
        }

        public void onError(String str) {
        }

        public void onSuccess(AlibcConfigAdapter alibcConfigAdapter, String str) {
            AlibcConfigService.this.i.updateConfig(alibcConfigAdapter);
            AlibcConfigService.this.g.setConfigSPData(alibcConfigAdapter);
            AlibcUserTracker instance = AlibcUserTracker.getInstance();
            if (instance != null) {
                instance.setSampling(AlibcConfigService.this.getAppMonitorSampling());
            }
            synchronized (AlibcConfigService.class) {
                AlibcConfigService.this.expiredTimeStamp = System.currentTimeMillis() + 21600000;
                AlibcLogger.d("AlibcConfigService", "当前的时间为过期时间戳为" + AlibcConfigService.this.expiredTimeStamp);
            }
        }
    }

    private AlibcConfigService() {
        b();
    }

    private long a() {
        return (AlibcTradeCommon.getEnvironment() == null || !AlibcTradeCommon.getEnvironment().equals(Environment.PRE)) ? 1800000 : 15000;
    }

    private void b() {
        AlibcLogger.d("AlibcConfigService", "config设置默认值开始");
        if (this.g.getJSONConfigDo() != null) {
            AlibcLogger.d("AlibcConfigService", "configspwrapper有值");
            this.i.updateConfig(this.g.getJSONConfigDo());
            return;
        }
        AlibcLogger.d("AlibcConfigService", "读取本地配置文件");
        try {
            String str = "{  \"group0\": {    \"dataId\": \"com.alibaba.baichuan.nbcp.meta.default\",    \"group\": \"1.0.0\",    \"lastUpdate\": \"Jun 14, 2016 2:12:22 PM\",    \"sign\": \"\"  },  \"albbTradeConfig\": {    \"isSyncForTaoke\": \"YES\",    \"isForceH5\": \"NO\",    \"isNeedAlipay\": \"YES\",    \"loginDegarade\": \"NO\"  }}";
            AlibcLogger.d("AlibcConfigService", "本地配置文件的值为" + str);
            JSONObject jSONObject = new JSONObject(str);
            AlibcConfigAdapter alibcConfigAdapter = new AlibcConfigAdapter();
            alibcConfigAdapter.formatFromJSON(jSONObject);
            this.i.updateConfig(alibcConfigAdapter);
            AlibcLogger.d("AlibcConfigService", "读取本地配置文件成功");
        } catch (JSONException e) {
            AlibcLogger.e("AlibcConfigService", "本地默认配置文件解析错误" + e.getMessage());
        }
    }

    public static synchronized AlibcConfigService getInstance() {
        AlibcConfigService alibcConfigService;
        synchronized (AlibcConfigService.class) {
            if (e == null) {
                e = new AlibcConfigService();
            }
            alibcConfigService = e;
        }
        return alibcConfigService;
    }

    public int getAppMonitorSampling() {
        Object globalConfig = getGlobalConfig("sampling");
        if (!(globalConfig instanceof String)) {
            return 10000;
        }
        try {
            return Integer.parseInt((String) globalConfig);
        } catch (NumberFormatException e) {
            AlibcLogger.e("AlibcConfigService", e.toString());
            return 10000;
        }
    }

    public int getDouble11OpenType() {
        Object globalConfig = getGlobalConfig("double11OpenType");
        if (!(globalConfig instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) globalConfig);
        } catch (NumberFormatException e) {
            AlibcLogger.e("AlibcConfigService", e.toString());
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0059 A:{SYNTHETIC, Splitter: B:27:0x0059} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004b A:{SYNTHETIC, Splitter: B:19:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0059 A:{SYNTHETIC, Splitter: B:27:0x0059} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public String getFromAssets(String str) {
        InputStreamReader inputStreamReader;
        Throwable th;
        InputStreamReader inputStreamReader2;
        try {
            inputStreamReader2 = new InputStreamReader(AlibcTradeCommon.context.getResources().getAssets().open(str));
            try {
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader2);
                String str2 = "";
                str2 = "";
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    str2 = str2 + readLine;
                }
                if (inputStreamReader2 == null) {
                    return str2;
                }
                try {
                    inputStreamReader2.close();
                    return str2;
                } catch (IOException e) {
                    e.printStackTrace();
                    return str2;
                }
            } catch (Exception e2) {
                inputStreamReader = inputStreamReader2;
                try {
                    AlibcLogger.e("AlibcConfigService", "本地默认配置文件读取错误");
                    if (inputStreamReader != null) {
                    }
                    return null;
                } catch (Throwable th2) {
                    inputStreamReader2 = inputStreamReader;
                    th = th2;
                    if (inputStreamReader2 != null) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (inputStreamReader2 != null) {
                }
                throw th;
            }
        } catch (Exception e3) {
            inputStreamReader = null;
            AlibcLogger.e("AlibcConfigService", "本地默认配置文件读取错误");
            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader2 = null;
            if (inputStreamReader2 != null) {
                try {
                    inputStreamReader2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public Object getGlobalConfig(String str) {
        return str == null ? null : this.i.getConfigValue(b, str, null);
    }

    public Object getGlobalConfig(String str, Object obj) {
        return str == null ? null : this.i.getConfigValue(b, str, obj);
    }

    public String getGlobalIsvCode() {
        return getGlobalConfig("isvCode") != null ? (String) getGlobalConfig("isvCode") : null;
    }

    public AlibcTaokeParams getGlobalTaokeParams() {
        return this.taokeParams;
    }

    public Object getGroupConfig(String str, String str2) {
        return (str == null || str2 == null) ? null : this.i.getConfigValue(str, str2, null);
    }

    public Object getGroupConfig(String str, String str2, Object obj) {
        return (str == null || str2 == null) ? null : this.i.getConfigValue(str, str2, obj);
    }

    public boolean getIsEnabaleABTest() {
        return ((Boolean) getGlobalConfig("isEnableABTest", Boolean.valueOf(true))).booleanValue();
    }

    public boolean getIsSyncForTaoke() {
        return "YES".equals(getGlobalConfig("isSyncForTaoke"));
    }

    public boolean getIsTUnionMtopDegrade() {
        return ((Boolean) getGlobalConfig("isTUnionMtopDegrade", Boolean.valueOf(false))).booleanValue();
    }

    public String getIsvVersion() {
        return getGlobalConfig("isvVersion") != null ? (String) getGlobalConfig("isvVersion") : this.isvVersion;
    }

    public boolean getLoginDegarade(boolean z) {
        return StringUtils.obj2Boolean(getGlobalConfig("loginDegarade", Boolean.valueOf(z)));
    }

    public AlibcTaokeParams getTaokeParams() {
        return this.taokeParams;
    }

    public void init() {
        this.f = new AlibcConfigBusiness(AlibcTradeCommon.context, new a());
        startRepeatingLoadConfigTask();
    }

    public boolean isForceH5() {
        return "YES".equals(getGlobalConfig("isForceH5"));
    }

    public boolean needTaoke() {
        return "YES".equals(getGlobalConfig("isTaokeUT"));
    }

    public void setChangeSlickUrl(boolean z) {
        setGlobalConfig("IS_TAOKE_SCLICK", Boolean.valueOf(z));
    }

    public void setChannel(String str, String str2) {
        setGlobalConfig("channelType", str);
        setGlobalConfig("channelName", str2);
    }

    public boolean setGlobalConfig(String str, Object obj) {
        return setGroupConfig(b, str, obj);
    }

    public boolean setGroupConfig(String str, String str2, Object obj) {
        if (str == null || str2 == null || obj == null) {
            return false;
        }
        this.i.setConfigValue(str, str2, obj);
        return true;
    }

    public void setIsEnAbleABTest(boolean z) {
        this.i.addUpdateFilterKeys("isEnableABTest");
        setGlobalConfig("isEnableABTest", Boolean.valueOf(z));
    }

    public boolean setIsForceH5(boolean z) {
        this.i.addUpdateFilterKeys("isForceH5");
        return setGlobalConfig("isForceH5", z ? "YES" : "NO");
    }

    public boolean setIsSyncForTaoke(boolean z) {
        this.i.addUpdateFilterKeys("isSyncForTaoke");
        return setGlobalConfig("isSyncForTaoke", z ? "YES" : "NO");
    }

    public void setIsTUnionMtopDegrade(boolean z) {
        this.i.addUpdateFilterKeys("isTUnionMtopDegrade");
        setGlobalConfig("isTUnionMtopDegrade", Boolean.valueOf(z));
    }

    public boolean setIsvCode(String str) {
        this.i.addUpdateFilterKeys("isvCode");
        return setGlobalConfig("isvCode", str);
    }

    public boolean setIsvVersion(String str) {
        this.i.addUpdateFilterKeys("isvVersion");
        return setGlobalConfig("isvVersion", str);
    }

    public boolean setShouldUseAlipay(boolean z) {
        this.i.addUpdateFilterKeys("isNeedAlipay");
        return setGlobalConfig("isNeedAlipay", z ? "YES" : "NO");
    }

    public void setTaokeParams(AlibcTaokeParams alibcTaokeParams) {
        if (alibcTaokeParams != null) {
            setGlobalConfig(AppLinkConstants.PID, alibcTaokeParams.pid);
            setGlobalConfig("subPid", alibcTaokeParams.subPid);
            setGlobalConfig(AppLinkConstants.UNIONID, alibcTaokeParams.unionId);
            this.taokeParams = alibcTaokeParams;
        }
    }

    public boolean shouldUseAlipay(boolean z) {
        return StringUtils.obj2Boolean(getGlobalConfig("isNeedAlipay", Boolean.valueOf(z)));
    }

    public void startRepeatingLoadConfigTask() {
        this.a.run();
    }
}
