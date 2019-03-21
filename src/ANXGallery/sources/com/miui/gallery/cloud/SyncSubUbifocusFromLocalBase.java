package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;

public abstract class SyncSubUbifocusFromLocalBase extends SyncFromLocalBase {
    private ArrayList<RequestCloudItem> mAutoCreateImageItems;
    private ArrayList<RequestCloudItem> mManualCreateImageItems;
    private boolean mNoDelay;

    public SyncSubUbifocusFromLocalBase(Context context, Account account, GalleryExtendedAuthToken extendedAuthToken, boolean noDelay) {
        super(context, account, extendedAuthToken);
        this.mNoDelay = noDelay;
    }

    protected void initRequestCloudItemList() {
        this.mManualCreateImageItems = new ArrayList();
        this.mAutoCreateImageItems = new ArrayList();
    }

    protected void putToRequestCloudItemList(DBItem item) {
        DBImage dbCloud = (DBImage) item;
        switch (dbCloud.getLocalFlag()) {
            case 7:
                switch (dbCloud.getServerType()) {
                    case 1:
                        this.mAutoCreateImageItems.add(new RequestCloudItem(4, dbCloud, this.mNoDelay));
                        return;
                    default:
                        SyncLog.e("SyncUbifocusFromLocal", "unsupport local flag=%d serverType=%d", Integer.valueOf(dbCloud.getLocalFlag()), Integer.valueOf(dbCloud.getServerType()));
                        return;
                }
            case 8:
                switch (dbCloud.getServerType()) {
                    case 1:
                        this.mManualCreateImageItems.add(new RequestCloudItem(5, dbCloud, this.mNoDelay));
                        return;
                    default:
                        SyncLog.e("SyncUbifocusFromLocal", "unsupport local flag= %d serverType= %d", Integer.valueOf(dbCloud.getLocalFlag()), Integer.valueOf(dbCloud.getServerType()));
                        return;
                }
            default:
                SyncLog.e("SyncUbifocusFromLocal", "unsupport local flag %d", Integer.valueOf(dbCloud.getLocalFlag()));
                return;
        }
    }

    protected void handleRequestCloudItemList() throws Exception {
        if (this.mManualCreateImageItems.size() > 0) {
            SyncLog.v("SyncUbifocusFromLocal", "start upload manual create images");
            UpDownloadManager.dispatchList(this.mManualCreateImageItems);
        }
        if (this.mAutoCreateImageItems.size() > 0) {
            SyncLog.v("SyncUbifocusFromLocal", "start upload auto create images");
            UpDownloadManager.dispatchList(this.mAutoCreateImageItems);
        }
    }
}
