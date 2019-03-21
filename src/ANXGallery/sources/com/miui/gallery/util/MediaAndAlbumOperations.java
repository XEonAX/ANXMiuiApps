package com.miui.gallery.util;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.picker.helper.Picker.ImageType;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.MediaOperationService;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AddRemoveFavoritesTask;
import com.miui.gallery.ui.AddRemoveSecretDialogFragment;
import com.miui.gallery.ui.AddToAlbumDialogFragment;
import com.miui.gallery.ui.AddToAlbumDialogFragment.OnAlbumSelectedListener;
import com.miui.gallery.ui.AlertDialogFragment.Builder;
import com.miui.gallery.ui.CopyMoveDialogFragment;
import com.miui.gallery.ui.DeleteMediaDialogFragment;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.ui.DeletionTask.Param;
import com.miui.gallery.ui.ProduceCreationDialog;
import com.miui.gallery.ui.ProduceCreationDialog.OnOperationSelectedListener;
import java.util.ArrayList;
import java.util.List;

public class MediaAndAlbumOperations {

    public interface OnCompleteListener {
        void onComplete(long[] jArr);
    }

    public interface OnAddAlbumListener {
        void onComplete(long[] jArr, boolean z);
    }

    public static void addToSecretAlbum(final Activity activity, final OnCompleteListener listener, final long... ids) {
        if (BaseDocumentProviderUtils.needRequestExternalSDCardPermission(activity)) {
            DocumentProviderUtils.startExtSDCardPermissionActivityForResult(activity);
            return;
        }
        Resources res = activity.getResources();
        new Builder().setTitle(res.getString(R.string.add_secret_ensure_title)).setMessage(res.getQuantityString(R.plurals.add_secret_ensure_message, ids.length)).setNegativeButton(res.getString(R.string.cancel), null).setPositiveButton(res.getString(R.string.ok), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                AddRemoveSecretDialogFragment.add(activity, listener, ids);
            }
        }).create().showAllowingStateLoss(activity.getFragmentManager(), "ensureSecret");
    }

    public static void doProduceCreation(final Activity activity, final OnCompleteListener listener, final List<CheckedItem> checkedItems) {
        ProduceCreationDialog produceCreationDialog = new ProduceCreationDialog();
        produceCreationDialog.setOnOperationSelectedListener(new OnOperationSelectedListener() {
            public boolean onOperationSelected(int ops) {
                ImageType imageType = ImageType.THUMBNAIL;
                switch (ops) {
                    case 0:
                        imageType = ImageType.THUMBNAIL;
                        BaseSamplingStatHelper.recordCountEvent("creation", "creation_click_collage");
                        break;
                    case 1:
                        imageType = ImageType.THUMBNAIL;
                        BaseSamplingStatHelper.recordCountEvent("creation", "creation_click_photomovie");
                        break;
                    case 2:
                        imageType = ImageType.ORIGIN_OR_DOWNLOAD_INFO;
                        BaseSamplingStatHelper.recordCountEvent("creation", "creation_click_print");
                        break;
                }
                if (!ProduceCreationDialog.checkCreationCondition(activity, ops, checkedItems)) {
                    return false;
                }
                IntentUtil.doCreation(activity, ops, checkedItems, imageType);
                if (listener != null) {
                    listener.onComplete(null);
                }
                return true;
            }
        });
        produceCreationDialog.showAllowingStateLoss(activity.getFragmentManager(), "ProduceCreationDialog");
    }

    public static void addToSecretAlbum(final Activity activity, final OnCompleteListener listener, final ArrayList<Uri> uris) {
        if (BaseDocumentProviderUtils.needRequestExternalSDCardPermission(activity)) {
            DocumentProviderUtils.startExtSDCardPermissionActivityForResult(activity);
            return;
        }
        Resources res = activity.getResources();
        new Builder().setTitle(res.getString(R.string.add_secret_ensure_title)).setMessage(res.getQuantityString(R.plurals.add_secret_ensure_message, uris.size())).setNegativeButton(res.getString(R.string.cancel), null).setPositiveButton(res.getString(R.string.ok), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                AddRemoveSecretDialogFragment.add(activity, listener, uris);
            }
        }).create().showAllowingStateLoss(activity.getFragmentManager(), "ensureSecret");
    }

    public static void removeFromSecretAlbum(final Activity activity, final OnCompleteListener listener, final long... ids) {
        AddToAlbumDialogFragment dialog = new AddToAlbumDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("show_copy_or_move", false);
        bundle.putBoolean("show_share_album", false);
        bundle.putBoolean("show_add_secret", false);
        dialog.setArguments(bundle);
        dialog.setOnAlbumSelectedListener(new OnAlbumSelectedListener() {
            public void onAlbumSelected(long albumId, boolean deleteOrigin) {
                AddRemoveSecretDialogFragment.remove(activity, listener, albumId, ids);
            }
        });
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "AddToAlbumDialogFragment");
    }

    public static void addToAlbum(final Activity activity, final OnAddAlbumListener listener, final ArrayList<Uri> uris, boolean canRemove, boolean canAddSecret) {
        AddToAlbumDialogFragment dialog = new AddToAlbumDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("show_copy_or_move", canRemove);
        bundle.putBoolean("show_share_album", true);
        bundle.putBoolean("show_add_secret", canAddSecret);
        dialog.setArguments(bundle);
        dialog.setOnAlbumSelectedListener(new OnAlbumSelectedListener() {
            public void onAlbumSelected(long albumId, boolean deleteOrigin) {
                if (albumId == -1000) {
                    MediaAndAlbumOperations.addToSecretAlbum(activity, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            if (listener != null) {
                                listener.onComplete(result, true);
                            }
                        }
                    }, uris);
                    return;
                }
                if (deleteOrigin && ShareAlbumManager.isOtherShareAlbumId(albumId)) {
                    ToastUtils.makeText(activity, (int) R.string.add_to_share_album_not_delete);
                    deleteOrigin = false;
                }
                CopyMoveDialogFragment.show(activity, albumId, uris, deleteOrigin, listener);
            }
        });
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "AddToAlbumDialogFragment");
    }

    public static void addToAlbum(Activity activity, OnAddAlbumListener listener, int dupType, boolean canRemove, boolean canAddSecret, long... ids) {
        addToAlbum(activity, listener, dupType, canRemove, false, canAddSecret, ids);
    }

    public static void addToAlbum(Activity activity, OnAddAlbumListener listener, int dupType, boolean canRemove, boolean operateSync, boolean canAddSecret, long... ids) {
        AddToAlbumDialogFragment dialog = new AddToAlbumDialogFragment();
        Bundle bundle = new Bundle();
        String str = "show_copy_or_move";
        boolean z = !hasOtherShareMedia(ids) && canRemove;
        bundle.putBoolean(str, z);
        bundle.putBoolean("show_share_album", true);
        bundle.putBoolean("show_add_secret", canAddSecret);
        dialog.setArguments(bundle);
        final Activity activity2 = activity;
        final OnAddAlbumListener onAddAlbumListener = listener;
        final long[] jArr = ids;
        final int i = dupType;
        final boolean z2 = operateSync;
        dialog.setOnAlbumSelectedListener(new OnAlbumSelectedListener() {
            public void onAlbumSelected(long albumId, boolean deleteOrigin) {
                if (albumId == -1000) {
                    MediaAndAlbumOperations.addToSecretAlbum(activity2, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            if (onAddAlbumListener != null) {
                                onAddAlbumListener.onComplete(result, true);
                            }
                        }
                    }, jArr);
                    return;
                }
                if (deleteOrigin && ShareAlbumManager.isOtherShareAlbumId(albumId)) {
                    ToastUtils.makeText(activity2, (int) R.string.add_to_share_album_not_delete);
                    deleteOrigin = false;
                }
                CopyMoveDialogFragment.show(activity2, albumId, jArr, i, deleteOrigin, onAddAlbumListener, z2);
            }
        });
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "AddToAlbumDialogFragment");
    }

    public static void delete(Activity activity, String tag, OnDeletionCompleteListener listener, long albumId, String albumName, int dupType, int deleteReason, long... ids) {
        if (activity != null && !activity.isFinishing()) {
            DeleteMediaDialogFragment fragment = DeleteMediaDialogFragment.newInstance(new Param(ids, dupType, albumId, albumName, deleteReason));
            fragment.setOnDeletionCompleteListener(listener);
            fragment.showAllowingStateLoss(activity.getFragmentManager(), tag);
        }
    }

    public static void deleteInService(Context context, int deleteOptions, int deleteReason, String... filePaths) {
        Intent intent = new Intent(context, MediaOperationService.class);
        intent.putExtra(MediaOperationService.EXTRA_METHOD, "delete");
        Bundle args = new Bundle();
        args.putInt("delete_by", 1);
        args.putStringArray("extra_paths", filePaths);
        args.putInt("extra_delete_options", deleteOptions);
        args.putInt("extra_delete_reason", deleteReason);
        intent.putExtra(MediaOperationService.EXTRA_BUNDLE, args);
        context.startService(intent);
    }

    private static boolean hasOtherShareMedia(long[] ids) {
        for (long id : ids) {
            if (ShareMediaManager.isOtherShareMediaId(id)) {
                return true;
            }
        }
        return false;
    }

    public static void doChangeShowInPhotosTab(Context context, long albumId, boolean showInPhotosTab) {
        CloudUtils.updateAlbumAttributes(context, Cloud.CLOUD_URI, albumId, 4, showInPhotosTab, true);
    }

    public static void doHideOrUnhide(Context context, long albumId, boolean hide) {
        Context context2 = context;
        CloudUtils.updateAlbumAttributes(context2, Cloud.CLOUD_URI, new long[]{albumId}, 16, hide, true);
    }

    public static void doForceTop(Context context, long albumId, boolean forceTop) {
        long[] ids = new long[]{albumId};
        if (forceTop) {
            CloudUtils.forceTop(context, Cloud.CLOUD_URI, ids);
        } else {
            CloudUtils.unforceTop(context, Cloud.CLOUD_URI, ids);
        }
    }

    public static void addToFavoritesByPath(Activity activity, OnCompleteListener listener, String... paths) {
        if (activity != null && !activity.isFinishing()) {
            addRemoveFavorite(new AddRemoveFavoritesTask.Param(1, 2, paths), listener);
        }
    }

    public static void removeFromFavoritesByPath(Activity activity, OnCompleteListener listener, String... paths) {
        if (activity != null && !activity.isFinishing()) {
            addRemoveFavorite(new AddRemoveFavoritesTask.Param(2, 2, paths), listener);
        }
    }

    public static void addToFavoritesById(Activity activity, OnCompleteListener listener, long... ids) {
        if (activity != null && !activity.isFinishing()) {
            addRemoveFavorite(new AddRemoveFavoritesTask.Param(1, 3, ids), listener);
        }
    }

    public static void removeFromFavoritesById(Activity activity, OnCompleteListener listener, long... ids) {
        if (activity != null && !activity.isFinishing()) {
            addRemoveFavorite(new AddRemoveFavoritesTask.Param(2, 3, ids), listener);
        }
    }

    private static void addRemoveFavorite(AddRemoveFavoritesTask.Param param, OnCompleteListener listener) {
        AddRemoveFavoritesTask task = new AddRemoveFavoritesTask();
        task.setOperationCompleteListener(listener);
        task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new AddRemoveFavoritesTask.Param[]{param});
    }

    public static void doChangeAutoUpload(Context context, long albumId, boolean enable) {
        CloudUtils.updateAlbumAttributes(context, Cloud.CLOUD_URI, albumId, 1, enable, true);
    }

    public static void doChangeShowInOtherAlbums(Context context, long albumId, boolean enable) {
        CloudUtils.updateAlbumAttributes(context, Cloud.CLOUD_URI, albumId, 64, enable, true);
    }
}
