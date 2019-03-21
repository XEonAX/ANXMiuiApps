package com.miui.gallery.share;

import com.miui.gallery.R;

public class NormalShareAlbumSharerActivity extends ShareAlbumSharerBaseActivity {
    private SharerPublicShareUiHandler mPublicShareUiHandler;

    protected void initPreferences() {
        super.initPreferences();
        this.mPublicShareUiHandler = new SharerPublicShareUiHandler(this, this.mAlbumName, this.mCloudSingleMediaSet);
        this.mPublicShareUiHandler.initPreferences();
        this.mPublicShareUiHandler.updatePublicPreference(this.mCloudSingleMediaSet.isPublic(), this.mCloudSingleMediaSet.getPublicUrl());
    }

    protected String getPageName() {
        return "album_normal_share_info";
    }

    protected void onDestroy() {
        this.mPublicShareUiHandler.onDestroy();
        super.onDestroy();
    }

    protected void updateSharers() {
        super.updateSharers();
        this.mPublicShareUiHandler.updateSharers(this.mSharerCount);
    }

    protected void onUpdateProgressChanged(int status) {
        this.mPublicShareUiHandler.updateProgressBar(status);
    }

    protected int getPreferencesResourceId() {
        return R.xml.share_album_sharer;
    }

    protected ShareUserAdapterBase createShareUserAdapter() {
        return new ShareUserAdapter(this, false, this.mCreatorId);
    }
}
