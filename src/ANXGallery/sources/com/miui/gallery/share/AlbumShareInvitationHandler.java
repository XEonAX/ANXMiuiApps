package com.miui.gallery.share;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.share.AlbumShareInvitationReceiver.AddListener;
import com.miui.gallery.share.AlbumShareUIManager.BlockMessage;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.util.SyncUtil;
import java.lang.ref.WeakReference;

public class AlbumShareInvitationHandler {

    private static class AbsListener {
        protected final WeakReference<Activity> mActivityRef;
        protected final boolean mFinishActivity;

        public AbsListener(Activity activity, boolean finishActivity) {
            this.mActivityRef = new WeakReference(activity);
            this.mFinishActivity = finishActivity;
        }

        protected void tryToFinishActivity() {
            if (this.mFinishActivity) {
                Activity a = (Activity) this.mActivityRef.get();
                if (a != null) {
                    a.finish();
                }
            }
        }

        protected static void removeNotification() {
            ((NotificationManager) GalleryApp.sGetAndroidContext().getSystemService("notification")).cancel(1);
        }
    }

    private static class AcceptListener extends AbsListener implements OnCompletionListener<Path, Long> {
        public AcceptListener(Activity activity, boolean finishActivity) {
            super(activity, finishActivity);
        }

        public void onCompletion(Path key, Long data, int errorCode, boolean cancel) {
            AbsListener.removeNotification();
            if (errorCode == -1003) {
                tryToFinishActivity();
                return;
            }
            if (cancel) {
                UIHelper.toast((int) R.string.cancel_hint);
            } else {
                UIHelper.toastError(errorCode);
            }
            Activity a;
            if (errorCode == -4) {
                a = (Activity) this.mActivityRef.get();
                if (a != null) {
                    AlbumShareInvitationHandler.startCloudPage(a);
                }
            } else {
                Path path = null;
                if (errorCode == 0) {
                    path = key;
                } else if (!(errorCode != -10 || data == null || data.longValue() == 0)) {
                    path = CloudSharerMediaSet.buildPathById(data.longValue());
                }
                if (path != null) {
                    a = (Activity) this.mActivityRef.get();
                    if (a != null) {
                        AlbumShareInvitationHandler.startShareAlbumView(a, path);
                    }
                }
            }
            tryToFinishActivity();
        }
    }

    private static class AlreadyApplyListener extends AbsListener implements OnCancelListener, OnClickListener {
        private final Path mPath;

        public AlreadyApplyListener(Activity activity, Path path, boolean finishActivity) {
            super(activity, finishActivity);
            this.mPath = path;
        }

        public void onCancel(DialogInterface dialog) {
            AbsListener.removeNotification();
            tryToFinishActivity();
        }

        public void onClick(DialogInterface dialog, int which) {
            AbsListener.removeNotification();
            tryToFinishActivity();
            switch (which) {
                case -1:
                    Activity a = (Activity) this.mActivityRef.get();
                    if (a != null) {
                        AlbumShareInvitationHandler.startShareAlbumView(a, this.mPath);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private static class ApplyListener extends AbsListener implements OnCompletionListener<Path, Void> {
        private boolean mNeedAlert;

        public ApplyListener(Activity activity, boolean finishActivity, boolean needAlert) {
            super(activity, finishActivity);
            this.mNeedAlert = needAlert;
        }

        public void onCompletion(Path key, Void data, int errorCode, boolean cancel) {
            if (this.mNeedAlert) {
                UIHelper.toastError(errorCode);
            }
            Activity a = (Activity) this.mActivityRef.get();
            if (a == null) {
                return;
            }
            if (errorCode != -9) {
                a.finish();
            } else if (this.mNeedAlert) {
                AlreadyApplyListener alreadyApplyListener = new AlreadyApplyListener(a, key, this.mFinishActivity);
            } else {
                AbsListener.removeNotification();
                tryToFinishActivity();
                AlbumShareInvitationHandler.startShareAlbumView(a, key);
            }
        }
    }

    private static class CancelListener extends AbsListener implements OnCancelListener {
        public CancelListener(Activity activity, boolean finishActivity) {
            super(activity, finishActivity);
        }

        public void onCancel(DialogInterface dialog) {
            tryToFinishActivity();
        }
    }

    private static class DenyListener extends AbsListener implements OnCompletionListener<Path, Void> {
        public DenyListener(Activity activity, boolean finishActivity) {
            super(activity, finishActivity);
        }

        public void onCompletion(Path key, Void data, int errorCode, boolean cancel) {
            AbsListener.removeNotification();
            tryToFinishActivity();
        }
    }

    public static void applyToShareAlbum(Activity a, Path path, boolean finishActivity, BlockMessage msgWhenUpdate) {
        AlbumShareUIManager.applyToShareAlbum(a, path, new ApplyListener(a, finishActivity, true), new AcceptListener(a, finishActivity), new DenyListener(a, finishActivity), new CancelListener(a, finishActivity), msgWhenUpdate, true);
    }

    public static void acceptShareInvitation(final Activity activity, String url, int opt, final BlockMessage msgWhenUpdate) {
        AlbumShareInvitationReceiver.handleInvitation(url, opt, null, null, new AddListener(opt, new OnCompletionListener<Path, String>() {
            public void onCompletion(Path key, String data, int errorCode, boolean cancel) {
                if ((errorCode != 0 || data == null) && errorCode != -9) {
                    UIHelper.toastError(activity, errorCode);
                    activity.finish();
                    return;
                }
                AlbumShareUIManager.applyToShareAlbum(activity, key, new ApplyListener(activity, true, false), new AcceptListener(activity, true), null, new CancelListener(activity, true), msgWhenUpdate, false);
            }
        }));
    }

    public static void acceptShareInvitation(Activity activity, Path path) {
        AlbumShareUIManager.tryToAccept(path, activity, new AcceptListener(activity, true), new CancelListener(activity, true), null);
    }

    private static void startShareAlbumView(Activity activity, Path path) {
        String action;
        if (TextUtils.isEmpty(path.getMediaSet().getSharerInfo())) {
            action = "com.miui.gallery.action.VIEW_SHARED_ALBUM";
        } else {
            action = "com.miui.gallery.action.VIEW_SHARED_BABY_ALBUM";
        }
        Intent intent = new Intent(action);
        intent.setFlags(268435456);
        intent.putExtra("album_id", ShareAlbumManager.getUniformAlbumId(path.getId()));
        intent.putExtra("album_name", path.getMediaSet().getDisplayName());
        intent.putExtra("other_share_album", true);
        try {
            activity.startActivity(intent);
            SyncUtil.requestSync(GalleryApp.sGetAndroidContext());
        } catch (ActivityNotFoundException e) {
        }
    }

    private static void startCloudPage(Activity activity) {
        Intent intent = new Intent("com.miui.gallery.action.VIEW_ALBUM");
        intent.setFlags(67108864);
        try {
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e) {
        }
    }
}
