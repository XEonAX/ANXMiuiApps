package com.miui.gallery.cloud;

import android.accounts.Account;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;

public interface Operation {
    int checkState(RequestItemBase requestItemBase);

    GallerySyncResult execute(Account account, GalleryExtendedAuthToken galleryExtendedAuthToken, String str, RequestItemBase requestItemBase) throws Exception;
}
