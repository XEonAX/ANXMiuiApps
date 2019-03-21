package com.miui.gallery.ui.renameface;

import android.graphics.RectF;
import com.miui.gallery.model.DisplayFolderItem;

/* compiled from: FaceAlbumHandlerBase */
class FaceDisplayFolderItem extends DisplayFolderItem {
    boolean isTip;
    RectF mFacePosRelative;

    public FaceDisplayFolderItem(String aName, String aThumbnailPath, String localGroupId, RectF aFacePosRelative) {
        super(aName, aThumbnailPath, localGroupId);
        this.mFacePosRelative = aFacePosRelative;
    }

    public FaceDisplayFolderItem(boolean isTip) {
        super("", null, 0, "", "");
        this.isTip = isTip;
    }
}
