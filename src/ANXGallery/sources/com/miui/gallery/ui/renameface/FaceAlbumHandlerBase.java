package com.miui.gallery.ui.renameface;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.miui.gallery.activity.facebaby.InputFaceNameActivity;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;

public abstract class FaceAlbumHandlerBase {
    protected Activity mActivity;
    protected NormalPeopleFaceMediaSet mFaceSet;
    protected FaceAlbumHandlerListener mListener;

    public interface FaceAlbumHandlerListener {
        void onGetFolderItem(FaceFolderItem faceFolderItem);
    }

    public interface FaceFolderItem {
        String getId();

        String getName();
    }

    public class FaceFolderItemImpl implements FaceFolderItem {
        private String mLocalGroupId;
        private String mName;

        FaceFolderItemImpl(FaceDisplayFolderItem displayFolderItem) {
            this.mName = displayFolderItem.name;
            this.mLocalGroupId = displayFolderItem.localGroupId;
        }

        FaceFolderItemImpl(String name, String localGroupId) {
            this.mName = name;
            this.mLocalGroupId = localGroupId;
        }

        public String getName() {
            return this.mName;
        }

        public String getId() {
            return this.mLocalGroupId;
        }
    }

    public static class FaceNewFolerItem implements FaceFolderItem {
        boolean isCreatedInDb = false;
        String mContactJson;
        String mId;
        String mName;

        FaceNewFolerItem(String name) {
            this.mName = name;
        }

        public String getName() {
            return this.mName;
        }

        public String getId() {
            return this.mId;
        }

        public void setId(String id) {
            this.mId = id;
        }

        public void setContactjson(String contcatJson) {
            this.mContactJson = contcatJson;
        }

        public String getContactjson() {
            return this.mContactJson;
        }

        public boolean isCreatedInDb() {
            return this.isCreatedInDb;
        }

        public void setCreatedInDb() {
            this.isCreatedInDb = true;
        }
    }

    public FaceAlbumHandlerBase(Activity activity, NormalPeopleFaceMediaSet faceSet, FaceAlbumHandlerListener listener) {
        this.mActivity = activity;
        this.mFaceSet = faceSet;
        this.mListener = listener;
    }

    protected void showInputFolderNameDialog(int requestCode, String originalName, boolean isRelationSetted) {
        Intent intent = new Intent(this.mActivity, InputFaceNameActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("original_name", originalName);
        bundle.putBoolean("is_relation_setted", isRelationSetted);
        if (this.mFaceSet != null && this.mFaceSet.hasName()) {
            bundle.putString("original_path_album_local_id", String.valueOf(this.mFaceSet.getBucketId()));
        }
        if (requestCode == 19) {
            bundle.putBoolean("only_use_contact", true);
        }
        intent.putExtras(bundle);
        this.mActivity.startActivityForResult(intent, requestCode);
    }
}
