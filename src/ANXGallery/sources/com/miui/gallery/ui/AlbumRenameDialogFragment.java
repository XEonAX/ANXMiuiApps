package com.miui.gallery.ui;

import android.content.Context;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.ui.BaseAlbumOperationDialogFragment.OnAlbumOperationDoneListener;

public class AlbumRenameDialogFragment extends BaseAlbumOperationDialogFragment {
    private long mAlbumId;

    public static AlbumRenameDialogFragment newInstance(long albumId, String albumDefaultName, OnAlbumOperationDoneListener listener) {
        AlbumRenameDialogFragment fragment = new AlbumRenameDialogFragment();
        Bundle args = new Bundle();
        args.putLong("key_album_id", albumId);
        args.putString("key_album_default_name", albumDefaultName);
        fragment.setArguments(args);
        fragment.setOnAlbumOperationDoneListener(listener);
        return fragment;
    }

    protected void parseArguments() {
        Bundle args = getArguments();
        this.mAlbumId = args.getLong("key_album_id", -1);
        this.mDefaultName = args.getString("key_album_default_name");
    }

    protected int getDialogTitle() {
        return R.string.rename_album;
    }

    protected int getOperationFailedString() {
        return R.string.rename_album_failed;
    }

    protected int getOperationSucceededString() {
        return R.string.rename_album_succeeded;
    }

    protected Bundle execAlbumOperation(Context context, String albumName) {
        return CloudUtils.renameAlbum(context, this.mAlbumId, albumName);
    }

    protected long getResultId(Bundle resultBundle) {
        if (resultBundle == null) {
            return -101;
        }
        return resultBundle.getLong("id", -1);
    }
}
