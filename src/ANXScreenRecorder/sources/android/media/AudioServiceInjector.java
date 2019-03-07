package android.media;

import android.app.ActivityThread;
import android.app.ExtraNotificationManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.MiuiSettings.SilenceMode;
import android.provider.Settings.System;
import android.telecom.TelecomManager;
import android.util.Log;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.xiaomi.stat.d.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Random;
import miui.process.ProcessManager;
import miui.util.AudioManagerHelper;

public class AudioServiceInjector {
    public static final String ACTION_VOLUME_BOOST = "miui.intent.action.VOLUME_BOOST";
    public static final int DEFAULT_VOL_STREAM_NO_PLAYBACK = 3;
    public static final String EXTRA_BOOST_STATE = "volume_boost_state";
    private static final int MUTE_TIME_INTERVAL_INDEX = 3;
    private static final String RANDOM_SOUND_DEFALTE_URI = "file:///system/media/audio/ui/notice_audition.ogg";
    private static final int RANDOM_SOUND_NUM_INDEX = 0;
    private static String RANDOM_SOUND_PREFIX = "file:///system/media/audio/ui/notification_beep_sound_";
    private static String SEQUENCE_SOUND_PREFIX = "file:///system/media/audio/ui/notification_beep_soundseq_";
    private static final int SEQ_SOUND_NUM_INDEX = 1;
    private static final int SEQ_TIME_INTERVAL_INDEX = 2;
    private static final String SOUND_SUFFIX = ".ogg";
    private static final String TAG = "AudioService";
    private static final int availableDevice = 140;
    private static final String[] mContentResolverParameters = new String[]{"random_note_mode_random_sound_number", "random_note_mode_sequence_sound_number", "random_note_mode_sequence_time_interval_ms", "random_note_mode_mute_time_interval_ms"};
    private static final String[] mContentResolverTypes = new String[]{"notification_sound", "sms_received_sound", "sms_received_sound_slot_1", "sms_received_sound_slot_2", "calendar_alert"};
    private static boolean mHasPlayedNormalNotification = false;
    private static long mLastNotificationTimeMs = 0;
    private static boolean mNotificationRandomSound = true;
    public static int mOriginalIndexWhenSetStreamVolume;
    private static boolean[] mRandomSound = new boolean[]{true, true, true, true, true};
    private static int mSeqIndex = 0;
    private static int[] mTimeAndSoundNumParameters = new int[]{10, 1, 1000, i.a};
    private static HashMap mTypes = new HashMap() {
        {
            put("content://settings/system/notification_sound", Integer.valueOf(0));
            put("content://settings/system/sms_received_sound", Integer.valueOf(1));
            put("content://settings/system/sms_received_sound_slot_1", Integer.valueOf(2));
            put("content://settings/system/sms_received_sound_slot_2", Integer.valueOf(3));
            put("content://settings/system/calendar_alert", Integer.valueOf(4));
        }
    };
    private static HashMap<String, Integer> sAppList = new HashMap();

    static {
        sAppList.put("com.changba", Integer.valueOf(1));
        sAppList.put("com.tencent.karaoke", Integer.valueOf(2));
    }

    public static boolean shouldAdjustHiFiVolume(int streamType, int direction, int streamIndex, int maxIndex, Context context) {
        boolean z = false;
        if (streamType != 3 || !AudioManagerHelper.isHiFiMode(context)) {
            return false;
        }
        int maxStreamIndex = maxIndex;
        boolean adjustDownHiFiVolume = direction == -1 && AudioManagerHelper.getHiFiVolume(context) > 0;
        boolean adjustUpHiFiVolume = direction == 1 && streamIndex == maxStreamIndex;
        if (adjustDownHiFiVolume || adjustUpHiFiVolume) {
            z = true;
        }
        return z;
    }

    public static void adjustHiFiVolume(int direction, Context context) {
        int currentHiFiVolume = AudioManagerHelper.getHiFiVolume(context);
        if (direction == -1) {
            AudioManagerHelper.setHiFiVolume(context, currentHiFiVolume - 10);
        } else if (direction == 1 && currentHiFiVolume < 100) {
            AudioManagerHelper.setHiFiVolume(context, currentHiFiVolume + 10);
        }
    }

