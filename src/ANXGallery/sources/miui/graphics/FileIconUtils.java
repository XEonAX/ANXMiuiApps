package miui.graphics;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.HashMap;
import miui.R;

public class FileIconUtils {
    private static final String LOG_TAG = "FileIconHelper";
    private static final String yk = "apk";
    private static HashMap<String, Integer> yl = new HashMap();

    static {
        a(new String[]{"mp3"}, R.drawable.file_icon_mp3);
        a(new String[]{"wma"}, R.drawable.file_icon_wma);
        a(new String[]{"wav"}, R.drawable.file_icon_wav);
        a(new String[]{"mid"}, R.drawable.file_icon_mid);
        a(new String[]{"mp4", "wmv", "mpeg", "m4v", "3gp", "3g2", "3gpp2", "asf", "flv", "mkv", "vob", "ts", "f4v", "rm", "mov", "rmvb"}, R.drawable.file_icon_video);
        a(new String[]{"jpg", "jpeg", "gif", "png", "bmp", "wbmp"}, R.drawable.file_icon_picture);
        a(new String[]{"txt", "log", "ini", "lrc"}, R.drawable.file_icon_txt);
        a(new String[]{"doc", "docx"}, R.drawable.file_icon_doc);
        a(new String[]{"ppt", "pptx"}, R.drawable.file_icon_ppt);
        a(new String[]{"xls", "xlsx"}, R.drawable.file_icon_xls);
        a(new String[]{"wps"}, R.drawable.file_icon_wps);
        a(new String[]{"pps"}, R.drawable.file_icon_pps);
        a(new String[]{"et"}, R.drawable.file_icon_et);
        a(new String[]{"wpt"}, R.drawable.file_icon_wpt);
        a(new String[]{"ett"}, R.drawable.file_icon_ett);
        a(new String[]{"dps"}, R.drawable.file_icon_dps);
        a(new String[]{"dpt"}, R.drawable.file_icon_dpt);
        a(new String[]{"pdf"}, R.drawable.file_icon_pdf);
        a(new String[]{"zip"}, R.drawable.file_icon_zip);
        a(new String[]{"mtz"}, R.drawable.file_icon_theme);
        a(new String[]{"rar"}, R.drawable.file_icon_rar);
        a(new String[]{yk}, R.drawable.file_icon_apk);
        a(new String[]{"amr"}, R.drawable.file_icon_amr);
        a(new String[]{"vcf"}, R.drawable.file_icon_vcf);
        a(new String[]{"flac"}, R.drawable.file_icon_flac);
        a(new String[]{"aac"}, R.drawable.file_icon_aac);
        a(new String[]{"ape"}, R.drawable.file_icon_ape);
        a(new String[]{"m4a"}, R.drawable.file_icon_m4a);
        a(new String[]{"ogg"}, R.drawable.file_icon_ogg);
        a(new String[]{"audio"}, R.drawable.file_icon_audio);
        a(new String[]{"html"}, R.drawable.file_icon_html);
        a(new String[]{"xml"}, R.drawable.file_icon_xml);
        a(new String[]{"3gpp"}, R.drawable.file_icon_3gpp);
    }

    protected FileIconUtils() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    private static void a(String[] strArr, int i) {
        if (strArr != null) {
            for (String toLowerCase : strArr) {
                yl.put(toLowerCase.toLowerCase(), Integer.valueOf(i));
            }
        }
    }

    private static String y(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return str.substring(lastIndexOf + 1, str.length());
        }
        return "";
    }

    private static Drawable e(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 1);
        if (packageArchiveInfo != null) {
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            if (applicationInfo != null) {
                try {
                    applicationInfo.publicSourceDir = str;
                    return packageManager.getApplicationIcon(applicationInfo);
                } catch (OutOfMemoryError e) {
                    Log.e(LOG_TAG, e.toString());
                }
            }
        }
        return context.getResources().getDrawable(R.drawable.file_icon_default);
    }

    public static int getFileIconId(String str) {
        Integer num = (Integer) yl.get(str.toLowerCase());
        return num == null ? R.drawable.file_icon_default : num.intValue();
    }

    public static Drawable getFileIcon(Context context, String str) {
        String y = y(str);
        if (y.equals(yk)) {
            return e(context, str);
        }
        return context.getResources().getDrawable(getFileIconId(y));
    }
}
