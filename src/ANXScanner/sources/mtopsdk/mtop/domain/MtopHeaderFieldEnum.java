package mtopsdk.mtop.domain;

import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import mtopsdk.common.util.HttpHeaderConstant;

public enum MtopHeaderFieldEnum {
    ACT(HttpHeaderConstant.X_ACT, "accessToken"),
    WUAT(HttpHeaderConstant.X_WUAT, "wua"),
    SID(HttpHeaderConstant.X_SID, LoginConstants.SID),
    TIME(HttpHeaderConstant.X_T, LoginConstants.TIMESTAMP),
    APPKEY(HttpHeaderConstant.X_APPKEY, LoginConstants.KEY_APPKEY),
    TTID(HttpHeaderConstant.X_TTID, AlibcConstants.TTID),
    UTDID(HttpHeaderConstant.X_UTDID, "utdid"),
    SIGN(HttpHeaderConstant.X_SIGN, "sign"),
    PV(HttpHeaderConstant.X_PV, "pv"),
    UID(HttpHeaderConstant.X_UID, "uid"),
    MTOP_FEATURE(HttpHeaderConstant.X_FEATURES, HttpHeaderConstant.X_FEATURES),
    X_APP_VER(HttpHeaderConstant.X_APP_VER, HttpHeaderConstant.X_APP_VER),
    USER_AGENT(HttpHeaderConstant.USER_AGENT, HttpHeaderConstant.USER_AGENT);
    
    private String headField;
    private String xstateKey;

    private MtopHeaderFieldEnum(String str, String str2) {
        this.headField = str;
        this.xstateKey = str2;
    }

    public final String getHeadField() {
        return this.headField;
    }

    public final String getXstateKey() {
        return this.xstateKey;
    }
}
