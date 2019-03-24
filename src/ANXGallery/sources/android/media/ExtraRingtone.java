package android.media;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.system.internal.R;
import miui.cloud.backup.data.KeyStringSettingItem;
import miui.content.res.ThemeResources;
import miui.content.res.ThemeRuntimeManager;
import miui.os.C0002FileUtils;
import miui.os.C0015Build;
import miui.yellowpage.YellowPageContract.Settings;

public class ExtraRingtone {
    private static final String[] MEDIA_COLUMNS = new String[]{"_id", "_data", "title"};

    public static String getRingtoneTitle(Context context, Uri uri, boolean formatSystemRingtone) {
        if (C0015Build.IS_MIUI) {
            return getRingtoneTitleMIUI(context, uri, formatSystemRingtone);
        }
        return getRingtoneTitleAndroid(context, uri);
    }

    private static String getRingtoneTitleMIUI(Context context, Uri uri, boolean formatSystemRingtone) {
        String title = getTitle(context, uri, true);
        if (uri == null || !formatSystemRingtone || !Settings.DIRECTORY.equals(uri.getAuthority())) {
            return title;
        }
        return context.getString(R.string.android_ringtone_default_with_actual, new Object[]{title});
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x007e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String getTitle(Context context, Uri uri, boolean followSettingsUri) {
        String title;
        int sepIndex;
        Cursor cursor = null;
        ContentResolver res = context.getContentResolver();
        String title2 = null;
        if (uri != null) {
            String authority = uri.getAuthority();
            if (!Settings.DIRECTORY.equals(authority)) {
                boolean fromDataBase = false;
                if ("media".equals(authority)) {
                    cursor = res.query(uri, MEDIA_COLUMNS, null, null, null);
                    fromDataBase = true;
                }
                if (cursor != null) {
                    try {
                        if (cursor.getCount() == 1) {
                            cursor.moveToFirst();
                            title2 = cursor.getString(2);
                            if (title2 == null) {
                                title = "";
                                title2 = title;
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
                if (fromDataBase) {
                    title = "";
                } else {
                    title2 = getSystemLocalizationFileName(context, uri.getPath());
                    if (title2 == null) {
                        title2 = uri.getLastPathSegment();
                        sepIndex = title2 != null ? title2.indexOf("_&_") : -1;
                        if (sepIndex > 0) {
                            title = title2.substring(0, sepIndex);
                        }
                    }
                    if (cursor != null) {
                    }
                }
                title2 = title;
                if (cursor != null) {
                }
            } else if (followSettingsUri) {
                return getTitle(context, ExtraRingtoneManager.getRingtoneUri(context, ExtraRingtoneManager.getDefaultSoundType(uri)), false);
            }
        }
        if (title2 == null) {
            title = context.getString(miui.system.R.string.android_ringtone_silent);
        } else if (title2.length() == 0) {
            title = context.getString(miui.system.R.string.android_ringtone_unknown);
        } else {
            sepIndex = title2.lastIndexOf(".");
            title = sepIndex == -1 ? title2 : title2.substring(0, sepIndex);
        }
        return title;
    }

    public static String getSystemLocalizationFileName(Context context, String path) {
        if (!TextUtils.isEmpty(path) && path.startsWith(ThemeRuntimeManager.BUILTIN_ROOT_PATH)) {
            Resources resources = context.getResources();
            int res = -1;
            try {
                res = resources.getIdentifier(C0002FileUtils.getName(path).toLowerCase(), KeyStringSettingItem.TYPE, "miui.system");
            } catch (Exception e) {
            }
            if (res > 0) {
                return resources.getString(res);
            }
        }
        return null;
    }

    private static String getRingtoneTitleAndroid(Context context, Uri uri) {
        Ringtone r = RingtoneManager.getRingtone(context, uri);
        String title = r != null ? r.getTitle(context) : null;
        if (title != null) {
            return title;
        }
        int resId = context.getResources().getIdentifier("ringtone_unknown", KeyStringSettingItem.TYPE, ThemeResources.FRAMEWORK_PACKAGE);
        if (resId > 0) {
            return context.getString(resId);
        }
        return "";
    }
}
