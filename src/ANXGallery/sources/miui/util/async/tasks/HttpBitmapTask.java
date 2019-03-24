package miui.util.async.tasks;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import java.util.Map;
import miui.graphics.BitmapFactory;
import miui.net.http.HttpResponse;
import miui.net.http.HttpSession;
import miui.util.async.Cacheable;
import miui.util.async.tasks.HttpTask.Method;

public class HttpBitmapTask extends HttpTask<Bitmap> implements Cacheable {
    private Options Lw;

    public HttpBitmapTask(String str) {
        this(null, Method.Get, str, null, null);
    }

    public HttpBitmapTask(HttpSession httpSession, String str) {
        this(httpSession, Method.Get, str, null, null);
    }

    public HttpBitmapTask(HttpSession httpSession, Method method, String str, Map<String, String> map) {
        this(httpSession, method, str, map, null);
    }

    public HttpBitmapTask(HttpSession httpSession, Method method, String str, Map<String, String> map, Options options) {
        super(httpSession, method, str, map);
        this.Lw = options;
    }

    public String getCacheKey() {
        return getDescription();
    }

    public int sizeOf(Object obj) {
        if (obj instanceof Bitmap) {
            return ((Bitmap) obj).getByteCount();
        }
        return 0;
    }

    public Bitmap doLoad() throws Exception {
        HttpResponse request = request();
        FileBitmapTask.Lx.acquireUninterruptibly();
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(request.getContent(), null, this.Lw);
            return decodeStream;
        } finally {
            request.release();
            FileBitmapTask.Lx.release();
        }
    }
}
