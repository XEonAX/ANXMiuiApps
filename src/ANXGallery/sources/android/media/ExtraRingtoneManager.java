package android.media;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.MiuiSettings;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import miui.app.constants.ThemeManagerConstants;
import miui.content.res.ThemeNativeUtils;
import miui.content.res.ThemeResources;
import miui.system.R;
import miui.yellowpage.YellowPageContract.Settings;

public class ExtraRingtoneManager {
    public static final String ACTION_MIUI_RINGTONE_PICKER = "miui.intent.action.RINGTONE_PICKER";
    private static final Uri ACTUAL_DEFAULT_RINGTONE_BASE_URI;
    public static final String EXTRA_RINGTONE_URI_LIST = "miui.intent.extra.ringtone.EXTRA_RINGTONE_URI_LIST";
    private static final int[] NOTIFICATION_SOUND_TYPE = new int[]{2, 4096};
    private static final String OLD_DEF_NOTIFICATION_SOUND = "NotificationXylophone.ogg";
    private static final String TAG = "ExtraRingtoneManager";
    private static final String TARGET_USER = "root";
    public static final int TYPE_CALENDAR = 4096;
    public static final int TYPE_MUSIC = 32;
    public static final int TYPE_RINGTONE_SLOT_1 = 64;
    public static final int TYPE_RINGTONE_SLOT_2 = 128;
    public static final int TYPE_SMS_DELIVERED_SLOT_1 = 256;
    public static final int TYPE_SMS_DELIVERED_SLOT_2 = 512;
    public static final int TYPE_SMS_DELIVERED_SOUND = 8;
    public static final int TYPE_SMS_RECEIVED_SLOT_1 = 1024;
    public static final int TYPE_SMS_RECEIVED_SLOT_2 = 2048;
    public static final int TYPE_SMS_RECEIVED_SOUND = 16;
    private static final String UPDATE = "_update";
    private static final SparseArray<Long> sNotificationUpdateRecord = new SparseArray();
    private static ArrayList<SoundItem> sRingtoneList = new ArrayList();

    private static class SoundItem {
        int buildInPathRes;
        Uri mActualDefaultRingtoneUri;
        Uri mDefaultRingtoneUri;
        int mRingtoneType;
        String mSettingType;

        public SoundItem(int ringtoneType, Uri actualDefaultRingtoneUri, Uri defaultRingtoneUri, String settingType, int id) {
            this.mRingtoneType = ringtoneType;
            this.mActualDefaultRingtoneUri = actualDefaultRingtoneUri;
            this.mDefaultRingtoneUri = defaultRingtoneUri;
            this.mSettingType = settingType;
            this.buildInPathRes = id;
        }
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("file://");
        stringBuilder.append(ThemeResources.THEME_MAGIC_PATH);
        stringBuilder.append("ringtones");
        ACTUAL_DEFAULT_RINGTONE_BASE_URI = Uri.parse(stringBuilder.toString());
        addSoundItem(1, "ringtone.mp3", System.DEFAULT_RINGTONE_URI, ThemeManagerConstants.COMPONENT_CODE_RINGTONE, R.string.def_ringtone);
        addSoundItem(2, "notification.mp3", System.DEFAULT_NOTIFICATION_URI, "notification_sound", R.string.def_notification_sound);
        addSoundItem(4, "alarm.mp3", System.DEFAULT_ALARM_ALERT_URI, "alarm_alert", R.string.def_alarm_alert);
        addSoundItem(4096, "calendar.mp3", MiuiSettings.System.DEFAULT_CALENDAR_ALERT_URI, "calendar_alert", R.string.def_notification_sound);
        addSoundItem(8, "sms_delivered_sound.mp3", MiuiSettings.System.DEFAULT_SMS_DELIVERED_RINGTONE_URI, "sms_delivered_sound", R.string.def_sms_delivered_sound);
        addSoundItem(16, "sms_received_sound.mp3", MiuiSettings.System.DEFAULT_SMS_RECEIVED_RINGTONE_URI, "sms_received_sound", R.string.def_sms_received_sound);
        addSoundItem(64, "ringtone_slot_1.mp3", MiuiSettings.System.DEFAULT_RINGTONE_URI_SLOT_1, "ringtone_sound_slot_1", R.string.def_ringtone_slot_1);
        addSoundItem(128, "ringtone_slot_2.mp3", MiuiSettings.System.DEFAULT_RINGTONE_URI_SLOT_2, "ringtone_sound_slot_2", R.string.def_ringtone_slot_2);
        addSoundItem(1024, "sms_received_slot_1.mp3", MiuiSettings.System.DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1, "sms_received_sound_slot_1", R.string.def_sms_received_sound_slot_1);
        addSoundItem(2048, "sms_received_slot_2.mp3", MiuiSettings.System.DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2, "sms_received_sound_slot_2", R.string.def_sms_received_sound_slot_2);
        addSoundItem(256, "sms_delivered_slot_1.mp3", MiuiSettings.System.DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1, "sms_delivered_sound_slot_1", R.string.def_sms_delivered_sound_slot_1);
        addSoundItem(512, "sms_delivered_slot_2.mp3", MiuiSettings.System.DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2, "sms_delivered_sound_slot_2", R.string.def_sms_delivered_sound_slot_2);
    }

