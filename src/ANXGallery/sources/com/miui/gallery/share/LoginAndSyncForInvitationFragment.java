package com.miui.gallery.share;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.miui.gallery.ui.BaseFragment;
import com.miui.gallery.ui.LoginAndSyncCheckFragment;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;

public class LoginAndSyncForInvitationFragment extends BaseFragment {
    private Path mPath;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle args = getArguments();
        if (args != null) {
            this.mPath = (Path) args.getParcelable("invitation_path");
        }
        if (this.mPath == null) {
            finish();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("key_check_gallery_sync", true);
        bundle.putSerializable("cloud_guide_source", CloudGuideSource.SHARE_INVITATION);
        LoginAndSyncCheckFragment.checkLoginAndSyncState(this, bundle);
    }

    public String getPageName() {
        return null;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            AlbumShareInvitationHandler.acceptShareInvitation(getActivity(), this.mPath);
        } else {
            finish();
        }
    }

    protected int getThemeRes() {
        return 0;
    }

    public void finish() {
        Activity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    protected boolean useImageLoader() {
        return false;
    }

    protected boolean recordPageByDefault() {
        return false;
    }
}
