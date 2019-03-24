package miui.net.http;

import com.nexstreaming.nexeditorsdk.nexProject;
import java.lang.ref.SoftReference;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

class DateUtils {
    private static final String[] CP = new String[]{PATTERN_RFC1036, PATTERN_RFC1123, PATTERN_ASCTIME};
    private static final Date CQ;
    public static final TimeZone GMT = TimeZone.getTimeZone("GMT");
    public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
    public static final String PATTERN_RFC1036 = "EEEE, dd-MMM-yy HH:mm:ss zzz";
    public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";

    static final class DateFormatHolder {
        private static final ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>> CS = new ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>>() {
            /* renamed from: cD */
            protected SoftReference<Map<String, SimpleDateFormat>> initialValue() {
                return new SoftReference(new HashMap());
            }
        };

        DateFormatHolder() {
        }

        public static SimpleDateFormat C(String str) {
            Map map = (Map) ((SoftReference) CS.get()).get();
            if (map == null) {
                map = new HashMap();
                CS.set(new SoftReference(map));
            }
            SimpleDateFormat simpleDateFormat = (SimpleDateFormat) map.get(str);
            if (simpleDateFormat != null) {
                return simpleDateFormat;
            }
            simpleDateFormat = new SimpleDateFormat(str, Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            map.put(str, simpleDateFormat);
            return simpleDateFormat;
        }
    }

    static {
        Calendar instance = Calendar.getInstance();
        instance.setTimeZone(GMT);
        instance.set(nexProject.kAutoThemeTransitionDuration, 0, 1, 0, 0, 0);
        instance.set(14, 0);
        CQ = instance.getTime();
    }

    public static Date parseDate(String str) throws IllegalArgumentException {
        return parseDate(str, null, null);
    }

    public static Date parseDate(String str, String[] strArr) throws IllegalArgumentException {
        return parseDate(str, strArr, null);
    }

    public static Date parseDate(String str, String[] strArr, Date date) throws IllegalArgumentException {
        if (str != null) {
            if (strArr == null) {
                strArr = CP;
            }
            if (date == null) {
                date = CQ;
            }
            if (str.length() > 1 && str.startsWith("'") && str.endsWith("'")) {
                str = str.substring(1, str.length() - 1);
            }
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                SimpleDateFormat C = DateFormatHolder.C(strArr[i]);
                C.set2DigitYearStart(date);
                try {
                    return C.parse(str);
                } catch (ParseException e) {
                    i++;
                }
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Unable to parse the date ");
            stringBuilder.append(str);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        throw new IllegalArgumentException("dateValue is null");
    }

    public static String formatDate(Date date) {
        return formatDate(date, PATTERN_RFC1123);
    }

    public static String formatDate(Date date, String str) {
        if (date == null) {
            throw new IllegalArgumentException("date is null");
        } else if (str != null) {
            return DateFormatHolder.C(str).format(date);
        } else {
            throw new IllegalArgumentException("pattern is null");
        }
    }

    private DateUtils() {
    }
}
