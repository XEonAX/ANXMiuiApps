package com.alibaba.baichuan.android.trade;

import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.JSONUtils;
import java.util.Map;
import org.json.JSONObject;

public class AlibcUrlCenter {
    public static final String URL_CONFIG = "{\n    \"Release\": {\n        \"trade.tmallTradeItemUrlHost\": \"https://detail.m.tmall.com/item.htm\",\n        \"trade.taobaoTradeItemUrlHost\": \"https://h5.m.taobao.com/cm/snap/index.html\",\n        \"trade.taobaoMobileTradeItemUrlHost\": \"https://h5.m.taobao.com/awp/core/detail.htm\",\n        \"trade.miniTaobaoItemUrlHost\": \"https://h5.m.taobao.com/trade/detail.html\",\n        \"trade.myCardCouponsUrl\": \"https://h5.m.taobao.com/vip/portal.html\",\n        \"trade.myOrdersUrl\": \"https://h5.m.taobao.com/mlapp/olist.html\",\n        \"trade.eTicketDetailUrl\": \"https://bendi.m.taobao.com/coupon/q/eticket_detail.htm?isArchive=false\",\n        \"trade.promotionsUrl\": \"https://ff.win.taobao.com?des=promotions&cc=tae\",\n        \"trade.shopUrlHost\": \"https://shop.m.taobao.com/shop/shop_index.htm\",\n        \"trade.cartUrl\": \"https://h5.m.taobao.com/mlapp/cart.html\"\n    },\n    \"PreRelease\": {\n        \"trade.promotionsUrl\": \"http://ff.win.taobao.com?des=promotions&cc=tae\"\n    },\n    \"Daily\": {\n        \"trade.promotionsUrl\": \"http://ff.win.daily.taobao.net?des=promotions&cc=tae\"\n    }\n}";
    public static final AlibcUrlCenter instance = new AlibcUrlCenter();
    public String TAG = "AlibcUrlCenter";
    Map<String, Object> a;
    Map<String, Object> b;
    Map<String, Object> c;

    private AlibcUrlCenter() {
        a();
    }

    private void a() {
        try {
            JSONObject jSONObject = new JSONObject(URL_CONFIG);
            JSONObject jSONObject2 = jSONObject.getJSONObject("Release");
            JSONObject jSONObject3 = jSONObject.getJSONObject("PreRelease");
            jSONObject = jSONObject.getJSONObject("Daily");
            this.a = JSONUtils.toMap(jSONObject2);
            this.b = JSONUtils.toMap(jSONObject3);
            this.c = JSONUtils.toMap(jSONObject);
        } catch (Exception e) {
            AlibcLogger.e(this.TAG, "URLCenter初始化失败");
        }
    }

    public String getValue(String str, Environment environment) {
        String str2 = null;
        String str3;
        switch (environment) {
            case ONLINE:
                return (String) this.a.get(str);
            case PRE:
                str3 = (String) this.b.get(str);
                if (str3 != null) {
                    return str3;
                }
                str3 = (String) this.a.get(str);
                str3 = str3 == null ? null : str3.replace(".m.taobao.com", ".wapa.taobao.com");
                return str3 == null ? null : str3.replace("https://", "http://");
            case TEST:
                str3 = (String) this.c.get(str);
                if (str3 != null) {
                    return str3;
                }
                str3 = (String) this.a.get(str);
                str3 = str3 == null ? null : str3.replace(".m.taobao.com", ".waptest.taobao.com");
                if (str3 != null) {
                    str2 = str3.replace("https://", "http://");
                }
                return str2;
            default:
                return null;
        }
    }
}
