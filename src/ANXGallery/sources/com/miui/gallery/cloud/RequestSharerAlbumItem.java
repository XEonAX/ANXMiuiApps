package com.miui.gallery.cloud;

import com.miui.gallery.data.DBShareAlbum;
import java.util.ArrayList;

public class RequestSharerAlbumItem extends RequestItemBase {
    public final DBShareAlbum mDBItem;

    public RequestSharerAlbumItem(int checkType, DBShareAlbum dbItem) {
        super(checkType);
        this.mDBItem = dbItem;
    }

    public ArrayList<RequestItemBase> getItems() {
        ArrayList<RequestItemBase> items = new ArrayList();
        items.add(this);
        return items;
    }

    public boolean isInSameAlbum(RequestItemBase requestItem) {
        return false;
    }

    public boolean supportMultiRequest() {
        return false;
    }

    public int getRequestLimitAGroup() {
        return 1;
    }
}
