package com.miui.screenrecorder.config;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.RegionUtils;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class ScreenRecorderConfig {
    private static final int[] BIT_RATE_LEVEL = new int[]{200, 100, 50, 32, 24, 16, 8, 6, 4, 1};
    private static final String BIT_RATE_TAG = "Mbps";
    private static final String BIT_RATE_TAG_AR = " ميغابت في الثانية";
    private static final String BIT_RATE_TAG_FA_IR = " مگابایت بر ثانیه";
    public static final String CONFIG_FILE = "PhoneConfig.json";
    private static final String DEFAULT_BIT_RATE = "6";
    private static final String DEFAULT_BIT_RATE_HIGH = "16";
    private static final boolean DEFAULT_FIXED_FRAME = true;
    private static final String DEFAULT_FRAMES = "24";
    private static final boolean DEFAULT_IS_GO_HOME = false;
    public static final String DEFAULT_ORIENTATION = "0";
    private static final boolean DEFAULT_SHOW_TOUCH = false;
    public static final String DEFAULT_SOUND = "0";
    private static final boolean DEFAULT_STOP_WHILE_LOCK = true;
    public static final String DEFAULT_STORAGE_LOCATION = "0";
    public static final String DISPLAY_NAME = "display_name";
    public static final String DURATION = "duration";
    public static final int EDGE_RESOLUTION_RATIO = 2073600;
    public static final String FILE_PATH = "file_path";
    private static final int[] FRAME_LEVEL = new int[]{15, 24, 30, 48, HIGH_BIG_FRAMES};
    private static final String FRAME_LEVEL_TAG = "fps";
    private static final String FRAME_LEVEL_TAG_AR = " لقطة في الثانية";
    private static final String FRAME_LEVEL_TAG_FA_IR = " فریم بر ثانیه";
    private static final int HIGH_BIG_FRAMES = 60;
    public static final int INNER_PCM = 0;
    public static final String INNER_SOUND = "2";
    public static final int INNER_SUBMIX = 1;
    public static final String IS_OVER_MAX_SIZE = "is_over_max_size";
    public static final String IS_SHOW_TOUCH = "show_touch";
    public static final String KEY_SCREENRECORDER_BIT_RATE = "miui.screenrecorder.bitrates";
    public static final String KEY_SCREENRECORDER_FIXED_FRAME = "miui.screenrecorder.fixedframe";
    public static final String KEY_SCREENRECORDER_FRAMES = "miui.screenrecorder.frame";
    public static final String KEY_SCREENRECORDER_IS_GO_HOME = "miui.screenrecorder.isclosegohome";
    public static final String KEY_SCREENRECORDER_LISTPREFERENCE = "miui.screenrecorder.ListPreference";
    public static final String KEY_SCREENRECORDER_ORIENTATION = "miui.screenrecorder.orientation";
    public static final String KEY_SCREENRECORDER_RESOLUTION = "miui.screenrecorder.resolution";
    public static final String KEY_SCREENRECORDER_SHOW_HARDKEY = "miui.screenrecorder.showhardkey";
    public static final String KEY_SCREENRECORDER_SHOW_TOUCH = "miui.screenrecorder.showtouch";
    public static final String KEY_SCREENRECORDER_SOUND = "miui.screenrecorder.sound";
    public static final String KEY_SCREENRECORDER_STOP_WHILE_LOCK = "miui.screenrecorder.stopwhilelock";
    public static final String KEY_SCREENRECORDER_STORAGE_LOCATION = "miui.screenrecorder.storage";
    public static final String MIC_SOUND = "1";
    public static final int MIC_SOUND_STREAM = 1;
    public static final String NO_SOUND = "0";
    public static final int NO_SOUND_STREAM = 0;
    public static final int PCM_SOUND_STREAM = 2;
    private static final String PREF_PERMISSION_INFO_FOR_KOREA_SHOWED = "pref_permission_info_for_korea_showed";
    private static final String PREF_SHOW_FIRST_SELECT_MIC_ALERT = "pref_show_first_select_mic_alert";
    public static final String RECORD_FAIL_BROADCAST = "miui.screenrecorder.record.fail";
    public static final String RECORD_SUCCESS_BROADCAST = "miui.screenrecorder.record.sucess";
    private static int RESOLUTION_LEVEL_1 = 0;
    private static int RESOLUTION_LEVEL_2 = 0;
    private static int RESOLUTION_LEVEL_3 = 0;
    private static String RESOLUTION_LEVEL_VALUE_1 = null;
    private static String RESOLUTION_LEVEL_VALUE_1_VALUE = null;
    private static String RESOLUTION_LEVEL_VALUE_2 = null;
    private static String RESOLUTION_LEVEL_VALUE_2_VALUE = null;
    private static String RESOLUTION_LEVEL_VALUE_3 = null;
    private static String RESOLUTION_LEVEL_VALUE_3_VALUE = null;
    public static final String RESOLUTION_SPLIT = "*";
    public static final int SUBMIX_SOUND_STREAM = 3;
    public static final String TAG = "ScreenRecorderConfig";
    public static final String TOUCH_MODE_CHANGE_BROADCAST = "miui.screenrecorder.touch.mode.change";
    public static final String TOUCH_MODE_HARDKEY_BROADCAST = "miui.screenrecorder.touch.hardkey";
    public static ArrayList<String> bitrateList = new ArrayList();
    public static ArrayList<String> bitrateValues = new ArrayList();
    public static String defaultBitRate = DEFAULT_BIT_RATE;
    public static String defaultFrames = DEFAULT_FRAMES;
    public static String defaultResolution = "";
    public static String defaultResolutionValue = "";
    public static String defaultSound = "";
    public static ArrayList<String> framesList = new ArrayList();
    public static ArrayList<String> framesValues = new ArrayList();
    public static final long maxFileSize = 3984588800L;
    public static ArrayList<String> resolutionList = new ArrayList();
    public static ArrayList<String> resolutionValues = new ArrayList();
    private static ArrayList<String> soundList = new ArrayList();
    private static ArrayList<String> soundValues = new ArrayList();
    public Locale mLocale;
    private SharedPreferences mSharedPreferences;

    private static class ConfigHolder {
        private static final ScreenRecorderConfig INSTANCE = new ScreenRecorderConfig(ScreenRecorderApplication.getContext());

        private ConfigHolder() {
        }
    }

    private ScreenRecorderConfig(Context context) {
        this.mSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.mLocale = ScreenRecorderUtils.getLocaleFromConfig(context.getResources().getConfiguration());
        setResolutionValue(context);
    }

    public static final ScreenRecorderConfig getConfig() {
        return ConfigHolder.INSTANCE;
    }

    public void refresh(Activity activity) {
        Locale newLocale = ScreenRecorderUtils.getLocaleFromConfig(activity.getResources().getConfiguration());
        if (this.mLocale != newLocale) {
            this.mLocale = newLocale;
            this.mSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ScreenRecorderApplication.getContext());
            setDefaultValue(activity);
        }
    }

    private static void initResolution(Context context) {
        String[] resolutionValues;
        String[] resolutionFullValues;
        String device = Build.DEVICE;
        if ("cappu".equals(device)) {
            resolutionValues = context.getResources().getStringArray(R.array.screenrecorder_settings_resolution_c9_values);
            resolutionFullValues = context.getResources().getStringArray(R.array.screenrecorder_settings_resolution_c9_full_values);
        } else if ("lotus".equals(device)) {
            resolutionValues = context.getResources().getStringArray(R.array.screenrecorder_settings_resolution_f9_values);
            resolutionFullValues = context.getResources().getStringArray(R.array.screenrecorder_settings_resolution_f9_full_values);
        } else {
            resolutionValues = context.getResources().getStringArray(R.array.screenrecorder_settings_resolution_values);
            resolutionFullValues = context.getResources().getStringArray(R.array.screenrecorder_settings_resolution_full_values);
        }
        if (resolutionValues.length == 3 && resolutionFullValues.length == 3) {
            RESOLUTION_LEVEL_1 = Integer.parseInt(resolutionValues[0]);
            RESOLUTION_LEVEL_2 = Integer.parseInt(resolutionValues[1]);
            RESOLUTION_LEVEL_3 = Integer.parseInt(resolutionValues[2]);
            RESOLUTION_LEVEL_VALUE_1_VALUE = resolutionFullValues[0];
            RESOLUTION_LEVEL_VALUE_2_VALUE = resolutionFullValues[1];
            RESOLUTION_LEVEL_VALUE_3_VALUE = resolutionFullValues[2];
            String splitReg = "\\*";
            String[] tempHW = resolutionFullValues[0].split(splitReg);
            if (RegionUtils.isInARLan() || RegionUtils.isInFaIRLan()) {
                RESOLUTION_LEVEL_VALUE_1 = ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[1])) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[0]));
                tempHW = resolutionFullValues[1].split(splitReg);
                RESOLUTION_LEVEL_VALUE_2 = ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[1])) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[0]));
                tempHW = resolutionFullValues[2].split(splitReg);
                RESOLUTION_LEVEL_VALUE_3 = ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[1])) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[0]));
            } else {
                RESOLUTION_LEVEL_VALUE_1 = ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[0])) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[1]));
                tempHW = resolutionFullValues[1].split(splitReg);
                RESOLUTION_LEVEL_VALUE_2 = ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[0])) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[1]));
                tempHW = resolutionFullValues[2].split(splitReg);
                RESOLUTION_LEVEL_VALUE_3 = ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[0])) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(Integer.parseInt(tempHW[1]));
            }
            LogUtil.v(TAG, "device = " + device + ", resolution values = " + RESOLUTION_LEVEL_1 + ", " + RESOLUTION_LEVEL_2 + ", " + RESOLUTION_LEVEL_3);
            return;
        }
        LogUtil.e(TAG, "Error when reading data, resolutions.length = " + resolutionValues.length + ", resolutionFullValues.length = " + resolutionFullValues.length);
    }

    public String getResolution() {
        String val = this.mSharedPreferences.getString(KEY_SCREENRECORDER_RESOLUTION, defaultResolution);
        if (TextUtils.isEmpty(val)) {
            return RESOLUTION_LEVEL_VALUE_1;
        }
        return val;
    }

    public int getBitRate() {
        String val = this.mSharedPreferences.getString(KEY_SCREENRECORDER_BIT_RATE, defaultBitRate);
        if (TextUtils.isEmpty(val)) {
            val = DEFAULT_BIT_RATE;
        }
        try {
            return 1000000 * Integer.valueOf(val).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int getFrames() {
        String val = this.mSharedPreferences.getString(KEY_SCREENRECORDER_FRAMES, defaultFrames);
        if (TextUtils.isEmpty(val)) {
            val = DEFAULT_FRAMES;
        }
        try {
            return Integer.valueOf(val).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int getOrientation() {
        try {
            return Integer.valueOf(this.mSharedPreferences.getString(KEY_SCREENRECORDER_ORIENTATION, "0")).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int getStorageLocation() {
        try {
            return Integer.valueOf(this.mSharedPreferences.getString(KEY_SCREENRECORDER_STORAGE_LOCATION, "0")).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int getSound() {
        String val = this.mSharedPreferences.getString(KEY_SCREENRECORDER_SOUND, defaultSound);
        if (TextUtils.isEmpty(val)) {
            val = "0";
        }
        try {
            return Integer.valueOf(val).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean getIsShowTouch() {
        return this.mSharedPreferences.getBoolean(KEY_SCREENRECORDER_SHOW_TOUCH, false);
    }

    public boolean getIsShowHardKey() {
        return this.mSharedPreferences.getBoolean(KEY_SCREENRECORDER_SHOW_HARDKEY, false);
    }

    public boolean getIsStopWhileLock() {
        return this.mSharedPreferences.getBoolean(KEY_SCREENRECORDER_STOP_WHILE_LOCK, true);
    }

    public boolean getIsFixedFrame() {
        return this.mSharedPreferences.getBoolean(KEY_SCREENRECORDER_FIXED_FRAME, true);
    }

    public boolean getIsGoHome() {
        return this.mSharedPreferences.getBoolean(KEY_SCREENRECORDER_IS_GO_HOME, false);
    }

    public void saveShowFirstSelectAlert(boolean value) {
        this.mSharedPreferences.edit().putBoolean(PREF_SHOW_FIRST_SELECT_MIC_ALERT, value).commit();
    }

    public boolean isShowFirstSelectMicAlert() {
        return this.mSharedPreferences.getBoolean(PREF_SHOW_FIRST_SELECT_MIC_ALERT, true);
    }

    public void saveShowPermissionsInfoForKorea(boolean value) {
        this.mSharedPreferences.edit().putBoolean(PREF_PERMISSION_INFO_FOR_KOREA_SHOWED, value).commit();
    }

    public boolean isShowPermissionsInfoForKorea() {
        return this.mSharedPreferences.getBoolean(PREF_PERMISSION_INFO_FOR_KOREA_SHOWED, false);
    }

    public static void setDefaultValue(Activity activity) {
        defaultResolution = RESOLUTION_LEVEL_VALUE_1;
        defaultResolutionValue = RESOLUTION_LEVEL_VALUE_1_VALUE;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        if (displayMetrics.heightPixels * displayMetrics.widthPixels > EDGE_RESOLUTION_RATIO) {
            defaultBitRate = DEFAULT_BIT_RATE_HIGH;
        } else {
            defaultBitRate = DEFAULT_BIT_RATE;
        }
        defaultFrames = DEFAULT_FRAMES;
        defaultSound = "0";
        setResolutionValue(activity);
        setBitrateFrameValue();
        setSoundValue(activity);
    }

    private static void setResolutionValue(Context context) {
        initResolution(context);
        if (resolutionList != null) {
            resolutionList.clear();
        } else {
            resolutionList = new ArrayList();
        }
        if (resolutionValues != null) {
            resolutionValues.clear();
        } else {
            resolutionValues = new ArrayList();
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        int maxResolutionHeight = 800;
        int maxResolutionWidth = 480;
        if ("lithium".equals(Build.DEVICE)) {
            maxResolutionHeight = 2040;
            maxResolutionWidth = 1080;
        } else if ("cappu".equals(Build.DEVICE)) {
            maxResolutionHeight = 1440;
            maxResolutionWidth = 1080;
        } else if ("lotus".equals(Build.DEVICE)) {
            maxResolutionHeight = 1920;
            maxResolutionWidth = 910;
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
                maxResolutionHeight = Math.max(displayMetrics.heightPixels, displayMetrics.widthPixels);
                maxResolutionWidth = Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels);
                LogUtil.v(TAG, "maxResolutionHeight " + maxResolutionHeight + " maxResolutionWidth " + maxResolutionWidth);
            } else {
                LogUtil.v(TAG, "windowManager is null! maxResolutionHeight " + 800 + " maxResolutionWidth " + 480);
            }
        }
        if (RegionUtils.isInARLan() || RegionUtils.isInFaIRLan()) {
            defaultResolution = ScreenRecorderUtils.obtainLocalInteger(maxResolutionWidth) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(maxResolutionHeight);
        } else {
            defaultResolution = ScreenRecorderUtils.obtainLocalInteger(maxResolutionHeight) + RESOLUTION_SPLIT + ScreenRecorderUtils.obtainLocalInteger(maxResolutionWidth);
        }
        defaultResolutionValue = maxResolutionHeight + RESOLUTION_SPLIT + maxResolutionWidth;
        resolutionList.add(defaultResolution);
        resolutionValues.add(defaultResolutionValue);
        if (maxResolutionWidth > RESOLUTION_LEVEL_2) {
            resolutionList.add(RESOLUTION_LEVEL_VALUE_2);
            resolutionValues.add(RESOLUTION_LEVEL_VALUE_2_VALUE);
        }
        if (maxResolutionWidth > RESOLUTION_LEVEL_3) {
            resolutionList.add(RESOLUTION_LEVEL_VALUE_3);
            resolutionValues.add(RESOLUTION_LEVEL_VALUE_3_VALUE);
        }
    }

    private static void setBitrateFrameValue() {
        int minBitRate = 0;
        int maxBitRate = 1;
        int minFrameRate = 0;
        int maxFrameRate = 0;
        String device = Build.DEVICE;
        if ("hennessy".equals(device)) {
            maxBitRate = 20;
            minBitRate = 20;
            maxFrameRate = 30;
            minFrameRate = 15;
        } else if ("hermes".equals(device)) {
            maxBitRate = 20;
            minBitRate = 16;
            maxFrameRate = 30;
            minFrameRate = 15;
        } else {
            try {
                List<?> list = (List) Class.forName("android.media.EncoderCapabilities").getMethod("getVideoEncoders", new Class[0]).invoke(null, new Object[0]);
                for (int i = 0; i < list.size(); i++) {
                    Object object = list.get(i);
                    if (getClassInfo(object, "mCodec").intValue() == 3) {
                        minBitRate = getClassInfo(object, "mMinBitRate").intValue() / 1000000;
                        maxBitRate = getClassInfo(object, "mMaxBitRate").intValue() / 1000000;
                        minFrameRate = getClassInfo(object, "mMinFrameRate").intValue();
                        maxFrameRate = getClassInfo(object, "mMaxFrameRate").intValue();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (ScreenRecorderUtils.isSupportHighFrames()) {
            maxFrameRate = HIGH_BIG_FRAMES;
        }
        LogUtil.v(TAG, "initBitrateFrameValue, device = " + device + ", bit rate[max = " + maxBitRate + ", min = " + minBitRate + "], frame rate[max = " + maxFrameRate + ", min = " + minFrameRate + "]");
        setBitrateValue(maxBitRate, minBitRate);
        setFramesValue(maxFrameRate, minFrameRate);
    }

    private static Integer getClassInfo(Object object, String s) throws IllegalAccessException, NoSuchFieldException {
        return (Integer) object.getClass().getField(s).get(object);
    }

    private static void setBitrateValue(int maxValue, int minValue) {
        if (bitrateList == null) {
            bitrateList = new ArrayList();
        }
        bitrateList.clear();
        if (bitrateValues == null) {
            bitrateValues = new ArrayList();
        }
        bitrateValues.clear();
        if (RegionUtils.isInARLan()) {
            bitrateList.add(ScreenRecorderUtils.obtainLocalInteger(maxValue) + BIT_RATE_TAG_AR);
        } else if (RegionUtils.isInFaIRLan()) {
            bitrateList.add(ScreenRecorderUtils.obtainLocalInteger(maxValue) + BIT_RATE_TAG_FA_IR);
        } else {
            bitrateList.add(String.valueOf(maxValue) + BIT_RATE_TAG);
        }
        bitrateValues.add(String.valueOf(maxValue));
        for (int rate : BIT_RATE_LEVEL) {
            if (rate < maxValue && rate >= minValue) {
                if (RegionUtils.isInARLan()) {
                    bitrateList.add(ScreenRecorderUtils.obtainLocalInteger(rate) + BIT_RATE_TAG_AR);
                } else if (RegionUtils.isInFaIRLan()) {
                    bitrateList.add(ScreenRecorderUtils.obtainLocalInteger(rate) + BIT_RATE_TAG_FA_IR);
                } else {
                    bitrateList.add(String.valueOf(rate) + BIT_RATE_TAG);
                }
                bitrateValues.add(String.valueOf(rate));
            } else if (rate < minValue) {
                break;
            }
        }
        minValue = Integer.parseInt((String) bitrateValues.get(bitrateValues.size() - 1));
        LogUtil.v(TAG, "defaultBitRate = " + defaultBitRate + ", max = " + maxValue + ", min = " + minValue);
        if (Integer.valueOf(defaultBitRate).intValue() > maxValue) {
            defaultBitRate = String.valueOf(maxValue);
        } else if (Integer.valueOf(defaultBitRate).intValue() <= minValue) {
            defaultBitRate = String.valueOf(minValue);
        }
    }

    private static void setFramesValue(int maxValue, int minValue) {
        if (framesList == null) {
            framesList = new ArrayList();
        }
        framesList.clear();
        if (framesValues == null) {
            framesValues = new ArrayList();
        }
        framesValues.clear();
        for (int frame : FRAME_LEVEL) {
            if (frame <= maxValue && frame >= minValue) {
                if (RegionUtils.isInARLan()) {
                    framesList.add(ScreenRecorderUtils.obtainLocalInteger(frame) + FRAME_LEVEL_TAG_AR);
                } else if (RegionUtils.isInFaIRLan()) {
                    framesList.add(ScreenRecorderUtils.obtainLocalInteger(frame) + FRAME_LEVEL_TAG_FA_IR);
                } else {
                    framesList.add(String.valueOf(frame) + FRAME_LEVEL_TAG);
                }
                framesValues.add(String.valueOf(frame));
            } else if (frame > maxValue) {
                break;
            }
        }
        if (framesValues.size() == 0) {
            LogUtil.w(TAG, "Error when set frame value, maxValue = " + maxValue + ", minValue = " + minValue);
            return;
        }
        maxValue = Integer.parseInt((String) framesValues.get(framesValues.size() - 1));
        minValue = Integer.parseInt((String) framesValues.get(0));
        LogUtil.v(TAG, "defaultFrames = " + defaultFrames + ", max = " + maxValue + ", min = " + minValue);
        if (Integer.valueOf(defaultFrames).intValue() > maxValue) {
            defaultFrames = String.valueOf(maxValue);
        } else if (Integer.valueOf(defaultFrames).intValue() <= minValue) {
            defaultFrames = String.valueOf(minValue);
        }
    }

    private static void setSoundValue(Context context) {
        if (soundList == null) {
            soundList = new ArrayList();
        }
        soundList.clear();
        if (soundValues == null) {
            soundValues = new ArrayList();
        }
        soundList.add(context.getString(R.string.no_sound));
        soundList.add(context.getString(R.string.mic_sound));
        soundValues.add("0");
        soundValues.add(MIC_SOUND);
        defaultSound = "0";
        if (ScreenRecorderUtils.isShowInnerSoundEntrance()) {
            defaultSound = INNER_SOUND;
            soundList.add(context.getString(R.string.loopback_sound));
            soundValues.add(INNER_SOUND);
        }
    }
}
