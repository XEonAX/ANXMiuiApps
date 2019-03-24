package miui.util;

import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.MiuiSettings;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.miui.system.internal.R;
import java.util.HashMap;
import miui.content.res.ThemeResources;
import miui.os.C0004SystemProperties;
import miui.os.C0015Build;
import miui.reflect.Method;

public class HapticFeedbackUtil {
    private static final Class CLASS_VIBRATION_EFFECT = getVibrationEffectClass();
    public static final String EFFECT_KEY_CALCULATOR = "calculator";
    public static final String EFFECT_KEY_CLOCK_PICKER = "clock_picker";
    public static final String EFFECT_KEY_CLOCK_SECOND = "clock_second";
    public static final String EFFECT_KEY_COMPASS_CALIBRATION = "compass_calibration";
    public static final String EFFECT_KEY_COMPASS_NORTH = "compass_north";
    public static final String EFFECT_KEY_HOME_DROP_FINISH = "home_drop_finish";
    public static final String EFFECT_KEY_HOME_PICKUP_START = "home_pickup_start";
    public static final String EFFECT_KEY_RECORDER_DELETE = "recorder_delete";
    public static final String EFFECT_KEY_RECORDER_FINISH = "recorder_finish";
    public static final String EFFECT_KEY_RECORDER_LIST = "recorder_list";
    public static final String EFFECT_KEY_RECORDER_PAUSE = "recorder_pause";
    public static final String EFFECT_KEY_RECORDER_PLAY = "recorder_play";
    public static final String EFFECT_KEY_RECORDER_RECORD = "recorder_record";
    public static final String EFFECT_KEY_RECORDER_RECORD_PAUSE = "recorder_record_pause";
    public static final String EFFECT_KEY_RECORDER_REWIND = "recorder_rewind";
    public static final String EFFECT_KEY_RECORDER_SLIDER = "recorder_slider";
    public static final String EFFECT_KEY_RECORDER_STOP = "recorder_stop";
    public static final String EFFECT_KEY_SCREEN_BUTTON_RECENT_TASK = "screen_button_recent_task";
    public static final String EFFECT_KEY_SCREEN_BUTTON_VOICE_ASSIST = "screen_button_voice_assist";
    public static final String EFFECT_KEY_TORCH_OFF = "torch_off";
    public static final String EFFECT_KEY_TORCH_ON = "torch_on";
    public static final String EFFECT_KEY_VIRTUAL_KEY_DOWN = "virtual_key_down";
    public static final String EFFECT_KEY_VIRTUAL_KEY_LONGPRESS = "virtual_key_longpress";
    public static final String EFFECT_KEY_VIRTUAL_KEY_TAP = "virtual_key_tap";
    public static final String EFFECT_KEY_VIRTUAL_KEY_UP = "virtual_key_up";
    private static final SparseArray<String> ID_TO_KEY = new SparseArray();
    public static final boolean IS_IMMERSION_ENABLED = false;
    private static final String KEY_VIBRATE_EX_ENABLED = "ro.haptic.vibrate_ex.enabled";
    private static final float[] LEVEL_FACTOR = new float[]{0.5f, 1.0f, 1.5f};
    private static final String[] LEVEL_SUFFIX = new String[]{".weak", ".normal", ".strong"};
    private static final HashMap<String, String> PROPERTY_KEY = new HashMap();
    private static final String TAG = "HapticFeedbackUtil";
    private static final int VIRTUAL_RELEASED = 2;
    private static final Method VibrateWithEffect = getVibratorMethod();
    private static final Method VibrationEffectGet = getVibrationEffectGet();
    private static final HashMap<String, Integer> sPatternId = new HashMap();
    private static final HashMap<String, long[]> sPatterns = new HashMap();
    private final Context mContext;
    private int mLevel;
    private SettingsObserver mSettingsObserver;
    private Vibrator mVibrator;

    private class SettingsObserver extends ContentObserver {
        SettingsObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            HapticFeedbackUtil.this.mContext.getContentResolver().registerContentObserver(System.getUriFor("haptic_feedback_level"), false, this);
            HapticFeedbackUtil.this.updateSettings();
        }

        void unobserve() {
            HapticFeedbackUtil.this.mContext.getContentResolver().unregisterContentObserver(this);
        }

