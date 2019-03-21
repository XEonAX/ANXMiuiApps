package com.miui.gallery.share;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import java.lang.ref.WeakReference;

public class AlbumShareInvitationActivityBase extends Activity {

    protected static class OnBlockMessageCancelled implements OnCancelListener {
        private final WeakReference<Activity> mActivityRef;

        public OnBlockMessageCancelled(Activity a) {
            this.mActivityRef = new WeakReference(a);
        }

        public void onCancel(DialogInterface dialog) {
            Activity a = (Activity) this.mActivityRef.get();
            if (a != null) {
                a.finish();
            }
        }
    }

    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(17170445);
    }
}
