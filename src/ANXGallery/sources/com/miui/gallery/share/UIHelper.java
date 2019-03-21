package com.miui.gallery.share;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.share.baby.BabyShareAlbumOwnerActivity;
import com.miui.gallery.share.baby.BabyShareAlbumSharerActivity;
import com.miui.gallery.util.ToastUtils;

public class UIHelper {
    public static void showAlbumShareInfo(Activity activity, Path path, int requestCode) {
        if (path != null) {
            Class<?> targetActivity;
            if (!CloudUtils.isActive(GalleryApp.sGetAndroidContext())) {
                ToastUtils.makeText((Context) activity, (int) R.string.no_network_connected);
            }
            Intent intent = null;
            if (path.isOtherShared()) {
                if (path.isBabyAlbum()) {
                    targetActivity = BabyShareAlbumSharerActivity.class;
                } else {
                    targetActivity = NormalShareAlbumSharerActivity.class;
                }
            } else if (path.isBabyAlbum()) {
                targetActivity = BabyShareAlbumOwnerActivity.class;
            } else {
                targetActivity = NormalShareAlbumOwnerActivity.class;
            }
            if (targetActivity != null) {
                intent = new Intent(activity, targetActivity);
                intent.putExtra("share_path", path.toString());
            }
            if (intent != null) {
                try {
                    activity.startActivityForResult(intent, requestCode);
                } catch (ActivityNotFoundException e) {
                }
            }
        }
    }

    public static void toastError(int err) {
        toastError(null, err);
    }

    public static void toastError(Context context, int err) {
        int resId = R.string.operation_failed;
        switch (err) {
            case -1002:
                resId = R.string.network_connected_rescan;
                break;
            case -112:
                resId = R.string.error_unknown_host;
                break;
            case -111:
                resId = R.string.error_socket_timeout;
                break;
            case -10:
                resId = R.string.operation_successful;
                break;
            case -9:
                resId = R.string.error_repeat_apply;
                break;
            case -4:
                resId = R.string.error_cloud_not_active;
                break;
            case 0:
                resId = R.string.operation_successful;
                break;
            case 50012:
                resId = R.string.error_album_not_exist;
                break;
            case 50019:
                resId = R.string.error_invalid_link;
                break;
            case 50025:
                resId = R.string.error_link_has_expired;
                break;
            case 50030:
                resId = R.string.error_share_with_creator;
                break;
        }
        if (context != null) {
            toast(context, context.getString(resId));
        }
    }

    public static void toast(int textId) {
        toast(GalleryApp.sGetAndroidContext().getString(textId));
    }

    private static void toast(CharSequence text) {
    }

    public static void toast(Context activity, CharSequence text) {
        ToastUtils.makeText(activity, text);
    }
}
