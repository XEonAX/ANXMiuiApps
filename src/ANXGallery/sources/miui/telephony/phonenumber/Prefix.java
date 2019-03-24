package miui.telephony.phonenumber;

import android.text.TextUtils;

public class Prefix {
    public static final String EMPTY = "";
    public static final String PREFIX_10193 = "10193";
    public static final String PREFIX_11808 = "11808";
    public static final String PREFIX_12520 = "12520";
    public static final String PREFIX_12583 = "12583";
    public static final String PREFIX_12593 = "12593";
    public static final String PREFIX_17900 = "17900";
    public static final String PREFIX_17901 = "17901";
    public static final String PREFIX_17908 = "17908";
    public static final String PREFIX_17909 = "17909";
    public static final String PREFIX_17911 = "17911";
    public static final String PREFIX_17950 = "17950";
    public static final String PREFIX_17951 = "17951";
    public static final String PREFIX_17960 = "17960";
    public static final String PREFIX_17961 = "17961";
    public static final String PREFIX_17968 = "17968";
    public static final String PREFIX_17969 = "17969";
    public static final String PREFIX_17990 = "17990";
    public static final String PREFIX_17991 = "17991";
    public static final String PREFIX_17995 = "17995";
    public static final String PREFIX_17996 = "17996";
    public static final String[] SMS_PREFIXES = new String[]{PREFIX_12520};

    public static String parse(StringBuffer buffer, int start, int length) {
        if (length <= 0) {
            return "";
        }
        switch (buffer.charAt(start)) {
            case '1':
                if (length > 4) {
                    char charAt = buffer.charAt(start + 1);
                    if (charAt != '7') {
                        switch (charAt) {
                            case '0':
                                if (buffer.charAt(start + 2) == '1' && buffer.charAt(start + 3) == '9' && buffer.charAt(start + 4) == '3') {
                                    return PREFIX_10193;
                                }
                            case '1':
                                if (buffer.charAt(start + 2) == '8' && buffer.charAt(start + 3) == '0' && buffer.charAt(start + 4) == '8') {
                                    return PREFIX_11808;
                                }
                            case '2':
                                if (buffer.charAt(start + 2) == '5') {
                                    if (buffer.charAt(start + 3) == '8' && buffer.charAt(start + 4) == '3') {
                                        return PREFIX_12583;
                                    }
                                    if (buffer.charAt(start + 3) == '9' && buffer.charAt(start + 4) == '3') {
                                        return PREFIX_12593;
                                    }
                                    if (buffer.charAt(start + 3) == '2' && buffer.charAt(start + 4) == '0') {
                                        return PREFIX_12520;
                                    }
                                }
                                break;
                        }
                    } else if (buffer.charAt(start + 2) == '9') {
                        if (buffer.charAt(start + 3) == '0' && buffer.charAt(start + 4) == '0') {
                            return PREFIX_17900;
                        }
                        if (buffer.charAt(start + 3) == '0' && buffer.charAt(start + 4) == '1') {
                            return PREFIX_17901;
                        }
                        if (buffer.charAt(start + 3) == '0' && buffer.charAt(start + 4) == '8') {
                            return PREFIX_17908;
                        }
                        if (buffer.charAt(start + 3) == '0' && buffer.charAt(start + 4) == '9') {
                            return PREFIX_17909;
                        }
                        if (buffer.charAt(start + 3) == '1' && buffer.charAt(start + 4) == '1') {
                            return PREFIX_17911;
                        }
                        if (buffer.charAt(start + 3) == '5' && buffer.charAt(start + 4) == '0') {
                            return PREFIX_17950;
                        }
                        if (buffer.charAt(start + 3) == '5' && buffer.charAt(start + 4) == '1') {
                            return PREFIX_17951;
                        }
                        if (buffer.charAt(start + 3) == '6' && buffer.charAt(start + 4) == '0') {
                            return PREFIX_17960;
                        }
                        if (buffer.charAt(start + 3) == '6' && buffer.charAt(start + 4) == '1') {
                            return PREFIX_17961;
                        }
                        if (buffer.charAt(start + 3) == '6' && buffer.charAt(start + 4) == '8') {
                            return PREFIX_17968;
                        }
                        if (buffer.charAt(start + 3) == '6' && buffer.charAt(start + 4) == '9') {
                            return PREFIX_17969;
                        }
                        if (buffer.charAt(start + 3) == '9' && buffer.charAt(start + 4) == '0') {
                            return PREFIX_17990;
                        }
                        if (buffer.charAt(start + 3) == '9' && buffer.charAt(start + 4) == '1') {
                            return PREFIX_17991;
                        }
                        if (buffer.charAt(start + 3) == '9' && buffer.charAt(start + 4) == '5') {
                            return PREFIX_17995;
                        }
                        if (buffer.charAt(start + 3) == '9' && buffer.charAt(start + 4) == '6') {
                            return PREFIX_17996;
                        }
                    }
                }
                break;
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
                if (length >= 10 && buffer.charAt(start + 1) == '0' && buffer.charAt(start + 2) >= '1' && buffer.charAt(start + 2) <= '9') {
                    return buffer.substring(start, start + 3);
                }
        }
        return "";
    }

    public static boolean isSmsPrefix(String prefix) {
        if (!TextUtils.isEmpty(prefix)) {
            for (String sms : SMS_PREFIXES) {
                if (sms.equals(prefix)) {
                    return true;
                }
            }
        }
        return false;
    }
}
