package com.miui.gallery.loader;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.StorageItem;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ContentUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class StorageSetLoader extends BaseLoader {
    private String mFolderPath;
    private String mInitFilePath = null;
    private Uri mInitUri;
    private ArrayList<Uri> mLimitUris;

    private static class MFileComparator implements Comparator<File> {
        private MFileComparator() {
        }

        public int compare(File lhs, File rhs) {
            long r = rhs.lastModified();
            long l = lhs.lastModified();
            if (r > l) {
                return 1;
            }
            if (r < l) {
                return -1;
            }
            return 0;
        }
    }

    private class MFileFilter implements FileFilter {
        private MFileFilter() {
        }

        public boolean accept(File file) {
            if (file.isFile()) {
                return StorageSetLoader.this.isSupportFile(file.getAbsolutePath());
            }
            return false;
        }
    }

    private class StorageDataSet extends BaseDataSet {
        private List<File> mFiles;
        private String mInitFilePath;

        public StorageDataSet(List<File> files, String initFilePath) {
            this.mFiles = files;
            this.mInitFilePath = initFilePath;
        }

        public int getInitPosition() {
            return getIndexOfItem(this.mInitFilePath);
        }

        protected BaseDataItem createItem(int position) {
            BaseDataItem item = new StorageItem();
            bindItem(item, position);
            return item;
        }

        protected void bindItem(BaseDataItem item, int position) {
            File file = getItem(position);
            if (file != null) {
                String path = file.getAbsolutePath();
                item.setKey((long) file.getName().hashCode()).setFilePath(path).setThumbPath(path).setMimeType(BaseFileMimeUtil.getMimeType(path));
            }
        }

        private File getItem(int position) {
            if (this.mFiles == null || position <= -1 || position >= this.mFiles.size()) {
                return null;
            }
            return (File) this.mFiles.get(position);
        }

        private int getIndexOfItem(String path) {
            if (!(this.mFiles == null || TextUtils.isEmpty(path))) {
                int length = this.mFiles.size();
                for (int i = 0; i < length; i++) {
                    if (((File) this.mFiles.get(i)).getAbsolutePath().equalsIgnoreCase(path)) {
                        return i;
                    }
                }
            }
            return 0;
        }

        public int getCount() {
            return this.mFiles != null ? this.mFiles.size() : 0;
        }

        public void onRelease() {
        }

        protected int doDelete(BaseDataItem item) {
            if (!(item == null || TextUtils.isEmpty(item.getOriginalPath()))) {
                if (BaseDocumentProviderUtils.needRequestExternalSDCardPermission(StorageSetLoader.this.getContext())) {
                    return -112;
                }
                if (MediaFileUtils.deleteFileType(FileType.ORIGINAL, item.getOriginalPath()) > 0) {
                    MediaAndAlbumOperations.deleteInService(StorageSetLoader.this.getContext(), 1, 31, item.getOriginalPath());
                    DeleteRecorder.record(new DeleteRecord(31, item.getOriginalPath(), "StorageSetLoader"));
                    return 1;
                }
                Log.w("StorageSetLoader", "Failed to delete file %s", item.getOriginalPath());
            }
            return 0;
        }

        public boolean addToAlbum(Activity activity, int position, boolean operateSync, boolean showSecret, OnAddAlbumListener listener) {
            File item = getItem(position);
            if (item != null) {
                ArrayList<Uri> uris = new ArrayList(1);
                uris.add(Uri.fromFile(item));
                MediaAndAlbumOperations.addToAlbum(activity, listener, uris, false, showSecret);
            }
            return true;
        }

        public long getItemKey(int position) {
            File file = getItem(position);
            return file != null ? (long) file.getName().hashCode() : -1;
        }

        protected String getItemPath(int position) {
            File file = getItem(position);
            return file != null ? file.getAbsolutePath() : null;
        }

        public boolean addNewFile(String path, int position) {
            if (TextUtils.isEmpty(path) || !StorageSetLoader.this.isLimitedUris()) {
                return super.addNewFile(path, position);
            }
            StorageSetLoader.this.mLimitUris.add(Math.min(position, StorageSetLoader.this.mLimitUris.size()), Uri.fromFile(new File(path)));
            return true;
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

    public StorageSetLoader(Context context, Uri uri, Bundle data) {
        super(context);
        this.mInitUri = uri;
        String path = uri.getPath();
        if (new File(path).isDirectory()) {
            this.mFolderPath = path;
            return;
        }
        this.mLimitUris = data.getParcelableArrayList("com.miui.gallery.extra.photo_items");
        if (data.getBoolean("com.miui.gallery.extra.preview_single_item", false)) {
            this.mLimitUris = new ArrayList(1);
            this.mLimitUris.add(Uri.fromFile(new File(path)));
        }
        if (!isLimitedUris()) {
            this.mFolderPath = FileUtils.getParentFolderPath(path);
        }
    }

    private boolean isLimitedUris() {
        return BaseMiscUtil.isValid(this.mLimitUris);
    }

    public BaseDataSet loadInBackground() {
        if (TextUtils.isEmpty(this.mInitFilePath)) {
            this.mInitFilePath = ContentUtils.getValidFilePathForContentUri(getContext(), this.mInitUri);
            if (TextUtils.isEmpty(this.mInitFilePath)) {
                this.mInitFilePath = this.mInitUri.getPath();
            }
        }
        List<File> files = null;
        if (isLimitedUris()) {
            files = new ArrayList(this.mLimitUris.size());
            Iterator it = this.mLimitUris.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (uri != null && "file".equalsIgnoreCase(uri.getScheme())) {
                    String path = uri.getPath();
                    if (FileUtils.isFileExist(path) && isSupportFile(path)) {
                        files.add(new File(path));
                    }
                }
            }
        } else {
            File[] tempFiles = new File(this.mFolderPath).listFiles(new MFileFilter());
            if (tempFiles != null) {
                long start = System.currentTimeMillis();
                Arrays.sort(tempFiles, new MFileComparator());
                Log.d("StorageSetLoader", "file sort cost[%d], size[%d]", Long.valueOf(System.currentTimeMillis() - start), Integer.valueOf(tempFiles.length));
                files = Arrays.asList(tempFiles);
            } else if (!TextUtils.isEmpty(this.mInitFilePath)) {
                File initialFile = new File(this.mInitFilePath);
                if (initialFile.exists()) {
                    files = new ArrayList(1);
                    files.add(initialFile);
                }
            }
        }
        return new StorageDataSet(files, this.mInitFilePath);
    }

    private boolean isSupportType(String mimeType) {
        return BaseFileMimeUtil.isImageFromMimeType(mimeType) || BaseFileMimeUtil.isVideoFromMimeType(mimeType);
    }

    private boolean isSupportFile(String path) {
        boolean support = isSupportType(BaseFileMimeUtil.getMimeType(path));
        if (support || !path.equalsIgnoreCase(this.mInitFilePath)) {
            return support;
        }
        return support | isSupportType(BaseFileMimeUtil.getMimeTypeByParseFile(path));
    }
}
