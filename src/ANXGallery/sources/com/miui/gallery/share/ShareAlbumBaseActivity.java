package com.miui.gallery.share;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.share.DBCache.OnDBCacheChangedListener;
import com.miui.gallery.share.GridPreferenceBase.OnItemClickListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.internal.analytics.NormalPolicy;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.Comparator;
import java.util.List;
import miui.preference.PreferenceActivity;

public abstract class ShareAlbumBaseActivity extends PreferenceActivity implements OnItemClickListener {
    protected String mAlbumId;
    protected String mAlbumName;
    private final OnDBCacheChangedListener<String, List<CloudUserCacheEntry>> mAlbumUserCacheListener = new OnDBCacheChangedListener<String, List<CloudUserCacheEntry>>() {
        public void onDBCacheChanged(DBCache<String, List<CloudUserCacheEntry>> dBCache) {
            ShareAlbumBaseActivity.this.updateSharers();
        }
    };
    protected CloudSharerMediaSet mCloudSingleMediaSet;
    protected String mCreatorId;
    String mPath;
    protected ShareUserAdapterBase mShareUserGridAdapter;
    protected int mSharerCount = 0;
    protected GridPreferenceBase mSharerGridPreference;
    private final OnDBCacheChangedListener<String, UserInfo> mUserInfoCacheListener = new OnDBCacheChangedListener<String, UserInfo>() {
        public void onDBCacheChanged(DBCache<String, UserInfo> dBCache) {
            ShareAlbumBaseActivity.this.updateSharers();
        }
    };

    public static class UserCacheDescComparator implements Comparator<CloudUserCacheEntry> {
        public int compare(CloudUserCacheEntry lhs, CloudUserCacheEntry rhs) {
            long lhsTime = lhs.mCreateTime;
            long rhsTime = rhs.mCreateTime;
            if (lhsTime == rhsTime) {
                return 0;
            }
            return lhsTime < rhsTime ? 1 : -1;
        }
    }

    protected abstract ShareUserAdapterBase createShareUserAdapter();

    protected abstract void doSyncFromServer(OnCompletionListener<Void, Void> onCompletionListener);

    protected abstract int getContentView();

    protected abstract String getPageName();

    protected abstract int getPreferencesResourceId();

    protected abstract List<CloudUserCacheEntry> getShareUsers();

    protected abstract CloudUserCache getUserCache();

    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        if (icicle == null) {
            icicle = getIntent().getExtras();
        }
        if (icicle != null) {
            this.mPath = icicle.getString("share_path");
        }
        if (TextUtils.isEmpty(this.mPath)) {
            Log.e("ShareAlbumBaseActivity", "album path is invalid:" + this.mPath);
            finish();
            return;
        }
        setContentView(getContentView());
        this.mCloudSingleMediaSet = Path.fromString(this.mPath).getMediaSet();
        this.mAlbumName = this.mCloudSingleMediaSet.getDisplayName();
        this.mAlbumId = this.mCloudSingleMediaSet.getAlbumId();
        if (this.mCloudSingleMediaSet.isSharerAlbum()) {
            this.mCreatorId = this.mCloudSingleMediaSet.getCreatorId();
        } else {
            this.mCreatorId = GalleryCloudUtils.getAccountName();
        }
        addPreferencesFromResource(getPreferencesResourceId());
        initPreferences();
    }

    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString("share_path", this.mPath);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        handleOrientationConfiguration(newConfig);
    }

    private void handleOrientationConfiguration(Configuration config) {
        if (config.orientation == 2) {
            this.mSharerGridPreference.setColumnCountAndWidth(getResources().getInteger(R.integer.share_grid_column_count_landscape), getResources().getDimensionPixelSize(R.dimen.share_user_item_width_landscape));
            return;
        }
        this.mSharerGridPreference.setColumnCountAndWidth(getResources().getInteger(R.integer.share_grid_column_count), getResources().getDimensionPixelSize(R.dimen.share_user_item_width));
    }

    protected void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(this, getPageName());
        ImageLoader.getInstance().resume();
        getUserCache().addListener(this.mAlbumUserCacheListener);
        UserInfoCache.getInstance().addListener(this.mUserInfoCacheListener);
        updateSharers();
    }

    protected void onPause() {
        getUserCache().removeListener(this.mAlbumUserCacheListener);
        UserInfoCache.getInstance().removeListener(this.mUserInfoCacheListener);
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(this, getPageName());
        ImageLoader.getInstance().pause();
    }

    protected void onDestroy() {
        if (this.mSharerGridPreference != null) {
            this.mSharerGridPreference.setAdapter(null);
        }
        super.onDestroy();
    }

    protected final void syncFromServer() {
        OnCompletionListener<Void, Void> l = new OnCompletionListener<Void, Void>() {
            public void onCompletion(Void key, Void data, int errorCode, boolean cancel) {
                ShareAlbumBaseActivity.this.onUpdateProgressChanged(0);
            }
        };
        onUpdateProgressChanged(1);
        doSyncFromServer(l);
    }

    protected void initPreferences() {
        this.mSharerGridPreference = (GridPreferenceBase) findPreference("sharer_grid");
        this.mSharerGridPreference.setColumnCountAndWidth(getResources().getInteger(R.integer.share_grid_column_count), getResources().getDimensionPixelSize(R.dimen.share_user_item_width));
        this.mSharerGridPreference.setOnItemClickListener(this);
        this.mShareUserGridAdapter = createShareUserAdapter();
        this.mSharerGridPreference.setAdapter(this.mShareUserGridAdapter);
        handleOrientationConfiguration(getResources().getConfiguration());
    }

    protected void updateSharers() {
        if (CloudUtils.isValidAlbumId(this.mAlbumId)) {
            long start = SystemClock.uptimeMillis();
            List<CloudUserCacheEntry> users = getShareUsers();
            this.mShareUserGridAdapter.setShareUsers(users);
            this.mSharerCount = users.size();
        }
    }

    public void onItemClick(GridPreferenceBase pref, int position) {
    }

    protected void onUpdateProgressChanged(int status) {
    }

    protected CloudUserCacheEntry getOwnerEntry(String ownerId) {
        BabyInfo babyInfo = this.mCloudSingleMediaSet.getBabyInfo();
        if (babyInfo == null) {
            return new CloudUserCacheEntry(this.mAlbumId, ownerId, 0, null, null, null, null);
        }
        return new CloudUserCacheEntry(this.mAlbumId, ownerId, 0, babyInfo.mRelation, babyInfo.mRelationText, NormalPolicy.TAG, null);
    }
}
