package com.miui.gallery.cloudcontrol;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.provider.GalleryContract.CloudControl;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;

public class CloudControlDBHelper {
    public static int tryInsertToDB(Context context, FeatureProfile featureProfile) {
        FeatureDBItem featureDbItem = queryItem(context, featureProfile.getName());
        if (featureProfile.getStatus() == null || !featureProfile.getStatus().equals(Status.REMOVE.getValue())) {
            if (featureDbItem == null) {
                return insertItem(context, featureProfile);
            }
            if (featureDbItem.getStatus() != null && featureDbItem.getStatus().equals(Status.ENABLE.getValue())) {
                if (Status.DISABLE.getValue().equals(featureProfile.getStatus())) {
                    Log.d("CloudControlDBHelper", "Status 'disable' can't overwrite 'enable': %s", String.valueOf(featureProfile));
                }
                featureProfile.setStatus(Status.ENABLE.getValue());
            }
            if (!featureDbItem.equals(featureProfile)) {
                return updateItem(context, featureProfile);
            }
            Log.d("CloudControlDBHelper", "Unchanged item: %s, ignore", String.valueOf(featureProfile));
            return 4;
        } else if (featureDbItem != null) {
            return deleteItem(context, featureProfile);
        } else {
            return 4;
        }
    }

    private static int deleteItem(Context context, FeatureProfile featureProfile) {
        Log.d("CloudControlDBHelper", "deleteItem: %s", String.valueOf(featureProfile));
        if (SafeDBUtil.safeDelete(context, CloudControl.URI, "featureName = ?", new String[]{featureProfile.getName()}) > 0) {
            return 2;
        }
        return 0;
    }

    private static FeatureDBItem queryItem(Context context, String featureName) {
        return (FeatureDBItem) SafeDBUtil.safeQuery(context, CloudControl.URI, FeatureDBItem.PROJECTION, "featureName = ?", new String[]{featureName}, null, new QueryHandler<FeatureDBItem>() {
            public FeatureDBItem handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                return FeatureDBItem.fromCursor(cursor);
            }
        });
    }

    private static int updateItem(Context context, FeatureProfile featureProfile) {
        Log.d("CloudControlDBHelper", "updateItem: %s", String.valueOf(featureProfile));
        ContentValues values = new ContentValues();
        values.put("status", featureProfile.getStatus());
        values.put("strategy", featureProfile.getStrategy());
        if (SafeDBUtil.safeUpdate(context, CloudControl.URI, values, "featureName = ?", new String[]{featureProfile.getName()}) > 0) {
            return 3;
        }
        return 0;
    }

    private static int insertItem(Context context, FeatureProfile featureProfile) {
        Log.d("CloudControlDBHelper", "insertItem: %s", String.valueOf(featureProfile));
        ContentValues values = new ContentValues();
        values.put("status", featureProfile.getStatus());
        values.put("strategy", featureProfile.getStrategy());
        values.put("featureName", featureProfile.getName());
        return SafeDBUtil.safeInsert(context, CloudControl.URI, values) != null ? 1 : 0;
    }
}
