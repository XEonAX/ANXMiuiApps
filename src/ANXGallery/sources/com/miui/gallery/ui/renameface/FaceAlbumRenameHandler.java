package com.miui.gallery.ui.renameface;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CreateGroupItem;
import com.miui.gallery.model.DisplayFolderItem;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceFolderItem;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceFolderItemImpl;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceNewFolerItem;
import com.miui.gallery.ui.renameface.PeopleFaceMergeDialogFragment.PeopleSelectListener;
import com.miui.gallery.util.ToastUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import miui.app.AlertDialog.Builder;

public class FaceAlbumRenameHandler extends FaceAlbumHandlerBase {
    private ConfirmListener mConfirmListener;
    private List<String> mFacePathsToBeMoved;
    private ArrayList<NormalPeopleFaceMediaSet> mFaceSets;
    private boolean mIsFaceSetsMergeOperation;
    private boolean mIsFacesMoveOperation;
    private boolean mIsRelationSetted;

    public interface ConfirmListener {
        void onConfirm(String str, boolean z);
    }

    interface FaceOperationTask {
        void run();
    }

    public FaceAlbumRenameHandler(Activity activity, NormalPeopleFaceMediaSet faceSet, ConfirmListener listener) {
        this(activity, faceSet, listener, false);
    }

    public FaceAlbumRenameHandler(Activity activity, NormalPeopleFaceMediaSet faceSet, ConfirmListener listener, boolean isRelationSetted) {
        super(activity, faceSet, null);
        this.mIsFaceSetsMergeOperation = false;
        this.mConfirmListener = listener;
        this.mIsRelationSetted = isRelationSetted;
    }

    public FaceAlbumRenameHandler(Activity activity, ArrayList<NormalPeopleFaceMediaSet> faceSets, ConfirmListener listener) {
        super(activity, null, null);
        this.mIsFaceSetsMergeOperation = false;
        this.mIsFaceSetsMergeOperation = true;
        this.mFaceSets = faceSets;
        this.mConfirmListener = listener;
        if (this.mFaceSets != null && this.mFaceSets.size() == 1 && ((NormalPeopleFaceMediaSet) this.mFaceSets.get(0)).hasName()) {
            this.mFaceSet = (NormalPeopleFaceMediaSet) this.mFaceSets.get(0);
        }
    }

    public void finishWhenGetContact(PeopleContactInfo contact) {
        if (contact != null && !TextUtils.isEmpty(contact.name)) {
            CharSequence errorTips = CreateGroupItem.checkFileNameValid(this.mActivity, contact.name);
            if (TextUtils.isEmpty(errorTips)) {
                onClick(contact);
            } else {
                ToastUtils.makeText(this.mActivity, errorTips);
            }
        }
    }

    private void showInputFolderNameDialog(boolean isMergeFaces, boolean isRelationSetted) {
        showInputFolderNameDialog(isMergeFaces ? 19 : 16, this.mFaceSet != null ? this.mFaceSet.getName() : "", isRelationSetted);
    }

    private void showInputFolderNameDialog(boolean isMergeFaces) {
        showInputFolderNameDialog(isMergeFaces, false);
    }

    public void show() {
        if (this.mIsFaceSetsMergeOperation) {
            final PeopleFaceMergeDialogFragment dialog = new PeopleFaceMergeDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("merge_action_from_album", this.mFaceSet);
            bundle.putString("people_face_Merge_title", this.mActivity.getString(R.string.merge_album_title));
            dialog.setArguments(bundle);
            dialog.showAllowingStateLoss(this.mActivity.getFragmentManager(), "PeopleFaceMergeDialogFragment");
            dialog.setPeopleSelectListener(new PeopleSelectListener() {
                public void onPeopleSelect(FaceDisplayFolderItem item, boolean exist, int type) {
                    if (type == 0) {
                        FaceAlbumRenameHandler.this.showInputFolderNameDialog(true);
                    } else {
                        FaceAlbumRenameHandler.this.onClick(item.name, exist);
                    }
                    dialog.dismiss();
                }
            });
            return;
        }
        showInputFolderNameDialog(false, this.mIsRelationSetted);
    }

