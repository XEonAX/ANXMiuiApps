package com.miui.gallery.loader;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore.Files;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.CursorDataSet;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.model.MediaItem;
import com.miui.gallery.provider.ProcessingMediaManager;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaSetLoader extends CursorSetLoader {
    private static final String[] BUCKET_PROJECTION = new String[]{"_data", "bucket_id"};
    private static final String[] PROJECTION = new String[]{"_id", "_data", "_size", "mime_type", "latitude", "longitude", "datetaken", "duration", nexExportFormat.TAG_FORMAT_WIDTH, nexExportFormat.TAG_FORMAT_HEIGHT};
    private String[] mBucketIds;
    private boolean mFromCamera;
    private long mInitId;
    private int mInitPos = -1;
    private boolean mIsFromScreenshot;
    private boolean mIsInternal;
    private ArrayList<Uri> mLimitUris;
    private List<Long> mProcessingIds;
    private Uri mUri;

    private class MediaDataSet extends CursorDataSet {
        public MediaDataSet(Cursor cursor) {
            super(cursor);
        }

        protected BaseDataItem createItem(int position) {
            BaseDataItem item = new MediaItem();
            bindItem(item, position);
            return item;
        }

        protected void bindItem(BaseDataItem item, int position) {
            if (isValidate(position)) {
                this.mCursor.moveToPosition(position);
                String path = this.mCursor.getString(1);
                item.setKey(this.mCursor.getLong(0)).setFilePath(path).setThumbPath(path).setSize(this.mCursor.getLong(2)).setMimeType(this.mCursor.getString(3)).setLatitude((double) this.mCursor.getFloat(4)).setLongitude((double) this.mCursor.getFloat(5)).setCreateTime(this.mCursor.getLong(6)).setDuration(this.mCursor.getInt(7) / 1000).setWidth(this.mCursor.getInt(8)).setHeight(this.mCursor.getInt(9));
            }
        }

        private boolean isFromCamera() {
            return MediaSetLoader.this.mFromCamera;
        }

        private boolean isFromScreenshot() {
            return MediaSetLoader.this.mIsFromScreenshot;
        }

        protected String getDeleteDialogMessage(BaseDataItem item, Context context) {
            if ((!isFromCamera() && !isFromScreenshot()) || !SyncUtil.existXiaomiAccount(MediaSetLoader.this.getContext())) {
                return super.getDeleteDialogMessage(item, context);
            }
            return context.getResources().getQuantityString(BaseFileMimeUtil.isVideoFromMimeType(item.getMimeType()) ? R.plurals.delete_video_from_all_devices_and_cloud_msg : R.plurals.delete_photo_from_all_devices_and_cloud_msg, 1, new Object[]{Integer.valueOf(1)});
        }

        protected int doDelete(BaseDataItem item) {
            int rows = 0;
            if (item != null) {
                if (BaseDocumentProviderUtils.needRequestExternalSDCardPermission(MediaSetLoader.this.getContext())) {
                    return -112;
                }
                rows = SafeDBUtil.safeDelete(MediaSetLoader.this.getContext(), MediaSetLoader.this.getUri(), "_id=?", new String[]{String.valueOf(item.getKey())});
                if (rows > 0) {
                    int deleteOptions = (isFromCamera() || isFromScreenshot()) ? 0 : 1;
                    MediaAndAlbumOperations.deleteInService(MediaSetLoader.this.getContext(), deleteOptions, 30, item.getOriginalPath());
                    DeleteRecorder.record(new DeleteRecord(30, item.getOriginalPath(), "MediaSetLoader"));
                } else {
                    Log.w("MediaSetLoader", "Delete %s, no row affected", item.getOriginalPath());
                }
            }
            return rows;
        }

        public boolean addToAlbum(Activity activity, int position, boolean operateSync, boolean showSecret, OnAddAlbumListener listener) {
            BaseDataItem item = getItem(null, position);
            if (!(item == null || TextUtils.isEmpty(item.getOriginalPath()))) {
                ArrayList<Uri> uris = new ArrayList(1);
                uris.add(Uri.fromFile(new File(item.getOriginalPath())));
                MediaAndAlbumOperations.addToAlbum(activity, listener, uris, isFromCamera(), showSecret);
            }
            return true;
        }

        public long getItemKey(int position) {
            if (!isValidate(position)) {
                return -1;
            }
            this.mCursor.moveToPosition(position);
            return this.mCursor.getLong(0);
        }

        protected String getItemPath(int position) {
            if (!isValidate(position)) {
                return null;
            }
            this.mCursor.moveToPosition(position);
            return this.mCursor.getString(1);
        }

        public boolean addToFavorites(Activity activity, int position, OnCompleteListener listener) {
            BaseDataItem item = getItem(null, position);
            if (!(item == null || TextUtils.isEmpty(item.getOriginalPath()))) {
                MediaAndAlbumOperations.addToFavoritesByPath(activity, listener, item.getOriginalPath());
            }
            return true;
        }

        public boolean removeFromFavorites(Activity activity, int position, OnCompleteListener listener) {
            BaseDataItem item = getItem(null, position);
            if (!(item == null || TextUtils.isEmpty(item.getOriginalPath()))) {
                MediaAndAlbumOperations.removeFromFavoritesByPath(activity, listener, item.getOriginalPath());
            }
            return true;
        }
    }

    public MediaSetLoader(Context context, Uri uri, Bundle bundle, boolean isInternal) {
        super(context);
        this.mIsInternal = isInternal;
        this.mUri = uri;
        this.mFromCamera = bundle.getBoolean("from_MiuiCamera", false);
        this.mIsFromScreenshot = bundle.getBoolean("from_MiuiScreenShot", false);
        this.mLimitUris = bundle.getParcelableArrayList("SecureUri");
        if (bundle.getBoolean("com.miui.gallery.extra.preview_single_item", false)) {
            this.mLimitUris = new ArrayList(1);
            this.mLimitUris.add(uri);
        }
        ImageLoadParams imageLoadParams = (ImageLoadParams) bundle.getParcelable("photo_transition_data");
        if (imageLoadParams != null) {
            this.mInitId = imageLoadParams.getKey();
        }
    }

    private boolean isLimitedUris() {
        return BaseMiscUtil.isValid(this.mLimitUris);
    }

    public CursorDataSet loadInBackground() {
        long id;
        if (this.mInitId > 0) {
            id = this.mInitId;
        } else {
            id = ContentUris.parseId(this.mUri);
        }
        CursorDataSet dataSet;
        BaseDataItem item;
        if (isLimitedUris()) {
            dataSet = super.loadInBackground();
            if (dataSet != null) {
                if (this.mInitPos == -1) {
                    item = new BaseDataItem();
                    item.setKey(id);
                    this.mInitPos = dataSet.getIndexOfItem(item, -1);
                }
                dataSet.setInitPosition(this.mInitPos);
                return dataSet;
            }
        }
        if (this.mBucketIds == null) {
            this.mBucketIds = (String[]) SafeDBUtil.safeQuery(getContext(), Files.getContentUri(this.mIsInternal ? "internal" : "external"), BUCKET_PROJECTION, "_id=?", new String[]{String.valueOf(id)}, null, new QueryHandler<String[]>() {
                public String[] handle(Cursor cursor) {
                    if (cursor == null || !cursor.moveToFirst()) {
                        return null;
                    }
                    return MediaSetLoader.this.genAllBucketIds(cursor.getString(0), cursor.getString(1));
                }
            });
        }
        if (this.mBucketIds != null) {
            this.mProcessingIds = ProcessingMediaManager.queryProcessingMediaIds();
            dataSet = super.loadInBackground();
            if (dataSet != null) {
                if (this.mInitPos == -1) {
                    item = new BaseDataItem();
                    item.setKey(id);
                    this.mInitPos = dataSet.getIndexOfItem(item, -1);
                }
                dataSet.setInitPosition(this.mInitPos);
                return dataSet;
            }
        }
        return null;
    }

    private boolean needLoadAllBucket(String bucketPath) {
        if ("DCIM/Camera".equalsIgnoreCase(StorageUtils.getRelativePath(getContext(), bucketPath))) {
            return true;
        }
        return false;
    }

    private String[] genAllBucketIds(String uriPath, String uriBucketId) {
        if (!TextUtils.isEmpty(uriPath)) {
            String bucketPath = FileUtils.getParentFolderPath(uriPath);
            if (needLoadAllBucket(bucketPath)) {
                String[] bucketPaths = StorageUtils.getPathsInExternalStorage(getContext(), StorageUtils.getRelativePath(getContext(), bucketPath));
                if (bucketPath == null) {
                    return null;
                }
                String[] bucketIds = new String[bucketPaths.length];
                for (int i = 0; i < bucketPaths.length; i++) {
                    bucketIds[i] = String.valueOf(FileUtils.getBucketID(bucketPaths[i]));
                }
                return bucketIds;
            }
        }
        if (TextUtils.isEmpty(uriBucketId)) {
            return null;
        }
        return new String[]{uriBucketId};
    }

    protected String[] getProjection() {
        return PROJECTION;
    }

    protected Uri getUri() {
        return Files.getContentUri(this.mIsInternal ? "internal" : "external");
    }

    protected String getSelection() {
        if (isLimitedUris()) {
            ArrayList<Long> ids = new ArrayList(this.mLimitUris.size());
            Iterator it = this.mLimitUris.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (uri != null) {
                    ids.add(Long.valueOf(ContentUris.parseId(uri)));
                }
            }
            return "_id in (" + TextUtils.join(",", ids) + ")";
        }
        return "bucket_id in (" + TextUtils.join(",", this.mBucketIds) + ")" + " AND (" + "media_type" + " in (" + 1 + "," + 3 + ")" + (BaseMiscUtil.isValid(this.mProcessingIds) ? " OR _id in (" + TextUtils.join(",", this.mProcessingIds) + ")" : "") + ")";
    }

    protected String[] getSelectionArgs() {
        return null;
    }

    protected String getOrder() {
        return "datetaken DESC, _id DESC";
    }

    protected CursorDataSet wrapDataSet(Cursor cursor) {
        return new MediaDataSet(cursor);
    }
}
