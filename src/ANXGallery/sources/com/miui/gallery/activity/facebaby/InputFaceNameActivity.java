package com.miui.gallery.activity.facebaby;

import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.ui.renameface.InputFaceNameFragment;
import com.miui.gallery.util.StringUtils;

public class InputFaceNameActivity extends BaseActivity {
    InputFaceNameFragment mFragment;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.input_face_name_activity);
        this.mFragment = (InputFaceNameFragment) getFragmentManager().findFragmentById(R.id.input_face_name_fragment);
    }

    public void onBackPressed() {
        this.mFragment.onBackPressed();
        super.onBackPressed();
    }

    public String[] getRuntimePermissions() {
        return StringUtils.mergeStringArray(super.getRuntimePermissions(), getOptionalPermissions());
    }

    private String[] getOptionalPermissions() {
        return new String[]{"android.permission.READ_CONTACTS"};
    }

    public boolean isPermissionRequired(String permission) {
        for (String optional : getOptionalPermissions()) {
            if (TextUtils.equals(optional, permission)) {
                return false;
            }
        }
        return true;
    }

    public void onPermissionsChecked(String[] permissions, int[] grantResults) {
        super.onPermissionsChecked(permissions, grantResults);
        if (this.mFragment != null) {
            this.mFragment.updateNameList();
        }
    }
}
