package com.miui.gallery.share;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.threadpool.Future;

public abstract class PublicShareUiHandler {
    protected ShareAlbumBaseActivity mActivity;
    protected String mAlbumId;
    private String mAlbumName;
    protected CloudSharerMediaSet mCloudSingleMediaSet;
    protected Future<?> mFuturePublic;
    private final Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            PublicShareUiHandler.this.updateProgressBarDirectly(msg.arg1);
        }
    };
    protected PreferenceCategory mPublicPreference;
    private DescriptPreference mPublicUrlDescriptPreference;
    private PreferenceScreen mSendPublicUrlPreference;
    protected PreferenceCategory mSharersPreference;

    protected abstract Future<?> requestPublicUrl(String str, OnCompletionListener<Void, String> onCompletionListener);

    public PublicShareUiHandler(ShareAlbumBaseActivity activity, String albumName, CloudSharerMediaSet mediaSet) {
        this.mActivity = activity;
        this.mAlbumName = albumName;
        this.mCloudSingleMediaSet = mediaSet;
    }

    void initPreferences() {
        this.mSharersPreference = (PreferenceCategory) this.mActivity.findPreference("sharers");
        this.mSharersPreference.setTitle(this.mActivity.getString(R.string.album_member, new Object[]{""}));
        this.mPublicPreference = (PreferenceCategory) this.mActivity.findPreference("public_share");
        this.mSendPublicUrlPreference = (PreferenceScreen) this.mActivity.findPreference("send_public_url");
    }

    protected void updatePublicPreference(boolean isPublic, final String publicUrl) {
        if (isPublic) {
            if (this.mSendPublicUrlPreference != null) {
                sendPublicPreference(publicUrl);
            }
            if (this.mPublicUrlDescriptPreference == null) {
                this.mPublicUrlDescriptPreference = new DescriptPreference(this.mActivity, null);
                this.mPublicUrlDescriptPreference.setKey("public_url_descript");
                this.mPublicUrlDescriptPreference.setDescriptTitle((int) R.string.public_url_descript);
            }
            if (!TextUtils.isEmpty(publicUrl)) {
                this.mPublicUrlDescriptPreference.setDescriptDetail(publicUrl);
                this.mPublicUrlDescriptPreference.setDescriptDetailVisibility(0);
                this.mPublicUrlDescriptPreference.setOnPreferenceClickListener(new OnPreferenceClickListener() {
                    public boolean onPreferenceClick(Preference preference) {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(publicUrl));
                        try {
                            PublicShareUiHandler.this.mActivity.startActivity(intent);
                        } catch (ActivityNotFoundException e) {
                        }
                        return false;
                    }
                });
            }
            if (this.mPublicPreference.findPreference("public_url_descript") == null) {
                this.mPublicPreference.addPreference(this.mPublicUrlDescriptPreference);
                return;
            }
            return;
        }
        if (this.mSendPublicUrlPreference != null) {
            this.mPublicPreference.removePreference(this.mSendPublicUrlPreference);
        }
        if (this.mPublicUrlDescriptPreference != null) {
            this.mPublicPreference.removePreference(this.mPublicUrlDescriptPreference);
        }
    }

    private void sendPublicPreference(String publicUrl) {
        this.mSendPublicUrlPreference.setIntent(PhoneShareAlbumProvider.getInstance().getShareUrlIntent(this.mActivity, this.mAlbumName, "", publicUrl, true));
        this.mPublicPreference.addPreference(this.mSendPublicUrlPreference);
    }

    public void onDestroy() {
        if (this.mFuturePublic != null) {
            this.mFuturePublic.cancel();
        }
    }

    void updateSharers(int sharerCount) {
        if (!CloudUtils.isValidAlbumId(this.mAlbumId)) {
            return;
        }
        if (sharerCount > 0) {
            this.mSharersPreference.setTitle(this.mActivity.getString(R.string.album_member, new Object[]{"(" + sharerCount + ")"}));
            return;
        }
        this.mSharersPreference.setTitle(this.mActivity.getString(R.string.album_member, new Object[]{""}));
    }

    void updateProgressBar(int newStatus) {
        this.mHandler.removeMessages(1);
        if (newStatus != 1) {
            this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 1, newStatus, 0), 2000);
            return;
        }
        updateProgressBarDirectly(newStatus);
    }

    private void updateProgressBarDirectly(int newStatus) {
        if (newStatus == 1) {
            this.mSharersPreference.setSummary(R.string.loading_members);
        } else {
            this.mSharersPreference.setSummary(null);
        }
    }
}
