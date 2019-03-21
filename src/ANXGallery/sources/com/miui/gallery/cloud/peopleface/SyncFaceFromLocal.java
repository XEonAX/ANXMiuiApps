package com.miui.gallery.cloud.peopleface;

import android.accounts.Account;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.RequestOperationBase;
import com.miui.gallery.cloud.RetryRequest;
import com.miui.gallery.cloud.SyncFromLocalBase;
import com.miui.gallery.cloud.peopleface.syncoperation.CreatePeopleOperation;
import com.miui.gallery.cloud.peopleface.syncoperation.DeleteFaceOperation;
import com.miui.gallery.cloud.peopleface.syncoperation.FaceRequestOperationBase;
import com.miui.gallery.cloud.peopleface.syncoperation.IgnorePeopleOperation;
import com.miui.gallery.cloud.peopleface.syncoperation.MergePeopleOperation;
import com.miui.gallery.cloud.peopleface.syncoperation.MoveFaceOperation;
import com.miui.gallery.cloud.peopleface.syncoperation.RecoveryPeopleOperation;
import com.miui.gallery.cloud.peopleface.syncoperation.RenamePeopleOperation;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import java.util.List;

public class SyncFaceFromLocal extends SyncFromLocalBase {
    private RequestItemGroup mCreatePeople;
    private RequestItemGroup mDeleteFace;
    private RequestItemGroup mIgnorePeople;
    private RequestItemGroup mMergePeople;
    private RequestItemGroup mMoveFace;
    private RequestItemGroup mRecoveryPeople;
    private RequestItemGroup mRenamePeople;

    private class RequestItemGroup {
        private List<RequestFaceItem> mRequestItems = new ArrayList();

        RequestItemGroup() {
        }

        public void addItem(RequestFaceItem item) {
            this.mRequestItems.add(item);
        }

        public boolean needRequest() {
            return this.mRequestItems.size() > 0;
        }

        public int request(FaceRequestOperationBase requestOperation) {
            int limitCount = requestOperation.getLimitCountForOperation();
            int result = 0;
            if (limitCount == -1 || limitCount >= this.mRequestItems.size()) {
                result = doRequest(requestOperation, this.mRequestItems);
            } else {
                int position = 0;
                int size = this.mRequestItems.size();
                while (position < size) {
                    int i;
                    int endPosition = position + limitCount;
                    List list = this.mRequestItems;
                    if (endPosition > size) {
                        i = size;
                    } else {
                        i = endPosition;
                    }
                    List<RequestFaceItem> items = list.subList(position, i);
                    position = endPosition;
                    result = doRequest(requestOperation, items);
                    if (result == 2) {
                        return result;
                    }
                }
            }
            return result;
        }

        private int doRequest(RequestOperationBase requestOperation, List<RequestFaceItem> items) {
            try {
                return RetryRequest.doUpDownDeleteItemsInBackground(SyncFaceFromLocal.this.mContext, SyncFaceFromLocal.this.mAccount, SyncFaceFromLocal.this.mExtendedAuthToken, items, requestOperation);
            } catch (Exception e) {
                e.printStackTrace();
                return 2;
            }
        }
    }

    public SyncFaceFromLocal(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        super(mContext, mAccount, mExtendedAuthToken);
    }

    protected String getSortOrder() {
        return null;
    }

    protected Uri getBaseUri() {
        return FaceDataManager.PEOPLE_FACE_URI;
    }

    protected DBItem generateDBImage(Cursor cursor) {
        return new PeopleFace(cursor);
    }

    protected String getSelectionClause() {
        return String.format(" (%s) ", new Object[]{"localFlag != 0"});
    }

    protected void initRequestCloudItemList() {
        this.mCreatePeople = new RequestItemGroup();
        this.mMoveFace = new RequestItemGroup();
        this.mDeleteFace = new RequestItemGroup();
        this.mMergePeople = new RequestItemGroup();
        this.mRenamePeople = new RequestItemGroup();
        this.mIgnorePeople = new RequestItemGroup();
        this.mRecoveryPeople = new RequestItemGroup();
    }

    protected void putToRequestCloudItemList(DBItem dbItem) {
        PeopleFace face = (PeopleFace) dbItem;
        boolean isPeopleItem = face.type.equalsIgnoreCase("PEOPLE");
        switch (face.visibilityType) {
            case 4:
                this.mRecoveryPeople.addItem(new RequestFaceItem(0, face));
                break;
        }
        switch (face.localFlag) {
            case 2:
                RequestFaceItem requestItem = new RequestFaceItem(0, face);
                if (!isPeopleItem) {
                    this.mDeleteFace.addItem(requestItem);
                    return;
                }
                return;
            case 5:
                if (!isPeopleItem) {
                    this.mMoveFace.addItem(new RequestFaceItem(0, face));
                    return;
                }
                return;
            case 8:
                this.mCreatePeople.addItem(new RequestFaceItem(0, face));
                return;
            case 10:
                if (isPeopleItem) {
                    this.mRenamePeople.addItem(new RequestFaceItem(0, face));
                    return;
                }
                return;
            case 12:
                if (!TextUtils.equals(face.groupId, face.serverId)) {
                    this.mMergePeople.addItem(new RequestFaceItem(0, face));
                    return;
                }
                return;
            case 13:
                this.mIgnorePeople.addItem(new RequestFaceItem(0, face));
                return;
            default:
                return;
        }
    }

    protected void handleRequestCloudItemList() {
        try {
            if (this.mCreatePeople.needRequest()) {
                SyncLog.v("SyncFaceFromLocal", "start create group items");
                if (this.mCreatePeople.request(new CreatePeopleOperation(this.mContext)) == 2) {
                    return;
                }
            }
            if (this.mRecoveryPeople.needRequest()) {
                if (this.mRecoveryPeople.request(new RecoveryPeopleOperation(this.mContext)) == 2) {
                    return;
                }
            }
            if (this.mMoveFace.needRequest()) {
                SyncLog.v("SyncFaceFromLocal", "start move image items");
                if (this.mMoveFace.request(new MoveFaceOperation(this.mContext)) == 2) {
                    return;
                }
            }
            if (this.mDeleteFace.needRequest()) {
                SyncLog.v("SyncFaceFromLocal", "start delete image items");
                if (this.mDeleteFace.request(new DeleteFaceOperation(this.mContext)) == 2) {
                    return;
                }
            }
            if (this.mRenamePeople.needRequest()) {
                SyncLog.v("SyncFaceFromLocal", "start rename group items");
                if (this.mRenamePeople.request(new RenamePeopleOperation(this.mContext)) == 2) {
                    return;
                }
            }
            if (this.mMergePeople.needRequest()) {
                SyncLog.v("SyncFaceFromLocal", "start delete group items");
                if (this.mMergePeople.request(new MergePeopleOperation(this.mContext)) == 2) {
                    return;
                }
            }
            if (this.mIgnorePeople.needRequest()) {
                SyncLog.v("SyncFaceFromLocal", "start delete group items");
                if (this.mIgnorePeople.request(new IgnorePeopleOperation(this.mContext)) == 2) {
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
