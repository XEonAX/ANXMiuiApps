package com.miui.gallery.share;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.threadpool.Future;
import java.util.LinkedList;

public class OwnerPublicShareUiHandler extends PublicShareUiHandler {
    private static long CLICK_PUBLIC_INTERNAL = 60000;
    private static long CLICK_PUBLIC_LIMIT = 10;
    private static LinkedList<Long> sClickTimes;
    private CheckBoxPreference mOpenPublicPreference;
    private PublishProgressPreference mProgressPreference;

    public OwnerPublicShareUiHandler(NormalShareAlbumOwnerActivity activity, String albumName, CloudSharerMediaSet mediaSet) {
        super(activity, albumName, mediaSet);
    }

    protected void initPreferences() {
        super.initPreferences();
        this.mOpenPublicPreference = (CheckBoxPreference) this.mActivity.findPreference("open_public_share");
    }

    private void tryToChangePublicStatus() {
        boolean z = true;
        if (this.mFuturePublic != null && !this.mFuturePublic.isDone() && !this.mFuturePublic.isCancelled()) {
            this.mPublicPreference.removePreference(this.mProgressPreference);
            if (this.mFuturePublic != null) {
                this.mFuturePublic.cancel();
            }
        } else if (canClickPublic()) {
            if (this.mProgressPreference == null) {
                this.mProgressPreference = new PublishProgressPreference(this.mActivity);
            }
            this.mPublicPreference.addPreference(this.mProgressPreference);
            this.mProgressPreference.setProgress(true, this.mOpenPublicPreference.isChecked());
            this.mFuturePublic = AlbumShareUIManager.changePublicStatusAsync(this.mAlbumId, this.mOpenPublicPreference.isChecked(), new OnCompletionListener<Void, String>() {
                public void onCompletion(Void id, String publicUrl, int error, boolean cancelled) {
                    boolean z = true;
                    OwnerPublicShareUiHandler.this.mPublicPreference.removePreference(OwnerPublicShareUiHandler.this.mProgressPreference);
                    if (!cancelled) {
                        if (error == 0) {
                            OwnerPublicShareUiHandler.this.updatePublicPreference(OwnerPublicShareUiHandler.this.mOpenPublicPreference.isChecked(), publicUrl);
                            UIHelper.toast(OwnerPublicShareUiHandler.this.mOpenPublicPreference.isChecked() ? R.string.publish_succeeded : R.string.unpublish_succeeded);
                            OwnerPublicShareUiHandler.this.mOpenPublicPreference.setChecked(OwnerPublicShareUiHandler.this.mOpenPublicPreference.isChecked());
                            return;
                        }
                        boolean z2;
                        OwnerPublicShareUiHandler ownerPublicShareUiHandler = OwnerPublicShareUiHandler.this;
                        if (OwnerPublicShareUiHandler.this.mOpenPublicPreference.isChecked()) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        ownerPublicShareUiHandler.updatePublicPreference(z2, publicUrl);
                        UIHelper.toast(OwnerPublicShareUiHandler.this.mOpenPublicPreference.isChecked() ? R.string.publish_failed : R.string.unpublish_failed);
                        CheckBoxPreference access$100 = OwnerPublicShareUiHandler.this.mOpenPublicPreference;
                        if (OwnerPublicShareUiHandler.this.mOpenPublicPreference.isChecked()) {
                            z = false;
                        }
                        access$100.setChecked(z);
                    }
                }
            });
        } else {
            UIHelper.toast((int) R.string.operation_too_often);
            CheckBoxPreference checkBoxPreference = this.mOpenPublicPreference;
            if (this.mOpenPublicPreference.isChecked()) {
                z = false;
            }
            checkBoxPreference.setChecked(z);
        }
    }

    void updateStatus() {
        this.mAlbumId = this.mCloudSingleMediaSet.getAlbumId();
        if (CloudUtils.isValidAlbumId(this.mAlbumId)) {
            updatePublicPreference(this.mCloudSingleMediaSet.isPublic(), this.mCloudSingleMediaSet.getPublicUrl());
            this.mOpenPublicPreference.setChecked(this.mCloudSingleMediaSet.isPublic());
            return;
        }
        updatePublicPreference(false, null);
        this.mOpenPublicPreference.setChecked(false);
    }

    boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (!"open_public_share".equals(preference.getKey())) {
            return false;
        }
        tryToChangePublicStatus();
        return true;
    }

    private boolean canClickPublic() {
        long now = System.currentTimeMillis();
        if (sClickTimes == null) {
            sClickTimes = new LinkedList();
            sClickTimes.addLast(Long.valueOf(now));
            return true;
        } else if (((long) sClickTimes.size()) < CLICK_PUBLIC_LIMIT) {
            sClickTimes.addLast(Long.valueOf(now));
            return true;
        } else if (now - ((Long) sClickTimes.getFirst()).longValue() > CLICK_PUBLIC_INTERNAL) {
            sClickTimes.removeFirst();
            sClickTimes.addLast(Long.valueOf(now));
            return true;
        } else if (now - ((Long) sClickTimes.getFirst()).longValue() <= CLICK_PUBLIC_INTERNAL && now - ((Long) sClickTimes.getFirst()).longValue() >= 0 && ((long) sClickTimes.size()) >= CLICK_PUBLIC_LIMIT) {
            return false;
        } else {
            sClickTimes.clear();
            return true;
        }
    }

    protected final Future<?> requestPublicUrl(String albumId, OnCompletionListener<Void, String> l) {
        return AlbumShareUIManager.requestPublicUrlForOwnerAsync(albumId, l);
    }
}
