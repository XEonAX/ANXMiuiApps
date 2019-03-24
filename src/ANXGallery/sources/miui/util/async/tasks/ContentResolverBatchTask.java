package miui.util.async.tasks;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import java.util.ArrayList;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.async.Task;

public class ContentResolverBatchTask extends Task<ContentProviderResult[]> {
    private final String Lh;
    private final ArrayList<ContentProviderOperation> Li;
    private String hO;

    public ContentResolverBatchTask(String str, ArrayList<ContentProviderOperation> arrayList) {
        this.Lh = str;
        this.Li = arrayList;
    }

    public String getDescription() {
        if (this.hO == null) {
            StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
            stringBuilder.append('[');
            if (this.Li.size() == 0) {
                stringBuilder.append("NULL");
            } else {
                stringBuilder.append(this.Li.get(0));
                int size = this.Li.size();
                for (int i = 1; i < size; i++) {
                    stringBuilder.append("; ");
                    stringBuilder.append(this.Li.get(i));
                }
            }
            stringBuilder.append("]@");
            stringBuilder.append(this.Lh);
            this.hO = stringBuilder.toString();
            C0014Pools.getStringBuilderPool().release(stringBuilder);
        }
        return this.hO;
    }

    public ContentProviderResult[] doLoad() throws Exception {
        return AppConstants.getCurrentApplication().getContentResolver().applyBatch(this.Lh, this.Li);
    }
}
