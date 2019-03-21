package com.miui.gallery.scanner;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.RecentDiscoveryMediaManager;
import com.miui.gallery.provider.RecentDiscoveryMediaManager.RecentMediaEntry;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;

public class CloudMediaBulkInserter extends MediaBulkInserter {
    private static final String[] PROJECTION = new String[]{"_id", "localGroupId", "localFile", "dateModified"};
    private ArrayList<String> mWhereArgs = new ArrayList(this.mBulkCount);
    private StringBuilder mWhereClause = new StringBuilder();

    public CloudMediaBulkInserter(boolean triggerSync) {
        super(Cloud.CLOUD_URI.buildUpon().appendQueryParameter("URI_PARAM_REQUEST_SYNC", String.valueOf(triggerSync)).build());
    }

    public void insert(Context context, ContentValues values) {
        if (values != null) {
            String path = values.getAsString("localFile");
            if (!TextUtils.isEmpty(path)) {
                if (this.mWhereClause.length() != 0) {
                    this.mWhereClause.append(",");
                }
                this.mWhereClause.append("?");
                this.mWhereArgs.add(path);
            }
        }
        super.insert(context, values);
    }

    public void flush(Context context) {
        super.flush(context);
        int size = this.mWhereArgs.size();
        if (size > 0) {
            try {
                Cursor cursor = context.getContentResolver().query(Cloud.CLOUD_URI, PROJECTION, "localFile IN (" + this.mWhereClause.toString() + ")", (String[]) this.mWhereArgs.toArray(new String[size]), "dateModified DESC ");
                if (cursor != null && cursor.getCount() > 0) {
                    int index = 0;
                    RecentMediaEntry[] entries = new RecentMediaEntry[cursor.getCount()];
                    cursor.moveToFirst();
                    while (!cursor.isAfterLast()) {
                        entries[index] = new RecentMediaEntry(cursor.getLong(1), cursor.getLong(0), cursor.getString(2), cursor.getLong(3));
                        cursor.moveToNext();
                        index++;
                    }
                    RecentDiscoveryMediaManager.insertToRecentDB(context, entries);
                }
                BaseMiscUtil.closeSilently(cursor);
            } catch (Throwable e) {
                Log.e("CloudMediaBulkInserter", e);
                BaseMiscUtil.closeSilently(null);
            } catch (Throwable th) {
                BaseMiscUtil.closeSilently(null);
                throw th;
            }
            this.mWhereClause.setLength(0);
            this.mWhereArgs.clear();
        }
    }
}
