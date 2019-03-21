package com.miui.gallery.ui;

import android.accounts.Account;
import android.app.Activity;
import android.app.DialogFragment;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SyncStatusObserver;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.account.AccountHelper;
import com.miui.gallery.R;
import com.miui.gallery.cloud.download.BatchDownloadManager;
import com.miui.gallery.cloud.download.BatchDownloadUtil;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.preference.GalleryPreferences.PrefKeys;
import com.miui.gallery.preference.GalleryPreferences.SlideShow;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.preference.PreferenceHelper;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.GalleryContract.RecentDiscoveredMedia;
import com.miui.gallery.provider.deprecated.GalleryCloudProvider;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.AlertDialogFragment.Builder;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.ui.SlideshowIntervalDialogFragment.CompleteListener;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.DebugUtil;
import com.miui.gallery.util.FeatureUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncStatusObserverWrapper;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.gallery.widget.MultiClickListener;
import com.miui.gallery.widget.ValueListPreference;
import java.util.HashMap;
import java.util.Map;
import miui.preference.PreferenceFragment;
import miui.preference.ValuePreference;

public class GallerySettingsFragment extends PreferenceFragment implements OnPreferenceChangeListener, OnPreferenceClickListener {
    private static final int[] DOWNLOAD_TYPE_ENTRIES = new int[]{R.string.download_type_thumbnail_desc, R.string.download_type_origin_desc};
    private static final int[] DOWNLOAD_TYPE_VALUES = new int[]{R.string.download_type_thumbnail, R.string.download_type_origin};
    private static SyncStatusObserverWrapper sSyncStatusObserverWrapper = new SyncStatusObserverWrapper();
    private BroadcastReceiver mAIAlbumStatusObserver = null;
    private CheckBoxPreference mAIAlbumStatusPref;
    private CheckBoxPreference mAutoBackPref;
    private CheckBoxPreference mAutoDownloadPref;
    private CheckBoxPreference mBackupOnlyInWifiPref;
    private PreferenceCategory mBrowseCategory;
    private MultiClickListener mDebugClickListener = new MultiClickListener(3, new OnClickListener() {
        public void onClick(View v) {
            GallerySettingsFragment.this.addDebugPreferences();
        }
    });
    private ValueListPreference mDownloadTypePref;
    private CheckBoxPreference mFaceLocalStatusPref;
    private CheckBoxPreference mImpunityDeclarationPref;
    private Handler mMainHandler = new Handler();
    private PreferenceCategory mMiCloudCategory;
    private Object mObserverHandle;
    private PreferenceScreen mPreferenceRoot;
    private ValuePreference mPrivacyPolicyPref;
    private CheckBoxPreference mShowHiddenAlbumPref;
    private CheckBoxPreference mShowLocalAlbumOnlyPref;
    private ValuePreference mSlideshowIntervalPref;
    private SyncStatusObserver mSyncStatusObserver = new SyncStatusObserver() {
        public void onStatusChanged(int which) {
            if (which == 1) {
                GallerySettingsFragment.this.mMainHandler.post(new Runnable() {
                    public void run() {
                        if (GallerySettingsFragment.this.mAutoBackPref != null) {
                            Activity activity = GallerySettingsFragment.this.getActivity();
                            if (activity != null && !activity.isFinishing()) {
                                CheckBoxPreference access$000 = GallerySettingsFragment.this.mAutoBackPref;
                                boolean z = ContentResolver.getMasterSyncAutomatically() && ContentResolver.getSyncAutomatically(AccountHelper.getXiaomiAccount(activity), "com.miui.gallery.cloud.provider");
                                access$000.setChecked(z);
                            }
                        }
                    }
                });
            }
        }
    };
    private ValuePreference mTrashBinPref;

    private boolean getAIAlbumStatus() {
        return AIAlbumStatusHelper.isAIAlbumEnabled();
    }

    private boolean getFaceAlbumStatus() {
        return AIAlbumStatusHelper.isFaceAlbumEnabled();
    }

