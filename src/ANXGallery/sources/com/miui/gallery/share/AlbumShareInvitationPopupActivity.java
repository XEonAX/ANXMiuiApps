package com.miui.gallery.share;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.R;
import com.miui.gallery.share.AlbumShareUIManager.BlockMessage;
import com.nexstreaming.nexeditorsdk.nexExportFormat;

public class AlbumShareInvitationPopupActivity extends AlbumShareInvitationActivityBase {
    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        if (icicle == null && getIntent() != null) {
            icicle = getIntent().getExtras();
        }
        String pathStr = null;
        if (icicle != null) {
            pathStr = icicle.getString(nexExportFormat.TAG_FORMAT_PATH);
        }
        if (TextUtils.isEmpty(pathStr)) {
            Log.e("AlbumShareInvitationPopupActivity", "bad path");
            finish();
            return;
        }
        AlbumShareInvitationHandler.applyToShareAlbum(this, Path.fromString(pathStr), true, BlockMessage.create(this, null, getString(R.string.get_album_info_in_process), true, new OnBlockMessageCancelled(this)));
    }
}
