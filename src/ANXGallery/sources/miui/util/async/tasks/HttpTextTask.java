package miui.util.async.tasks;

import java.nio.charset.Charset;
import java.util.Map;
import miui.net.http.HttpResponse;
import miui.net.http.HttpSession;
import miui.util.IOUtils;
import miui.util.async.tasks.HttpTask.Method;
import org.keyczar.Keyczar;

public abstract class HttpTextTask<T> extends HttpTask<T> {
    public HttpTextTask(String str) {
        this(null, Method.Get, str, null);
    }

    public HttpTextTask(HttpSession httpSession, String str) {
        this(httpSession, Method.Get, str, null);
    }

    public HttpTextTask(HttpSession httpSession, Method method, String str, Map<String, String> map) {
        super(httpSession, method, str, map);
    }

    protected final String requestText() throws Exception {
        HttpResponse request = request();
        String contentEncoding = request.getContentEncoding();
        if (contentEncoding == null || contentEncoding.length() <= 0) {
            byte[] toByteArray = IOUtils.toByteArray(request.getContent());
            contentEncoding = new String(toByteArray, Charset.forName(d(toByteArray)));
        } else {
            contentEncoding = IOUtils.toString(request.getContent(), contentEncoding.toUpperCase());
        }
        request.release();
        return contentEncoding;
    }

    static String d(byte[] bArr) {
        int indexOf;
        int i = 500;
        if (bArr.length <= 500) {
            i = bArr.length;
        }
        String toUpperCase = new String(bArr, 0, i, Charset.forName(Keyczar.DEFAULT_ENCODING)).toUpperCase();
        if (toUpperCase.indexOf("CONTENT-TYPE") >= 0) {
            i = toUpperCase.lastIndexOf(10);
            if (i < 0) {
                i = 0;
            }
            indexOf = toUpperCase.indexOf(10);
            if (indexOf < 0) {
                indexOf = toUpperCase.length();
            }
            toUpperCase = toUpperCase.substring(i, indexOf);
        } else {
            toUpperCase = null;
        }
        if (toUpperCase != null) {
            toUpperCase = toUpperCase.toUpperCase();
            indexOf = toUpperCase.indexOf("CHARSET=");
            if (indexOf >= 0) {
                StringBuilder stringBuilder = new StringBuilder();
                for (indexOf += 8; indexOf < toUpperCase.length(); indexOf++) {
                    char charAt = toUpperCase.charAt(indexOf);
                    if (charAt == '\'' || charAt == '\"' || charAt == ' ') {
                        stringBuilder.append(charAt);
                    }
                }
                return stringBuilder.toString();
            }
        }
        return Keyczar.DEFAULT_ENCODING;
    }
}
