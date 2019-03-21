package com.miui.gallery.cloud;

import java.util.ArrayList;
import java.util.Iterator;

public class RequestMultiItem extends RequestItemBase {
    public ArrayList<RequestItemBase> multiRequestItems;

    public RequestMultiItem(ArrayList<RequestItemBase> multiRequestItems, int priority) {
        super(priority);
        this.multiRequestItems = multiRequestItems;
        init();
    }

    public ArrayList<RequestItemBase> getItems() {
        ArrayList<RequestItemBase> items = new ArrayList();
        items.addAll(this.multiRequestItems);
        return items;
    }

    public void setStatus(int s) {
        super.setStatus(s);
        Iterator it = this.multiRequestItems.iterator();
        while (it.hasNext()) {
            ((RequestItemBase) it.next()).setStatus(s);
        }
    }

    public boolean compareAndSetStatus(int expect, int update) {
        boolean changed = super.compareAndSetStatus(expect, update);
        Iterator it = this.multiRequestItems.iterator();
        while (it.hasNext()) {
            ((RequestItemBase) it.next()).compareAndSetStatus(expect, update);
        }
        return changed;
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
