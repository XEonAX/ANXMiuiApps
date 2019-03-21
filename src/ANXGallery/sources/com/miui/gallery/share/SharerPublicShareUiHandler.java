package com.miui.gallery.share;

import android.text.TextUtils;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.threadpool.Future;

public class SharerPublicShareUiHandler extends PublicShareUiHandler {
    public SharerPublicShareUiHandler(ShareAlbumBaseActivity activity, String albumName, CloudSharerMediaSet mediaSet) {
        super(activity, albumName, mediaSet);
    }

    protected void initPreferences() {
        super.initPreferences();
        tryToRequestPublicUrl();
    }

    private void tryToRequestPublicUrl() {
        if (this.mFuturePublic == null || this.mFuturePublic.isDone() || this.mFuturePublic.isCancelled()) {
            this.mFuturePublic = requestPublicUrl(this.mAlbumId, new OnCompletionListener<Void, String>() {
                public void onCompletion(Void id, String publicUrl, int error, boolean cancelled) {
                    if (!cancelled && error == 0 && publicUrl != null) {
                        SharerPublicShareUiHandler.this.updatePublicPreference(!TextUtils.isEmpty(publicUrl), publicUrl);
                    }
                }
            });
        }
    }

    protected final Future<?> requestPublicUrl(String albumId, OnCompletionListener<Void, String> l) {
        return AlbumShareUIManager.requestPublicUrlForSharerAsync(albumId, l);
    }
}
