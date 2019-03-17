package com.alimama.tunion.trade;

import android.content.Context;
import android.text.TextUtils;
import com.alimama.tunion.trade.abtest.TUnionABTestService;
import com.alimama.tunion.trade.abtest.TUnionABTestValue;
import com.alimama.tunion.trade.base.ITUnionAppLink;
import com.alimama.tunion.trade.base.ITUnionCommon;
import com.alimama.tunion.trade.base.ITUnionCookie;
import com.alimama.tunion.trade.base.ITUnionNetwork;
import com.alimama.tunion.trade.base.ITUnionNetworkMtop;
import com.alimama.tunion.trade.base.ITUnionNetworkURL;
import com.alimama.tunion.trade.base.ITUnionUT;
import com.alimama.tunion.trade.base.ITUnionWebView;
import com.alimama.tunion.trade.convert.TUnionConvertCallback;
import com.alimama.tunion.trade.convert.TUnionConvertService;
import com.alimama.tunion.trade.convert.TUnionJumpType;
import com.alimama.tunion.trade.convert.TUnionMediaParams;
import java.util.HashMap;
import java.util.Map;

public final class TUnionTradeSDK {
    private static TUnionTradeSDK e;
    private static Context f;
    private final Map<Class<?>, Object> a = new HashMap();
    private final Map<Class<?>, Object> b = new HashMap();
    private String c;
    private String d;

    private TUnionTradeSDK() {
        a(TUnionABTestService.class, new TUnionABTestService());
        a(TUnionConvertService.class, new TUnionConvertService());
    }

    public static void init(Context context) {
        if (context != null) {
            f = context.getApplicationContext();
            return;
        }
        throw new RuntimeException("Context不能为空");
    }

    public static TUnionTradeSDK getInstance() {
        if (e == null) {
            synchronized (TUnionTradeSDK.class) {
                if (e == null) {
                    e = new TUnionTradeSDK();
                }
            }
        }
        return e;
    }

    public static Context getContext() {
        return f;
    }

    public TUnionConvertService getConvertService() {
        return (TUnionConvertService) this.a.get(TUnionConvertService.class);
    }

    public TUnionABTestService getABTestService() {
        return (TUnionABTestService) this.a.get(TUnionABTestService.class);
    }

    <T> void a(Class<T> cls, T t) {
        this.a.put(cls, t);
    }

    public <T> T getService(Class<T> cls) {
        T t = this.a.get(cls);
        return t != null ? t : null;
    }

    public <T> void register(Class<T> cls, T t) {
        this.b.put(cls, t);
        if (t == null) {
            return;
        }
        if (t instanceof ITUnionCommon) {
            ITUnionCommon iTUnionCommon = (ITUnionCommon) t;
            if (TextUtils.isEmpty(iTUnionCommon.getAdzoneId()) || TextUtils.isEmpty(iTUnionCommon.getAppKey())) {
                throw new RuntimeException("adzoneId，appKey 不能为空");
            }
            this.c = iTUnionCommon.getAdzoneId();
            this.d = iTUnionCommon.getAppKey();
            this.b.put(ITUnionCommon.class, t);
        } else if (t instanceof ITUnionNetwork) {
            if (t instanceof ITUnionNetworkMtop) {
                this.b.put(ITUnionNetworkMtop.class, t);
            } else if (t instanceof ITUnionNetworkURL) {
                this.b.put(ITUnionNetworkURL.class, t);
            }
            getABTestService().startInitialFetch();
        }
    }

    public ITUnionCommon getTUnionCommon() {
        return (ITUnionCommon) this.b.get(ITUnionCommon.class);
    }

    public ITUnionCookie getTUnionCookie() {
        return (ITUnionCookie) this.b.get(ITUnionCookie.class);
    }

    private ITUnionNetworkURL a() {
        return (ITUnionNetworkURL) this.b.get(ITUnionNetworkURL.class);
    }

    private ITUnionNetworkMtop b() {
        return (ITUnionNetworkMtop) this.b.get(ITUnionNetworkMtop.class);
    }

    public ITUnionNetwork getTUnionNetwork() {
        ITUnionNetworkURL a = a();
        ITUnionNetwork b = b();
        return (b == null || !b.getMtopEnabled()) ? a : b;
    }

    public ITUnionUT getTUnionUT() {
        return (ITUnionUT) this.b.get(ITUnionUT.class);
    }

    public ITUnionWebView getTUnionWebView() {
        return (ITUnionWebView) this.b.get(ITUnionWebView.class);
    }

    public ITUnionAppLink getITUnionAppLink() {
        return (ITUnionAppLink) this.b.get(ITUnionAppLink.class);
    }

    public String getAdzoneId() {
        return this.c;
    }

    public String getAppkey() {
        return this.d;
    }

    public void convertURL(TUnionJumpType tUnionJumpType, ITUnionWebView iTUnionWebView, String str, TUnionMediaParams tUnionMediaParams, TUnionConvertCallback tUnionConvertCallback) {
        TUnionConvertService convertService = getConvertService();
        if (convertService != null) {
            convertService.convert(tUnionJumpType, iTUnionWebView, str, tUnionMediaParams, tUnionConvertCallback);
        }
    }

    public TUnionABTestValue isJumpServiceOn() {
        TUnionABTestService aBTestService = getInstance().getABTestService();
        if (aBTestService != null) {
            return aBTestService.isJumpServiceOn();
        }
        return TUnionABTestValue.INVALID;
    }

    public void enableABTest(boolean z) {
        TUnionABTestService aBTestService = getABTestService();
        if (aBTestService != null) {
            aBTestService.enable(z);
        }
    }

    public boolean isABTestEnabled() {
        TUnionABTestService aBTestService = getABTestService();
        if (aBTestService != null) {
            return aBTestService.isEnabled();
        }
        return false;
    }

    public String getUA() {
        return String.format("AliApp(TUnionSDK/%s)", new Object[]{"0.3.4"});
    }
}
