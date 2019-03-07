package com.miui.screenrecorder.view;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.MediaFileUtils;
import com.miui.screenrecorder.tools.MiStatInterfaceUtils;
import com.miui.screenrecorder.tools.MiStatKey;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.xiaomi.stat.MiStatParams;
import java.util.Locale;
import miui.os.Build;
import miui.preference.PreferenceFragment;

@TargetApi(11)
public class ScreenRecorderSettingsFragment extends PreferenceFragment implements OnPreferenceChangeListener {
    private static final String DIAN_ACTION = "click";
    private static final String ITEM_BITRATE = "bitrate";
    private static final String ITEM_FIXED_FRAME = "fixed_frame";
    private static final String ITEM_FRAMES = "frames";
    private static final String ITEM_GO_HOME = "close_go_home";
    private static final String ITEM_ORIENTATION = "screen_orientation";
    private static final String ITEM_RESOLUTION = "resolution";
    private static final String ITEM_SHOW_KEYEVENT = "show_keyevent";
    private static final String ITEM_SHOW_TOUCH = "show_touch";
    private static final String ITEM_SOUND_SOURCE = "sound_source";
    private static final String ITEM_STOP_WHILE_LOCK = "stop_while_lock";
    private static final String ITEM_STORAGE = "storage_location";
    private static final String TAG = "ScreenRecorderSettings";
    private MiuiScreenRecorderListPreference mBitRate;
    private AlertDialog mFirstSelectMicDialog;
    private OnClickListener mFirstUseNegListener;
    private OnClickListener mFirstUsePosListener;
    private FramesListPreference mFrames;
    private CheckBoxPreference mIsFixedFrame;
    private CheckBoxPreference mIsGoHome;
    private CheckBoxPreference mIsShowHardKey;
    private CheckBoxPreference mIsShowTouch;
    private CheckBoxPreference mIsStopWhileLock;
    private Locale mLocale;
    private MiuiScreenRecorderListPreference mResolution;
    private MiuiScreenRecorderListPreference mScreenOrientation;
    private SharedPreferences mSharedPreferences;
    private MiuiScreenRecorderListPreference mSoundSource;
    private MiuiScreenRecorderListPreference mStorageLocation;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mLocale = ScreenRecorderUtils.getLocaleFromConfig(getResources().getConfiguration());
        setThemeRes(R.style.f6Theme.NoTitle);
        addPreferencesFromResource(R.xml.screen_recorder_settings);
        ScreenRecorderConfig.getConfig().refresh(getActivity());
        initListPreference();
        initCheckBoxPreference();
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mFirstSelectMicDialog != null) {
            this.mFirstSelectMicDialog.dismiss();
        }
    }

    private void initListPreference() {
        if (this.mSharedPreferences == null) {
            this.mSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ScreenRecorderApplication.getContext());
        }
        initResolution();
        initBitRate();
        initFrames();
        initOrientation();
        initSoundSource();
        initStorageLocation();
    }

    private void initCheckBoxPreference() {
        this.mIsStopWhileLock = (CheckBoxPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_STOP_WHILE_LOCK);
        this.mIsStopWhileLock.setOnPreferenceChangeListener(this);
        this.mIsShowTouch = (CheckBoxPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_SHOW_TOUCH);
        this.mIsShowTouch.setOnPreferenceChangeListener(this);
        this.mIsShowHardKey = (CheckBoxPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_SHOW_HARDKEY);
        this.mIsShowHardKey.setOnPreferenceChangeListener(this);
        this.mIsFixedFrame = (CheckBoxPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_FIXED_FRAME);
        this.mIsFixedFrame.setOnPreferenceChangeListener(this);
        this.mIsGoHome = (CheckBoxPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_IS_GO_HOME);
        this.mIsGoHome.setOnPreferenceChangeListener(this);
    }

    private void initResolution() {
        this.mResolution = (MiuiScreenRecorderListPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_RESOLUTION);
        CharSequence[] entryValues = (CharSequence[]) ScreenRecorderConfig.resolutionValues.toArray(new CharSequence[ScreenRecorderConfig.resolutionValues.size()]);
        this.mResolution.setEntries((CharSequence[]) ScreenRecorderConfig.resolutionList.toArray(new CharSequence[ScreenRecorderConfig.resolutionList.size()]));
        this.mResolution.setEntryValues(entryValues);
        this.mResolution.setLeftTitle(getString(R.string.resolution));
        this.mResolution.setLeftSummary(getString(R.string.resolution_summary));
        if (!updateStringListPreference(this.mResolution, this.mSharedPreferences.getString(ScreenRecorderConfig.KEY_SCREENRECORDER_RESOLUTION, ScreenRecorderConfig.defaultResolution), null)) {
            updateStringListPreference(this.mResolution, ScreenRecorderConfig.defaultResolution, null);
        }
        this.mResolution.setOnPreferenceChangeListener(this);
    }

    private void initBitRate() {
        this.mBitRate = (MiuiScreenRecorderListPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_BIT_RATE);
        this.mBitRate.setLeftTitle(getString(R.string.bit_rate));
        this.mBitRate.setLeftSummary(getString(R.string.bit_rate_summary));
        this.mBitRate.setEntries((CharSequence[]) ScreenRecorderConfig.bitrateList.toArray(new CharSequence[ScreenRecorderConfig.bitrateList.size()]));
        this.mBitRate.setEntryValues((CharSequence[]) ScreenRecorderConfig.bitrateValues.toArray(new CharSequence[ScreenRecorderConfig.bitrateValues.size()]));
        if (!updateFloatListPreference(this.mBitRate, this.mSharedPreferences.getString(ScreenRecorderConfig.KEY_SCREENRECORDER_BIT_RATE, ScreenRecorderConfig.defaultBitRate), null)) {
            updateFloatListPreference(this.mBitRate, ScreenRecorderConfig.defaultBitRate, null);
        }
        this.mBitRate.setOnPreferenceChangeListener(this);
    }

    private void initFrames() {
        this.mFrames = (FramesListPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_FRAMES);
        this.mFrames.setLeftTitle(getString(R.string.frames));
        this.mFrames.setLeftSummary(getString(R.string.frames_summary));
        this.mFrames.setEntries((CharSequence[]) ScreenRecorderConfig.framesList.toArray(new CharSequence[ScreenRecorderConfig.framesList.size()]));
        this.mFrames.setEntryValues((CharSequence[]) ScreenRecorderConfig.framesValues.toArray(new CharSequence[ScreenRecorderConfig.framesValues.size()]));
        if (!updateIntListPreference(this.mFrames, this.mSharedPreferences.getString(ScreenRecorderConfig.KEY_SCREENRECORDER_FRAMES, ScreenRecorderConfig.defaultFrames), null)) {
            updateIntListPreference(this.mFrames, ScreenRecorderConfig.defaultFrames, null);
        }
        this.mFrames.setOnPreferenceChangeListener(this);
    }

    private void initOrientation() {
        this.mScreenOrientation = (MiuiScreenRecorderListPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_ORIENTATION);
        this.mScreenOrientation.setLeftTitle(getString(R.string.screen_orientation));
        this.mScreenOrientation.setLeftSummary(getString(R.string.screen_orientation_summary));
        if (!updateIntListPreference(this.mScreenOrientation, this.mSharedPreferences.getString(ScreenRecorderConfig.KEY_SCREENRECORDER_ORIENTATION, "0"), null)) {
            updateIntListPreference(this.mScreenOrientation, "0", null);
        }
        this.mScreenOrientation.setOnPreferenceChangeListener(this);
    }

    private void initStorageLocation() {
        if (MediaFileUtils.isExtraSd()) {
            this.mStorageLocation = (MiuiScreenRecorderListPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_STORAGE_LOCATION);
            this.mStorageLocation.setLeftTitle(getString(R.string.storage_location));
            this.mStorageLocation.setLeftSummary(getString(R.string.storage_location_summary));
            if (!updateIntListPreference(this.mStorageLocation, this.mSharedPreferences.getString(ScreenRecorderConfig.KEY_SCREENRECORDER_STORAGE_LOCATION, "0"), null)) {
                updateIntListPreference(this.mStorageLocation, "0", null);
            }
            this.mStorageLocation.setOnPreferenceChangeListener(this);
            return;
        }
        ((PreferenceGroup) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_LISTPREFERENCE)).removePreference(findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_STORAGE_LOCATION));
    }

    private void initSoundSource() {
        this.mSoundSource = (MiuiScreenRecorderListPreference) findPreference(ScreenRecorderConfig.KEY_SCREENRECORDER_SOUND);
        this.mSoundSource.setLeftTitle(getString(R.string.sound_source));
        if (ScreenRecorderUtils.isShowInnerSoundEntrance()) {
            this.mSoundSource.setLeftSummary(getString(R.string.sound_source_summary));
        } else {
            this.mSoundSource.setLeftSummary(getString(R.string.sound_source_summary_without_system_sounds));
        }
        CharSequence[] entries = this.mSoundSource.getEntries();
        CharSequence[] entrieValues = this.mSoundSource.getEntryValues();
        if (entrieValues != null && entrieValues.length == 3 && entries != null && entries.length == 3) {
            if (ScreenRecorderUtils.isShowInnerSoundEntrance()) {
                ScreenRecorderConfig.defaultSound = ScreenRecorderConfig.INNER_SOUND;
            } else {
                ScreenRecorderConfig.defaultSound = "0";
                this.mSoundSource.setEntries(new CharSequence[]{entries[0], entries[1]});
                this.mSoundSource.setEntryValues(new CharSequence[]{entrieValues[0], entrieValues[1]});
            }
        }
        if (!updateIntListPreference(this.mSoundSource, this.mSharedPreferences.getString(ScreenRecorderConfig.KEY_SCREENRECORDER_SOUND, ScreenRecorderConfig.defaultSound), null)) {
            updateIntListPreference(this.mSoundSource, ScreenRecorderConfig.defaultSound, null);
        }
        this.mSoundSource.setOnPreferenceChangeListener(this);
    }

    private boolean updateIntListPreference(MiuiScreenRecorderListPreference preference, Object newValue, String type) {
        try {
            int value = Integer.valueOf(newValue.toString()).intValue();
            if (value < 0) {
                return false;
            }
            CharSequence[] values = preference.getEntryValues();
            for (int i = 0; i < values.length; i++) {
                if (Integer.parseInt(values[i].toString()) == value) {
                    preference.setValueIndex(i);
                    preference.setRightValue(String.valueOf(preference.getEntries()[i]));
                    if (!TextUtils.isEmpty(type)) {
                        statisForListButton(type, String.valueOf(preference.getEntries()[i]));
                    }
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean updateStringListPreference(MiuiScreenRecorderListPreference preference, Object newValue, String type) {
        String newVal = newValue.toString();
        if (TextUtils.isEmpty(newVal)) {
            return false;
        }
        CharSequence[] values = preference.getEntryValues();
        for (int i = 0; i < values.length; i++) {
            if (newVal.equals(values[i].toString())) {
                preference.setValueIndex(i);
                preference.setRightValue(String.valueOf(preference.getEntries()[i]));
                if (!TextUtils.isEmpty(type)) {
                    statisForListButton(type, String.valueOf(preference.getEntries()[i]));
                }
                return true;
            }
        }
        return false;
    }

    private boolean updateFloatListPreference(MiuiScreenRecorderListPreference preference, Object newValue, String type) {
        Float newVal = Float.valueOf(newValue.toString());
        if (newVal == null) {
            return false;
        }
        CharSequence[] values = preference.getEntryValues();
        for (int i = 0; i < values.length; i++) {
            if (newVal.equals(Float.valueOf(Float.parseFloat(values[i].toString())))) {
                preference.setValueIndex(i);
                preference.setRightValue(String.valueOf(preference.getEntries()[i]));
                if (!TextUtils.isEmpty(type)) {
                    statisForListButton(type, String.valueOf(preference.getEntries()[i]));
                }
                return true;
            }
        }
        return false;
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == this.mResolution) {
            updateStringListPreference(this.mResolution, newValue, ITEM_RESOLUTION);
            return true;
        } else if (preference == this.mBitRate) {
            updateFloatListPreference(this.mBitRate, newValue, ITEM_BITRATE);
            return true;
        } else if (preference == this.mFrames) {
            updateIntListPreference(this.mFrames, newValue, ITEM_FRAMES);
            return true;
        } else if (preference == this.mScreenOrientation) {
            updateIntListPreference(this.mScreenOrientation, newValue, ITEM_ORIENTATION);
            return true;
        } else if (preference == this.mSoundSource) {
            if (ScreenRecorderConfig.MIC_SOUND.equals((String) newValue) && ScreenRecorderConfig.getConfig().isShowFirstSelectMicAlert() && !Build.IS_GLOBAL_BUILD) {
                showFirstUsingDialog(this.mSoundSource, newValue, this.mSoundSource.getValue(), ITEM_SOUND_SOURCE);
                return true;
            }
            updateIntListPreference(this.mSoundSource, newValue, ITEM_SOUND_SOURCE);
            return true;
        } else if (preference == this.mStorageLocation) {
            updateIntListPreference(this.mStorageLocation, newValue, ITEM_STORAGE);
            return true;
        } else if (preference == this.mIsStopWhileLock) {
            recorderStopWhileLock(newValue);
            return true;
        } else if (preference == this.mIsShowTouch) {
            recorderTouch(newValue);
            return true;
        } else if (preference == this.mIsShowHardKey) {
            recorderKeyEvent(newValue);
            return true;
        } else if (preference == this.mIsFixedFrame) {
            recorderIsFixedFrame(newValue);
            return true;
        } else if (preference != this.mIsGoHome) {
            return false;
        } else {
            recorderIsGoHome(newValue);
            return true;
        }
    }

    private void recorderStopWhileLock(Object isStopValue) {
        try {
            statisForRadioButton(ITEM_STOP_WHILE_LOCK, Boolean.valueOf(isStopValue.toString()).booleanValue());
        } catch (Exception e) {
            LogUtil.e(TAG, "recorderStopWhileLock exception:" + e.toString());
        }
    }

    private void recorderTouch(Object isShowTouch) {
        try {
            boolean isShow = Boolean.valueOf(isShowTouch.toString()).booleanValue();
            Intent intent = new Intent(ScreenRecorderConfig.TOUCH_MODE_CHANGE_BROADCAST);
            intent.putExtra("show_touch", isShow);
            ScreenRecorderApplication.getContext().sendBroadcast(intent);
            statisForRadioButton("show_touch", isShow);
        } catch (Exception e) {
            LogUtil.e(TAG, "recorderTouch exception:" + e.toString());
        }
    }

    private void recorderKeyEvent(Object isShowKeyEvent) {
        try {
            boolean isShow = Boolean.valueOf(isShowKeyEvent.toString()).booleanValue();
            Intent intent = new Intent(ScreenRecorderConfig.TOUCH_MODE_HARDKEY_BROADCAST);
            intent.putExtra("show_touch", isShow);
            ScreenRecorderApplication.getContext().sendBroadcast(intent);
            statisForRadioButton(ITEM_SHOW_KEYEVENT, isShow);
        } catch (Exception e) {
            LogUtil.e(TAG, "recorderKeyEvent exception:" + e.toString());
        }
    }

    private void recorderIsFixedFrame(Object isFixedFrame) {
        try {
            boolean isFixed = Boolean.valueOf(isFixedFrame.toString()).booleanValue();
            statisForRadioButton(ITEM_FIXED_FRAME, isFixed);
            this.mFrames.refreshLayout(isFixed);
        } catch (Exception e) {
            LogUtil.e(TAG, "recorderIsFixedFrame exception", e);
        }
    }

    private void recorderIsGoHome(Object isGoHome) {
        try {
            statisForRadioButton(ITEM_GO_HOME, Boolean.valueOf(isGoHome.toString()).booleanValue());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void statisForRadioButton(String key, boolean isOpen) {
        String value;
        MiStatParams miStatParams = new MiStatParams();
        miStatParams.putString(MiStatKey.PARAM_SETTING_ITEM, key);
        if (isOpen) {
            value = MiStatKey.VALUE_OPEN;
        } else {
            value = MiStatKey.VALUE_CLOSE;
        }
        miStatParams.putString(MiStatKey.PARAM_SETTING_VALUE, value);
        miStatParams.putBoolean(key, isOpen);
        MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_SETTING, MiStatKey.EVENT_SETTING_ACTION, miStatParams);
    }

    private void statisForListButton(String key, String value) {
        MiStatParams miStatParams = new MiStatParams();
        miStatParams.putString(MiStatKey.PARAM_SETTING_ITEM, key);
        miStatParams.putString(MiStatKey.PARAM_SETTING_VALUE, value);
        miStatParams.putString(key, value);
        MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_SETTING, MiStatKey.EVENT_SETTING_ACTION, miStatParams);
    }

    private void showFirstUsingDialog(final MiuiScreenRecorderListPreference preference, final Object newValue, final Object oldValue, final String type) {
        if (this.mFirstSelectMicDialog == null || !this.mFirstSelectMicDialog.isShowing()) {
            this.mFirstUsePosListener = new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    ScreenRecorderConfig.getConfig().saveShowFirstSelectAlert(false);
                    ScreenRecorderSettingsFragment.this.updateIntListPreference(preference, newValue, type);
                    LogUtil.d(ScreenRecorderSettingsFragment.TAG, "user agree to authorization");
                }
            };
            this.mFirstUseNegListener = new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    ScreenRecorderSettingsFragment.this.updateIntListPreference(preference, oldValue, type);
                    LogUtil.d(ScreenRecorderSettingsFragment.TAG, "user deny to authorization");
                }
            };
            Builder b = new Builder(getActivity());
            b.setCancelable(false);
            b.setTitle(R.string.first_using_mic_dialog_title);
            b.setMessage(R.string.first_using_mic_dialog_message);
            b.setPositiveButton(R.string.using_record_confirm_ok, this.mFirstUsePosListener);
            b.setNegativeButton(R.string.using_record_confirm_cancel, this.mFirstUseNegListener);
            this.mFirstSelectMicDialog = b.create();
            this.mFirstSelectMicDialog.show();
            this.mFirstSelectMicDialog.setOnDismissListener(new OnDismissListener() {
                public void onDismiss(DialogInterface dialog) {
                    ScreenRecorderSettingsFragment.this.mFirstUsePosListener = null;
                    ScreenRecorderSettingsFragment.this.mFirstUseNegListener = null;
                }
            });
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        Locale locale = ScreenRecorderUtils.getLocaleFromConfig(newConfig);
        if (!this.mLocale.equals(locale)) {
            this.mLocale = locale;
            ScreenRecorderConfig.setDefaultValue(getActivity());
            getActivity().recreate();
        }
    }
}
