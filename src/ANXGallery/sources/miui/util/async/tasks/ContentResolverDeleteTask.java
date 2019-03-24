package miui.util.async.tasks;

import android.net.Uri;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.async.Task;

public class ContentResolverDeleteTask extends Task<Integer> {
    private final String Lk;
    private final String[] Ll;
    private String hO;
    private final Uri zX;

    public ContentResolverDeleteTask(Uri uri, String str, String[] strArr) {
        this.zX = uri;
        this.Lk = str;
        this.Ll = strArr;
    }

    public String getDescription() {
        if (this.hO == null) {
            if (this.Lk == null) {
                this.hO = this.zX.toString();
            } else {
                StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
                stringBuilder.append(this.zX);
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
        return Integer.valueOf(AppConstants.getCurrentApplication().getContentResolver().delete(this.zX, this.Lk, this.Ll));
    }
}
