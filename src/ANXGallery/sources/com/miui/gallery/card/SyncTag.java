package com.miui.gallery.card;

import android.accounts.Account;
import android.content.ContentValues;
import android.database.Cursor;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import java.util.ArrayList;
import java.util.List;

public class SyncTag extends Entity {
    private String mAccountName;
    private String mAccountType;
    private String mCardSyncInfo;
    private long mCardSyncTag;

    public SyncTag(Account account) {
        this.mAccountName = account.name;
        this.mAccountType = account.type;
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "accountName", "TEXT");
        Entity.addColumn(columns, "accountType", "TEXT");
        Entity.addColumn(columns, "cardSyncTag", "INTEGER");
        Entity.addColumn(columns, "cardSyncInfo", "TEXT");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        this.mAccountName = Entity.getString(cursor, "accountName");
        this.mAccountType = Entity.getString(cursor, "accountType");
        this.mCardSyncTag = Entity.getLong(cursor, "cardSyncTag");
        this.mCardSyncInfo = Entity.getString(cursor, "cardSyncInfo");
    }

    protected void onConvertToContents(ContentValues values) {
        values.put("accountName", this.mAccountName);
        values.put("accountType", this.mAccountType);
        values.put("cardSyncTag", Long.valueOf(this.mCardSyncTag));
        values.put("cardSyncInfo", this.mCardSyncInfo);
    }

    public long getCardSyncTag() {
        return this.mCardSyncTag;
    }

    public String getCardSyncInfo() {
        return this.mCardSyncInfo;
    }
}
