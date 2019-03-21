package com.miui.gallery.push.messagehandler;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class PushLandingActivity extends Activity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (intent != null) {
            Intent contentIntent = (Intent) intent.getParcelableExtra("notification_content_intent");
            int id = intent.getIntExtra("notification_content_id", 0);
            if (contentIntent != null) {
                try {
                    startActivity(contentIntent);
                } catch (Exception e) {
                    Log.e("PushLandingActivity", "failed to start activity: %s", contentIntent.getData());
                }
                Map param = new HashMap();
                param.put("pushContent", String.format(Locale.US, "%d_%s", new Object[]{Integer.valueOf(id), contentIntent.getDataString()}));
                GalleryStatHelper.recordCountEvent("push_notification", "notification_click", param);
            } else {
                Log.e("PushLandingActivity", "empty content intent");
            }
        }
        finish();
    }
}
