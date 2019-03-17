package mtopsdk.common.util;

public class StringUtils {
    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isNotBlank(String str) {
        return !isBlank(str);
    }

    public static boolean isBlank(String str) {
        if (str != null) {
            int length = str.length();
            if (length != 0) {
                for (int i = 0; i < length; i++) {
                    if (!Character.isWhitespace(str.charAt(i))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return true;
    }

    public static String concatStr(String str, String str2) {
        if (isBlank(str) || isBlank(str2)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str.trim());
        stringBuilder.append(SymbolExpUtil.SYMBOL_DOLLAR);
        stringBuilder.append(str2.trim());
        return stringBuilder.toString();
    }

    public static String concatStr2LowerCase(String str, String str2) {
        if (isBlank(str) || isBlank(str2)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str.trim());
        stringBuilder.append(SymbolExpUtil.SYMBOL_DOLLAR);
        stringBuilder.append(str2.trim());
        return stringBuilder.toString().toLowerCase();
    }

    public static String concatStr2LowerCase(String str, String... strArr) {
        if (isBlank(str) || strArr == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str.trim());
        if (strArr.length > 0) {
            for (String str2 : strArr) {
                if (isNotBlank(str2)) {
                    stringBuilder.append(SymbolExpUtil.SYMBOL_DOLLAR);
                    stringBuilder.append(str2.trim());
                }
            }
        }
        return stringBuilder.toString().toLowerCase();
    }

    public static String[] splitString(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (!isBlank(str2)) {
            return str.split(str2);
        }
        return new String[]{str2};
    }
}
