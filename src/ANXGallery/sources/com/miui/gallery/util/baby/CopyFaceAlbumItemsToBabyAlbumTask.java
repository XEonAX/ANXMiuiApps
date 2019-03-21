package com.miui.gallery.util.baby;

import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import com.miui.gallery.R;
import com.miui.gallery.cloud.SpaceFullHandler;
import com.miui.gallery.model.SendToCloudFolderItem;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.share.Path;
import com.miui.gallery.share.UIHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ToastUtils;

public class CopyFaceAlbumItemsToBabyAlbumTask extends ProgressDialogTask {
    private Activity mActivity;
    private final SendToCloudFolderItem mFolderItem;
    private ProgressEndListener mListener;
    private int mProgress;
    private Cursor mSourceItems;

    public interface ProgressEndListener {
        void onProgressEnd(int i);
    }

    public CopyFaceAlbumItemsToBabyAlbumTask(Activity activity, Cursor sourceItems, SendToCloudFolderItem folderItem, int dialogTitleStringId) {
        super(activity, sourceItems.getCount(), dialogTitleStringId, 0, false, true);
        this.mSourceItems = sourceItems;
        this.mFolderItem = folderItem;
        this.mActivity = activity;
    }

    public void setProgressFinishListener(ProgressEndListener listener) {
        this.mListener = listener;
    }

    protected Void doInBackground(Void... params) {
        this.mProgress = 0;
        Cursor sourceItems = this.mSourceItems;
        if (sourceItems != null) {
            while (sourceItems.moveToNext()) {
                if (handleOneFile(FaceManager.changeCursorData2ContentValuesOfCloudTable(sourceItems, this.mFolderItem.getLocalGroupId())) == 0) {
                    this.mProgress++;
                    if (isDialogShowing()) {
                        publishProgress(new Integer[]{Integer.valueOf(this.mProgress)});
                    }
                    if (isCancelled()) {
                        break;
                    }
                }
            }
            BaseMiscUtil.closeSilently(sourceItems);
        }
        return null;
    }

    private int handleOneFile(ContentValues values) {
        int oneItemResult;
        if (SpaceFullHandler.isOwnerSpaceFull()) {
            oneItemResult = 2;
        } else {
            oneItemResult = 0;
        }
        if (oneItemResult != 0) {
            return oneItemResult;
        }
        return FaceManager.localCopyFaceImages2BabyAlbum(values, this.mFolderItem.isShareAlbum()) ? 0 : 1;
    }

    protected void onPostExecute(Void result) {
        super.onPostExecute(result);
        if (this.mListener != null) {
            this.mListener.onProgressEnd(this.mProgress);
            return;
        }
        ToastUtils.makeTextLong(this.mActivity, this.mActivity.getString(R.string.begin_share, new Object[]{this.mFolderItem.getFolderName()}));
        UIHelper.showAlbumShareInfo(this.mActivity, new Path(Long.parseLong(this.mFolderItem.getLocalGroupId()), false, true), 0);
        this.mActivity.finish();
    }

    protected void onCancelled() {
        super.onCancelled();
        if (this.mListener != null) {
            this.mListener.onProgressEnd(this.mProgress);
        }
    }

    public static CopyFaceAlbumItemsToBabyAlbumTask instance(Activity activity, Cursor sourceItems, SendToCloudFolderItem folderItem, int prepareFailedCount, int dialogTitleStringId) {
        return new CopyFaceAlbumItemsToBabyAlbumTask(activity, sourceItems, folderItem, dialogTitleStringId);
    }
}
