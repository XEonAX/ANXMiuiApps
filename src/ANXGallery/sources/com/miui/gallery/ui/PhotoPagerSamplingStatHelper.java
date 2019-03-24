package com.miui.gallery.ui;

import android.net.Uri;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import miui.yellowpage.Tag.TagYellowPage;

public class PhotoPagerSamplingStatHelper {
    private static Uri mEditorSavedUri;

    public static void onImageShared(ArrayList<Uri> uris) {
        if (BaseMiscUtil.isValid(uris)) {
            if (uris.size() == 1 && mEditorSavedUri != null && mEditorSavedUri.equals(uris.get(0))) {
                Log.d("PhotoPagerSamplingStatHelper", "User share the photo after edit.");
                BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "photo_share_after_edit");
            }
            mEditorSavedUri = null;
        }
    }

    public static void onEditorSaved(Uri uri) {
        mEditorSavedUri = uri;
    }

    public static void onDestroy() {
        mEditorSavedUri = null;
    }
}
