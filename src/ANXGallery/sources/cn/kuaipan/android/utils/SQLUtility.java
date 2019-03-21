package cn.kuaipan.android.utils;

import android.database.sqlite.SQLiteDatabase;

public class SQLUtility {
    private static final String[] CONFLICT_VALUES = new String[]{"", "ROLLBACK", "ABORT", "FAIL", "IGNORE", "REPLACE"};

    public static void createTable(SQLiteDatabase db, String tableName, String columes) {
        db.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s);", new Object[]{tableName, columes}));
    }

    public static String getSelection(String colume) {
        return String.format("%s=?", new Object[]{colume});
    }

    public static String getSelectionWithTemplete(String whereTemplete, String... colume) {
        return String.format(whereTemplete, (Object[]) colume);
    }
}
