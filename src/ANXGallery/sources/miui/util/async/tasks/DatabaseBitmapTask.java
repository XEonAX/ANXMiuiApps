package miui.util.async.tasks;

import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import miui.graphics.BitmapFactory;
import miui.util.async.Cacheable;

public class DatabaseBitmapTask extends ContentResolverQueryTask<Bitmap> implements Cacheable {
    private Options Lw;

    public DatabaseBitmapTask(Uri uri, String str, String str2, String[] strArr) {
        this(uri, str, str2, strArr, null);
    }

    public DatabaseBitmapTask(Uri uri, String str, String str2, String[] strArr, Options options) {
        String[] strArr2;
        if (str == null) {
            strArr2 = null;
        } else {
            strArr2 = new String[]{str};
        }
        super(uri, strArr2, str2, strArr, null);
        this.Lw = options;
    }

    public Bitmap doLoad() throws Exception {
        Cursor query = query();
        if (query != null) {
            try {
                if (query.moveToNext()) {
                    byte[] blob = query.getBlob(0);
                    if (blob == null) {
                        if (query != null) {
                            query.close();
                        }
                        return null;
                    }
                    FileBitmapTask.Lx.acquireUninterruptibly();
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(blob, 0, blob.length, this.Lw);
                    FileBitmapTask.Lx.release();
                    if (query != null) {
                        query.close();
                    }
                    return decodeByteArray;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
            }
        }
        if (query != null) {
            query.close();
        }
        return null;
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
