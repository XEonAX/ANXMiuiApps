package com.miui.gallery.loader;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.miui.gallery.model.CursorDataSet;
import com.miui.gallery.provider.GalleryContract.Media;
import java.util.Arrays;
import java.util.List;

public class SearchResultSetLoader extends CloudSetLoader {
    private String[] mIds;

    private static class SearchResultDataSet extends CloudDataSet {
        private List<String> mIds;
        SparseIntArray mPositionMap;

        public SearchResultDataSet(String[] ids, Cursor cursor, int initPos) {
            super(cursor, initPos, 0, -1, "");
            if (ids != null) {
                this.mIds = Arrays.asList(ids);
                this.mPositionMap = new SparseIntArray(this.mIds.size());
                if (isValidate()) {
                    for (int i = 0; i < cursor.getCount(); i++) {
                        cursor.moveToPosition(i);
                        this.mPositionMap.put(this.mIds.indexOf(cursor.getString(0)), i);
                    }
                }
            }
        }

        protected boolean moveToPosition(int position) {
            return this.mPositionMap != null && position >= 0 && position < this.mPositionMap.size() && isValidate(this.mPositionMap.valueAt(position)) && this.mCursor.moveToPosition(this.mPositionMap.valueAt(position));
        }
    }

    public SearchResultSetLoader(Context context, Uri uri, Bundle data) {
        super(context, Media.URI, data);
        if (data != null) {
            this.mIds = data.getStringArray("photo_selection_args");
        }
    }

    protected String getSelection() {
        String str = "%s in (%s) AND %s != %s";
        Object[] objArr = new Object[4];
        objArr[0] = "_id";
        String join = (this.mIds == null || this.mIds.length <= 0) ? "" : TextUtils.join(",", this.mIds);
        objArr[1] = join;
        objArr[2] = "localGroupId";
        objArr[3] = Long.valueOf(-1000);
        return String.format(str, objArr);
    }

    protected String[] getSelectionArgs() {
        return null;
    }

    protected String getOrder() {
        return null;
    }

    protected CursorDataSet wrapDataSet(Cursor cursor) {
        return new SearchResultDataSet(this.mIds, cursor, this.mInitPos);
    }
}
