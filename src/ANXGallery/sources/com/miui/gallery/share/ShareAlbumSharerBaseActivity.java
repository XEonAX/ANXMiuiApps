package com.miui.gallery.share;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.google.common.collect.Lists;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.share.AlbumShareUIManager.BlockMessage;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.share.CloudShareAlbumMediator.OnShareAlbumExitedListener;
import com.miui.gallery.share.ShareAlbumBaseActivity.UserCacheDescComparator;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class ShareAlbumSharerBaseActivity extends ShareAlbumBaseActivity implements OnClickListener, OnShareAlbumExitedListener {
    private Handler mHandler;
    private Button mViewExitShare;

    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        if (!isFinishing()) {
            if (CloudUtils.isValidAlbumId(this.mAlbumId)) {
                this.mViewExitShare = (Button) findViewById(R.id.exit_share);
                this.mViewExitShare.setOnClickListener(this);
                syncFromServer();
                this.mHandler = new Handler();
                CloudShareAlbumMediator.getInstance().addListener(this);
                return;
            }
            finish();
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        CloudShareAlbumMediator.getInstance().removeListener(this);
    }

    protected int getContentView() {
        return R.layout.share_album_sharer;
    }

    public void onClick(View v) {
        if (v.getId() == R.id.exit_share) {
            exitShare(this, this.mPath, this.mAlbumName, new Runnable() {
                public void run() {
                    ShareAlbumSharerBaseActivity.this.setResult(-1);
                    ShareAlbumSharerBaseActivity.this.finish();
                }
            });
            return;
        }
        throw new UnsupportedOperationException("Invalid view id, id=" + v.getId());
    }

    protected CloudUserCache getUserCache() {
        return CloudUserCache.getSharerUserCache();
    }

    protected List<CloudUserCacheEntry> getShareUsers() {
        List<CloudUserCacheEntry> sharers = Lists.newArrayList();
        sharers.addAll(getUserCache().getCloudUserListByAlbumId(this.mAlbumId));
        Collections.sort(sharers, new UserCacheDescComparator());
        String creatorId = this.mCreatorId;
        String selfId = GalleryCloudUtils.getAccountName();
        Iterator<CloudUserCacheEntry> it = sharers.iterator();
        CloudUserCacheEntry self = null;
        while (it.hasNext()) {
            CloudUserCacheEntry user = (CloudUserCacheEntry) it.next();
            String userId = user.mUserId;
            if (TextUtils.equals(userId, creatorId)) {
                it.remove();
            } else if (TextUtils.equals(userId, selfId)) {
                self = user;
                it.remove();
            }
        }
        if (self != null) {
            sharers.add(0, self);
        } else {
            sharers.add(0, new CloudUserCacheEntry(this.mAlbumId, selfId, 0, null, null, null, null));
        }
        sharers.add(0, getOwnerEntry(creatorId));
        return sharers;
    }

    public static void exitShare(final Activity activity, final String path, final String albumName, final Runnable runOnExitShareSuccessfully) {
        final OnCompletionListener<Path, Void> l = new OnCompletionListener<Path, Void>() {
            public void onCompletion(Path id, Void result, int error, boolean cancelled) {
                Context context;
                Activity activity;
                Object[] objArr;
                if (cancelled) {
                    UIHelper.toast((int) R.string.cancel_hint);
                } else if (error == 0) {
                    context = activity;
                    activity = activity;
                    objArr = new Object[1];
                    objArr[0] = activity.getString(R.string.quotation, new Object[]{albumName});
                    UIHelper.toast(context, activity.getString(R.string.exit_share_successfully, objArr));
                    runOnExitShareSuccessfully.run();
                } else {
                    context = activity;
                    activity = activity;
                    objArr = new Object[1];
                    objArr[0] = activity.getString(R.string.quotation, new Object[]{albumName});
                    UIHelper.toast(context, activity.getString(R.string.exit_share_failed, objArr));
                }
            }
        };
        final BlockMessage msg = BlockMessage.create(activity, null, activity.getString(R.string.exit_share_in_process, new Object[]{albumName}), false);
        new Builder(activity).setTitle(R.string.album_share_exit_confirm).setPositiveButton(R.string.exit, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                AlbumShareUIManager.exitAlbumShareAsync(Path.fromString(path), l, msg);
            }
        }).setNegativeButton(17039360, null).show();
    }

    protected void doSyncFromServer(OnCompletionListener<Void, Void> l) {
        getUserCache().syncFromServer(this.mAlbumId, l);
    }
}
