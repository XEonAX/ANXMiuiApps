package com.miui.gallery.activity.facebaby;

import android.content.Intent;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.share.AlbumShareUIManager;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import miui.preference.ValuePreference;

public class SharerBabyAlbumSettingActivity extends BabyAlbumSettingActivityBase {
    private String mAccountName;
    private String mAlbumId;
    private Future mRefreshFuture;
    private String mSelfRelationText;
    private Future mSyncFuture;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        refreshSelfRelationText(true);
    }

    protected int getPreferenceResourceId() {
        return R.xml.sharer_baby_album_preferences;
    }

    protected void saveBabyInfo() {
        if (babyInfoChanged()) {
            final BabyInfo newBabyInfo = toBabyInfo(this.mPeopleId, 0);
            ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    String str;
                    BabyInfo babyInfo = SharerBabyAlbumSettingActivity.this.getBabyInfoFromDB();
                    if (babyInfo != null) {
                        babyInfo.mAutoupdate = SharerBabyAlbumSettingActivity.this.mIsAutoupdate.booleanValue();
                        babyInfo.mPeopleId = SharerBabyAlbumSettingActivity.this.mPeopleId;
                    } else {
                        babyInfo = newBabyInfo;
                    }
                    String editColumnElement = GalleryCloudUtils.transformToEditedColumnsElement(25);
                    String str2 = "update %s set %s=%s, %s='%s', %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s=%s";
                    Object[] objArr = new Object[12];
                    objArr[0] = "shareAlbum";
                    objArr[1] = "babyInfoJson";
                    if (babyInfo == null) {
                        str = "";
                    } else {
                        str = DatabaseUtils.sqlEscapeString(babyInfo.toJSON());
                    }
                    objArr[2] = str;
                    objArr[3] = "peopleId";
                    if (babyInfo == null) {
                        str = "";
                    } else {
                        str = babyInfo.mPeopleId;
                    }
                    objArr[4] = str;
                    objArr[5] = "editedColumns";
                    objArr[6] = "editedColumns";
                    objArr[7] = editColumnElement;
                    objArr[8] = editColumnElement;
                    objArr[9] = editColumnElement;
                    objArr[10] = "_id";
                    objArr[11] = SharerBabyAlbumSettingActivity.this.mBabyAlbumLocalId;
                    GalleryUtils.safeExec(String.format(str2, objArr));
                    GalleryApp.sGetAndroidContext().getContentResolver().notifyChange(Album.URI, null, true);
                    return null;
                }
            });
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("baby-info", newBabyInfo);
            intent.putExtras(bundle);
            setResult(12, intent);
            this.mHaveSaveBabyInfo = true;
        }
    }

    protected void justSaveInfo2DbByJson() {
        if (!this.mHaveSaveBabyInfo) {
            saveBabyInfo();
        }
    }

    protected void setPreferencesValue() {
        super.setPreferencesValue();
        ((ValuePreference) this.mBabyNicknamePre).setValue(this.mNickName);
        ((ValuePreference) this.mBabySexPre).setValue(getEntry(this.mSex, R.array.baby_sexy_value, R.array.baby_sexy));
        ((ValuePreference) this.mRelationPre).setValue(this.mSelfRelationText);
        ((ValuePreference) this.mChooseDate).setValue(this.mBirthday);
    }

    private String getEntry(String value, int valudArrayId, int entryArrayId) {
        String[] values = getResources().getStringArray(valudArrayId);
        String[] entries = getResources().getStringArray(entryArrayId);
        for (int i = 0; i < values.length; i++) {
            if (TextUtils.equals(values[i], value)) {
                return entries[i];
            }
        }
        return null;
    }

    protected void onPause() {
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(this, "album_baby_share_setting");
        saveBabyInfo();
    }

    protected void onDestroy() {
        if (this.mRefreshFuture != null) {
            this.mRefreshFuture.cancel();
            this.mRefreshFuture = null;
        }
        if (this.mSyncFuture != null) {
            this.mSyncFuture.cancel();
            this.mSyncFuture = null;
        }
        super.onDestroy();
    }

    protected void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(this, "album_baby_share_setting");
    }

    private void refreshSelfRelationText(final boolean needSyncIfEmpty) {
        if (this.mRefreshFuture == null || this.mRefreshFuture.isCancelled()) {
            this.mRefreshFuture = ThreadManager.getMiscPool().submit(new Job<String>() {
                public String run(JobContext jc) {
                    return SharerBabyAlbumSettingActivity.this.getSelfRelationText();
                }
            }, new FutureHandler<String>() {
                public void onPostExecute(Future<String> future) {
                    if (!future.isCancelled()) {
                        String relationText = (String) future.get();
                        if (TextUtils.isEmpty(relationText)) {
                            if (needSyncIfEmpty) {
                                SharerBabyAlbumSettingActivity.this.syncShareInfoFromServer();
                            }
                        } else if (!TextUtils.equals(SharerBabyAlbumSettingActivity.this.mSelfRelationText, relationText)) {
                            SharerBabyAlbumSettingActivity.this.mSelfRelationText = relationText;
                            ((ValuePreference) SharerBabyAlbumSettingActivity.this.mRelationPre).setValue(relationText);
                        }
                    }
                    SharerBabyAlbumSettingActivity.this.mRefreshFuture = null;
                }
            });
        }
    }

    private String getSelfRelationText() {
        if (TextUtils.isEmpty(this.mAlbumId)) {
            this.mAlbumId = CloudUtils.getDBShareAlbumByLocalId(String.valueOf(this.mBabyAlbumLocalId)).getAlbumId();
        }
        if (TextUtils.isEmpty(this.mAccountName)) {
            this.mAccountName = GalleryCloudUtils.getAccountName();
        }
        return (String) GalleryUtils.safeQuery(GalleryCloudUtils.SHARE_USER_URI, new String[]{"relationText"}, String.format("%s=? AND %s=?", new Object[]{"albumId", "userId"}), new String[]{this.mAlbumId, this.mAccountName}, null, new QueryHandler<String>() {
            public String handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return "";
                }
                return cursor.getString(0);
            }
        });
    }

    private void syncShareInfoFromServer() {
        if (!TextUtils.isEmpty(this.mAlbumId)) {
            this.mSyncFuture = AlbumShareUIManager.syncUserListForAlbumAsync(this.mAlbumId, true, new OnCompletionListener<Void, Void>() {
                public void onCompletion(Void key, Void data, int errorCode, boolean cancel) {
                    if (errorCode == 0 && !cancel) {
                        SharerBabyAlbumSettingActivity.this.refreshSelfRelationText(false);
                    }
                }
            });
        }
    }

    private BabyInfo getBabyInfoFromDB() {
        return (BabyInfo) GalleryUtils.safeQuery(GalleryCloudUtils.SHARE_ALBUM_URI, new String[]{"babyInfoJson"}, "_id = ?", new String[]{Long.toString(this.mBabyAlbumLocalId.longValue())}, null, new QueryHandler<BabyInfo>() {
            public BabyInfo handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return null;
                }
                return BabyInfo.fromJSON(cursor.getString(0));
            }
        });
    }

    protected Intent getIntentToAutoUploadPage() {
        Intent intent = super.getIntentToAutoUploadPage();
        intent.putExtra("allow_to_reassociate", true);
        return intent;
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 0:
                if (resultCode == -1 && data != null) {
                    BabyInfo babyInfo = (BabyInfo) data.getParcelableExtra("baby-info");
                    this.mPeopleId = babyInfo.mPeopleId;
                    this.mIsAutoupdate = Boolean.valueOf(babyInfo.mAutoupdate);
                    this.mFaceAlbumLocalId = Long.valueOf(data.getLongExtra("associate_people_face_local_id", -1));
                    return;
                }
                return;
            default:
                super.onActivityResult(requestCode, resultCode, data);
                return;
        }
    }
}