    private void updateAIAlbumStatus() {
        if (this.mAIAlbumStatusPref != null) {
            this.mAIAlbumStatusPref.setChecked(getAIAlbumStatus());
        } else if (this.mFaceLocalStatusPref != null) {
            this.mFaceLocalStatusPref.setChecked(getFaceAlbumStatus());
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getPreferenceManager().setSharedPreferencesName("com.miui.gallery_preferences_new");
        addPreferencesFromResource(R.xml.gallery_preferences);
        this.mPreferenceRoot = (PreferenceScreen) findPreference("root");
        this.mMiCloudCategory = (PreferenceCategory) findPreference("micloud_category");
        this.mAutoBackPref = (CheckBoxPreference) findPreference("backup_automatically");
        this.mAutoBackPref.setOnPreferenceChangeListener(this);
        this.mAutoBackPref.setOnPreferenceClickListener(this);
        this.mBackupOnlyInWifiPref = (CheckBoxPreference) findPreference(PrefKeys.SYNC_BACKUP_ONLY_IN_WIFI);
        this.mBackupOnlyInWifiPref.setOnPreferenceChangeListener(this);
        this.mAIAlbumStatusPref = (CheckBoxPreference) findPreference("cloud_ai_album_status");
        this.mFaceLocalStatusPref = (CheckBoxPreference) findPreference("cloud_face_local_status");
        if (AIAlbumStatusHelper.useNewAIAlbumSwitch()) {
            this.mMiCloudCategory.removePreference(this.mFaceLocalStatusPref);
            this.mFaceLocalStatusPref = null;
            this.mAIAlbumStatusPref.setOnPreferenceChangeListener(this);
        } else {
            this.mMiCloudCategory.removePreference(this.mAIAlbumStatusPref);
            this.mAIAlbumStatusPref = null;
            this.mFaceLocalStatusPref.setOnPreferenceChangeListener(this);
        }
        this.mAutoDownloadPref = (CheckBoxPreference) findPreference("auto_download_media");
        this.mDownloadTypePref = (ValueListPreference) findPreference(PrefKeys.SYNC_DOWNLOAD_TYPE);
        this.mAutoDownloadPref.setChecked(Sync.isAutoDownload());
        this.mAutoDownloadPref.setOnPreferenceChangeListener(this);
        this.mDownloadTypePref.setWhichAsValue(1);
        this.mDownloadTypePref.setEntries(getDownloadTypeEntries());
        this.mDownloadTypePref.setEntryValues(getDownloadTypeValues());
        this.mDownloadTypePref.setValue(getDownloadTypeValue());
        this.mDownloadTypePref.setOnPreferenceChangeListener(this);
        if (onlyCloud()) {
            this.mPreferenceRoot.removeAll();
            this.mPreferenceRoot.addPreference(this.mMiCloudCategory);
            this.mMiCloudCategory.setTitle("");
        } else {
            this.mBrowseCategory = (PreferenceCategory) findPreference("browse_category");
            this.mShowLocalAlbumOnlyPref = (CheckBoxPreference) findPreference("show_local_album_only");
            this.mShowLocalAlbumOnlyPref.setOnPreferenceChangeListener(this);
            this.mShowHiddenAlbumPref = (CheckBoxPreference) findPreference(PrefKeys.HIDDEN_ALBUM_SHOW);
            this.mShowHiddenAlbumPref.setOnPreferenceChangeListener(this);
            this.mSlideshowIntervalPref = (ValuePreference) findPreference(PrefKeys.SLIDESHOW_INTERVAL);
            this.mSlideshowIntervalPref.setShowRightArrow(true);
            this.mSlideshowIntervalPref.setOnPreferenceClickListener(this);
            this.mImpunityDeclarationPref = (CheckBoxPreference) findPreference("impunity_declaration");
            if (BaseBuildUtil.isInternational()) {
                ((PreferenceCategory) findPreference("others")).removePreference(this.mImpunityDeclarationPref);
            } else {
                this.mImpunityDeclarationPref.setChecked(CTA.remindConnectNetworkEveryTime());
                this.mImpunityDeclarationPref.setOnPreferenceChangeListener(this);
            }
            this.mTrashBinPref = (ValuePreference) findPreference("trash_bin");
            if (ApplicationHelper.isCloudTrashBinFeatureOpen()) {
                this.mTrashBinPref.setShowRightArrow(true);
                this.mTrashBinPref.setOnPreferenceClickListener(this);
            } else {
                ((PreferenceCategory) findPreference("others")).removePreference(this.mTrashBinPref);
            }
            this.mPrivacyPolicyPref = (ValuePreference) findPreference("privacy_policy");
            this.mPrivacyPolicyPref.setOnPreferenceClickListener(this);
            refreshSlideshowIntervalPrefValue();
        }
        if (!FeatureUtil.isSupportBackupOnlyWifi()) {
            this.mMiCloudCategory.removePreference(this.mBackupOnlyInWifiPref);
        }
    }

    private void addDebugPreferences() {
        Preference preference = findPreference("others");
        if (preference != null) {
            PreferenceCategory category = (PreferenceCategory) preference;
            if (category.findPreference("debug_gallery") == null) {
                ValuePreference debug = new ValuePreference(getActivity());
                debug.setKey("debug_gallery");
                debug.setTitle(R.string.start_debug);
                debug.setOnPreferenceClickListener(this);
                category.addPreference(debug);
                ValuePreference correctTime = new ValuePreference(getActivity());
                correctTime.setKey("correct_photo_time");
                correctTime.setTitle(R.string.correct_photo_time);
                correctTime.setOnPreferenceClickListener(this);
                category.addPreference(correctTime);
            }
        }
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        TextView textView = new TextView(getActivity());
        int heightAndWidth = getResources().getDimensionPixelSize(R.dimen.debug_generate_view_size);
        textView.setWidth(heightAndWidth);
        textView.setHeight(heightAndWidth);
        getActionBar().setEndView(textView);
        textView.setOnClickListener(this.mDebugClickListener);
    }

    private String[] getDownloadTypeEntries() {
        String[] entries = new String[DOWNLOAD_TYPE_ENTRIES.length];
        for (int i = 0; i < DOWNLOAD_TYPE_ENTRIES.length; i++) {
            entries[i] = getString(DOWNLOAD_TYPE_ENTRIES[i]);
        }
        return entries;
    }

    private String[] getDownloadTypeValues() {
        String[] entries = new String[DOWNLOAD_TYPE_VALUES.length];
        for (int i = 0; i < DOWNLOAD_TYPE_VALUES.length; i++) {
            entries[i] = getString(DOWNLOAD_TYPE_VALUES[i]);
        }
        return entries;
    }

    private String getDownloadTypeValue() {
        DownloadType type = Sync.getDownloadType();
        if (type == DownloadType.THUMBNAIL) {
            return getString(DOWNLOAD_TYPE_VALUES[0]);
        }
        if (type == DownloadType.ORIGIN) {
            return getString(DOWNLOAD_TYPE_VALUES[1]);
        }
        return null;
    }

    private DownloadType getDownloadTypeFrom(String value) {
        if (getString(DOWNLOAD_TYPE_VALUES[0]).equals(value)) {
            return DownloadType.THUMBNAIL;
        }
        if (getString(DOWNLOAD_TYPE_VALUES[1]).equals(value)) {
            return DownloadType.ORIGIN;
        }
        return null;
    }

    public void onResume() {
        boolean z = true;
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(getActivity(), "settings");
        if (this.mObserverHandle == null) {
            sSyncStatusObserverWrapper.setSyncStatusObserverWorker(this.mSyncStatusObserver);
            this.mObserverHandle = ContentResolver.addStatusChangeListener(1, sSyncStatusObserverWrapper);
        }
        Account account = AccountHelper.getXiaomiAccount(getActivity());
        if (account == null) {
            this.mMiCloudCategory.removeAll();
            this.mMiCloudCategory.addPreference(this.mAutoBackPref);
            if (!onlyCloud()) {
                this.mBrowseCategory.removePreference(this.mShowLocalAlbumOnlyPref);
            }
        } else {
            if (!onlyCloud()) {
                if (this.mBrowseCategory.findPreference("show_local_album_only") == null) {
                    this.mBrowseCategory.addPreference(this.mShowLocalAlbumOnlyPref);
                }
                this.mShowLocalAlbumOnlyPref.setChecked(LocalMode.isOnlyShowLocalPhoto());
            }
            boolean needObserveAIAlbumStatus = false;
            if (this.mAIAlbumStatusPref != null) {
                if (this.mMiCloudCategory.findPreference("cloud_ai_album_status") == null) {
                    this.mMiCloudCategory.addPreference(this.mAIAlbumStatusPref);
                }
                this.mAIAlbumStatusPref.setChecked(getAIAlbumStatus());
                needObserveAIAlbumStatus = true;
            } else if (this.mFaceLocalStatusPref != null) {
                if (this.mMiCloudCategory.findPreference("cloud_face_local_status") == null) {
                    this.mMiCloudCategory.addPreference(this.mFaceLocalStatusPref);
                }
                this.mFaceLocalStatusPref.setChecked(getFaceAlbumStatus());
                needObserveAIAlbumStatus = true;
            }
            if (needObserveAIAlbumStatus && this.mAIAlbumStatusObserver == null) {
                this.mAIAlbumStatusObserver = new BroadcastReceiver() {
                    public void onReceive(Context context, Intent intent) {
                        GallerySettingsFragment.this.updateAIAlbumStatus();
                    }
                };
                AIAlbumStatusHelper.registerAIAlbumStatusReceiver(getActivity(), this.mAIAlbumStatusObserver);
            }
        }
        CheckBoxPreference checkBoxPreference = this.mAutoBackPref;
        if (!(ContentResolver.getMasterSyncAutomatically() && ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider"))) {
            z = false;
        }
        checkBoxPreference.setChecked(z);
        if (this.mImpunityDeclarationPref != null) {
            this.mImpunityDeclarationPref.setChecked(CTA.remindConnectNetworkEveryTime());
        }
    }

    public void onPause() {
        super.onPause();
        sSyncStatusObserverWrapper.setSyncStatusObserverWorker(null);
        if (this.mObserverHandle != null) {
            ContentResolver.removeStatusChangeListener(this.mObserverHandle);
            this.mObserverHandle = null;
        }
        if (this.mAIAlbumStatusObserver != null) {
            AIAlbumStatusHelper.unregisterAIAlbumStatusReceiver(getActivity(), this.mAIAlbumStatusObserver);
            this.mAIAlbumStatusObserver = null;
        }
        BaseSamplingStatHelper.recordPageEnd(getActivity(), "settings");
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 16908332:
                getActivity().finish();
                return true;
            default:
                return false;
        }
    }

    private boolean onlyCloud() {
        return "com.miui.gallery.cloud.provider.SYNC_SETTINGS".equals(getActivity().getIntent().getAction());
    }

    private void showSlideshowIntervalDialog() {
        SlideshowIntervalDialogFragment dialog = new SlideshowIntervalDialogFragment();
        dialog.setCompleteListener(new CompleteListener() {
            public void onComplete() {
                GallerySettingsFragment.this.refreshSlideshowIntervalPrefValue();
            }
        });
        dialog.showAllowingStateLoss(getFragmentManager(), "SlideshowIntervalDialogFragment");
    }

    private void showSyncSettingDialog() {
        ConfirmDialog.showConfirmDialog(getFragmentManager(), getString(R.string.backup_sync_dialog_title), getString(R.string.backup_sync_dialog_tips), getString(R.string.cancel), getString(R.string.backup_sync_dialog_confirm), new ConfirmDialogInterface() {
            public void onConfirm(DialogFragment dialog) {
                Intent intent = new Intent("android.settings.ACCOUNT_LIST");
                intent.setPackage("com.android.settings");
                GallerySettingsFragment.this.startActivity(intent);
            }

            public void onCancel(DialogFragment dialog) {
            }
        });
    }

    private void refreshSlideshowIntervalPrefValue() {
        this.mSlideshowIntervalPref.setValue(getString(R.string.slideshow_interval_value, new Object[]{Integer.valueOf(SlideShow.getSlideShowInterval())}));
    }

    public boolean onPreferenceClick(Preference preference) {
        if (preference == this.mSlideshowIntervalPref) {
            showSlideshowIntervalDialog();
        } else if (preference == this.mTrashBinPref) {
            IntentUtil.gotoTrashBin(getActivity(), "GallerySettingsFragment");
        } else if (preference == this.mAutoBackPref) {
            if (!ContentResolver.getMasterSyncAutomatically()) {
                showSyncSettingDialog();
            }
        } else if (TextUtils.equals(preference.getKey(), "debug_gallery")) {
            DebugUtil.generateDebugLog(getActivity());
        } else if (TextUtils.equals(preference.getKey(), "correct_photo_time")) {
            DebugUtil.correctPhotoTime(getActivity());
        } else if (preference == this.mPrivacyPolicyPref) {
            IntentUtil.gotoPrivacyPolicy(getActivity());
        }
        return true;
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        Activity activity = getActivity();
        Map<String, String> params;
        if (preference == this.mShowLocalAlbumOnlyPref) {
            boolean isOnlyShowLocal = ((Boolean) newValue).booleanValue();
            LocalMode.setOnlyShowLocalPhoto(isOnlyShowLocal);
            BaseSamplingStatHelper.recordStringPropertyEvent("album", "show_local_album_only", String.valueOf(isOnlyShowLocal));
            activity.getContentResolver().notifyChange(Media.URI, null, false);
            activity.getContentResolver().notifyChange(Album.URI, null, false);
            activity.getContentResolver().notifyChange(PeopleFace.PERSONS_URI, null, false);
            activity.getContentResolver().notifyChange(RecentDiscoveredMedia.URI, null, false);
        } else if (preference == this.mShowHiddenAlbumPref) {
            PreferenceHelper.putBoolean(PrefKeys.HIDDEN_ALBUM_SHOW, ((Boolean) newValue).booleanValue());
            activity.getContentResolver().notifyChange(Media.URI, null, false);
            activity.getContentResolver().notifyChange(Album.URI, null, false);
            activity.getContentResolver().notifyChange(Media.URI_OWNER_ALBUM_MEDIA, null, false);
            activity.getContentResolver().notifyChange(RecentDiscoveredMedia.URI, null, false);
        } else if (preference == this.mAutoBackPref) {
            if (SyncUtil.setSyncAutomatically(activity, ((Boolean) newValue).booleanValue()) && ContentResolver.getMasterSyncAutomatically()) {
                return true;
            }
            return false;
        } else if (this.mAIAlbumStatusPref != null && preference == this.mAIAlbumStatusPref) {
            AIAlbumStatusHelper.setAIAlbumLocalStatus(activity, ((Boolean) newValue).booleanValue());
            params = new HashMap(1);
            params.put("switchTo", newValue.toString());
            BaseSamplingStatHelper.recordCountEvent("settings", "settings_change_ai_album_switch", params);
        } else if (this.mFaceLocalStatusPref != null && preference == this.mFaceLocalStatusPref) {
            AIAlbumStatusHelper.setFaceAlbumStatus(activity, ((Boolean) newValue).booleanValue());
            params = new HashMap(1);
            params.put("switchTo", newValue.toString());
            BaseSamplingStatHelper.recordCountEvent("settings", "settings_change_face_switch", params);
        } else if (preference == this.mImpunityDeclarationPref) {
            CTA.setRemindConnectNetworkEveryTime(((Boolean) newValue).booleanValue());
        } else if (preference == this.mBackupOnlyInWifiPref) {
            return onBackupOnlyWifiChange(((Boolean) newValue).booleanValue());
        } else {
            if (preference == this.mAutoDownloadPref) {
                switchAutoDownload(((Boolean) newValue).booleanValue());
            } else if (preference == this.mDownloadTypePref) {
                return onDownloadTypePreferenceChange(getDownloadTypeFrom((String) newValue));
            }
        }
        return true;
    }

    private void changeBackupOnlyWifi(boolean isBackupOnlyWifi) {
        SyncUtil.setBackupOnlyWifi(getActivity(), isBackupOnlyWifi);
        getActivity().getContentResolver().notifyChange(GalleryCloudProvider.SYNC_SETTINGS_URI, null, false);
    }

    private boolean onBackupOnlyWifiChange(final boolean isBackupOnlyWifi) {
        if (isBackupOnlyWifi) {
            changeBackupOnlyWifi(isBackupOnlyWifi);
            return true;
        }
        new Builder().setTitle(getResources().getString(R.string.title_tip)).setMessage(getResources().getString(R.string.backup_only_wifi_dialog_message)).setNegativeButton(getResources().getString(R.string.cancel), null).setPositiveButton(getResources().getString(R.string.ok), new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (GallerySettingsFragment.this.mBackupOnlyInWifiPref != null) {
                    GallerySettingsFragment.this.mBackupOnlyInWifiPref.setChecked(isBackupOnlyWifi);
                    GallerySettingsFragment.this.changeBackupOnlyWifi(isBackupOnlyWifi);
                }
            }
        }).create().showAllowingStateLoss(getChildFragmentManager(), "slimDialog");
        return false;
    }

    private boolean onDownloadTypePreferenceChange(DownloadType type) {
        if (type == null) {
            return false;
        }
        changeDownloadType(type);
        return true;
    }

    private void changeDownloadType(DownloadType type) {
        Sync.setDownloadType(type);
        if (BatchDownloadManager.canAutoDownload()) {
            BatchDownloadManager.getInstance().startBatchDownload(getActivity(), true);
        }
    }

    private void switchAutoDownload(final boolean isAutoDownload) {
        Sync.setAutoDownload(isAutoDownload);
        ThreadManager.getMiscPool().submit(new Job<Object>() {
            private boolean checkValidTask(boolean isAutoDownload) {
                return isAutoDownload == Sync.isAutoDownload();
            }

            public Object run(JobContext jc) {
                if (checkValidTask(isAutoDownload)) {
                    Context context;
                    if (GallerySettingsFragment.this.getActivity() != null) {
                        context = GallerySettingsFragment.this.getActivity().getApplicationContext();
                    } else {
                        context = null;
                    }
                    if (context != null) {
                        if (isAutoDownload) {
                            BatchDownloadUtil.cleanDownloadedMark(context);
                            if (checkValidTask(isAutoDownload) && BatchDownloadManager.canAutoDownload()) {
                                BatchDownloadManager.getInstance().startBatchDownload(context, true);
                            }
                        } else {
                            BatchDownloadManager.getInstance().stopBatchDownload(context);
                        }
                    }
                } else {
                    Log.w("GallerySettingsFragment", "invalid switch download task, old %s, new %s", Boolean.valueOf(isAutoDownload), Boolean.valueOf(Sync.isAutoDownload()));
                }
                return null;
            }
        });
        statAutoDownloadSwitchChanged(isAutoDownload);
    }

    private void statAutoDownloadSwitchChanged(boolean isAutoDownload) {
        HashMap<String, String> params = new HashMap();
        params.put("switch_status", isAutoDownload ? "enable" : "disable");
        BaseSamplingStatHelper.recordCountEvent("Sync", "sync_auto_download_switch_changed", params);
    }
}
