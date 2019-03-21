package com.miui.gallery.share;

import android.content.Context;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.lib.MiuiGalleryUtils;
import com.miui.gallery.share.AlbumShareUIManager.BlockMessage;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;

public class AlbumShareInvitationAcceptActivity extends AlbumShareInvitationActivityBase {
    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        if (ApplicationHelper.supportShare()) {
            if (icicle == null && getIntent() != null) {
                icicle = getIntent().getExtras();
            }
            if (icicle != null && icicle.containsKey("invitation-url")) {
                String url = icicle.getString("invitation-url");
                if (MiuiGalleryUtils.isAlbumShareInvitationUrl(url)) {
                    AlbumShareInvitationHandler.acceptShareInvitation(this, url, 16, BlockMessage.create(this, null, getString(R.string.get_album_info_in_process), true, new OnBlockMessageCancelled(this)));
                    return;
                }
            }
            ToastUtils.makeText((Context) this, (int) R.string.invalid_invition_url);
            finish();
            return;
        }
        ToastUtils.makeText((Context) this, (int) R.string.error_share_not_support);
        finish();
    }
}
