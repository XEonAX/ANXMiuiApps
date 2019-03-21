package com.miui.gallery.dao.base;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class EntityManager {
    private SQLiteOpenHelper dbHelper;
    private ArrayList<Class<? extends Entity>> mTables = null;

    private class SQLiteOpenHelperImpl extends SQLiteOpenHelper {
        public SQLiteOpenHelperImpl(Context context, String dbName, int dbVersion) {
            super(context, dbName, null, dbVersion);
        }

        public void onCreate(SQLiteDatabase db) {
            EntityManager.this.initTableList();
            try {
                Iterator it = EntityManager.this.mTables.iterator();
                while (it.hasNext()) {
                    EntityManager.createTable(db, (Class) it.next());
                }
            } catch (Object e) {
                Log.e("EntityManager", "Db onCreate error.\n", e);
            }
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            EntityManager.this.initTableList();
            try {
                EntityManager.checkTableChange(db, EntityManager.this.mTables);
                EntityManager.this.onDatabaseUpgrade(db, oldVersion, newVersion);
            } catch (Object e) {
                Log.e("EntityManager", "Db onUpgrade error.\n", e);
            }
        }

        public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            EntityManager.this.onDatabaseDowngrade(db, oldVersion, newVersion);
        }
    }

    protected abstract void onDatabaseUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2);

    protected abstract void onInitTableList();

    public EntityManager(Context context, String dbName, int dbVersion) {
        this.dbHelper = new SQLiteOpenHelperImpl(context, dbName, dbVersion);
    }

    public boolean insert(Entity entity) {
        if (entity == null) {
            return false;
        }
        long _id = -1;
        try {
            _id = this.dbHelper.getWritableDatabase().insert(entity.getTableName(), null, entity.convertToContents());
        } catch (Object e) {
            Log.e("EntityManager", "insert error. %s", e);
        }
        if (_id != -1) {
            entity.setId(_id);
        }
        if (_id != -1) {
            return true;
        }
        return false;
    }

    public int insert(Collection<? extends Entity> entities) {
        if (!BaseMiscUtil.isValid(entities)) {
            return 0;
        }
        int count = 0;
        SQLiteDatabase database = this.dbHelper.getWritableDatabase();
        database.beginTransaction();
        try {
            for (Entity entity : entities) {
                long _id = -1;
                try {
                    _id = database.insert(entity.getTableName(), null, entity.convertToContents());
                } catch (Object e) {
                    Log.e("EntityManager", "insert error. %s", e);
                }
                if (_id != -1) {
                    entity.setId(_id);
                    count++;
                }
            }
            database.setTransactionSuccessful();
            database.endTransaction();
            return count;
        } catch (Object e2) {
            Log.e("EntityManager", "insert error %s", e2);
            database.endTransaction();
            return 0;
        } catch (Throwable th) {
            database.endTransaction();
            throw th;
        }
    }

    public boolean insertWithOnConflict(Entity entity, int conflictAlgorithm) {
        if (entity == null) {
            return false;
        }
        long _id = -1;
        try {
            _id = this.dbHelper.getWritableDatabase().insertWithOnConflict(entity.getTableName(), null, entity.convertToContents(), conflictAlgorithm);
        } catch (Object e) {
            Log.e("EntityManager", "insert error %s", e);
        }
        if (_id != -1) {
            entity.setId(_id);
        }
        if (_id != -1) {
            return true;
        }
        return false;
    }

    public boolean update(Entity entity) {
        if (entity == null || entity.getId() < 0) {
            return false;
        }
        int result = 0;
        try {
            result = this.dbHelper.getWritableDatabase().update(entity.getTableName(), entity.convertToContents(), "_id=?", new String[]{String.valueOf(entity.getId())});
        } catch (Object e) {
            Log.e("EntityManager", "update error.\n", e);
        }
        if (result <= 0) {
            return false;
        }
        return true;
    }

    public boolean update(Class<? extends Entity> clazz, ContentValues values, String selection, String[] selectionArgs) {
        String tableName = getTableName(clazz);
        if (tableName == null) {
            return false;
        }
        int result = 0;
        try {
            result = this.dbHelper.getWritableDatabase().update(tableName, values, selection, selectionArgs);
        } catch (Object e) {
            Log.e("EntityManager", "update error.\n", e);
        }
        if (result > 0) {
            return true;
        }
        return false;
    }

    public boolean delete(Entity entity) {
        if (entity == null || entity.getId() < 0) {
            return false;
        }
        int result = 0;
        try {
            result = this.dbHelper.getWritableDatabase().delete(entity.getTableName(), "_id=?", new String[]{String.valueOf(entity.getId())});
        } catch (Object e) {
            Log.e("EntityManager", "delete error.\n", e);
        }
        if (result <= 0) {
            return false;
        }
        return true;
    }

    public boolean delete(Class<? extends Entity> clazz, String selection, String[] selectionArgs) {
        String tableName = getTableName(clazz);
        if (tableName == null) {
            return false;
        }
        int result = 0;
        try {
            result = this.dbHelper.getWritableDatabase().delete(tableName, selection, selectionArgs);
        } catch (Object e) {
            Log.e("EntityManager", "delete error.\n", e);
        }
        if (result > 0) {
            return true;
        }
        return false;
    }

    public boolean deleteAll(Class<? extends Entity> clazz) {
        return delete(clazz, null, null);
    }

    public <T extends Entity> T find(Class<T> clazz, long id) {
        return find(clazz, "_id=?", new String[]{String.valueOf(id)});
    }

    public <T extends Entity> T find(Class<T> clazz, String... uniques) {
        Entity entity = (Entity) newInstance(clazz);
        if (entity == null) {
            return null;
        }
        String tableName = entity.getTableName();
        String[] constraints = entity.getUniqueConstraints();
        String selection = getConstraintsSelection(constraints);
        if (!TextUtils.isEmpty(selection) && uniques.length == constraints.length) {
            return find(clazz, selection, uniques);
        }
        throw new RuntimeException(String.format("uniques should match %.getUniqueConstraints()", new Object[]{tableName}));
    }

    public <T extends Entity> T find(Class<T> clazz, String selection, String[] selectionArgs) {
        T entity = (Entity) newInstance(clazz);
        if (entity == null) {
            return null;
        }
        Cursor cursor = null;
        try {
            cursor = this.dbHelper.getReadableDatabase().query(entity.getTableName(), null, selection, selectionArgs, null, null, null);
            if (cursor == null || !cursor.moveToFirst()) {
                entity = null;
            } else {
                entity.initFromCursor(cursor);
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Object e) {
            entity = null;
            Log.e("EntityManager", "find error.\n", e);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return entity;
    }

    public <T extends Entity> List<T> query(Class<T> clazz, String selection, String[] selectionArgs) {
        return query(clazz, null, selection, selectionArgs, null, null, null, null);
    }

    public <T extends Entity> List<T> query(Class<T> clazz, String selection, String[] selectionArgs, String orderBy, String limit) {
        return query(clazz, null, selection, selectionArgs, null, null, orderBy, limit);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x003e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T extends Entity> List<T> query(Class<T> clazz, String[] projection, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit) {
        String tableName = getTableName(clazz);
        if (tableName == null) {
            return null;
        }
        Cursor cursor = null;
        List<T> list = new ArrayList();
        try {
            cursor = this.dbHelper.getReadableDatabase().query(tableName, projection, selection, selectionArgs, groupBy, having, orderBy, limit);
            if (cursor != null && cursor.moveToFirst()) {
                do {
                    T entity = cursorToEntity(clazz, cursor);
                    if (entity != null) {
                        list.add(entity);
                    }
                } while (cursor.moveToNext());
                if (cursor != null) {
                }
            } else if (cursor != null) {
                return list;
            } else {
                cursor.close();
                return list;
            }
        } catch (Object e) {
            Log.e("EntityManager", "query error.\n", e);
            if (cursor == null) {
                return list;
            }
            cursor.close();
            return list;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public Cursor rawQuery(Class<? extends Entity> clazz, String[] projection, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit) {
        String tableName = getTableName(clazz);
        if (tableName == null) {
            return null;
        }
        Cursor cursor = null;
        try {
            return this.dbHelper.getReadableDatabase().query(tableName, projection, selection, selectionArgs, groupBy, having, orderBy, limit);
        } catch (Object e) {
            Log.e("EntityManager", "query error.\n", e);
            return cursor;
        }
    }

    private static String getTableName(Class<? extends Entity> clazz) {
        Entity entity = (Entity) newInstance(clazz);
        if (entity != null) {
            return entity.getTableName();
        }
        return null;
    }

    private <T extends Entity> T cursorToEntity(Class<T> clazz, Cursor cursor) {
        Entity entity = (Entity) newInstance(clazz);
        if (entity != null) {
            entity.initFromCursor(cursor);
        }
        return entity;
    }

    private static String getConstraintsSelection(String[] constraints) {
        if (constraints == null) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        int count = constraints.length;
        for (int i = 0; i < count; i++) {
            result.append(constraints[i]);
            if (i == constraints.length - 1) {
                result.append("=?");
            } else {
                result.append("=? AND ");
            }
        }
        return result.toString();
    }

    private static <T> T newInstance(Class<T> clazz) {
        T t = null;
        if (clazz == null) {
            return t;
        }
        try {
            Constructor<T> constructor = clazz.getDeclaredConstructor(new Class[0]);
            constructor.setAccessible(true);
            return constructor.newInstance(new Object[0]);
        } catch (Object e) {
            Log.e("EntityManager", "newInstance error.\n", e);
            return t;
        }
    }

    public static void createTable(SQLiteDatabase db, Class<? extends Entity> clazz) {
        Entity entity = (Entity) newInstance(clazz);
        if (entity != null) {
            db.execSQL(getCreateTableSql(entity.getTableName(), entity.getTableColumns()));
        }
    }

    public static String getCreateTableSql(String tableName, List<TableColumn> columns) {
        StringBuilder builder = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        builder.append(tableName);
        builder.append("(_id INTEGER PRIMARY KEY AUTOINCREMENT");
        int count = columns.size();
        for (int i = 0; i < count; i++) {
            builder.append(", ");
            TableColumn column = (TableColumn) columns.get(i);
            builder.append(column.name).append(" ").append(column.type);
            if (column.isUnique) {
                builder.append(" UNIQUE");
            } else if (column.defaultValue != null) {
                builder.append(" DEFAULT '").append(column.defaultValue).append("'");
            }
        }
        builder.append(")");
        return builder.toString();
    }

    public static String getAddColumnSql(String tableName, TableColumn tableColumn) {
        StringBuilder builder = new StringBuilder("ALTER TABLE ");
        builder.append(tableName).append(" ADD ");
        builder.append(tableColumn.name).append(" ").append(tableColumn.type);
        if (tableColumn.isUnique) {
            builder.append(" UNIQUE");
        } else if (tableColumn.defaultValue != null) {
            builder.append(" DEFAULT '").append(tableColumn.defaultValue).append("'");
        }
        return builder.toString();
    }

    public static void checkTableChange(SQLiteDatabase db, List<Class<? extends Entity>> tables) {
        Iterator it;
        ArrayList<String> allStatement = new ArrayList();
        int i = 0;
        int count = tables.size();
        while (i < count) {
            Entity entity = (Entity) newInstance((Class) tables.get(i));
            String tableName = entity.getTableName();
            List<TableColumn> tableColumns = entity.getTableColumns();
            Cursor cursor = null;
            try {
                cursor = db.rawQuery("SELECT sql FROM sqlite_master WHERE type=? AND name=?", new String[]{"table", tableName});
                if (cursor == null || !cursor.moveToFirst()) {
                    allStatement.add(getCreateTableSql(tableName, tableColumns));
                } else {
                    String sql = cursor.getString(0);
                    for (String column : sql.substring(sql.indexOf("(") + 1).split(",")) {
                        String name = column.trim().split(" ", 2)[0];
                        Iterator<TableColumn> iterator = tableColumns.iterator();
                        while (iterator.hasNext()) {
                            if (name.equalsIgnoreCase(((TableColumn) iterator.next()).name)) {
                                iterator.remove();
                            }
                        }
                    }
                    for (TableColumn tableColumn : tableColumns) {
                        allStatement.add(getAddColumnSql(tableName, tableColumn));
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                i++;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        db.beginTransaction();
        try {
            it = allStatement.iterator();
            while (it.hasNext()) {
                db.execSQL((String) it.next());
            }
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
    }

    protected void addTable(Class<? extends Entity> clazz) {
        if (this.mTables == null) {
            this.mTables = new ArrayList();
        }
        this.mTables.add(clazz);
    }

    private void initTableList() {
        if (this.mTables == null) {
            onInitTableList();
        }
    }

    protected void onDatabaseDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        throw new SQLiteException("Can't downgrade database from version " + oldVersion + " to " + newVersion);
    }
}
