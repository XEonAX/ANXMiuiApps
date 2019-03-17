package mtopsdk.network.util;

import android.text.TextUtils;
import java.io.Closeable;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.network.util.Constants.Protocol;

public final class NetworkUtils {
    private NetworkUtils() {
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean invalidatesCache(String str) {
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals("PATCH");
    }

    public static boolean permitsRequestBody(String str) {
        return requiresRequestBody(str) || str.equals("OPTIONS") || str.equals("DELETE");
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
            }
        }
    }

    public static boolean checkContentEncodingGZip(Map<String, List<String>> map) {
        try {
            if (Protocol.GZIP.equalsIgnoreCase(getSingleHeaderFieldByKey(map, Protocol.CONTENT_ENCODING))) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public static List<String> getHeaderFieldByKey(Map<String, List<String>> map, String str) {
        if (map == null || map.isEmpty() || TextUtils.isEmpty(str)) {
            return null;
        }
        for (Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                return (List) entry.getValue();
            }
        }
        return null;
    }

    public static String getSingleHeaderFieldByKey(Map<String, List<String>> map, String str) {
        List headerFieldByKey = getHeaderFieldByKey(map, str);
        if (headerFieldByKey == null || headerFieldByKey.isEmpty()) {
            return null;
        }
        return (String) headerFieldByKey.get(0);
    }
}
