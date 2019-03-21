package com.miui.gallery.loader;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.UriItem;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import java.io.File;

public class UriSetLoader extends BaseLoader {
    private String mMimeType;
    private Uri mUri;

    private static class UriDataSet extends BaseDataSet {
        private UriItem mItem;

        public UriDataSet(UriItem item) {
            this.mItem = item;
        }

        protected BaseDataItem createItem(int position) {
            return this.mItem;
        }

        protected void bindItem(BaseDataItem item, int position) {
        }

        public int getCount() {
            return 1;
        }

        public void onRelease() {
        }

        protected int doDelete(BaseDataItem item) {
            return 0;
        }

        public boolean addToAlbum(Activity activity, int position, boolean operateSync, boolean showSecret, OnAddAlbumListener listener) {
            return false;
        }

        public long getItemKey(int position) {
            return this.mItem != null ? this.mItem.getKey() : -1;
        }

        protected String getItemPath(int position) {
            return this.mItem != null ? this.mItem.getOriginalPath() : null;
        }
    }

    public UriSetLoader(Context context, Uri uri, Bundle data) {
        super(context);
        this.mUri = uri;
        this.mMimeType = data.getString("mime_type");
    }

    public BaseDataSet loadInBackground() {
        UriItem item = new UriItem(this.mUri);
        String mimeType = this.mMimeType;
        if ("file".equals(this.mUri.getScheme())) {
            if (mimeType == null || "image/*".equalsIgnoreCase(mimeType)) {
                String extension = MimeTypeMap.getFileExtensionFromUrl(this.mUri.toString());
                if (!TextUtils.isEmpty(extension)) {
                    String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension.toLowerCase());
                    if (!TextUtils.isEmpty(mimeType)) {
                        mimeType = mimeTypeFromExtension;
                    }
                }
            }
            item.setKey((long) this.mUri.getPath().hashCode()).setCreateTime(new File(this.mUri.getPath()).lastModified());
        } else {
            if (mimeType == null || "image/*".equalsIgnoreCase(mimeType)) {
                mimeType = GalleryApp.sGetAndroidContext().getContentResolver().getType(this.mUri);
            }
            item.setKey((long) this.mUri.hashCode());
        }
        item.setMimeType(mimeType);
        return new UriDataSet(item);
    }
}
