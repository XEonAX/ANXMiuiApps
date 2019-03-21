package com.miui.gallery.provider;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.miui.gallery.model.SecretInfo;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.ArrayList;

public class CloudUtils {
    public static Bundle create(Context context, String name) {
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "create_album", name, null);
    }

    public static Bundle renameAlbum(Context context, long albumId, String newName) {
        Bundle args = new Bundle();
        args.putLong("album_id", albumId);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "rename_album", newName, args);
    }

    private static int getDupType(int uiScene) {
        switch (uiScene) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                return -1;
        }
    }

    private static int getDeleteOptions(int uiOptions) {
        switch (uiOptions) {
            case 1:
                return 1;
            default:
                return 0;
        }
    }

    public static long[] move(Context context, int dupType, long albumId, boolean operateSync, long... mediaIds) {
        return addToAlbum(context, 1, getDupType(dupType), albumId, operateSync, mediaIds);
    }

    public static long[] copy(Context context, int dupType, long albumId, long... mediaIds) {
        return addToAlbum(context, 0, getDupType(dupType), albumId, false, mediaIds);
    }

    public static long[] move(Context context, long albumId, ArrayList<Uri> uris) {
        return addToAlbum(context, 1, albumId, uris);
    }

    public static long[] copy(Context context, long albumId, ArrayList<Uri> uris) {
        return addToAlbum(context, 0, albumId, uris);
    }

    private static long[] addToAlbum(Context context, int type, int dupType, long albumId, boolean operateSync, long... mediaIds) {
        Bundle args = new Bundle();
        args.putInt("extra_type", type);
        args.putInt("extra_src_type", 0);
        args.putLongArray("extra_src_media_ids", mediaIds);
        args.putInt("extra_dup_type", dupType);
        args.putBoolean("should_operate_sync", operateSync);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_to_album", String.valueOf(albumId), args).getLongArray("ids");
    }

    private static long[] addToAlbum(Context context, int type, long albumId, ArrayList<Uri> uris) {
        Bundle args = new Bundle();
        args.putInt("extra_type", type);
        args.putInt("extra_src_type", 1);
        args.putParcelableArrayList("extra_src_uris", uris);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_to_album", String.valueOf(albumId), args).getLongArray("ids");
    }

    public static long[] deleteById(Context context, int deleteReason, long... ids) {
        return deleteById(context, 0, 0, deleteReason, ids);
    }

    public static long[] deleteById(Context context, int dupType, int deleteOption, int deleteReason, long... ids) {
        Bundle args = new Bundle();
        args.putInt("delete_by", 0);
        args.putLongArray("extra_ids", ids);
        args.putInt("extra_dup_type", getDupType(dupType));
        args.putInt("extra_delete_options", getDeleteOptions(deleteOption));
        args.putInt("extra_delete_reason", deleteReason);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "delete", null, args).getLongArray("ids");
    }

    public static long[] deleteByPath(Context context, int deleteReason, String... paths) {
        return deleteByPath(context, 0, deleteReason, paths);
    }

    public static long[] deleteByPath(Context context, int deleteOption, int deleteReason, String... paths) {
        Bundle args = new Bundle();
        args.putInt("delete_by", 1);
        args.putStringArray("extra_paths", paths);
        args.putInt("extra_delete_options", getDeleteOptions(deleteOption));
        args.putInt("extra_delete_reason", deleteReason);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "delete", null, args).getLongArray("ids");
    }

    public static long[] deleteCloudByPath(Context context, int deleteReason, String... paths) {
        Bundle args = new Bundle();
        args.putInt("delete_by", 3);
        args.putStringArray("extra_paths", paths);
        args.putInt("extra_delete_reason", deleteReason);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "delete", null, args).getLongArray("ids");
    }

    public static int deleteBySha1(Context context, boolean keepDup, int deleteReason, String... sha1s) {
        Bundle args = new Bundle();
        args.putInt("delete_by", 2);
        args.putStringArray("extra_sha1s", sha1s);
        args.putBoolean("extra_keep_dup", keepDup);
        args.putInt("extra_delete_reason", deleteReason);
        return (int) context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "delete", null, args).getLong("count");
    }

    public static long[] deleteAlbum(Context context, int deleteOption, int deleteReason, long... albumIds) {
        Bundle args = new Bundle();
        args.putLongArray("extra_album_ids", albumIds);
        args.putInt("extra_delete_options", getDeleteOptions(deleteOption));
        args.putInt("extra_delete_reason", deleteReason);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "delete_album", null, args).getLongArray("ids");
    }

    public static void forceTop(Context context, Uri uri, long[] ids) {
        Bundle args = new Bundle();
        args.putLongArray("album_id", ids);
        callMethodAsync(context, uri, "force_top", args);
    }

    public static void unforceTop(Context context, Uri uri, long[] ids) {
        Bundle args = new Bundle();
        args.putLongArray("album_id", ids);
        callMethodAsync(context, uri, "unforce_top", args);
    }

    public static long[] addToFavoritesBySha1(Context context, String... sha1) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 1);
        args.putInt("add_remove_by", 2);
        args.putStringArray("extra_src_sha1", sha1);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_favorite", null, args).getLongArray("ids");
    }

    public static long[] removeFromFavoritesBySha1(Context context, String... sha1) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 2);
        args.putInt("add_remove_by", 2);
        args.putStringArray("extra_src_sha1", sha1);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_favorite", null, args).getLongArray("ids");
    }

    public static long[] addToFavoritesByPath(Context context, String... paths) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 1);
        args.putInt("add_remove_by", 3);
        args.putStringArray("extra_src_paths", paths);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_favorite", null, args).getLongArray("ids");
    }

    public static long[] removeFromFavoritesByPath(Context context, String... paths) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 2);
        args.putInt("add_remove_by", 3);
        args.putStringArray("extra_src_paths", paths);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_favorite", null, args).getLongArray("ids");
    }

    public static long[] addToFavoritesById(Context context, long... ids) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 1);
        args.putInt("add_remove_by", 1);
        args.putLongArray("extra_src_media_ids", ids);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_favorite", null, args).getLongArray("ids");
    }

    public static long[] removeFromFavoritesById(Context context, long... ids) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 2);
        args.putInt("add_remove_by", 1);
        args.putLongArray("extra_src_media_ids", ids);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_favorite", null, args).getLongArray("ids");
    }

    public static void updateAlbumAttributes(Context context, Uri uri, long id, long attributeBit, boolean set, boolean manual) {
        updateAlbumAttributes(context, uri, new long[]{id}, attributeBit, set, manual);
    }

    public static void updateAlbumAttributes(Context context, Uri uri, long[] ids, long attributeBit, boolean set, boolean manual) {
        Bundle args = new Bundle();
        args.putLongArray("album_id", ids);
        args.putLong("attributes_bit", attributeBit);
        args.putBoolean("set", set);
        args.putBoolean("manual", manual);
        callMethodAsync(context, uri, "set_album_attributes", args);
    }

    public static long[] addToSecret(Context context, long... mediaIds) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 1);
        args.putLongArray("extra_src_media_ids", mediaIds);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_secret", null, args).getLongArray("ids");
    }

    public static long[] addToSecret(Context context, ArrayList<Uri> uris) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 1);
        args.putParcelableArrayList("extra_src_uris", uris);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_secret", null, args).getLongArray("ids");
    }

    public static SecretInfo getSecretInfo(Context context, long id, final SecretInfo secretInfo) {
        return (SecretInfo) SafeDBUtil.safeQuery(context, Cloud.CLOUD_URI, new String[]{"_id", "localFile", "secretKey"}, "_id=?", new String[]{String.valueOf(id)}, null, new QueryHandler<SecretInfo>() {
            public SecretInfo handle(Cursor cursor) {
                if (cursor != null && cursor.moveToFirst()) {
                    secretInfo.mSecretPath = cursor.getString(cursor.getColumnIndex("localFile"));
                    secretInfo.mSecretKey = cursor.getBlob(cursor.getColumnIndex("secretKey"));
                }
                return secretInfo;
            }
        });
    }

    public static long[] removeFromSecret(Context context, long albumId, long... mediaIds) {
        Bundle args = new Bundle();
        args.putInt("operation_type", 2);
        args.putLongArray("extra_src_media_ids", mediaIds);
        return context.getContentResolver().call(GalleryContract.AUTHORITY_URI, "add_remove_secret", String.valueOf(albumId), args).getLongArray("ids");
    }

    private static void callMethodAsync(final Context context, final Uri uri, final String method, final Bundle args) {
        new AsyncTask<Void, Void, Void>() {
            protected Void doInBackground(Void... params) {
                if (context != null) {
                    context.getContentResolver().call(uri, method, null, args);
                }
                return null;
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