    public static DisplayFolderItem getDisplayFolderItem(ArrayList<DisplayFolderItem> loadedItems, String newFolderName) {
        if (loadedItems == null) {
            return null;
        }
        Iterator it = loadedItems.iterator();
        while (it.hasNext()) {
            DisplayFolderItem each = (DisplayFolderItem) it.next();
            if (each.name.equalsIgnoreCase(newFolderName)) {
                return each;
            }
        }
        return null;
    }

    private void onClick(final PeopleContactInfo contact) {
        int sourceCount;
        FaceOperationTask task;
        String newName = contact.name;
        boolean oldFolderExists = contact.isRepeatName;
        String localGroupId = contact.localGroupId;
        final String folderName = newName.trim();
        if (this.mIsFacesMoveOperation) {
            sourceCount = this.mFacePathsToBeMoved.size();
            final FaceFolderItem toFolderItem = oldFolderExists ? new FaceFolderItemImpl(newName, localGroupId) : new FaceNewFolerItem(folderName);
            task = new FaceOperationTask() {
                public void run() {
                    FaceAlbumRenameHandler.this.moveFacesTo(folderName, toFolderItem);
                }
            };
        } else if (this.mIsFaceSetsMergeOperation && (this.mFaceSets == null || this.mFaceSets.size() != 1 || oldFolderExists)) {
            sourceCount = this.mFaceSets.size();
            task = new FaceOperationTask() {
                public void run() {
                    FaceAlbumRenameHandler.this.mergeLotsPeopleTo(folderName);
                }
            };
        } else {
            sourceCount = 1;
            task = new FaceOperationTask() {
                public void run() {
                    FaceAlbumRenameHandler.this.rename(folderName, contact);
                }
            };
        }
        if (oldFolderExists) {
            dialogToast(task, getMessage(sourceCount, folderName));
        } else {
            task.run();
        }
    }

    private void onClick(String newName, boolean exist) {
        final String folderName = newName.trim();
        int sourceCount = this.mFaceSets.size();
        FaceOperationTask task = new FaceOperationTask() {
            public void run() {
                FaceAlbumRenameHandler.this.mergeLotsPeopleTo(folderName);
            }
        };
        if (exist) {
            dialogToast(task, getMessage(sourceCount, folderName));
        } else {
            task.run();
        }
    }

    private CharSequence getMessage(int sourceCount, String folderName) {
        if (sourceCount > 1) {
            return Html.fromHtml(this.mActivity.getString(R.string.confirm_merge_many_face_albums, new Object[]{folderName}));
        }
        return Html.fromHtml(this.mActivity.getString(R.string.confirm_merge_face_albums, new Object[]{folderName}));
    }

    private void dialogToast(final FaceOperationTask task, CharSequence message) {
        new Builder(this.mActivity).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                task.run();
            }
        }).setNegativeButton(17039360, null).setMessage(message).show();
    }

    private void rename(final String newName, final PeopleContactInfo contact) {
        ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                boolean merge = false;
                NormalPeopleFaceMediaSet faceset = FaceAlbumRenameHandler.this.mFaceSet != null ? FaceAlbumRenameHandler.this.mFaceSet : (NormalPeopleFaceMediaSet) FaceAlbumRenameHandler.this.mFaceSets.get(0);
                if (faceset != null) {
                    merge = faceset.rename(FaceAlbumRenameHandler.this.mActivity, newName, contact);
                }
                if (FaceAlbumRenameHandler.this.mConfirmListener != null) {
                    FaceAlbumRenameHandler.this.mConfirmListener.onConfirm(newName, merge);
                }
                return null;
            }
        });
    }

    private void mergeLotsPeopleTo(final String folderName) {
        ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                NormalPeopleFaceMediaSet.merge(FaceAlbumRenameHandler.this.mActivity, FaceAlbumRenameHandler.this.mFaceSets, folderName);
                return null;
            }
        });
        this.mConfirmListener.onConfirm(folderName, true);
    }

    private void moveFacesTo(String folderName, FaceFolderItem toFolderItem) {
    }
}
