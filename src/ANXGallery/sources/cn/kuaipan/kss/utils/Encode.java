package cn.kuaipan.kss.utils;

import miui.provider.ExtraTelephony.Phonelist;
import miui.provider.MiCloudSmsCmd;

public class Encode {
    static final String[] HEXDIGITS = new String[]{"0", "1", "2", Phonelist.TYPE_VIP, Phonelist.TYPE_CLOUDS_BLACK, Phonelist.TYPE_CLOUDS_WHITE, Phonelist.TYPE_STRONG_CLOUDS_BLACK, "7", "8", "9", "a", "b", "c", MiCloudSmsCmd.TYPE_DISCARD_TOKEN, "e", "f"};

    public static String byteArrayToHexString(byte[] b) {
        if (b == null) {
            return null;
        }
        StringBuffer resultSb = new StringBuffer(b.length * 2);
        for (int i = 0; i < b.length; i++) {
            resultSb.append(HEXDIGITS[(b[i] >>> 4) & 15]);
            resultSb.append(HEXDIGITS[b[i] & 15]);
        }
        return resultSb.toString();
    }
}
