package com.miui.gallery.share;

import android.content.DialogInterface;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.google.common.collect.Lists;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.share.AlbumShareOperations.OutgoingInvitation;
import com.miui.gallery.share.AlbumShareUIManager.BlockMessage;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.share.ShareAlbumBaseActivity.UserCacheDescComparator;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import java.util.Collections;
import java.util.List;

public abstract class ShareAlbumOwnerBaseActivity extends ShareAlbumBaseActivity {
    protected Future<?> mFutureCreateItem;
    private Future<?> mFutureSms;
    private CloudObserver mObserver = new CloudObserver(ThreadManager.getMainHandler());

    private class CloudObserver extends ContentObserver {
        public CloudObserver(Handler handler) {
            super(handler);
        }

        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            ShareAlbumOwnerBaseActivity.this.mCloudSingleMediaSet.rereloadItem();
            ShareAlbumOwnerBaseActivity.this.updateStatus();
        }
    }

    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        if (!isFinishing()) {
            findViewById(R.id.retry_button).setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    ShareAlbumOwnerBaseActivity.this.tryToCreateCloudItem();
                    ShareAlbumOwnerBaseActivity.this.updateStatus();
                }
            });
            tryToCreateCloudItem();
            updateStatus();
            GalleryApp.sGetAndroidContext().getContentResolver().registerContentObserver(GalleryCloudUtils.CLOUD_URI, true, this.mObserver);
        }
    }

    protected CloudUserCache getUserCache() {
        return CloudUserCache.getOwnerUserCache();
    }

    protected void onDestroy() {
        if (this.mFutureCreateItem != null) {
            this.mFutureCreateItem.cancel();
        }
        if (this.mFutureSms != null) {
            this.mFutureSms.cancel();
        }
        super.onDestroy();
    }

    protected void updateSharers() {
        if (CloudUtils.isValidAlbumId(this.mAlbumId)) {
        }
        super.updateSharers();
    }

    protected List<CloudUserCacheEntry> getShareUsers() {
        List<CloudUserCacheEntry> users = Lists.newArrayList();
        users.addAll(getUserCache().getCloudUserListByAlbumId(this.mAlbumId));
        Collections.sort(users, new UserCacheDescComparator());
        return users;
    }

    protected void showAddSharerDialog(final CloudUserCacheEntry entry) {
        int itemsLength = PhoneShareAlbumProvider.getInstance().getAddSharerDialogItemsLength();
        if (itemsLength >= 1) {
            if (itemsLength == 1) {
                addSharer(0, entry);
            } else {
                PhoneShareAlbumProvider.getInstance().showAddSharerDialog(this, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        ShareAlbumOwnerBaseActivity.this.addSharer(which, entry);
                        dialog.dismiss();
                    }
                });
            }
        }
    }

    private void addSharer(final int which, CloudUserCacheEntry entry) {
        requestInvitation(entry, new OnCompletionListener<Void, OutgoingInvitation>() {
            public void onCompletion(Void id, OutgoingInvitation result, int error, boolean cancelled) {
                if (cancelled) {
                    UIHelper.toast(ShareAlbumOwnerBaseActivity.this, ShareAlbumOwnerBaseActivity.this.getString(R.string.cancel_hint));
                } else if (error != 0 || result == null) {
                    UIHelper.toast(ShareAlbumOwnerBaseActivity.this, ShareAlbumOwnerBaseActivity.this.getString(R.string.fail_hint));
                } else {
                    PhoneShareAlbumProvider.getInstance().shareOperation(ShareAlbumOwnerBaseActivity.this, which, result, ShareAlbumOwnerBaseActivity.this.mAlbumName);
                }
            }
        });
    }

    protected void showKickUserDialog(final CloudUserCacheEntry shareUser) {
        if (shareUser != null) {
            PhoneShareAlbumProvider.getInstance().showKickUserDialog(this, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    ShareAlbumOwnerBaseActivity.this.kickUser(shareUser.mUserId);
                }
            });
        }
    }

    private void kickUser(String userId) {
        OnCompletionListener<Void, Pair<List<String>, List<String>>> l = new OnCompletionListener<Void, Pair<List<String>, List<String>>>() {
            public void onCompletion(Void id, Pair<List<String>, List<String>> result, int error, boolean cancelled) {
                if (cancelled) {
                    UIHelper.toast((int) R.string.cancel_hint);
                } else if (error != 0 || result == null || ((List) result.first).isEmpty() || !((List) result.second).isEmpty()) {
                    UIHelper.toast((int) R.string.kick_sharer_failed);
                } else {
                    UIHelper.toast((int) R.string.kick_sharer_successfully);
                }
            }
        };
        BlockMessage msg = BlockMessage.create(this, null, getString(R.string.kick_sharer), false);
        List<String> kicked = Lists.newArrayList();
        kicked.add(userId);
        AlbumShareUIManager.kickSharersAsync(this.mAlbumId, kicked, l, msg);
    }

    protected void doSyncFromServer(OnCompletionListener<Void, Void> l) {
        if (CloudUtils.isValidAlbumId(this.mAlbumId)) {
            getUserCache().syncFromServer(this.mAlbumId, l);
        }
    }

    protected void updateStatus() {
        if (!isFinishing()) {
            this.mAlbumId = this.mCloudSingleMediaSet.getAlbumId();
            if (CloudUtils.isValidAlbumId(this.mAlbumId)) {
                findViewById(16908298).setVisibility(0);
                findViewById(R.id.status_wrapper).setVisibility(8);
                updateSharers();
                syncFromServer();
                return;
            }
            findViewById(16908298).setVisibility(8);
            findViewById(R.id.status_wrapper).setVisibility(0);
            if (this.mFutureCreateItem == null || this.mFutureCreateItem.isDone()) {
                findViewById(R.id.loading_bar).setVisibility(8);
                ((TextView) findViewById(R.id.loading_text)).setText(R.string.fail_to_sync_album);
                findViewById(R.id.retry_button).setVisibility(0);
                return;
            }
            findViewById(R.id.loading_bar).setVisibility(0);
            ((TextView) findViewById(R.id.loading_text)).setText(R.string.sync_album_in_proecess);
            findViewById(R.id.retry_button).setVisibility(8);
        }
    }

    private void tryToCreateCloudItem() {
        if (!CloudUtils.isValidAlbumId(this.mCloudSingleMediaSet.getAlbumId())) {
            this.mFutureCreateItem = AlbumShareUIManager.tryToCreateCloudAlbumAsync(String.valueOf(this.mCloudSingleMediaSet.getId()), new OnCompletionListener<Void, String>() {
                public void onCompletion(Void key, String data, int errorCode, boolean cancel) {
                    ShareAlbumOwnerBaseActivity.this.mObserver.onChange(true);
                    AlbumShareUIManager.doAfterCloudMediaSetSetReload(new Runnable() {
                        public void run() {
                            ShareAlbumOwnerBaseActivity.this.updateStatus();
                        }
                    }, ShareAlbumOwnerBaseActivity.this.mCloudSingleMediaSet.getPath(), true);
                }
            });
        }
    }

    public void onItemClick(GridPreferenceBase pref, int position) {
        if (this.mShareUserGridAdapter != null && position < this.mShareUserGridAdapter.getCount()) {
            CloudUserCacheEntry entry = this.mShareUserGridAdapter.getItem(position);
            if (entry == null || (TextUtils.isEmpty(entry.mUserId) && TextUtils.isEmpty(entry.mServerStatus))) {
                showAddSharerDialog(entry);
            } else if (!TextUtils.equals(entry.mServerStatus, "normal")) {
            } else {
                if (TextUtils.equals(this.mCreatorId, entry.mUserId)) {
                    UIHelper.toast((int) R.string.cannot_remove_creator);
                } else {
                    showKickUserDialog(entry);
                }
            }
        }
    }

    protected void requestInvitation(CloudUserCacheEntry entry, OnCompletionListener<Void, OutgoingInvitation> onCompletionListener) {
    }

    protected void requestInvitation(String relation, String relationText, String ownerRelation, String ownerRelationText, OnCompletionListener<Void, OutgoingInvitation> urlRequestListener) {
        this.mFutureSms = AlbumShareUIManager.requestInvitationForSmsAsync(this.mAlbumId, relation, relationText, ownerRelation, ownerRelationText, urlRequestListener, BlockMessage.create(this, getString(R.string.request_sms_url_title), getString(R.string.request_sms_url_msg)));
    }
}
