package com.miui.gallery.util;

import android.database.Cursor;
import android.database.MatrixCursor;

public class CursorUtils {
    public static void addRowToMatrixCursor(Cursor fromCursor, MatrixCursor toCursor, Object[] columns) {
        int columnsLen = columns.length;
        for (int index = 0; index < columnsLen; index++) {
            switch (fromCursor.getType(index)) {
                case 0:
                    columns[index] = null;
                    break;
                case 1:
                    columns[index] = Long.valueOf(fromCursor.getLong(index));
                    break;
                case 2:
                    columns[index] = Double.valueOf(fromCursor.getDouble(index));
                    break;
                case 3:
                    columns[index] = fromCursor.getString(index);
                    break;
                case 4:
                    columns[index] = fromCursor.getBlob(index);
                    break;
                default:
                    break;
            }
        }
        toCursor.addRow(columns);
    }
}
