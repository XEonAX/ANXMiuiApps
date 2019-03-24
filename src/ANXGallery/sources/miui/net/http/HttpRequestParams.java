package miui.net.http;

import android.text.TextUtils;
import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import org.keyczar.Keyczar;

public class HttpRequestParams {
    public static String DEFAULT_ENCODING = Keyczar.DEFAULT_ENCODING;
    private ConcurrentHashMap<String, Object> Dn;
    private boolean Do;
    private String yx;

    static class FileWrapper {
        public InputStream Dp;
        public long Dq;
        public String Dr;
        public String contentType;

        public FileWrapper(InputStream inputStream, long j, String str, String str2) {
            this.Dp = inputStream;
            this.Dq = j;
            if (str == null) {
                str = "nofilename";
            }
            this.Dr = str;
            this.contentType = str2;
        }
    }

    public HttpRequestParams() {
        this.yx = DEFAULT_ENCODING;
        this.Dn = new ConcurrentHashMap();
        this.Do = false;
    }

    public HttpRequestParams(Object... objArr) {
        this();
        int length = objArr.length;
        if (length % 2 == 0) {
            int i = 0;
            while (i < length) {
                if (objArr[i] instanceof String) {
                    String str = (String) objArr[i];
                    Object obj = objArr[i + 1];
                    if (obj instanceof String) {
                        add(str, (String) obj);
                    } else if (obj instanceof File) {
                        add(str, (File) obj);
                    } else if (obj instanceof List) {
                        add(str, (List) obj);
                    } else {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Unknown argument type : ");
                        stringBuilder.append(obj);
                        throw new IllegalArgumentException(stringBuilder.toString());
                    }
                    i += 2;
                } else {
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("Unknown argument name : ");
                    stringBuilder2.append(objArr[i]);
                    throw new IllegalArgumentException(stringBuilder2.toString());
                }
            }
            return;
        }
        throw new IllegalArgumentException("Supplied argument must be even");
    }

    public HttpRequestParams setEncoding(String str) {
        if (str == null) {
            str = DEFAULT_ENCODING;
        }
        this.yx = str;
        return this;
    }

    public HttpRequestParams add(String str, String str2) {
        if (!(str == null || str2 == null)) {
            this.Dn.put(str, str2);
        }
        return this;
    }

    public HttpRequestParams add(String str, File file) {
        if (!(str == null || file == null)) {
            try {
                this.Dn.put(str, new FileWrapper(new FileInputStream(file), file.length(), file.getName(), null));
                this.Do = true;
            } catch (Throwable e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            }
        }
        return this;
    }

    public HttpRequestParams add(String str, File file, String str2) {
        if (!(str == null || file == null)) {
            try {
                this.Dn.put(str, new FileWrapper(new FileInputStream(file), file.length(), file.getName(), str2));
                this.Do = true;
            } catch (Throwable e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            }
        }
        return this;
    }

    public HttpRequestParams add(String str, List<String> list) {
        if (!(str == null || list == null || list.size() <= 0)) {
            this.Dn.put(str, list);
        }
        return this;
    }

    public HttpRequestParams add(String str, InputStream inputStream, long j, String str2) {
        if (!(str == null || inputStream == null || j < 0)) {
            this.Dn.put(str, new FileWrapper(inputStream, j, str2, null));
            this.Do = true;
        }
        return this;
    }

    public HttpRequestParams add(String str, InputStream inputStream, long j, String str2, String str3) {
        if (!(str == null || inputStream == null || j < 0)) {
            this.Dn.put(str, new FileWrapper(inputStream, j, str2, str3));
            this.Do = true;
        }
        return this;
    }

    public HttpRequestParams add(Map<String, String> map) {
        for (Entry entry : map.entrySet()) {
            add((String) entry.getKey(), (String) entry.getValue());
        }
        return this;
    }

    public HttpRequestParams remove(String str) {
        this.Dn.remove(str);
        return this;
    }

    public String getParamString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (Pair pair : cH()) {
            if (!TextUtils.isEmpty(stringBuilder)) {
                stringBuilder.append("&");
            }
            try {
                stringBuilder.append(URLEncoder.encode((String) pair.first, this.yx));
                stringBuilder.append("=");
                stringBuilder.append(URLEncoder.encode((String) pair.second, this.yx));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return stringBuilder.toString();
    }

    private List<Pair<String, String>> cH() {
        List<Pair<String, String>> linkedList = new LinkedList();
        for (Entry entry : this.Dn.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof String) {
                linkedList.add(new Pair(entry.getKey(), (String) value));
            } else if (value instanceof List) {
                for (String pair : (List) value) {
                    linkedList.add(new Pair(entry.getKey(), pair));
                }
            }
        }
        return linkedList;
    }
}
