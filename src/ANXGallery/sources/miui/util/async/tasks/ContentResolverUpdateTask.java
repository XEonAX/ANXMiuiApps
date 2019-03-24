package miui.util.async.tasks;

import android.content.ContentValues;
import android.net.Uri;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.async.Task;

public class ContentResolverUpdateTask extends Task<Integer> {
    private final String Lk;
    private final String[] Ll;
    private final ContentValues Lm;
    private String hO;
    private final Uri zX;

    public ContentResolverUpdateTask(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        this.zX = uri;
        this.Lm = contentValues;
        this.Lk = str;
        this.Ll = strArr;
    }

    public String getDescription() {
        if (this.hO == null) {
            if (this.Lk == null) {
                this.hO = this.zX.toString();
            } else {
                StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
                stringBuilder.append(this.zX.toString());
                stringBuilder.append(" WHERE ");
                if (this.Ll != null) {
                    stringBuilder.append('[');
                    stringBuilder.append(this.Ll[0]);
                    for (int i = 1; i < this.Ll.length; i++) {
                        stringBuilder.append(';');
                        stringBuilder.append(this.Ll[i]);
                    }
                    stringBuilder.append("]@");
                }
                stringBuilder.append(this.Lk);
                this.hO = stringBuilder.toString();
                C0014Pools.getStringBuilderPool().release(stringBuilder);
            }
        }
        return this.hO;
    }

    public Integer doLoad() throws Exception {
        return Integer.valueOf(AppConstants.getCurrentApplication().getContentResolver().update(this.zX, this.Lm, this.Lk, this.Ll));
    }
}
