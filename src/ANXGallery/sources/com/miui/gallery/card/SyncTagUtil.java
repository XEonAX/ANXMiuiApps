package com.miui.gallery.card;

import android.accounts.Account;
import android.content.ContentValues;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.List;
import java.util.Locale;

public class SyncTagUtil {
    private static String getAcountSelection(Account account) {
        return "accountName = '" + account.name + "' AND " + "accountType" + " = '" + account.type + "'";
    }

    private static SyncTag getSyncTagByAccount(Account account) {
        if (account != null) {
            Class cls = SyncTag.class;
            List<SyncTag> list = GalleryEntityManager.getInstance().query(cls, getAcountSelection(account), null, null, String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(1)}));
            if (BaseMiscUtil.isValid(list)) {
                return (SyncTag) list.get(0);
            }
        }
        return null;
    }

    public static long getCardSyncTag(Account account) {
        SyncTag syncTag = getSyncTagByAccount(account);
        if (syncTag != null) {
            return syncTag.getCardSyncTag();
        }
        return 0;
    }

    public static void setCardSyncTag(Account account, long cardSyncTag) {
        if (account != null) {
            ContentValues values = new ContentValues();
            values.put("cardSyncTag", Long.valueOf(cardSyncTag));
            GalleryEntityManager.getInstance().update(SyncTag.class, values, getAcountSelection(account), null);
        }
    }

    public static String getCardSyncInfo(Account account) {
        SyncTag syncTag = getSyncTagByAccount(account);
        if (syncTag != null) {
            return syncTag.getCardSyncInfo();
        }
        return "";
    }

    public static void setCardSyncInfo(Account account, String syncInfo) {
        if (account != null) {
            ContentValues values = new ContentValues();
            values.put("cardSyncInfo", syncInfo);
            GalleryEntityManager.getInstance().update(SyncTag.class, values, getAcountSelection(account), null);
        }
    }

    public static void ensureAccount(Account account) {
        if (account != null && !BaseMiscUtil.isValid(GalleryEntityManager.getInstance().query(SyncTag.class, getAcountSelection(account), null))) {
            GalleryEntityManager.getInstance().insert((Entity) new SyncTag(account));
        }
    }
}
