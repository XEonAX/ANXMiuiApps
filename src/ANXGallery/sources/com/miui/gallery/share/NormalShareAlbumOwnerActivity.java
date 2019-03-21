package com.miui.gallery.share;

import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.share.AlbumShareOperations.OutgoingInvitation;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.share.QRPreference.Status;
import com.miui.gallery.threadpool.Future;
import java.util.List;

public class NormalShareAlbumOwnerActivity extends ShareAlbumOwnerBaseActivity {
    private Future<?> mFutureQR;
    private OwnerPublicShareUiHandler mPublicShareUiHandler;
    private QRPreference mQRCodePreference;

    protected String getPageName() {
        return "album_normal_share_owner_info";
    }

    protected void onDestroy() {
        if (this.mPublicShareUiHandler != null) {
            this.mPublicShareUiHandler.onDestroy();
        }
        if (this.mFutureQR != null) {
            this.mFutureQR.cancel();
        }
        super.onDestroy();
    }

    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (this.mPublicShareUiHandler.onPreferenceTreeClick(preferenceScreen, preference)) {
            return true;
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    protected void updateStatus() {
        if (!isFinishing()) {
            super.updateStatus();
            if (CloudUtils.isValidAlbumId(this.mAlbumId)) {
                tryToRequestBarcodeUrl();
            }
            this.mPublicShareUiHandler.updateStatus();
        }
    }

    protected void initPreferences() {
        super.initPreferences();
        this.mPublicShareUiHandler = new OwnerPublicShareUiHandler(this, this.mAlbumName, this.mCloudSingleMediaSet);
        this.mPublicShareUiHandler.initPreferences();
        this.mQRCodePreference = (QRPreference) findPreference("qr_code");
        this.mQRCodePreference.setRetryListener(new OnClickListener() {
            public void onClick(View v) {
                NormalShareAlbumOwnerActivity.this.tryToRequestBarcodeUrl();
            }
        });
    }

    protected int getContentView() {
        return R.layout.share_album_owner;
    }

    protected int getPreferencesResourceId() {
        return R.xml.share_album_owner;
    }

    private void tryToRequestBarcodeUrl() {
        if (this.mQRCodePreference.getQRText() != null) {
            return;
        }
        if (this.mFutureQR == null || this.mFutureQR.isDone() || this.mFutureQR.isCancelled()) {
            this.mQRCodePreference.setStatus(Status.REQUESTING);
            this.mFutureQR = AlbumShareUIManager.requestUrlForBarcodeAsync(this.mAlbumId, new OnCompletionListener<Void, String>() {
                public void onCompletion(Void id, String barcode, int error, boolean cancelled) {
                    if (!cancelled) {
                        if (error != 0 || barcode == null) {
                            NormalShareAlbumOwnerActivity.this.mQRCodePreference.setStatus(Status.FAILED);
                            return;
                        }
                        NormalShareAlbumOwnerActivity.this.mQRCodePreference.setQRText(barcode);
                        NormalShareAlbumOwnerActivity.this.mQRCodePreference.setStatus(Status.SUCCESS);
                    }
                }
            });
        }
    }

    protected List<CloudUserCacheEntry> getShareUsers() {
        List<CloudUserCacheEntry> users = super.getShareUsers();
        users.add(0, getOwnerEntry(GalleryCloudUtils.getAccountName()));
        return users;
    }

    protected ShareUserAdapterBase createShareUserAdapter() {
        return new ShareUserAdapter(this, true, GalleryCloudUtils.getAccountName());
    }

    protected void updateSharers() {
        super.updateSharers();
        this.mPublicShareUiHandler.updateSharers(this.mSharerCount);
    }

    protected void onUpdateProgressChanged(int status) {
        this.mPublicShareUiHandler.updateProgressBar(status);
    }

    protected void requestInvitation(CloudUserCacheEntry entry, OnCompletionListener<Void, OutgoingInvitation> urlRequestListener) {
        requestInvitation(null, null, null, null, urlRequestListener);
    }
}
