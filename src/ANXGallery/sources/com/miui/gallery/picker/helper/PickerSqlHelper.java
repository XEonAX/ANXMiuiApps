package com.miui.gallery.picker.helper;

import android.text.TextUtils;
import com.miui.gallery.provider.ShareMediaManager;

public class PickerSqlHelper {
    public static String buildPickerResultQuery(String[] projection, String selection, String[] selectionArgs, String groupBy, String orderBy) {
        if (projection == null) {
            throw new IllegalArgumentException("projection can not be null");
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM(");
        sb.append(buildQueryInTable("cloud", projection, selection, selectionArgs));
        sb.append(" UNION ");
        sb.append(buildQueryInTable(ShareMediaManager.getShareMediaTable(), projection, selection, selectionArgs));
        sb.append(")");
        if (!TextUtils.isEmpty(groupBy)) {
            sb.append(" GROUP BY ");
            sb.append(groupBy);
        }
        if (!TextUtils.isEmpty(orderBy)) {
            sb.append(" ORDER BY ");
            sb.append(orderBy);
        }
        return sb.toString();
    }

    private static String buildQueryInTable(String tableName, String[] projection, String selection, String[] selectionArgs) {
        StringBuilder sb = new StringBuilder();
        String projectionStr = TextUtils.join(",", projection);
        sb.append("SELECT ");
        sb.append(projectionStr);
        sb.append(" FROM ");
        sb.append(tableName);
        if (!TextUtils.isEmpty(selection)) {
            if (selectionArgs != null && selectionArgs.length > 0) {
                selection = String.format(selection, (Object[]) selectionArgs);
            }
            sb.append(" WHERE ");
            sb.append(selection);
        }
        return sb.toString();
    }
}
