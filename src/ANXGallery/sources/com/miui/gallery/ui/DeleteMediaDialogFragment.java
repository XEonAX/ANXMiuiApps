package com.miui.gallery.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.Delete;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.AlbumManager;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.ui.DeletionTask.Param;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.util.ArrayList;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;
import miui.hybrid.Response;

public class DeleteMediaDialogFragment extends GalleryDialogFragment {
    private static final int[][] TYPE_RESOURCE_MATRIX = new int[][]{new int[]{R.plurals.delete_photo_from_local, R.plurals.delete_video_from_local, R.plurals.delete_media_from_local}, new int[]{R.plurals.delete_photo_from_this_album_and_cloud_msg, R.plurals.delete_video_from_this_album_and_cloud_msg, R.plurals.delete_media_from_this_album_and_cloud_msg}, new int[]{R.plurals.delete_photo_from_all_devices_and_cloud_msg, R.plurals.delete_video_from_all_devices_and_cloud_msg, R.plurals.delete_media_from_all_devices_and_cloud_msg}};
    private OnDeletionCompleteListener mDeletionFinishListener;
    private boolean mExistXiaomiAccount;
    private boolean mIsFirstDelete;
    private Param mParam;

    class CheckBoxInfo {
        final boolean defaultValue;
        final String message;
        final int type;

        public CheckBoxInfo(int type) {
            this.type = type;
            this.message = genMessage(type);
            this.defaultValue = genDefaultValue(type);
        }

        private String genMessage(int type) {
            switch (type) {
                case 1:
                    return DeleteMediaDialogFragment.this.getActivity().getString(R.string.delete_from_cloud);
                default:
                    return "";
            }
        }

        private boolean genDefaultValue(int type) {
            switch (type) {
            }
            return false;
        }
    }

    private class DialogInfo {
        CheckBoxInfo checkBoxInfo;
        String message;

        private DialogInfo() {
        }

        /* synthetic */ DialogInfo(DeleteMediaDialogFragment x0, AnonymousClass1 x1) {
            this();
        }
    }

    private class FirstDeleteDialog extends Dialog implements OnClickListener {
        private int mCurOrientation = 1;
        private View mDeleteTipIcon;
        private View mDeleteTitle;
        private Button mNegativeBtn;
        private OnClickListener mNegativeListener;
        private int mNegativeRes;
        private Button mPositiveBtn;
        private OnClickListener mPositiveListener;
        private int mPositiveRes;
        private TextView mSubTitle;
        private int mSubTitleRes;
        private TextView mTipOne;
        private String mTipOneText;
        private int mTipOneVisibility = 0;
        private TextView mTipThree;
        private String mTipThreeText;
        private int mTipThreeVisibility = 0;
        private TextView mTipTwo;
        private String mTipTwoText;
        private int mTipTwoVisibility = 0;

