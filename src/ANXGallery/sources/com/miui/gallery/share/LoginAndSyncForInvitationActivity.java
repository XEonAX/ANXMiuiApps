package com.miui.gallery.share;

import android.app.FragmentTransaction;
import android.os.Bundle;
import com.miui.gallery.activity.BaseActivity;

public class LoginAndSyncForInvitationActivity extends BaseActivity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LoginAndSyncForInvitationFragment fragment = new LoginAndSyncForInvitationFragment();
        fragment.setArguments(getIntent().getExtras());
        FragmentTransaction transaction = getFragmentManager().beginTransaction();
        transaction.add(fragment, "LoginAndSyncForInvitationFragment");
        transaction.commitAllowingStateLoss();
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    protected boolean allowUseOnOffline() {
        return false;
    }
}
