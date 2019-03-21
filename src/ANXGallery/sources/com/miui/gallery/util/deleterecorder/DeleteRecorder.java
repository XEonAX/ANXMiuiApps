package com.miui.gallery.util.deleterecorder;

import android.accounts.Account;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.Collection;
import java.util.List;

public class DeleteRecorder {
    public static int record(DeleteRecord record) {
        if (record == null) {
            return 0;
        }
        Log.d("DeleteRecorder", "Start to insert %s", (Object) record);
        boolean result = GalleryEntityManager.getInstance().insert((Entity) record);
        Log.d("DeleteRecorder", "Done inserting operation, result %s", Boolean.valueOf(result));
        if (result) {
            return 1;
        }
        return 0;
    }

    public static int record(Collection<DeleteRecord> operationRecords) {
        if (!BaseMiscUtil.isValid(operationRecords)) {
            return 0;
        }
        Log.d("DeleteRecorder", "Start to insert %s", TextUtils.join("\n", operationRecords));
        int rows = GalleryEntityManager.getInstance().insert((Collection) operationRecords);
        Log.d("DeleteRecorder", "Done inserting %d operations, affected %d rows", Integer.valueOf(operationRecords.size()), Integer.valueOf(rows));
        return rows;
    }

    public static boolean clearExpiredRecords() {
        return clearExpiredRecords(10000, System.currentTimeMillis() - 2592000000L);
    }

    public static boolean clearExpiredRecords(int maxRecordCount, long expireTime) {
        boolean result = false;
        if (queryRecordCount() <= maxRecordCount) {
            Log.d("DeleteRecorder", "Record count doesn't exceed max");
        } else {
            result = GalleryEntityManager.getInstance().delete(DeleteRecord.class, "timestamp<=?", new String[]{String.valueOf(expireTime)});
            if (result) {
                Log.d("DeleteRecorder", "Done delete records before %s", Long.valueOf(expireTime));
            } else {
                Log.e("DeleteRecorder", "Failed to delete records before %s", Long.valueOf(expireTime));
            }
        }
        return result;
    }

    private static int queryRecordCount() {
        try {
            Cursor cursor = GalleryEntityManager.getInstance().rawQuery(DeleteRecord.class, new String[]{"count(*)"}, null, null, null, null, null, null);
            int i = (cursor == null || !cursor.moveToFirst()) ? 0 : cursor.getInt(0);
            BaseMiscUtil.closeSilently(cursor);
            return i;
        } catch (Throwable e) {
            Log.e("DeleteRecorder", e);
            BaseMiscUtil.closeSilently(null);
            return 0;
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
            throw th;
        }
    }

    public static boolean clearAllRecords() {
        try {
            GalleryEntityManager.getInstance().deleteAll(DeleteRecord.class);
            return true;
        } catch (Object e) {
            Log.e("DeleteRecorder", "clearAllRecords occur error %s.", e);
            return false;
        }
    }

    public static List<DeleteRecord> queryRecords(String selection, String[] args) {
        return GalleryEntityManager.getInstance().query(DeleteRecord.class, selection, args);
    }

    public static void onDeleteAccount() {
        onDeleteAccount(getHashAccount());
    }

    static void onDeleteAccount(String account) {
        if (!TextUtils.isEmpty(account)) {
            record(new DeleteRecord(91, account, "DeleteRecorder"));
            Log.d("DeleteRecorder", "On record delete account operation, %s", (Object) account);
        }
    }

    public static void onAddAccount() {
        onAddAccount(getHashAccount());
    }

    static void onAddAccount(String newAccount) {
        if (TextUtils.isEmpty(newAccount)) {
            Log.d("DeleteRecorder", "New account is null, skip clean process");
            return;
        }
        String oldAccount = null;
        List<DeleteRecord> deleteAccountRecords = queryRecords("reason=?", new String[]{String.valueOf(91)});
        if (BaseMiscUtil.isValid(deleteAccountRecords)) {
            oldAccount = ((DeleteRecord) deleteAccountRecords.get(0)).getFilePath();
        }
        if (TextUtils.isEmpty(oldAccount)) {
            Log.d("DeleteRecorder", "Old account is null, skip clean process");
        } else if (TextUtils.equals(oldAccount, newAccount)) {
            Log.d("DeleteRecorder", "New account is same as old account, skip clean process");
        } else if (clearAllRecords()) {
            Log.d("DeleteRecorder", "Done clearing records after logged in with a different account");
        } else {
            Log.w("DeleteRecorder", "Fail to clear records after logged in with a different account");
        }
    }

    private static String getHashAccount() {
        Account account = AccountCache.getAccount();
        if (account == null || TextUtils.isEmpty(account.name)) {
            return null;
        }
        return String.valueOf(account.name.hashCode());
    }
}
