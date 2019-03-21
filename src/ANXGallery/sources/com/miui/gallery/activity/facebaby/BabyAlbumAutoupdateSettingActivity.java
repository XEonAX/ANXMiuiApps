package com.miui.gallery.activity.facebaby;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.provider.FaceManager;
import java.lang.ref.SoftReference;
import miui.preference.PreferenceActivity;
import miui.preference.ValuePreference;

public class BabyAlbumAutoupdateSettingActivity extends PreferenceActivity implements OnPreferenceChangeListener {
    private ValuePreference mAssociateFaceAlbumPreference;
    private CheckBoxPreference mAutoAddedPreference;
    private BabyInfo mBabyInfo;
    private long mPeopleFaceLocalId;
    private AsyncTask mPeopleFaceNameTask;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.baby_album_auto_update_settings);
        addPreferencesFromResource(R.xml.baby_album_auto_update_preferences);
        this.mAutoAddedPreference = (CheckBoxPreference) findPreference("auto_update_face");
        this.mAutoAddedPreference.setOnPreferenceChangeListener(this);
        Intent intent = getIntent();
        boolean allowToReassociate = intent.getBooleanExtra("allow_to_reassociate", false);
        this.mAssociateFaceAlbumPreference = (ValuePreference) findPreference("associate_face_album");
        if (allowToReassociate) {
            this.mAssociateFaceAlbumPreference.setShowRightArrow(true);
            this.mAssociateFaceAlbumPreference.setOnPreferenceClickListener(new OnPreferenceClickListener() {
                public boolean onPreferenceClick(Preference preference) {
                    BabyAlbumAutoupdateSettingActivity.this.pickBabyFace();
                    return true;
                }
            });
        } else {
            this.mAssociateFaceAlbumPreference.setEnabled(false);
        }
        this.mBabyInfo = (BabyInfo) intent.getParcelableExtra("baby-info");
        getPeopleNameAsync();
    }

    protected void onResume() {
        super.onResume();
        refreshPreference();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mPeopleFaceNameTask != null) {
            this.mPeopleFaceNameTask.cancel(true);
        }
    }

    private void refreshPreference() {
        this.mAutoAddedPreference.setChecked(this.mBabyInfo.mAutoupdate);
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == this.mAutoAddedPreference) {
            if (!TextUtils.isEmpty(this.mBabyInfo.mPeopleId)) {
                this.mBabyInfo.mAutoupdate = ((Boolean) newValue).booleanValue();
            } else if (((Boolean) newValue).booleanValue()) {
                pickBabyFace();
                return false;
            }
        }
        return true;
    }

    private void pickBabyFace() {
        Intent intent = new Intent("com.miui.gallery.action.PICK_PEOPLE");
        intent.putExtra("pick_people", true);
        startActivityForResult(intent, 14);
    }

    public void onActivityResult(int request, int result, Intent data) {
        switch (request) {
            case 14:
                if (result == -1 && data != null) {
                    String choosedPeopleLocalId = data.getStringExtra("local_id_of_album");
                    if (!TextUtils.isEmpty(choosedPeopleLocalId)) {
                        this.mPeopleFaceLocalId = Long.parseLong(choosedPeopleLocalId);
                        this.mBabyInfo.mPeopleId = data.getStringExtra("server_id_of_album");
                        this.mBabyInfo.mAutoupdate = true;
                        this.mAutoAddedPreference.setChecked(true);
                        this.mAssociateFaceAlbumPreference.setValue(data.getStringExtra("album_name"));
                        return;
                    }
                    return;
                }
                return;
            default:
                super.onActivityResult(request, result, data);
                return;
        }
    }

    private void setResult() {
        Intent data = new Intent();
        data.putExtra("associate_people_face_local_id", this.mPeopleFaceLocalId);
        data.putExtra("baby-info", this.mBabyInfo);
        setResult(-1, data);
    }

    public void onBackPressed() {
        setResult();
        super.onBackPressed();
    }

    public boolean onNavigateUp() {
        setResult();
        return super.onNavigateUp();
    }

    private void getPeopleNameAsync() {
        if (!TextUtils.isEmpty(this.mBabyInfo.mPeopleId)) {
            final SoftReference<ValuePreference> associateFaceAlbumPreference = new SoftReference(this.mAssociateFaceAlbumPreference);
            this.mPeopleFaceNameTask = new AsyncTask<Void, Void, String>() {
                protected String doInBackground(Void... params) {
                    return FaceManager.queryPersonName(BabyAlbumAutoupdateSettingActivity.this.mBabyInfo.mPeopleId);
                }

                protected void onPostExecute(String result) {
                    if (!TextUtils.isEmpty(result)) {
                        ValuePreference preference = (ValuePreference) associateFaceAlbumPreference.get();
                        if (preference != null) {
                            preference.setValue(result);
                        }
                    }
                }
            }.execute(new Void[0]);
        }
    }
}