    private ExtraRingtoneManager() {
    }

    public static int getDefaultSoundType(Uri defaultSoundUri) {
        if (defaultSoundUri == null) {
            return -1;
        }
        if (defaultSoundUri.equals(System.DEFAULT_RINGTONE_URI)) {
            return 1;
        }
        if (defaultSoundUri.equals(System.DEFAULT_NOTIFICATION_URI)) {
            return 2;
        }
        if (defaultSoundUri.equals(System.DEFAULT_ALARM_ALERT_URI)) {
            return 4;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_CALENDAR_ALERT_URI)) {
            return 4096;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_RINGTONE_URI_SLOT_1)) {
            return 64;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_RINGTONE_URI_SLOT_2)) {
            return 128;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_SMS_RECEIVED_RINGTONE_URI)) {
            return 16;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_1)) {
            return 1024;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_SMS_RECEIVED_SOUND_URI_SLOT_2)) {
            return 2048;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_SMS_DELIVERED_RINGTONE_URI)) {
            return 8;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_1)) {
            return 256;
        }
        if (defaultSoundUri.equals(MiuiSettings.System.DEFAULT_SMS_DELIVERED_SOUND_URI_SLOT_2)) {
            return 512;
        }
        return -1;
    }

    public static void saveDefaultSound(Context context, int type, Uri uri) {
        String setting = getSettingForType(type);
        if (setting != null && type != getDefaultSoundType(uri)) {
            String path = "";
            if (uri != null) {
                if ("media".equals(uri.getAuthority())) {
                    path = resolveSoundPath(context, uri);
                    if (path != null) {
                        uri = Uri.fromFile(new File(path));
                    }
                } else if ("file".equals(uri.getScheme())) {
                    path = uri.getPath();
                }
            }
            copySound(context, path, type);
            System.putString(context.getContentResolver(), setting, uri != null ? uri.toString() : null);
        }
    }

    public static String resolveRingtonePath(Context context, Uri uri) {
        return resolveSoundPath(context, uri);
    }

    /* JADX WARNING: Missing block: B:8:0x0023, code:
            if (r1 != null) goto L_0x0025;
     */
    /* JADX WARNING: Missing block: B:9:0x0025, code:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:14:0x002f, code:
            if (r1 == null) goto L_0x0032;
     */
    /* JADX WARNING: Missing block: B:15:0x0032, code:
            return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String resolveSoundPath(Context context, Uri uri) {
        String path = null;
        Cursor c = null;
        try {
            c = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            if (c != null && c.moveToFirst()) {
                path = c.getString(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
        }
    }

    public static Uri getDefaultSoundInternalUri(int type) {
        Iterator it = sRingtoneList.iterator();
        while (it.hasNext()) {
            SoundItem ringtoneItem = (SoundItem) it.next();
            if (type == ringtoneItem.mRingtoneType) {
                return ringtoneItem.mActualDefaultRingtoneUri;
            }
        }
        return null;
    }

    public static Uri getRingtoneUri(Context context, int type) {
        return getDefaultSoundSettingUri(context, type);
    }

    public static Uri getDefaultSoundSettingUri(Context context, int type) {
        String setting = getSettingForType(type);
        Uri uri = null;
        if (setting == null) {
            return null;
        }
        String uriString = System.getString(context.getContentResolver(), setting);
        if (uriString != null) {
            uri = Uri.parse(uriString);
        }
        return uri;
    }

    public static Uri getDefaultSoundActualUri(Context context, int type) {
        if (getDefaultSoundSettingUri(context, type) == null) {
            return null;
        }
        if (VERSION.SDK_INT >= 24) {
            return getDefaultRingtoneUri(type);
        }
        return getActualDefaultRingtoneUri(context, type);
    }

    public static Uri getActualDefaultRingtoneUri(Context context, int type) {
        if (isValidType(type)) {
            Uri defaultSettingUri = getDefaultSoundSettingUri(context, type);
            if (defaultSettingUri == null) {
                return defaultSettingUri;
            }
            boolean isCycle = false;
            if (!"file".equals(defaultSettingUri.getScheme())) {
                if (!isSystemSettingsUri(defaultSettingUri)) {
                    return defaultSettingUri;
                }
                int directType = getDefaultSoundType(defaultSettingUri);
                if (!isValidType(directType)) {
                    return null;
                }
                Uri directUri = getDefaultSoundSettingUri(context, directType);
                if (directUri == null) {
                    return null;
                }
                if ("file".equals(directUri.getScheme())) {
                    defaultSettingUri = directUri;
                    type = directType;
                } else if (!isSystemSettingsUri(directUri)) {
                    return directUri;
                } else {
                    isCycle = true;
                }
            }
            ArrayList<String> effectPathList = new ArrayList();
            if (!isCycle) {
                String backupPath = getDefaultSoundInternalUri(type).getPath();
                effectPathList.add(backupPath);
                if (VERSION.SDK_INT > 22) {
                    effectPathList.add(backupPath.replace("/data/system/theme_magic", "/data/system"));
                }
                effectPathList.add(defaultSettingUri.getPath());
            }
            effectPathList.add(getBuildInRingtonePath(context, getBuildInRingtonePathRes(type)));
            Iterator it = effectPathList.iterator();
            while (it.hasNext()) {
                String path = (String) it.next();
                if (!TextUtils.isEmpty(path) && new File(path).exists()) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("file://");
                    stringBuilder.append(path);
                    return Uri.parse(stringBuilder.toString());
                }
            }
            return null;
        }
        String str = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("getActualDefaultRingtoneUri type is invalid, type = ");
        stringBuilder2.append(type);
        Log.e(str, stringBuilder2.toString());
        return null;
    }

    public static String getDefaultSoundName(Context context, int type) {
        return ExtraRingtone.getRingtoneTitle(context, getDefaultSoundSettingUri(context, type), true);
    }

    public static boolean isExtraCases(Uri soundUri) {
        return "file".equals(soundUri.getScheme());
    }

    public static Uri getUriForExtraCases(Uri soundUri, int ringtoneType) {
        if (!isExtraCases(soundUri)) {
            return soundUri;
        }
        Uri actualSoundUri = getDefaultSoundInternalUri(ringtoneType);
        if (new File(actualSoundUri.getPath()).exists()) {
            return actualSoundUri;
        }
        return soundUri;
    }

    private static void copySound(Context context, String path, int type) {
        String internalPath = getDefaultSoundInternalUri(type).getPath();
        if (TextUtils.isEmpty(path) || !new File(path).exists()) {
            ThemeNativeUtils.remove(internalPath);
        } else {
            String dir = ACTUAL_DEFAULT_RINGTONE_BASE_URI.getPath();
            if (!new File(dir).exists()) {
                ThemeNativeUtils.mkdirs(dir);
                ThemeNativeUtils.updateFilePermissionWithThemeContext(dir);
            }
            try {
                ThemeNativeUtils.copy(new File(path).getCanonicalPath(), internalPath);
                ThemeNativeUtils.updateFilePermissionWithThemeContext(internalPath);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static String getSettingForType(int type) {
        Iterator it = sRingtoneList.iterator();
        while (it.hasNext()) {
            SoundItem ringtoneItem = (SoundItem) it.next();
            if ((ringtoneItem.mRingtoneType & type) != 0) {
                return ringtoneItem.mSettingType;
            }
        }
        return null;
    }

    private static Uri getDefaultRingtoneUri(int type) {
        Iterator it = sRingtoneList.iterator();
        while (it.hasNext()) {
            SoundItem ringtoneItem = (SoundItem) it.next();
            if (type == ringtoneItem.mRingtoneType) {
                return ringtoneItem.mDefaultRingtoneUri;
            }
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("getDefaultRingtoneUri type is invalid, type = ");
        stringBuilder.append(type);
        Log.e(str, stringBuilder.toString());
        return null;
    }

    private static boolean isValidType(int type) {
        Iterator it = sRingtoneList.iterator();
        while (it.hasNext()) {
            if (type == ((SoundItem) it.next()).mRingtoneType) {
                return true;
            }
        }
        return false;
    }

    private static int getBuildInRingtonePathRes(int type) {
        Iterator it = sRingtoneList.iterator();
        while (it.hasNext()) {
            SoundItem ringtoneItem = (SoundItem) it.next();
            if (type == ringtoneItem.mRingtoneType) {
                return ringtoneItem.buildInPathRes;
            }
        }
        return -1;
    }

    private static void addSoundItem(int type, String name, Uri defaultUri, String key, int id) {
        sRingtoneList.add(new SoundItem(type, Uri.withAppendedPath(ACTUAL_DEFAULT_RINGTONE_BASE_URI, name), defaultUri, key, id));
    }

    private static String getBuildInRingtonePath(Context context, int id) {
        if (id > 0) {
            try {
                return context.getString(id);
            } catch (Exception e) {
                Log.e(TAG, e.toString());
            }
        }
        return null;
    }

    private static boolean isSystemSettingsUri(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && Settings.DIRECTORY.equals(uri.getAuthority());
    }

    public static void updateDefaultToneForX(Context context) {
        for (int type : NOTIFICATION_SOUND_TYPE) {
            String setting = getSettingForType(type);
            if (setting != null) {
                String uriString = System.getString(context.getContentResolver(), setting);
                if (shouldChangeDefaultTone(context, type, setting, uriString)) {
                    Uri uri = getDefaultNotificationSound(context);
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("change default tone for ");
                    stringBuilder.append(setting);
                    stringBuilder.append(", uriString = ");
                    stringBuilder.append(uriString);
                    stringBuilder.append(", uri = ");
                    stringBuilder.append(uri);
                    Log.d(str, stringBuilder.toString());
                    saveDefaultSound(context, type, uri);
                }
                recordNotificationSoundChange(context, type, setting);
            }
        }
    }

    private static void recordNotificationSoundChange(Context context, int type, String setting) {
        long updateTime = System.currentTimeMillis();
        sNotificationUpdateRecord.put(type, Long.valueOf(updateTime));
        ContentResolver contentResolver = context.getContentResolver();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(setting);
        stringBuilder.append(UPDATE);
        System.putLong(contentResolver, stringBuilder.toString(), updateTime);
    }

    private static boolean shouldChangeDefaultTone(Context context, int type, String setting, String uriString) {
        return uriString != null && uriString.contains(OLD_DEF_NOTIFICATION_SOUND) && getAndUpdateUserChangeRecord(context, type, setting) == 0;
    }

    private static long getAndUpdateUserChangeRecord(Context context, int type, String setting) {
        Long record = (Long) sNotificationUpdateRecord.get(type);
        if (record == null) {
            ContentResolver contentResolver = context.getContentResolver();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(setting);
            stringBuilder.append(UPDATE);
            record = Long.valueOf(System.getLong(contentResolver, stringBuilder.toString(), 0));
            if (record.longValue() != 0) {
                sNotificationUpdateRecord.put(type, record);
            }
        }
        return record.longValue();
    }

    private static Uri getDefaultNotificationSound(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("file://");
        stringBuilder.append(getBuildInRingtonePath(context, R.string.def_notification_sound));
        return Uri.parse(stringBuilder.toString());
    }
}
