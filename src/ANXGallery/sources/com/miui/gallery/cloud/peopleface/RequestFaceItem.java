package com.miui.gallery.cloud.peopleface;

import android.text.TextUtils;
import com.miui.gallery.cloud.RequestItemBase;
import java.util.ArrayList;

public class RequestFaceItem extends RequestItemBase {
    public PeopleFace face;

    public RequestFaceItem(int type, PeopleFace dbCloud) {
        super(type, 0);
        this.face = dbCloud;
        init();
    }

    public ArrayList<RequestItemBase> getItems() {
        ArrayList<RequestItemBase> items = new ArrayList();
        items.add(this);
        return items;
    }

    public boolean isInSameAlbum(RequestItemBase another) {
        RequestFaceItem anotherRequestFaceItem = (RequestFaceItem) another;
        if (anotherRequestFaceItem.face.localFlag == this.face.localFlag) {
            if (anotherRequestFaceItem.face.localFlag == 5) {
                return TextUtils.equals(anotherRequestFaceItem.face.localGroupId, this.face.localGroupId);
            }
            if (anotherRequestFaceItem.face.localFlag == 2) {
                return TextUtils.equals(anotherRequestFaceItem.face.groupId, this.face.groupId);
            }
        }
        return true;
    }

    public boolean supportMultiRequest() {
        return this.face.localFlag == 5;
    }

    public int getRequestLimitAGroup() {
        return 50;
    }
}
