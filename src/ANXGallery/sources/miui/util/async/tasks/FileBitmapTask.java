package miui.util.async.tasks;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import java.util.concurrent.Semaphore;
import miui.graphics.BitmapFactory;
import miui.util.async.Cacheable;
import miui.util.async.Task;

public class FileBitmapTask extends Task<Bitmap> implements Cacheable {
    static final Semaphore Lx = new Semaphore(2);
    private Options Lw;
    private String Ly;

    public FileBitmapTask(String str) {
        this(str, null);
    }

    public FileBitmapTask(String str, Options options) {
        this.Ly = str;
        this.Lw = options;
    }

    public String getDescription() {
        return this.Ly;
    }

    public Bitmap doLoad() throws Exception {
        Lx.acquireUninterruptibly();
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(this.Ly, this.Lw);
            return decodeFile;
        } finally {
            Lx.release();
        }
    }

    public String getCacheKey() {
        return this.Ly;
    }

    public int sizeOf(Object obj) {
        if (obj instanceof Bitmap) {
            return ((Bitmap) obj).getByteCount();
        }
        return 0;
    }
}
