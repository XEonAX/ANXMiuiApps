package miui.util.async.tasks;

import java.util.Map;
import miui.net.http.HttpSession;
import miui.util.async.tasks.HttpTask.Method;

public class HttpStringTask extends HttpTextTask<String> {
    public HttpStringTask(String str) {
        this(null, Method.Get, str, null);
    }

    public HttpStringTask(HttpSession httpSession, String str) {
        this(httpSession, Method.Get, str, null);
    }

    public HttpStringTask(HttpSession httpSession, Method method, String str, Map<String, String> map) {
        super(httpSession, method, str, map);
    }

    public String doLoad() throws Exception {
        return requestText();
    }
}
