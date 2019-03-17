package com.alibaba.baichuan.trade.biz.urlroute;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.utils.AlibcURLCheck;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class AlibcUriContext {
    private String a;
    private Map<String, List<String>> b = new LinkedHashMap();
    private String c;

    public AlibcUriContext(String str) {
        this.a = str;
        a();
    }

    private Map<String, List<String>> a(Map<String, String> map) {
        Map<String, List<String>> map2 = this.b;
        Map<String, List<String>> hashMap = map2 == null ? new HashMap() : map2;
        for (Entry entry : map.entrySet()) {
            if (!(TextUtils.isEmpty((CharSequence) entry.getKey()) || TextUtils.isEmpty((CharSequence) entry.getValue()) || hashMap.containsKey(entry.getKey()))) {
                List arrayList = new ArrayList(2);
                arrayList.add(entry.getValue());
                hashMap.put(entry.getKey(), arrayList);
            }
        }
        return hashMap;
    }

    private void a() {
        try {
            String uri = getUri();
            int indexOf = uri.indexOf("#");
            if (indexOf == -1) {
                this.c = null;
            } else if (indexOf != uri.length() - 1) {
                this.c = uri.substring(indexOf + 1);
            }
            int indexOf2 = uri.indexOf("?");
            this.b.clear();
            if (indexOf2 != -1 && indexOf2 != uri.length() - 1) {
                if (indexOf == -1 || indexOf2 < indexOf) {
                    for (String str : (indexOf == -1 ? uri.substring(indexOf2 + 1) : uri.substring(indexOf2 + 1, indexOf)).split("[\\&]")) {
                        if (!TextUtils.isEmpty(str)) {
                            int indexOf3 = str.indexOf(61);
                            if (!(indexOf3 == -1 || indexOf3 == str.length() - 1)) {
                                String decode = Uri.decode(str.substring(0, indexOf3));
                                String decode2 = Uri.decode(str.substring(indexOf3 + 1));
                                List list = (List) this.b.get(decode);
                                if (list == null) {
                                    list = new ArrayList(2);
                                    list.add(decode2);
                                    this.b.put(decode, list);
                                } else {
                                    list.add(decode2);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable e) {
            AlibcLogger.e("ui", "fail to parse the uri " + getUri(), e);
        }
    }

    private String b(Map<String, List<String>> map) {
        if (map == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = null;
        for (Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            int size = list.size();
            int i = 0;
            while (i < size) {
                if (obj != null) {
                    stringBuilder.append("&");
                } else {
                    obj = 1;
                }
                Object obj2 = obj;
                stringBuilder.append(Uri.encode((String) entry.getKey())).append("=").append(Uri.encode((String) list.get(i)));
                i++;
                obj = obj2;
            }
        }
        return stringBuilder.toString();
    }

    public static boolean isTradeAddParamURL(String str) {
        return AlibcURLCheck.regular.check(a.a, str);
    }

    public String getAddParamsUrl(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return this.a;
        }
        Map a = a(map);
        String uri = getUri();
        int indexOf = uri.indexOf("?");
        StringBuilder stringBuilder = new StringBuilder();
        if (indexOf != -1) {
            stringBuilder.append(uri.substring(0, indexOf));
        } else {
            indexOf = uri.indexOf("#");
            if (indexOf != -1) {
                stringBuilder.append(uri.subSequence(0, indexOf));
            } else {
                stringBuilder.append(uri);
            }
        }
        String b = b(a);
        if (b != null) {
            stringBuilder.append("?").append(b);
        }
        if (this.c != null) {
            stringBuilder.append("#").append(this.c);
        }
        return stringBuilder.toString();
    }

    public String getFragment() {
        return this.c;
    }

    public String getQueryParameter(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List list = (List) this.b.get(str);
        return (list == null || list.size() == 0) ? null : (String) list.get(0);
    }

    public String getUri() {
        return this.a;
    }
}
