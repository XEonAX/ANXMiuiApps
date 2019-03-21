package com.miui.gallery.share.baby;

import com.miui.gallery.R;
import com.miui.gallery.share.ShareAlbumSharerBaseActivity;
import com.miui.gallery.share.ShareUserAdapterBase;

public class BabyShareAlbumSharerActivity extends ShareAlbumSharerBaseActivity {
    protected int getPreferencesResourceId() {
        return R.xml.baby_share_album_preference;
    }

    protected ShareUserAdapterBase createShareUserAdapter() {
        return new BabyAlbumShareUserAdapter(this, this.mCreatorId);
    }

    protected String getPageName() {
        return "album_baby_share_info";
    }
}
