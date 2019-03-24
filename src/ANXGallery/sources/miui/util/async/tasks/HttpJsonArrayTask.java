package miui.util.async.tasks;

import java.util.Map;
import miui.net.http.HttpSession;
import miui.util.async.tasks.HttpTask.Method;
import org.json.JSONArray;

public class HttpJsonArrayTask extends HttpTextTask<JSONArray> {
    public HttpJsonArrayTask(String str) {
        super(str);
    }

    public HttpJsonArrayTask(HttpSession httpSession, String str) {
        super(httpSession, str);
    }

    public HttpJsonArrayTask(HttpSession httpSession, Method method, String str, Map<String, String> map) {
        super(httpSession, method, str, map);
    }

    public JSONArray doLoad() throws Exception {
        return new JSONArray(requestText());
    }
}
