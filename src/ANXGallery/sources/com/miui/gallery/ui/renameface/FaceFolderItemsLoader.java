package com.miui.gallery.ui.renameface;

import android.app.Activity;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.model.DisplayFolderItem;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.ui.renameface.FolderItemsLoader.LoaderUpdatedItems;
import com.miui.gallery.util.face.PeopleCursorHelper;
import java.util.ArrayList;

/* compiled from: FaceAlbumHandlerBase */
class FaceFolderItemsLoader extends FolderItemsLoader {
    public FaceFolderItemsLoader(Activity activity, String path, LoaderUpdatedItems listener, long[] selectedFolders) {
        super(activity, path, listener, selectedFolders, false);
    }

    protected ArrayList<DisplayFolderItem> refreshCloudFolderItems() {
        ArrayList<DisplayFolderItem> result = new ArrayList();
        Activity activity = (Activity) this.mActivityRef.get();
        if (activity != null) {
            Cursor cursor = null;
            try {
                cursor = activity.getContentResolver().query(PeopleFace.PERSONS_URI, PeopleCursorHelper.PROJECTION, null, null, null);
                while (cursor != null && cursor.moveToNext()) {
                    String thumbnail = PeopleCursorHelper.getThumbnailPath(cursor);
                    String name = PeopleCursorHelper.getPeopleName(cursor);
                    if (!TextUtils.isEmpty(name) && isMediaSetCandidate(PeopleCursorHelper.getPeopleLocalId(cursor))) {
                        result.add(new FaceDisplayFolderItem(name, thumbnail, PeopleCursorHelper.getPeopleLocalId(cursor), PeopleCursorHelper.getFaceRegionRectF(cursor)));
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return result;
    }
}
