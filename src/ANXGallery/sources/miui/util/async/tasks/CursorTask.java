package miui.util.async.tasks;

import android.database.Cursor;
import android.net.Uri;

public class CursorTask extends ContentResolverQueryTask<Cursor> {
    public CursorTask(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(uri, strArr, str, strArr2, str2);
    }

    public Cursor doLoad() throws Exception {
        return query();
    }
}
