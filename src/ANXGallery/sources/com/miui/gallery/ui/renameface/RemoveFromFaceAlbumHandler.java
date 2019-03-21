package com.miui.gallery.ui.renameface;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceAlbumHandlerListener;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceFolderItemImpl;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceNewFolerItem;
import com.miui.gallery.ui.renameface.PeopleFaceMergeDialogFragment.PeopleSelectListener;
import miui.app.AlertDialog.Builder;

public class RemoveFromFaceAlbumHandler extends FaceAlbumHandlerBase {
    public RemoveFromFaceAlbumHandler(Activity activity, NormalPeopleFaceMediaSet faceSet, FaceAlbumHandlerListener listener) {
        super(activity, faceSet, listener);
    }

    public void finishWhenGetContact(PeopleContactInfo contact) {
        if (contact != null && !TextUtils.isEmpty(contact.name) && this.mListener != null) {
            FaceNewFolerItem item = new FaceNewFolerItem(contact.name);
            item.setContactjson(contact.formatContactJson());
            this.mListener.onGetFolderItem(item);
        }
    }

    public void show() {
        new Builder(this.mActivity).setSingleChoiceItems(new String[]{this.mActivity.getString(R.string.remove_from_current_album), this.mActivity.getString(R.string.remove_to_other_album), this.mActivity.getString(17039360)}, -1, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                switch (which) {
                    case 0:
                        if (RemoveFromFaceAlbumHandler.this.mListener != null) {
                            RemoveFromFaceAlbumHandler.this.mListener.onGetFolderItem(null);
                            return;
                        }
                        return;
                    case 1:
                        RemoveFromFaceAlbumHandler.this.showRemoveDialog();
                        return;
                    case 2:
                        dialog.cancel();
                        return;
                    default:
                        throw new IllegalStateException("unknown item clicked: " + which);
                }
            }
        }).create().show();
    }

    public void showRemoveDialog() {
        final PeopleFaceMergeDialogFragment dialog = new PeopleFaceMergeDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("people_face_Merge_title", this.mActivity.getString(R.string.remove_to_album_title));
        bundle.putParcelable("merge_action_from_album", this.mFaceSet);
        dialog.setArguments(bundle);
        dialog.showAllowingStateLoss(this.mActivity.getFragmentManager(), "PeopleFaceMergeDialogFragment");
        dialog.setPeopleSelectListener(new PeopleSelectListener() {
            public void onPeopleSelect(FaceDisplayFolderItem item, boolean exist, int type) {
                if (type == 0) {
                    RemoveFromFaceAlbumHandler.this.showInputFolderNameDialog(17, null, false);
                } else if (RemoveFromFaceAlbumHandler.this.mListener != null) {
                    RemoveFromFaceAlbumHandler.this.mListener.onGetFolderItem(new FaceFolderItemImpl(item));
                }
                dialog.dismiss();
            }
        });
    }
}
