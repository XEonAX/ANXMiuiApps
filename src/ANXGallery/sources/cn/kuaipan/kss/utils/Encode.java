package cn.kuaipan.kss.utils;

public class Encode {
    static final String[] HEXDIGITS = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

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
