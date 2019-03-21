package com.miui.gallery.ui;

import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.CloudGuideAutoBackupActivity;
import com.miui.gallery.activity.HomePageActivity;
import com.miui.gallery.preference.GalleryPreferences.CloudGuide;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.SyncUtil;
import java.util.HashMap;
import java.util.Locale;

public class CloudGuideWelcomeFragment extends PreferenceFragment {
    private CheckBoxPreference mAIAlbumStatusPref;
    private CheckBoxPreference mFaceLocalStatusPref;
    private CloudGuideSource mSource;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getPreferenceManager().setSharedPreferencesName("com.miui.gallery_preferences_new");
        addPreferencesFromResource(R.xml.cloud_guide_welcome);
        Intent intent = getActivity().getIntent();
        if (intent.hasExtra("cloud_guide_source")) {
            this.mSource = (CloudGuideSource) intent.getSerializableExtra("cloud_guide_source");
        } else {
            this.mSource = CloudGuideSource.TOPBAR;
        }
        if (this.mSource == CloudGuideSource.TOPBAR) {
            CloudGuide.setCloudGuideTopbarClicked();
        }
        getActivity().getActionBar().setTitle(R.string.cloud_guide_welcome_title);
        PreferenceCategory rootCategory = (PreferenceCategory) findPreference("root_category");
        this.mAIAlbumStatusPref = (CheckBoxPreference) findPreference("ai_album_status");
        this.mFaceLocalStatusPref = (CheckBoxPreference) findPreference("cloud_face_local_status");
        if (AIAlbumStatusHelper.useNewAIAlbumSwitch()) {
            rootCategory.removePreference(this.mFaceLocalStatusPref);
            this.mFaceLocalStatusPref = null;
            return;
        }
        rootCategory.removePreference(this.mAIAlbumStatusPref);
        this.mAIAlbumStatusPref = null;
        CheckBoxPreference checkBoxPreference = this.mFaceLocalStatusPref;
        boolean z = !AIAlbumStatusHelper.isFaceSwitchSet() || AIAlbumStatusHelper.isAIAlbumEnabled();
        checkBoxPreference.setChecked(z);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.cloud_guide_welcome, container, false);
        TextView welcomeText = (TextView) view.findViewById(R.id.welcome_text);
        TextView introduceText = (TextView) view.findViewById(R.id.introduce);
        Button nextButton = (Button) view.findViewById(R.id.next);
        if (this.mSource == CloudGuideSource.AUTOBACKUP) {
            welcomeText.setText(R.string.welcome_to_auto_backup);
            introduceText.setText(R.string.auto_backup_introduce);
            nextButton.setText(R.string.next);
        } else {
            welcomeText.setText(R.string.welcome_to_micloud);
            introduceText.setText(R.string.micloud_introduce);
            nextButton.setText(R.string.next);
        }
        nextButton.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(CloudGuideWelcomeFragment.this.getActivity(), CloudGuideAutoBackupActivity.class);
                intent.putExtra("autobackup_album_id", CloudGuideWelcomeFragment.this.getActivity().getIntent().getLongExtra("autobackup_album_id", -1));
                intent.putExtra("cloud_guide_source", CloudGuideWelcomeFragment.this.mSource);
                CloudGuideWelcomeFragment.this.startActivityForResult(intent, 32);
            }
        });
        return view;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 32:
                if (resultCode == -1) {
                    if (this.mAIAlbumStatusPref != null) {
                        AIAlbumStatusHelper.setAIAlbumLocalStatus(getActivity(), this.mAIAlbumStatusPref.isChecked());
                    } else if (this.mFaceLocalStatusPref != null) {
                        AIAlbumStatusHelper.setFaceAlbumStatus(getActivity(), this.mFaceLocalStatusPref.isChecked());
                    }
                    if (!(this.mSource == CloudGuideSource.AUTOBACKUP || this.mSource == CloudGuideSource.SECRET || this.mSource == CloudGuideSource.SHARE_INVITATION || this.mSource == CloudGuideSource.URL)) {
                        Intent intent = new Intent(getActivity(), HomePageActivity.class);
                        intent.addFlags(67108864);
                        startActivity(intent);
                    }
                    getActivity().finish();
                    return;
                } else if (resultCode == 1) {
                    getActivity().finish();
                    return;
                } else {
                    return;
                }
            default:
                super.onActivityResult(requestCode, resultCode, data);
                return;
        }
    }

    public void onDestroy() {
        statLoginState(this.mSource, SyncUtil.existXiaomiAccount(getActivity()), SyncUtil.isGalleryCloudSyncable(getActivity()));
        super.onDestroy();
    }

    private void statLoginState(CloudGuideSource source, boolean login, boolean syncable) {
        String event = String.format(Locale.US, "guide_login_status_%s", new Object[]{source.name()});
        HashMap<String, String> params = new HashMap();
        params.put("login", String.valueOf(login));
        params.put("syncable", String.valueOf(syncable));
        GalleryStatHelper.recordCountEvent("cloud_guide", event, params);
    }

    public void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(getActivity(), "cloud_guide_welcome");
    }

    public void onPause() {
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(getActivity(), "cloud_guide_welcome");
    }
}
