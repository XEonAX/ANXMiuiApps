package miui.util.async.tasks;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import miui.util.AppConstants;
import miui.util.async.Cacheable;
import miui.util.async.Task;

public class ResourceBitmapTask extends Task<Bitmap> implements Cacheable {
    private int LL;
    private Options Lw;
    private String hO;

    public ResourceBitmapTask(int i) {
        this(i, null);
    }

    public ResourceBitmapTask(int i, Options options) {
        this.LL = i;
        this.Lw = options;
    }

    public String getDescription() {
        if (this.hO == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("resource_");
            stringBuilder.append(this.LL);
            this.hO = stringBuilder.toString();
        }
        return this.hO;
    }

    public Bitmap doLoad() throws Exception {
        FileBitmapTask.Lx.acquireUninterruptibly();
        try {
            Bitmap decodeResource = BitmapFactory.decodeResource(AppConstants.getCurrentApplication().getResources(), this.LL, this.Lw);
            return decodeResource;
        } finally {
            FileBitmapTask.Lx.release();
        }
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
}