        public void onChange(boolean selfChange) {
            HapticFeedbackUtil.this.updateSettings();
        }
    }

    static {
        ID_TO_KEY.put(1, EFFECT_KEY_VIRTUAL_KEY_DOWN);
        ID_TO_KEY.put(0, EFFECT_KEY_VIRTUAL_KEY_LONGPRESS);
        ID_TO_KEY.put(3, EFFECT_KEY_VIRTUAL_KEY_TAP);
        ID_TO_KEY.put(2, EFFECT_KEY_VIRTUAL_KEY_UP);
        PROPERTY_KEY.put(EFFECT_KEY_VIRTUAL_KEY_DOWN, "sys.haptic.down");
        PROPERTY_KEY.put(EFFECT_KEY_VIRTUAL_KEY_LONGPRESS, "sys.haptic.long");
        PROPERTY_KEY.put(EFFECT_KEY_VIRTUAL_KEY_TAP, "sys.haptic.tap");
        PROPERTY_KEY.put(EFFECT_KEY_VIRTUAL_KEY_UP, "sys.haptic.up");
    }

    private static final Class getVibrationEffectClass() {
        try {
            return Class.forName("android.os.VibrationEffect");
        } catch (Exception e) {
            return null;
        }
    }

    private static Method getVibrationEffectGet() {
        if (CLASS_VIBRATION_EFFECT == null) {
            return null;
        }
        try {
            return Method.of(CLASS_VIBRATION_EFFECT, "get", "(I)Landroid/os/VibrationEffect;");
        } catch (Exception e) {
            return null;
        }
    }

    private static Method getVibratorMethod() {
        try {
            return Method.of(Vibrator.class, "vibrate", "(Landroid/os/VibrationEffect;)V");
        } catch (Exception e) {
            return null;
        }
    }

    public HapticFeedbackUtil(Context c, boolean onceOnly) {
        int i;
        Resources sr = Resources.getSystem();
        int config_longPressVibePattern = sr.getIdentifier("config_longPressVibePattern", "array", ThemeResources.FRAMEWORK_PACKAGE);
        int config_virtualKeyVibePattern = sr.getIdentifier("config_virtualKeyVibePattern", "array", ThemeResources.FRAMEWORK_PACKAGE);
        int config_keyboardTapVibePattern = sr.getIdentifier("config_keyboardTapVibePattern", "array", ThemeResources.FRAMEWORK_PACKAGE);
        sPatternId.put(EFFECT_KEY_COMPASS_NORTH, Integer.valueOf(config_longPressVibePattern));
        sPatternId.put(EFFECT_KEY_HOME_PICKUP_START, Integer.valueOf(config_longPressVibePattern));
        sPatternId.put(EFFECT_KEY_RECORDER_DELETE, Integer.valueOf(R.array.vibration_recorder_minor_action));
        sPatternId.put(EFFECT_KEY_RECORDER_FINISH, Integer.valueOf(R.array.vibration_recorder_minor_action));
        sPatternId.put(EFFECT_KEY_RECORDER_LIST, Integer.valueOf(R.array.vibration_recorder_minor_action));
        sPatternId.put(EFFECT_KEY_RECORDER_PAUSE, Integer.valueOf(R.array.vibration_recorder_major_action));
        sPatternId.put(EFFECT_KEY_RECORDER_PLAY, Integer.valueOf(R.array.vibration_recorder_major_action));
        sPatternId.put(EFFECT_KEY_RECORDER_RECORD, Integer.valueOf(R.array.vibration_recorder_major_action));
        sPatternId.put(EFFECT_KEY_RECORDER_RECORD_PAUSE, Integer.valueOf(R.array.vibration_recorder_major_action));
        sPatternId.put(EFFECT_KEY_RECORDER_REWIND, Integer.valueOf(R.array.vibration_recorder_rewind));
        sPatternId.put(EFFECT_KEY_RECORDER_SLIDER, Integer.valueOf(R.array.vibration_recorder_slider));
        sPatternId.put(EFFECT_KEY_RECORDER_STOP, Integer.valueOf(R.array.vibration_recorder_major_action));
        sPatternId.put(EFFECT_KEY_SCREEN_BUTTON_RECENT_TASK, Integer.valueOf(config_longPressVibePattern));
        sPatternId.put(EFFECT_KEY_SCREEN_BUTTON_VOICE_ASSIST, Integer.valueOf(config_longPressVibePattern));
        sPatternId.put(EFFECT_KEY_TORCH_OFF, Integer.valueOf(R.array.vibration_torch_off));
        sPatternId.put(EFFECT_KEY_TORCH_ON, Integer.valueOf(R.array.vibration_torch_on));
        sPatternId.put(EFFECT_KEY_VIRTUAL_KEY_LONGPRESS, Integer.valueOf(config_longPressVibePattern));
        sPatternId.put(EFFECT_KEY_VIRTUAL_KEY_DOWN, Integer.valueOf(config_virtualKeyVibePattern));
        sPatternId.put(EFFECT_KEY_VIRTUAL_KEY_TAP, Integer.valueOf(config_keyboardTapVibePattern));
        sPatternId.put(EFFECT_KEY_VIRTUAL_KEY_UP, Integer.valueOf(R.array.vibration_virtual_key_up));
        if (C0015Build.IS_MIUI) {
            i = MiuiSettings.System.HAPTIC_FEEDBACK_LEVEL_DEFAULT;
        } else {
            i = C0004SystemProperties.getInt("ro.haptic.default_level", 1);
        }
        this.mLevel = i;
        this.mContext = c;
        this.mVibrator = (Vibrator) this.mContext.getSystemService("vibrator");
        if (C0015Build.IS_MIUI) {
            if (onceOnly) {
                updateSettings();
            } else {
                this.mSettingsObserver = new SettingsObserver(new Handler());
                this.mSettingsObserver.observe();
            }
        }
    }

    public void release() {
        if (this.mSettingsObserver != null) {
            this.mSettingsObserver.unobserve();
        }
    }

    public boolean isSupportedEffect(int effectId) {
        return effectId <= 3;
    }

    public void updateSettings() {
        this.mLevel = MiuiSettings.System.getHapticFeedbackLevel(this.mContext);
        this.mLevel = Math.min(2, Math.max(0, this.mLevel));
        sPatterns.clear();
    }

    public void updateImmersionSettings(boolean forceUpdate) {
    }

    public boolean performHapticFeedback(int effectId, boolean always) {
        return performHapticFeedback((String) ID_TO_KEY.get(effectId), always);
    }

    public boolean performHapticFeedback(String key, boolean always) {
        if (!this.mVibrator.hasVibrator()) {
            return false;
        }
        boolean hapticsDisabled = C0015Build.IS_MIUI && MiuiSettings.System.isHapticFeedbackDisabled(this.mContext);
        if (!always && hapticsDisabled) {
            return false;
        }
        if (!sPatterns.containsKey(key)) {
            sPatterns.put(key, loadPattern(key));
        }
        final long[] pattern = (long[]) sPatterns.get(key);
        if (pattern == null || pattern.length == 0) {
            Log.w(TAG, "vibrate: null or empty pattern");
            return false;
        }
        if (isUsePrebakedEffect() && VibrationEffectGet != null && VibrateWithEffect != null) {
            new Thread() {
                public void run() {
                    try {
                        Object effect = HapticFeedbackUtil.VibrationEffectGet.invokeObject(HapticFeedbackUtil.CLASS_VIBRATION_EFFECT, null, Integer.valueOf((int) pattern[0]));
                        HapticFeedbackUtil.VibrateWithEffect.invoke(Vibrator.class, HapticFeedbackUtil.this.mVibrator, effect);
                    } catch (Exception e) {
                        String str = HapticFeedbackUtil.TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("failed to use VibrationEffect, ");
                        stringBuilder.append(e);
                        Log.w(str, stringBuilder.toString());
                    }
                }
            }.start();
        } else if (pattern.length == 1) {
            new Thread() {
                public void run() {
                    HapticFeedbackUtil.this.mVibrator.vibrate(pattern[0]);
                }
            }.start();
        } else {
            new Thread() {
                public void run() {
                    HapticFeedbackUtil.this.mVibrator.vibrate(pattern, -1);
                }
            }.start();
        }
        return true;
    }

    public void stop() {
    }

    private long[] loadPattern(String key) {
        long[] result = null;
        String propertyKey = (String) PROPERTY_KEY.get(key);
        if (propertyKey != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(propertyKey);
            stringBuilder.append(LEVEL_SUFFIX[this.mLevel]);
            result = stringToLongArray(C0004SystemProperties.get(stringBuilder.toString()));
        }
        if (result != null || !sPatternId.containsKey(key)) {
            return result;
        }
        int id = ((Integer) sPatternId.get(key)).intValue();
        try {
            id = ResourceMapper.resolveReference(this.mContext.getResources(), id);
        } catch (Exception e) {
        }
        return getLongIntArray(this.mContext.getResources(), id);
    }

    private long[] getLongIntArray(Resources r, int resid) {
        int[] ar = r.getIntArray(resid);
        if (ar == null) {
            return null;
        }
        long[] out = new long[ar.length];
        for (int i = 0; i < ar.length; i++) {
            out[i] = (long) (((float) ar[i]) * LEVEL_FACTOR[this.mLevel]);
        }
        return out;
    }

    private long[] stringToLongArray(String pattern) {
        if (TextUtils.isEmpty(pattern)) {
            return null;
        }
        String[] splitStr = pattern.split(",");
        int los = splitStr.length;
        long[] returnByte = new long[los];
        for (int i = 0; i < los; i++) {
            returnByte[i] = Long.parseLong(splitStr[i].trim());
        }
        return returnByte;
    }

    private boolean isUsePrebakedEffect() {
        return C0015Build.BOARD.equals("sdm855") || C0015Build.DEVICE.equals("cepheus") || C0015Build.DEVICE.equals("andromeda");
    }
}
