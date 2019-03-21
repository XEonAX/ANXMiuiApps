package com.miui.gallery.cloud.peopleface.syncoperation;

import android.content.Context;
import com.miui.gallery.cloud.RequestOperationBase;

public abstract class FaceRequestOperationBase extends RequestOperationBase {
    public FaceRequestOperationBase(Context context) {
        super(context);
    }

    public int getLimitCountForOperation() {
        return -1;
    }
}
