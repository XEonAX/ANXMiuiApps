package mtopsdk.mtop.util;

public class MtopProxyConstant {
    public static final int MTOP_BIZID = 4099;
    public static String[] defaultEnvBaseUrls;

    static {
        r0 = new String[4];
        defaultEnvBaseUrls = r0;
        r0[0] = "acs4baichuan.m.taobao.com/";
        defaultEnvBaseUrls[1] = "api.wapa.taobao.com/";
        defaultEnvBaseUrls[2] = "api.waptest.taobao.com/";
        defaultEnvBaseUrls[3] = "acs.waptest2nd.taobao.com/";
    }
}
