package com.miui.gallery.share;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.lib.MiuiGalleryUtils;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.nexstreaming.nexeditorsdk.nexExportFormat;

public class AlbumShareInvitationReceiver extends BroadcastReceiver {

    public static class AddListener implements OnCompletionListener<Void, Long> {
        private final int mOpt;
        private final OnCompletionListener<Path, String> mUpdateListener;

        public AddListener(int opt, OnCompletionListener<Path, String> updateListener) {
            this.mOpt = opt;
            this.mUpdateListener = updateListener;
        }

        public void onCompletion(Void key, Long data, int errorCode, boolean cancel) {
            Context context = GalleryApp.sGetAndroidContext();
            int opt = this.mOpt;
            if ((opt & 1) == 0 || data == null || data.longValue() != 0) {
            }
            if (!((opt & 2) == 0 || data == null || data.longValue() == 0)) {
                Intent intent = new Intent("com.miui.gallery.intent.action.CLOUD_VIEW");
                intent.setFlags(268435456);
                try {
                    context.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                }
            }
            if ((opt & 4) == 0 && (opt & 16) == 0) {
                if ((opt & 8) == 0) {
                    return;
                }
                if (data == null || data.longValue() == 0) {
                    UIHelper.toastError(-2);
                } else {
                    AlbumShareInvitationReceiver.openInvitation(CloudSharerMediaSet.buildPathById(data.longValue()), 0);
                }
            } else if (data != null && data.longValue() != 0) {
                final Path path = CloudSharerMediaSet.buildPathById(data.longValue());
                AlbumShareUIManager.updateShareUrlLongAuto(path, new OnCompletionListener<Path, Void>() {
                    public void onCompletion(Path key, Void data, int errorCode, boolean cancel) {
                        AddListener.this.mUpdateListener.onCompletion(path, null, errorCode, cancel);
                        Log.d("AlbumShareInvitationReceiver", "updateShareUrlLongAuto: error code=" + errorCode);
                    }
                }, this.mUpdateListener);
            }
        }
    }

    private static class UpdateListener implements OnCompletionListener<Path, String> {
        private UpdateListener() {
        }

        public void onCompletion(Path key, String data, int errorCode, boolean cancel) {
            if ((errorCode != 0 || data == null) && errorCode != -9) {
                UIHelper.toastError(errorCode);
            } else {
                AlbumShareInvitationReceiver.openInvitation(key, errorCode);
            }
        }
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.d("AlbumShareInvitationReceiver", "AlbumShareInvitationReceiveronReceive = " + action);
        if ("com.miui.gallery.ACTION_ALBUM_SHARE_INVITATION".equals(action)) {
            String url = intent.getStringExtra("invitation_url");
            String type = intent.getStringExtra("invitation_type");
            String title = intent.getStringExtra("invitation_title");
            String content = intent.getStringExtra("invitation_content");
            int opt = intent.getIntExtra("invitation_opt", 5);
            if (!MiuiGalleryUtils.isAlbumShareInvitationUrl(url)) {
                return;
            }
            if (ApplicationHelper.supportShare()) {
                handleInvitation(url, opt, type, title, content);
            } else {
                ToastUtils.makeText(context, (int) R.string.error_share_not_support);
            }
        }
    }

    protected void handleInvitation(String url, int opt, String type, String title, String content) {
        handleInvitation(url, opt, type, title, new AddListener(opt, new UpdateListener()));
    }

    public static void handleInvitation(String url, int opt, String type, String title, AddListener addListener) {
        AlbumShareUIManager.addInvitationToDBAsync(url, addListener);
    }

    private static void openInvitation(Path path, int errorCode) {
        Context context = GalleryApp.sGetAndroidContext();
        Intent intent = new Intent("com.miui.gallery.intent.action.OPEN_INVIATAION");
        intent.setPackage(context.getPackageName());
        intent.putExtra(nexExportFormat.TAG_FORMAT_PATH, path.toString());
        intent.putExtra("error_code", errorCode);
        context.sendOrderedBroadcast(intent, null);
    }
}
