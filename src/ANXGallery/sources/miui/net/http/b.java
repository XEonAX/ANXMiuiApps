package miui.net.http;

import java.util.Map;
import miui.net.http.Cache.Entry;
import miui.yellowpage.YellowPageContract.Cache;

class b {
    b() {
    }

    public static Entry a(HttpResponse httpResponse) {
        long E;
        long j;
        long E2;
        long currentTimeMillis = System.currentTimeMillis();
        Map headers = httpResponse.getHeaders();
        String str = (String) headers.get("date");
        if (str != null) {
            E = E(str);
        } else {
            E = 0;
        }
        str = (String) headers.get("cache-control");
        int i = 0;
        if (str != null) {
            String[] split = str.split(",");
            int length = split.length;
            j = 0;
            while (i < length) {
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(trim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    j = 0;
                }
                i++;
            }
            i = 1;
        } else {
            j = 0;
        }
        str = (String) headers.get("expires");
        if (str != null) {
            E2 = E(str);
        } else {
            E2 = 0;
        }
        String str2 = (String) headers.get(Cache.ETAG);
        if (str2 == null) {
            str2 = null;
        }
        if (i != 0) {
            currentTimeMillis += j * 1000;
        } else if (E <= 0 || E2 < E) {
            return null;
        } else {
            currentTimeMillis += E2 - E;
        }
        if (httpResponse.getContent() == null) {
            return null;
        }
        Entry entry = new Entry();
        entry.data = httpResponse.getContent();
        entry.length = httpResponse.getContentLength();
        entry.etag = str2;
        entry.softTtl = currentTimeMillis;
        entry.ttl = currentTimeMillis;
        entry.serverDate = E;
        entry.responseHeaders = httpResponse.getHeaders();
        return entry;
    }

    public static long E(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (IllegalArgumentException e) {
            return 0;
        }
    }
}
