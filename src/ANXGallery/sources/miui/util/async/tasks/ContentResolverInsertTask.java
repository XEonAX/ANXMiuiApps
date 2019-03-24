package miui.util.async.tasks;

import android.content.ContentValues;
import android.net.Uri;
import miui.util.AppConstants;
import miui.util.async.Task;

public class ContentResolverInsertTask extends Task<Uri> {
    private final ContentValues Lm;
    private String hO;
    private final Uri zX;

    public ContentResolverInsertTask(Uri uri, ContentValues contentValues) {
        this.zX = uri;
        this.Lm = contentValues;
    }

    public String getDescription() {
        if (this.hO == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.Lm.toString());
            stringBuilder.append('@');
            stringBuilder.append(this.zX);
            this.hO = stringBuilder.toString();
        }
        return this.hO;
    }

    public Uri doLoad() throws Exception {
        return AppConstants.getCurrentApplication().getContentResolver().insert(this.zX, this.Lm);
    }
}
