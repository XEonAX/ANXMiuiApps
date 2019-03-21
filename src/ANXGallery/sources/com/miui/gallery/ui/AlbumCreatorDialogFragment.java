package com.miui.gallery.ui;

import android.content.Context;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.provider.CloudUtils;

public class AlbumCreatorDialogFragment extends BaseAlbumOperationDialogFragment {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    protected void parseArguments() {
        this.mDefaultName = "";
    }

    protected int getDialogTitle() {
        return R.string.create_new_album;
    }

    protected int getOperationFailedString() {
        return R.string.create_new_album_failed;
    }

    protected int getOperationSucceededString() {
        return 0;
    }

    protected Bundle execAlbumOperation(Context context, String albumName) {
        return CloudUtils.create(context, albumName);
    }

    protected long getResultId(Bundle resultBundle) {
        if (resultBundle == null) {
            return -101;
        }
        return resultBundle.getLong("id", -1);
    }
}
