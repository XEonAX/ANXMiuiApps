package com.miui.gallery.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.gallery.data.BackgroundJobService;
import com.miui.gallery.util.Log;
import java.util.ArrayList;

public class DeleteImageReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("com.miui.gallery.intent.action.DELETE_IMAGE_BY_SHA1".equals(action)) {
            try {
                ArrayList<String> sha1List = intent.getStringArrayListExtra("image-sha1-list");
                if (sha1List != null && !sha1List.isEmpty()) {
                    String[] sha1s = new String[sha1List.size()];
                    sha1List.toArray(sha1s);
                    BackgroundJobService.startJobDeleteImageBySha1(context, sha1s, true);
                }
            } catch (Exception e) {
                Log.w("DeleteImageReceiver", "error params");
            }
        } else if ("com.miui.gallery.intent.action.DELETE_IMAGE_BY_PATH".equals(action)) {
            try {
                ArrayList<String> pathList = intent.getStringArrayListExtra("image-path-list");
                if (pathList != null && !pathList.isEmpty()) {
                    String[] paths = new String[pathList.size()];
                    pathList.toArray(paths);
                    BackgroundJobService.startJobDeleteImageByPath(context, paths);
                }
            } catch (Exception e2) {
                Log.w("DeleteImageReceiver", "error params");
            }
        }
    }
}