    public static void setStreamVolumeIntAlt(Object object, int streamType, int index, int device, int maxIndex, int[] streamVolumeAlias, Context context) {
        handleZenModeVolumeChanged(context, streamVolumeAlias[streamType], device, index);
        onSetStreamVolumeIntAlt(object, streamType, index, device, maxIndex, streamVolumeAlias, context);
    }

    private static void onSetStreamVolumeIntAlt(Object object, int streamType, int index, int device, int maxIndex, int[] streamVolumeAlias, Context context) {
        UnsupportedOperationException e;
        Context context2;
        NoSuchMethodException e2;
        IllegalAccessException e3;
        InvocationTargetException e4;
        Object obj = object;
        int i = streamType;
        int i2;
        int i3;
        try {
            boolean isHiFiMode = AudioManagerHelper.isHiFiMode(context);
            Class<?> clazz = object.getClass();
            Method method = null;
            if (VERSION.SDK_INT >= 23) {
                if (clazz != null) {
                    method = clazz.getDeclaredMethod("setStreamVolumeInt", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Boolean.TYPE, String.class});
                }
            } else if (clazz != null) {
                method = clazz.getDeclaredMethod("setStreamVolumeInt", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Boolean.TYPE});
            }
            if (3 == i && isHiFiMode) {
                i2 = maxIndex;
                if (index >= i2) {
                    int rawStreamMaxIndex = i2;
                    if (method != null) {
                        try {
                            method.setAccessible(true);
                            if (VERSION.SDK_INT >= 23) {
                                method.invoke(obj, new Object[]{Integer.valueOf(streamVolumeAlias[i]), Integer.valueOf(rawStreamMaxIndex), Integer.valueOf(device), Boolean.valueOf(false), TAG});
                            } else {
                                method.invoke(obj, new Object[]{Integer.valueOf(streamVolumeAlias[i]), Integer.valueOf(rawStreamMaxIndex), Integer.valueOf(device), Boolean.valueOf(false)});
                            }
                        } catch (UnsupportedOperationException e5) {
                            e = e5;
                            context2 = context;
                            e.printStackTrace();
                        } catch (NoSuchMethodException e6) {
                            e2 = e6;
                            context2 = context;
                            e2.printStackTrace();
                        } catch (IllegalAccessException e7) {
                            e3 = e7;
                            context2 = context;
                            e3.printStackTrace();
                        } catch (InvocationTargetException e8) {
                            e4 = e8;
                            context2 = context;
                            e4.printStackTrace();
                        }
                    }
                    try {
                        AudioManagerHelper.setHiFiVolume(context, (mOriginalIndexWhenSetStreamVolume - ((rawStreamMaxIndex + 5) / 10)) * 10);
                        return;
                    } catch (UnsupportedOperationException e9) {
                        e = e9;
                        e.printStackTrace();
                    } catch (NoSuchMethodException e10) {
                        e2 = e10;
                        e2.printStackTrace();
                    } catch (IllegalAccessException e11) {
                        e3 = e11;
                        e3.printStackTrace();
                    } catch (InvocationTargetException e12) {
                        e4 = e12;
                        e4.printStackTrace();
                    }
                }
            }
            i3 = index;
            i2 = maxIndex;
            context2 = context;
            if (method != null) {
                method.setAccessible(true);
                if (VERSION.SDK_INT >= 23) {
                    String tag = new StringBuilder();
                    tag.append("Pid:");
                    tag.append(Binder.getCallingPid());
                    tag.append(" Uid:");
                    tag.append(Binder.getCallingUid());
                    tag = tag.toString();
                    method.invoke(obj, new Object[]{Integer.valueOf(streamVolumeAlias[i]), Integer.valueOf(index), Integer.valueOf(device), Boolean.valueOf(false), tag});
                    return;
                }
                method.invoke(obj, new Object[]{Integer.valueOf(streamVolumeAlias[i]), Integer.valueOf(index), Integer.valueOf(device), Boolean.valueOf(false)});
            }
        } catch (UnsupportedOperationException e13) {
            e = e13;
            i3 = index;
            i2 = maxIndex;
            context2 = context;
            e.printStackTrace();
        } catch (NoSuchMethodException e14) {
            e2 = e14;
            i3 = index;
            i2 = maxIndex;
            context2 = context;
            e2.printStackTrace();
        } catch (IllegalAccessException e15) {
            e3 = e15;
            i3 = index;
            i2 = maxIndex;
            context2 = context;
            e3.printStackTrace();
        } catch (InvocationTargetException e16) {
            e4 = e16;
            i3 = index;
            i2 = maxIndex;
            context2 = context;
            e4.printStackTrace();
        }
    }

    public static int calculateStreamVolume(int streamType, int index, Context context) {
        int retValue = (index + 5) / 10;
        if (streamType == 3 && AudioManagerHelper.isHiFiMode(context)) {
            return retValue + (AudioManagerHelper.getHiFiVolume(context) / 10);
        }
        return retValue;
    }

    public static int calculateStreamMaxVolume(int streamType, int maxIndex, Context context) {
        int retValue = (maxIndex + 5) / 10;
        if (3 == streamType && AudioManagerHelper.isHiFiMode(context)) {
            return retValue + 10;
        }
        return retValue;
    }

    public static boolean isOnlyAdjustVolume(int flags) {
        return (1048576 & flags) != 0;
    }

    public static boolean isXOptMode() {
        return SystemProperties.getBoolean("persist.sys.miui_optimization", ScreenRecorderConfig.MIC_SOUND.equals(SystemProperties.get("ro.miui.cts")) ^ 1) ^ 1;
    }

    public static boolean isOnlyAdjustVolume(int flags, int stream, int mode) {
        return (1048576 & flags) != 0 || (stream == 2 && !isXOptMode());
    }

    public static void adjustMaxStreamVolume(int[] maxStreamVolume) {
        int i = 0;
        while (i < maxStreamVolume.length) {
            if (!(i == 0 || i == 6 || i == 7)) {
                maxStreamVolume[i] = 15;
            }
            i++;
        }
    }

    public static void adjustMinStreamVolume(int[] minStreamVolume) {
        for (int i = 0; i < minStreamVolume.length; i++) {
            if (i == 6) {
                minStreamVolume[i] = 1;
            }
        }
    }

    public static void adjustDefaultStreamVolume(int[] defaultStreamVolume) {
        int i = 0;
        while (i < defaultStreamVolume.length) {
            if (!(i == 0 || i == 6)) {
                defaultStreamVolume[i] = 10;
            }
            i++;
        }
    }

    public static int checkForRingerModeChange(Context context, int oldRingerMode, int newRingerMode, int direction) {
        return AudioManagerHelper.getValidatedRingerMode(context, newRingerMode);
    }

    public static boolean isPackageProtectedWhenUserBackground(int userId, PackageInfo pkg) {
        return ProcessManager.isLockedApplication(pkg.packageName, userId);
    }

    public static void updateRestriction(Context context) {
        ExtraNotificationManager.updateRestriction(context);
    }

    public static int getRingerModeAffectedStreams(int streams, Context context) {
        if (!SilenceMode.isSupported) {
            return streams;
        }
        int voiceAssistStream = getVoiceAssistNum();
        int i = 0;
        if (SilenceMode.getZenMode(context) == 4) {
            streams = ((streams | 38) & -9) | (System.getIntForUser(context.getContentResolver(), "mute_music_at_silent", 0, -3) == 1 ? 8 : 0);
            if (voiceAssistStream > 0) {
                streams = (streams & (~(1 << voiceAssistStream))) | (System.getIntForUser(context.getContentResolver(), "mute_voiceassit_at_silent", 1, -3) == 1 ? 1 << voiceAssistStream : 0);
            }
        }
        if (SilenceMode.getZenMode(context) == 1) {
            if (VERSION.SDK_INT < 28) {
                i = 2;
            }
            streams = 256 | i;
            if (voiceAssistStream > 0) {
                streams |= 1 << voiceAssistStream;
            }
        }
        return streams;
    }

    public static void checkMusicStream(Object[] object, Context context, int ringerMode, int dev) {
    }

    public static void handleZenModeVolumeChanged(Context context, int streamType, int device, int index) {
        if (SilenceMode.isSupported && streamType == 3 && SilenceMode.getZenMode(context) == 1 && !isXOptMode()) {
            String nameForMute = "volume_music_before_mute";
            String suffix = AudioSystem.getOutputDeviceName(device);
            if (!suffix.isEmpty()) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(nameForMute);
                stringBuilder.append("_");
                stringBuilder.append(suffix);
                nameForMute = stringBuilder.toString();
                long identity = Binder.clearCallingIdentity();
                System.putIntForUser(context.getContentResolver(), nameForMute, (index + 5) / 10, -2);
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public static void handleZenModeChangedForMusic(Object object, Context context, int preZenMode, int zenmode, int maxIndexSrc, int maxIndexDsts, int[] streamVolumeAlias) {
        if (SilenceMode.isSupported && zenmode != preZenMode && !isXOptMode()) {
            if (zenmode == 1) {
                saveAllDevicesMusicVolume(object, context, maxIndexSrc, maxIndexDsts, streamVolumeAlias);
            } else if (preZenMode == 1) {
                restoreAllDevicesMusicVolume(object, context, maxIndexSrc, maxIndexDsts, streamVolumeAlias);
            }
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("on change zenmode from ");
            stringBuilder.append(preZenMode);
            stringBuilder.append(" to ");
            stringBuilder.append(zenmode);
            Log.i(str, stringBuilder.toString());
        }
    }

    private static void saveAllDevicesMusicVolume(Object object, Context context, int maxIndexSrc, int maxIndexDst, int[] streamVolumeAlias) {
        ContentResolver contentResolver = context.getContentResolver();
        int remainingDevices = 268435455;
        int i = 0;
        while (remainingDevices != 0) {
            String name = "volume_music";
            String nameForMute = "volume_music_before_mute";
            int device = 1 << i;
            if ((device & remainingDevices) != 0) {
                remainingDevices &= ~device;
                String suffix = AudioSystem.getOutputDeviceName(device);
                if (!suffix.isEmpty()) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(name);
                    stringBuilder.append("_");
                    stringBuilder.append(suffix);
                    name = stringBuilder.toString();
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(nameForMute);
                    stringBuilder.append("_");
                    stringBuilder.append(suffix);
                    nameForMute = stringBuilder.toString();
                }
                int volume = System.getIntForUser(contentResolver, name, -1, -2);
                onSetStreamVolumeIntAlt(object, 3, 0, device, maxIndexDst, streamVolumeAlias, context);
                if (volume != -1) {
                    System.putIntForUser(contentResolver, nameForMute, volume, -2);
                }
            }
            i++;
        }
    }

    private static void restoreAllDevicesMusicVolume(Object object, Context context, int maxIndexSrc, int maxIndexDst, int[] streamVolumeAlias) {
        ContentResolver contentResolver = context.getContentResolver();
        int remainingDevices = 268435455;
        int i = 0;
        while (remainingDevices != 0) {
            String name = "volume_music";
            String nameForMute = "volume_music_before_mute";
            int device = 1 << i;
            if ((device & remainingDevices) != 0) {
                remainingDevices &= ~device;
                String suffix = AudioSystem.getOutputDeviceName(device);
                if (!suffix.isEmpty()) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(name);
                    stringBuilder.append("_");
                    stringBuilder.append(suffix);
                    name = stringBuilder.toString();
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(nameForMute);
                    stringBuilder.append("_");
                    stringBuilder.append(suffix);
                    nameForMute = stringBuilder.toString();
                }
                int volume = System.getIntForUser(contentResolver, nameForMute, 10, -2);
                if (volume != -1) {
                    System.putIntForUser(contentResolver, name, volume, -2);
                }
            }
            i++;
        }
        updateMusicStreamVolume(object);
    }

    private static void updateMusicStreamVolume(Object object) {
        try {
            Method method = object.getClass().getDeclaredMethod("reloadMusicVolume", new Class[0]);
            if (method != null) {
                method.setAccessible(true);
                method.invoke(object, new Object[0]);
            }
        } catch (UnsupportedOperationException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    public static void updateNotificationMode(Context context) {
        int index;
        ContentResolver contentResolver = context.getContentResolver();
        boolean randomSound = true;
        for (index = 0; index < mContentResolverTypes.length; index++) {
            randomSound = RANDOM_SOUND_DEFALTE_URI.equals(System.getString(contentResolver, mContentResolverTypes[index]));
            if (randomSound != mRandomSound[index]) {
                mRandomSound[index] = randomSound;
                mSeqIndex = 0;
            }
        }
        int parameter = -1;
        index = 0;
        while (index < mContentResolverParameters.length) {
            try {
                parameter = System.getIntForUser(contentResolver, mContentResolverParameters[index], 0, UserHandle.myUserId());
                if (!(parameter == 0 || parameter == mTimeAndSoundNumParameters[index])) {
                    mTimeAndSoundNumParameters[index] = parameter;
                }
                index++;
            } catch (Exception e) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Cannot get random notification settings provider value: ");
                stringBuilder.append(e);
                Log.e(str, stringBuilder.toString());
            }
        }
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("updateNotificationMode():\n mRandomSound[]=");
        stringBuilder2.append(mRandomSound);
        stringBuilder2.append("\n mTimeAndSoundNumParameters[]=");
        stringBuilder2.append(mTimeAndSoundNumParameters);
        Log.i(str2, stringBuilder2.toString());
    }

    public static String getNotificationUri() {
        long time = System.currentTimeMillis();
        boolean playRandom;
        String path;
        if (mNotificationRandomSound) {
            playRandom = false;
            boolean playSeq = false;
            if (mLastNotificationTimeMs == 0 || time - mLastNotificationTimeMs > ((long) mTimeAndSoundNumParameters[3])) {
                playRandom = true;
                mSeqIndex = 0;
            } else if (time - mLastNotificationTimeMs <= ((long) mTimeAndSoundNumParameters[2])) {
                if (mSeqIndex < mTimeAndSoundNumParameters[1]) {
                    mSeqIndex++;
                    playSeq = true;
                }
            } else if (mSeqIndex == 0) {
                playRandom = true;
            }
            if (playRandom) {
                int index = new Random().nextInt(mTimeAndSoundNumParameters[0]) + 1;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(RANDOM_SOUND_PREFIX);
                stringBuilder.append(index);
                stringBuilder.append(SOUND_SUFFIX);
                path = stringBuilder.toString();
                mLastNotificationTimeMs = time;
                return path;
            } else if (!playSeq) {
                return null;
            } else {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(SEQUENCE_SOUND_PREFIX);
                stringBuilder2.append(mSeqIndex);
                stringBuilder2.append(SOUND_SUFFIX);
                path = stringBuilder2.toString();
                mLastNotificationTimeMs = time;
                return path;
            }
        }
        playRandom = true;
        if (mLastNotificationTimeMs == 0 || time - mLastNotificationTimeMs > ((long) mTimeAndSoundNumParameters[3])) {
            playRandom = false;
            mHasPlayedNormalNotification = false;
        } else if (time - mLastNotificationTimeMs <= ((long) mTimeAndSoundNumParameters[2])) {
            if (!mHasPlayedNormalNotification) {
                mHasPlayedNormalNotification = true;
                playRandom = false;
            }
        } else if (!mHasPlayedNormalNotification) {
            playRandom = false;
        }
        if (playRandom) {
            return null;
        }
        path = "normal_notification";
        mLastNotificationTimeMs = time;
        return path;
    }

    public static String getNotificationUri(String type) {
        long time = System.currentTimeMillis();
        boolean playRandom;
        String path;
        if (playRandomSound(getIndexForType(type))) {
            playRandom = false;
            boolean playSeq = false;
            if (mLastNotificationTimeMs == 0 || time - mLastNotificationTimeMs > ((long) mTimeAndSoundNumParameters[3])) {
                playRandom = true;
                mSeqIndex = 0;
            } else if (time - mLastNotificationTimeMs <= ((long) mTimeAndSoundNumParameters[2])) {
                if (mSeqIndex < mTimeAndSoundNumParameters[1]) {
                    mSeqIndex++;
                    playSeq = true;
                }
            } else if (mSeqIndex == 0) {
                playRandom = true;
            }
            if (playRandom) {
                int index = new Random().nextInt(mTimeAndSoundNumParameters[0]) + 1;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(RANDOM_SOUND_PREFIX);
                stringBuilder.append(index);
                stringBuilder.append(SOUND_SUFFIX);
                path = stringBuilder.toString();
                mLastNotificationTimeMs = time;
                return path;
            } else if (!playSeq) {
                return null;
            } else {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(SEQUENCE_SOUND_PREFIX);
                stringBuilder2.append(mSeqIndex);
                stringBuilder2.append(SOUND_SUFFIX);
                path = stringBuilder2.toString();
                mLastNotificationTimeMs = time;
                return path;
            }
        }
        playRandom = true;
        if (mLastNotificationTimeMs == 0 || time - mLastNotificationTimeMs > ((long) mTimeAndSoundNumParameters[3])) {
            playRandom = false;
            mSeqIndex = 0;
        } else if (time - mLastNotificationTimeMs <= ((long) mTimeAndSoundNumParameters[2])) {
            if (mSeqIndex < mTimeAndSoundNumParameters[1]) {
                mSeqIndex++;
                playRandom = false;
            }
        } else if (mSeqIndex == 0) {
            playRandom = false;
        }
        if (playRandom) {
            return null;
        }
        path = "normal_notification";
        mLastNotificationTimeMs = time;
        return path;
    }

    private static int getIndexForType(String type) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("getIndexForType() type=");
        stringBuilder.append(type);
        Log.d(str, stringBuilder.toString());
        return ((Integer) mTypes.get(type)).intValue();
    }

    private static boolean playRandomSound(int index) {
        if (index != -1) {
            return mRandomSound[index];
        }
        return false;
    }

    private static boolean wasStreamActiveRecently(int stream, int delay_ms) {
        return AudioSystem.isStreamActive(stream, delay_ms) || AudioSystem.isStreamActiveRemotely(stream, delay_ms);
    }

    public static int getActiveStreamType(boolean isInCommunication, int platformType, int suggestedStreamType, int streamOverrideDelayMs, boolean DEBUG_VOL, boolean lockVoiceAssistStream) {
        int voiceAssistStream = getVoiceAssistNum();
        if (platformType == 1) {
            if (isInCommunication) {
                return AudioSystem.getForceUse(0) == 3 ? 6 : 0;
            } else {
                if (lockVoiceAssistStream) {
                    if (voiceAssistStream == -1 || wasStreamActiveRecently(voiceAssistStream, streamOverrideDelayMs) || !wasStreamActiveRecently(3, streamOverrideDelayMs)) {
                        return voiceAssistStream;
                    }
                    return 3;
                } else if (voiceAssistStream != -1 && AudioSystem.isStreamActive(voiceAssistStream, streamOverrideDelayMs)) {
                    if (DEBUG_VOL) {
                        Log.v(TAG, "getActiveStreamType: Forcing STREAM_VOICEASSIST");
                    }
                    return voiceAssistStream;
                } else if (suggestedStreamType == Integer.MIN_VALUE) {
                    if (wasStreamActiveRecently(2, streamOverrideDelayMs)) {
                        if (DEBUG_VOL) {
                            Log.v(TAG, "getActiveStreamType: Forcing STREAM_RING stream active");
                        }
                        return 2;
                    } else if (wasStreamActiveRecently(5, streamOverrideDelayMs)) {
                        if (DEBUG_VOL) {
                            Log.v(TAG, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active");
                        }
                        return 5;
                    } else {
                        if (DEBUG_VOL) {
                            Log.v(TAG, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default");
                        }
                        return 3;
                    }
                } else if (wasStreamActiveRecently(5, streamOverrideDelayMs)) {
                    if (DEBUG_VOL) {
                        Log.v(TAG, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active");
                    }
                    return 5;
                } else if (wasStreamActiveRecently(2, streamOverrideDelayMs)) {
                    if (DEBUG_VOL) {
                        Log.v(TAG, "getActiveStreamType: Forcing STREAM_RING stream active");
                    }
                    return 2;
                }
            }
        }
        if (isInCommunication) {
            if (AudioSystem.getForceUse(0) == 3) {
                if (DEBUG_VOL) {
                    Log.v(TAG, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO");
                }
                return 6;
            }
            if (DEBUG_VOL) {
                Log.v(TAG, "getActiveStreamType: Forcing STREAM_VOICE_CALL");
            }
            return 0;
        } else if (lockVoiceAssistStream) {
            if (voiceAssistStream == -1 || wasStreamActiveRecently(voiceAssistStream, streamOverrideDelayMs) || !wasStreamActiveRecently(3, streamOverrideDelayMs)) {
                return voiceAssistStream;
            }
            return 3;
        } else if (AudioSystem.isStreamActive(5, streamOverrideDelayMs)) {
            if (DEBUG_VOL) {
                Log.v(TAG, "getActiveStreamType: Forcing STREAM_NOTIFICATION");
            }
            return 5;
        } else if (AudioSystem.isStreamActive(2, streamOverrideDelayMs)) {
            if (DEBUG_VOL) {
                Log.v(TAG, "getActiveStreamType: Forcing STREAM_RING");
            }
            return 2;
        } else if (voiceAssistStream != -1 && AudioSystem.isStreamActive(voiceAssistStream, streamOverrideDelayMs)) {
            if (DEBUG_VOL) {
                Log.v(TAG, "getActiveStreamType: Forcing STREAM_VOICEASSIST");
            }
            return voiceAssistStream;
        } else if (suggestedStreamType != Integer.MIN_VALUE) {
            if (DEBUG_VOL) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("getActiveStreamType: Returning suggested type ");
                stringBuilder.append(suggestedStreamType);
                Log.v(str, stringBuilder.toString());
            }
            return suggestedStreamType;
        } else if (AudioSystem.isStreamActive(5, streamOverrideDelayMs)) {
            if (DEBUG_VOL) {
                Log.v(TAG, "getActiveStreamType: Forcing STREAM_NOTIFICATION");
            }
            return 5;
        } else if (AudioSystem.isStreamActive(2, streamOverrideDelayMs)) {
            if (DEBUG_VOL) {
                Log.v(TAG, "getActiveStreamType: Forcing STREAM_RING");
            }
            return 2;
        } else {
            if (DEBUG_VOL) {
                Log.v(TAG, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default");
            }
            return 3;
        }
    }

    public static int getActiveStreamType(boolean isInCommunication, int platformType, int suggestedStreamType, int streamOverrideDelayMs, boolean DEBUG_VOL) {
        return getActiveStreamType(isInCommunication, platformType, suggestedStreamType, streamOverrideDelayMs, DEBUG_VOL, false);
    }

    public static boolean isActiveForReal(boolean orgActiveForReal, int maybeActiveStreamType) {
        if (isXOptMode()) {
            return orgActiveForReal;
        }
        if (maybeActiveStreamType == 2 || maybeActiveStreamType == 5) {
            return wasStreamActiveRecently(maybeActiveStreamType, 0);
        }
        return AudioSystem.isStreamActive(maybeActiveStreamType, 0);
    }

    public static int getDefaultVolStreamNoPlayback(int defaultType) {
        if (isXOptMode()) {
            return defaultType;
        }
        return 3;
    }

    public static boolean needEnableVoiceVolumeBoost(int direction, boolean isMaxVol, int device, int streamTypeAlias, boolean boostEnabled) {
        if (isXOptMode() || streamTypeAlias != 0 || device != 1 || !"manual".equals(SystemProperties.get("ro.vendor.audio.voice.volume.boost"))) {
            return false;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("direction:");
        stringBuilder.append(direction);
        stringBuilder.append(" isMaxVol:");
        stringBuilder.append(isMaxVol);
        stringBuilder.append(" device:");
        stringBuilder.append(device);
        stringBuilder.append(" streamTypeAlias:");
        stringBuilder.append(streamTypeAlias);
        stringBuilder.append(" boostEnabled:");
        stringBuilder.append(boostEnabled);
        Log.d(str, stringBuilder.toString());
        if (direction == 1 && isMaxVol && !boostEnabled) {
            return true;
        }
        return direction == -1 && boostEnabled;
    }

    public static boolean setVolumeBoost(boolean boostEnabled, Context context) {
        AudioManager am = (AudioManager) context.getSystemService("audio");
        String params = new StringBuilder();
        params.append("voice_volume_boost=");
        params.append(boostEnabled ? "false" : "true");
        params = params.toString();
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("params:");
        stringBuilder.append(params);
        Log.d(str, stringBuilder.toString());
        am.setParameters(params);
        sendVolumeBoostBroadcast(boostEnabled ^ 1, context);
        return boostEnabled ^ 1;
    }

    public static void sendVolumeBoostBroadcast(boolean boostEnabled, Context context) {
        long ident = Binder.clearCallingIdentity();
        try {
            Intent intent = new Intent(ACTION_VOLUME_BOOST);
            intent.putExtra(EXTRA_BOOST_STATE, boostEnabled);
            context.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public static void handleModeChanged(Context context, int pid, int mode) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("usage", Integer.valueOf(0));
        bundle.putInt("pid", pid);
        bundle.putInt("state", mode);
        handleAudioStatusChanged(context, bundle);
    }

    public static void handleSpeakerChanged(Context context, int pid, boolean speakeron) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("None thiing for handleSpeakerChanged:");
        stringBuilder.append(pid);
        stringBuilder.append("/");
        stringBuilder.append(speakeron);
        Log.w(str, stringBuilder.toString());
    }

    public static void handleSetForceUse(Context context, int usage, int config, String eventSource) {
        AudioStatusHandler.getInstance(context).handleSetForceUse(usage, config, eventSource);
    }

    public static void handleAudioStatusChanged(Context context, Bundle bundle) {
        AudioStatusHandler.getInstance(context).handleAudioStatusChanged(bundle);
    }

    public static int getVoiceAssistNum() {
        for (int i = 0; i < AudioSystem.STREAM_NAMES.length; i++) {
            if ("STREAM_VOICEASSIST".equals(AudioSystem.STREAM_NAMES[i])) {
                return i;
            }
        }
        return -1;
    }

    public static boolean isAppCalledInCall(Context context) {
        boolean isInCall = false;
        if (Binder.getCallingUid() >= i.a) {
            TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
            long ident = Binder.clearCallingIdentity();
            isInCall = telecomManager.isInCall();
            Binder.restoreCallingIdentity(ident);
            if (isInCall) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("called from app when in call: pid = ");
                stringBuilder.append(Binder.getCallingPid());
                stringBuilder.append(", uid = ");
                stringBuilder.append(Binder.getCallingUid());
                Log.w(str, stringBuilder.toString());
            }
        }
        return isInCall;
    }

    public static boolean supportKaraokeMode(String pkgName) {
        return sAppList.get(pkgName) != null;
    }

    public static void broadcastRecorderState(int state, int sessionId) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("broadcastRecorderState:");
        stringBuilder.append(ActivityThread.currentPackageName());
        Log.d(str, stringBuilder.toString());
        if (supportKaraokeMode(ActivityThread.currentPackageName())) {
            Intent intent = new Intent();
            intent.setAction("miui.media.AUDIO_RECORD_STATE_CHANGED_ACTION");
            intent.setFlags(268435456);
            intent.putExtra("state", state);
            intent.putExtra("sessionId", sessionId);
            long ident = Binder.clearCallingIdentity();
            try {
                ActivityThread.currentApplication().getApplicationContext().sendBroadcast(intent, "com.miui.permission.AUDIO_RECORD_STATE_CHANGED_ACTION");
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }
}
