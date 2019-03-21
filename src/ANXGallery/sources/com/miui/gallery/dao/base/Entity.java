package com.miui.gallery.dao.base;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.List;

public abstract class Entity {
    protected long mId = -1;

    protected abstract List<TableColumn> getTableColumns();

    protected abstract void onConvertToContents(ContentValues contentValues);

    protected abstract void onInitFromCursor(Cursor cursor);

    public final long getId() {
        return this.mId;
    }

    public final void setId(long id) {
        this.mId = id;
    }

    protected String getTableName() {
        return getClass().getSimpleName();
    }

    protected String[] getUniqueConstraints() {
        return new String[]{"_id"};
    }

    protected void initFromCursor(Cursor cursor) {
        this.mId = cursor.getLong(cursor.getColumnIndex("_id"));
        onInitFromCursor(cursor);
    }

    protected ContentValues convertToContents() {
        ContentValues values = new ContentValues();
        onConvertToContents(values);
        return values;
    }

    public static long getLong(Cursor cursor, String columnName) {
        return cursor.getLong(cursor.getColumnIndexOrThrow(columnName));
    }

    public static long getLongDefault(Cursor cursor, String columnName, long defValue) {
        int columnIndex = cursor.getColumnIndex(columnName);
        return columnIndex != -1 ? cursor.getLong(columnIndex) : defValue;
    }

    public static String getString(Cursor cursor, String columnName) {
        return cursor.getString(cursor.getColumnIndexOrThrow(columnName));
    }

    public static String getStringDefault(Cursor cursor, String columnName, String defValue) {
        int columnIndex = cursor.getColumnIndex(columnName);
        return columnIndex != -1 ? cursor.getString(columnIndex) : defValue;
    }

    public static int getInt(Cursor cursor, String columnName) {
        return cursor.getInt(cursor.getColumnIndexOrThrow(columnName));
    }

    public static int getIntDefault(Cursor cursor, String columnName, int defValue) {
        int columnIndex = cursor.getColumnIndex(columnName);
        return columnIndex != -1 ? cursor.getInt(columnIndex) : defValue;
    }

    public static byte[] getBlob(Cursor cursor, String columnName) {
        return cursor.getBlob(cursor.getColumnIndexOrThrow(columnName));
    }

    public static float getFloatDefault(Cursor cursor, String columnName, float defValue) {
        int columnIndex = cursor.getColumnIndex(columnName);
        return columnIndex != -1 ? cursor.getFloat(columnIndex) : defValue;
    }

    public static double getDoubleDefault(Cursor cursor, String columnName, double defValue) {
        int columnIndex = cursor.getColumnIndex(columnName);
        return columnIndex != -1 ? cursor.getDouble(columnIndex) : defValue;
    }

    public static void addColumn(List<TableColumn> columns, String name, String columnType) {
        columns.add(new TableColumn(name, columnType));
    }

    public static void addColumn(List<TableColumn> columns, String name, String columnType, String defaultValue) {
        columns.add(new TableColumn(name, columnType, defaultValue));
    }

    public static void addColumn(List<TableColumn> columns, String name, String columnType, boolean isUnique) {
        columns.add(new TableColumn(name, columnType, isUnique));
    }
}