        public FirstDeleteDialog(Context context) {
            super(context);
        }

        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.first_delete);
            this.mDeleteTipIcon = findViewById(R.id.delete_tip_icon);
            this.mDeleteTitle = findViewById(R.id.delete_title);
            this.mSubTitle = (TextView) findViewById(R.id.delete_sub_title);
            this.mTipOne = (TextView) findViewById(R.id.delete_from_devices);
            this.mTipTwo = (TextView) findViewById(R.id.delete_from_web);
            this.mTipThree = (TextView) findViewById(R.id.delete_from_homepage_album);
            this.mPositiveBtn = (Button) findViewById(R.id.positive_btn);
            this.mNegativeBtn = (Button) findViewById(R.id.negative_btn);
            setText(this.mSubTitle, this.mSubTitleRes);
            setText(this.mPositiveBtn, this.mPositiveRes);
            setText(this.mNegativeBtn, this.mNegativeRes);
            this.mTipOne.setVisibility(this.mTipOneVisibility);
            this.mTipTwo.setVisibility(this.mTipTwoVisibility);
            this.mTipThree.setVisibility(this.mTipThreeVisibility);
            setText(this.mTipOne, this.mTipOneText);
            setText(this.mTipTwo, this.mTipTwoText);
            setText(this.mTipThree, this.mTipThreeText);
            this.mPositiveBtn.setOnClickListener(this);
            this.mNegativeBtn.setOnClickListener(this);
            Window window = getWindow();
            LayoutParams lp = window.getAttributes();
            lp.gravity = 80;
            lp.width = -1;
            lp.height = -2;
            window.setAttributes(lp);
            changeOrientation(this.mCurOrientation);
        }

        public FirstDeleteDialog setPositiveButton(int resId, OnClickListener listener) {
            if (this.mPositiveBtn == null) {
                this.mPositiveRes = resId;
            } else {
                this.mPositiveBtn.setText(resId);
            }
            this.mPositiveListener = listener;
            return this;
        }

        public FirstDeleteDialog setNegativeButton(int resId, OnClickListener listener) {
            if (this.mNegativeBtn == null) {
                this.mNegativeRes = resId;
            } else {
                this.mNegativeBtn.setText(resId);
            }
            this.mNegativeListener = listener;
            return this;
        }

        private void setText(TextView view, int resId) {
            if (resId > 0) {
                view.setText(resId);
            }
        }

        private void setText(TextView view, String text) {
            if (!TextUtils.isEmpty(text)) {
                view.setText(text);
            }
        }

        public FirstDeleteDialog setSubTitle(int resId) {
            if (this.mSubTitle == null) {
                this.mSubTitleRes = resId;
            } else {
                this.mSubTitle.setText(this.mSubTitleRes);
            }
            return this;
        }

        public FirstDeleteDialog setTipVisibility(int which, boolean visible) {
            int visibility = visible ? 0 : 8;
            switch (which) {
                case 0:
                    if (this.mTipOne != null) {
                        this.mTipOne.setVisibility(visibility);
                        break;
                    }
                    this.mTipOneVisibility = visibility;
                    break;
                case 1:
                    if (this.mTipTwo != null) {
                        this.mTipTwo.setVisibility(visibility);
                        break;
                    }
                    this.mTipTwoVisibility = visibility;
                    break;
                case 2:
                    if (this.mTipThree != null) {
                        this.mTipThree.setVisibility(visibility);
                        break;
                    }
                    this.mTipThreeVisibility = visibility;
                    break;
            }
            return this;
        }

        public FirstDeleteDialog setTipText(int which, String text) {
            switch (which) {
                case 0:
                    if (this.mTipOne != null) {
                        this.mTipOne.setText(text);
                        break;
                    }
                    this.mTipOneText = text;
                    break;
                case 1:
                    if (this.mTipTwo != null) {
                        this.mTipTwo.setText(text);
                        break;
                    }
                    this.mTipTwoText = text;
                    break;
                case 2:
                    if (this.mTipThree != null) {
                        this.mTipThree.setText(text);
                        break;
                    }
                    this.mTipThreeText = text;
                    break;
            }
            return this;
        }

        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.negative_btn /*2131886458*/:
                    if (this.mNegativeListener != null) {
                        this.mNegativeListener.onClick(v);
                    }
                    dismiss();
                    return;
                case R.id.positive_btn /*2131886459*/:
                    if (this.mPositiveListener != null) {
                        this.mPositiveListener.onClick(v);
                    }
                    dismiss();
                    return;
                default:
                    return;
            }
        }

        public void changeOrientation(int orientation) {
            this.mCurOrientation = orientation;
            if (this.mDeleteTitle == null) {
                return;
            }
            if (orientation == 2) {
                this.mDeleteTipIcon.setVisibility(8);
                this.mDeleteTitle.setVisibility(0);
            } else if (orientation == 1) {
                this.mDeleteTipIcon.setVisibility(0);
                this.mDeleteTitle.setVisibility(8);
            }
        }
    }

    public static DeleteMediaDialogFragment newInstance(Param param) {
        DeleteMediaDialogFragment dialog = new DeleteMediaDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("delete_params", param);
        dialog.setArguments(bundle);
        return dialog;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mParam = (Param) getArguments().getSerializable("delete_params");
        this.mExistXiaomiAccount = SyncUtil.existXiaomiAccount(getActivity());
        if (this.mExistXiaomiAccount) {
            FirstDeleteDialog dialog;
            if (isOperateHomePage(this.mParam)) {
                if (Delete.isFirstDeleteFromHomePage()) {
                    this.mIsFirstDelete = true;
                    dialog = new FirstDeleteDialog(getActivity()).setPositiveButton(R.string.delete, new OnClickListener() {
                        public void onClick(View v) {
                            DeleteMediaDialogFragment.this.doDelete();
                        }
                    }).setNegativeButton(17039360, null).setSubTitle(R.string.delete_in_home_page);
                    dialog.changeOrientation(getResources().getConfiguration().orientation);
                    return dialog;
                }
            } else if (isOperateAlbum(this.mParam) && !isLocalMode(this.mParam.mAlbumId) && Delete.isFirstDeleteFromAlbum()) {
                this.mIsFirstDelete = true;
                dialog = new FirstDeleteDialog(getActivity()).setPositiveButton(R.string.delete, new OnClickListener() {
                    public void onClick(View v) {
                        DeleteMediaDialogFragment.this.doDelete();
                    }
                }).setNegativeButton(17039360, null).setSubTitle(R.string.delete_in_album).setTipVisibility(2, false);
                if (!TextUtils.isEmpty(this.mParam.mAlbumName)) {
                    dialog.setTipText(0, getString(R.string.delete_from_devices_album));
                }
                dialog.changeOrientation(getResources().getConfiguration().orientation);
                return dialog;
            }
        }
        final DialogInfo info = genDialogInfo();
        Builder builder = new Builder(getActivity());
        if (info.checkBoxInfo != null) {
            builder.setCheckBox(info.checkBoxInfo.defaultValue, info.checkBoxInfo.message);
        }
        return builder.setPositiveButton((int) R.string.delete, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                DeleteMediaDialogFragment.this.mParam.mDeleteOptions = 0;
                if (info.checkBoxInfo != null) {
                    AlertDialog alertDialog = (AlertDialog) dialog;
                    switch (info.checkBoxInfo.type) {
                        case 1:
                            if (!alertDialog.isChecked()) {
                                DeleteMediaDialogFragment.this.mParam.mDeleteOptions = 1;
                                break;
                            }
                            break;
                    }
                }
                DeleteMediaDialogFragment.this.doDelete();
            }
        }).setNegativeButton(17039360, null).setTitle(getString(R.string.delete)).setMessage(info.message).create();
    }

    private boolean isOperateHomePage(Param param) {
        return param.mDupType == 1;
    }

    private boolean isOperateAlbum(Param param) {
        return !isOperateHomePage(param) && (param.mAlbumId > 0 || param.mAlbumId == -1000);
    }

    private static boolean isLocalMode(long albumId) {
        return LocalMode.isOnlyShowLocalPhoto() && albumId != -1000;
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.mIsFirstDelete) {
            ((FirstDeleteDialog) getDialog()).changeOrientation(newConfig.orientation);
        }
    }

    private void doDelete() {
        DeletionTask task = new DeletionTask();
        task.setOnDeletionCompleteListener(this.mDeletionFinishListener);
        task.showProgress(getActivity());
        task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Param[]{this.mParam});
    }

    public void setOnDeletionCompleteListener(OnDeletionCompleteListener listener) {
        this.mDeletionFinishListener = listener;
    }

    private DialogInfo genDialogInfo() {
        DialogInfo info = new DialogInfo(this, null);
        int sourceType = 0;
        if (this.mExistXiaomiAccount) {
            if (isOperateHomePage(this.mParam)) {
                sourceType = 2;
            } else if (!isOperateAlbum(this.mParam)) {
                sourceType = 2;
            } else if (isLocalMode(this.mParam.mAlbumId)) {
                info.checkBoxInfo = new CheckBoxInfo(1);
            } else if (isAlbumSyncable(this.mParam)) {
                sourceType = this.mParam.mDupType == 3 ? 2 : 1;
            }
        }
        info.message = getActivity().getResources().getQuantityString(getMessageRes(sourceType, queryType(this.mParam)), this.mParam.getItemsCount(), new Object[]{Integer.valueOf(this.mParam.getItemsCount())});
        return info;
    }

    private int getMessageRes(int sourceType, int mediaType) {
        return TYPE_RESOURCE_MATRIX[sourceType][mediaType];
    }

    private int queryType(Param param) {
        int count = param.getItemsCount();
        if (count > Response.CODE_GENERIC_ERROR) {
            return 2;
        }
        int videoCount = 0;
        if (param.mDeleteBy == 0) {
            videoCount = 0 + getCloudVideoCount(param);
        } else if (param.mDeleteBy == 1) {
            for (String path : param.mPaths) {
                if (BaseFileMimeUtil.isVideoFromMimeType(BaseFileMimeUtil.getMimeType(path))) {
                    videoCount++;
                }
            }
        }
        if (videoCount == count) {
            return 1;
        }
        if (videoCount == 0) {
            return 0;
        }
        return 2;
    }

    private boolean isAlbumSyncable(Param param) {
        if (ShareAlbumManager.isOtherShareAlbumId(param.mAlbumId) || AlbumManager.isVirtualAlbum(param.mAlbumId)) {
            return true;
        }
        if (param.mAlbumId > 0) {
            try {
                Cursor cursor = getActivity().getContentResolver().query(Cloud.CLOUD_URI, new String[]{"attributes"}, "_id=?", new String[]{String.valueOf(param.mAlbumId)}, null);
                if (cursor == null || !cursor.moveToFirst()) {
                    BaseMiscUtil.closeSilently(cursor);
                } else {
                    boolean z;
                    if ((((long) cursor.getInt(0)) & 1) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    BaseMiscUtil.closeSilently(cursor);
                    return z;
                }
            } catch (Throwable th) {
                BaseMiscUtil.closeSilently(null);
            }
        }
        return false;
    }

    private int getCloudVideoCount(Param param) {
        Cursor cursor;
        long pre = System.currentTimeMillis();
        int videoCount = 0;
        ArrayList<Long> shareImage = new ArrayList();
        ArrayList<Long> ownerImage = new ArrayList();
        for (long id : param.mIds) {
            if (ShareMediaManager.isOtherShareMediaId(id)) {
                shareImage.add(Long.valueOf(id));
            } else {
                ownerImage.add(Long.valueOf(id));
            }
        }
        if (shareImage.size() > 0) {
            cursor = getActivity().getContentResolver().query(ShareImage.SHARE_URI, new String[]{"1073741823+_id"}, String.format("serverType=? AND 1073741823+_id IN (%s)", new Object[]{TextUtils.join(",", shareImage)}), new String[]{String.valueOf(2)}, null);
            if (cursor != null) {
                try {
                    videoCount = 0 + cursor.getCount();
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        if (ownerImage.size() > 0) {
            cursor = getActivity().getContentResolver().query(Media.URI, new String[]{"_id"}, String.format("serverType=? AND _id IN (%s)", new Object[]{TextUtils.join(",", ownerImage)}), new String[]{String.valueOf(2)}, null);
            if (cursor != null) {
                try {
                    videoCount += cursor.getCount();
                } catch (Throwable th2) {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        Log.d("DeleteMediaDialogFragment", "query video count cost %dms", Long.valueOf(System.currentTimeMillis() - pre));
        return videoCount;
    }
}
