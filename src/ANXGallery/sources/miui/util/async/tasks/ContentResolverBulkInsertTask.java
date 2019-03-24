package miui.util.async.tasks;

import android.content.ContentValues;
import android.net.Uri;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.async.Task;

public class ContentResolverBulkInsertTask extends Task<Integer> {
    private final ContentValues[] Lj;
    private String hO;
    private final Uri zX;

    public ContentResolverBulkInsertTask(Uri uri, ContentValues[] contentValuesArr) {
        this.zX = uri;
        this.Lj = contentValuesArr;
    }

    public String getDescription() {
        if (this.hO == null) {
            StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
            stringBuilder.append('[');
            if (this.Lj.length == 0) {
                stringBuilder.append("NULL");
            } else {
                stringBuilder.append(this.Lj[0]);
                int length = this.Lj.length;
                for (int i = 1; i < length; i++) {
                    stringBuilder.append("; ");
                    stringBuilder.append(this.Lj[i]);
                }
            }
            stringBuilder.append("]@");
            stringBuilder.append(this.zX);
            this.hO = stringBuilder.toString();
            C0014Pools.getStringBuilderPool().release(stringBuilder);
        }
        return this.hO;
    }

    public Integer doLoad() throws Exception {
        return Integer.valueOf(AppConstants.getCurrentApplication().getContentResolver().bulkInsert(this.zX, this.Lj));
    }
}
