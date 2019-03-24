package miui.date;

import android.content.Context;
import android.content.res.Resources;
import android.text.format.DateFormat;
import com.miui.internal.R;
import java.util.TimeZone;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C0007Pool;

public class DateUtils {
    public static final int FORMAT_12HOUR = 16;
    public static final int FORMAT_24HOUR = 32;
    public static final int FORMAT_ABBREV_ALL = 28672;
    public static final int FORMAT_ABBREV_MONTH = 4096;
    public static final int FORMAT_ABBREV_TIME = 16384;
    public static final int FORMAT_ABBREV_WEEKDAY = 8192;
    public static final int FORMAT_NO_AM_PM = 64;
    public static final int FORMAT_NUMERIC_DATE = 32768;
    public static final int FORMAT_SHOW_BRIEF_TIME = 12;
    public static final int FORMAT_SHOW_DATE = 896;
    public static final int FORMAT_SHOW_HOUR = 8;
    public static final int FORMAT_SHOW_MILLISECOND = 1;
    public static final int FORMAT_SHOW_MINUTE = 4;
    public static final int FORMAT_SHOW_MONTH = 256;
    public static final int FORMAT_SHOW_MONTH_DAY = 128;
    public static final int FORMAT_SHOW_SECOND = 2;
    public static final int FORMAT_SHOW_TIME = 15;
    public static final int FORMAT_SHOW_TIME_ZONE = 2048;
    public static final int FORMAT_SHOW_WEEKDAY = 1024;
    public static final int FORMAT_SHOW_YEAR = 512;
    private static final C0007Pool<Calendar> xL = C0014Pools.createSoftReferencePool(new C0000Manager<Calendar>() {
        /* renamed from: cj */
        public Calendar createInstance() {
            return new Calendar();
        }
    }, 1);

    protected DateUtils() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static String formatDateTime(long j, int i) {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        String stringBuilder2 = formatDateTime(stringBuilder, j, i, null).toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    public static String formatDateTime(long j, int i, TimeZone timeZone) {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        String stringBuilder2 = formatDateTime(stringBuilder, j, i, timeZone).toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    public static StringBuilder formatDateTime(StringBuilder stringBuilder, long j, int i) {
        return formatDateTime(stringBuilder, j, i, null);
    }

    public static StringBuilder formatDateTime(StringBuilder stringBuilder, long j, int i, TimeZone timeZone) {
        Context currentApplication = AppConstants.getCurrentApplication();
        if ((i & 16) == 0 && (i & 32) == 0) {
            i |= DateFormat.is24HourFormat(currentApplication) ? 32 : 16;
        }
        String string = currentApplication.getString(K(i));
        CharSequence charSequence = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        Calendar calendar = (Calendar) xL.acquire();
        calendar.setTimeZone(timeZone);
        calendar.setTimeInMillis(j);
        int length = string.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = string.charAt(i2);
            if (charAt == 'D') {
                charSequence.append(currentApplication.getString(I(i)));
            } else if (charAt == 'T') {
                charSequence.append(currentApplication.getString(a(calendar, i)));
            } else if (charAt != 'W') {
                charSequence.append(charAt);
            } else {
                charSequence.append(currentApplication.getString(J(i)));
            }
        }
        calendar.format(stringBuilder, charSequence);
        C0014Pools.getStringBuilderPool().release(charSequence);
        xL.release(calendar);
        return stringBuilder;
    }

    private static int a(Calendar calendar, int i) {
        if ((i & 16384) == 16384 && (((i & 1) != 1 || calendar.get(22) == 0) && (i & 14) != 0)) {
            i &= -2;
            if (((i & 2) != 2 || calendar.get(21) == 0) && (i & 12) != 0) {
                i &= -3;
                if (calendar.get(20) == 0 && (i & 8) != 0) {
                    i &= -5;
                }
            }
        }
        if ((i & 8) == 8) {
            if ((i & 16) == 16) {
                if ((i & 64) == 64) {
                    if ((i & 4) != 4) {
                        return R.string.fmt_time_12hour;
                    }
                    if ((i & 2) != 2) {
                        return R.string.fmt_time_12hour_minute;
                    }
                    if ((i & 1) == 1) {
                        return R.string.fmt_time_12hour_minute_second_millis;
                    }
                    return R.string.fmt_time_12hour_minute_second;
                } else if ((i & 4) != 4) {
                    return R.string.fmt_time_12hour_pm;
                } else {
                    if ((i & 2) != 2) {
                        return R.string.fmt_time_12hour_minute_pm;
                    }
                    if ((i & 1) == 1) {
                        return R.string.fmt_time_12hour_minute_second_millis_pm;
                    }
                    return R.string.fmt_time_12hour_minute_second_pm;
                }
            } else if ((i & 4) != 4) {
                return R.string.fmt_time_24hour;
            } else {
                if ((i & 2) != 2) {
                    return R.string.fmt_time_24hour_minute;
                }
                if ((i & 1) == 1) {
                    return R.string.fmt_time_24hour_minute_second_millis;
                }
                return R.string.fmt_time_24hour_minute_second;
            }
        } else if ((i & 4) == 4) {
            if ((i & 2) != 2) {
                return R.string.fmt_time_minute;
            }
            if ((i & 1) == 1) {
                return R.string.fmt_time_minute_second_millis;
            }
            return R.string.fmt_time_minute_second;
        } else if ((i & 2) == 2) {
            if ((i & 1) == 1) {
                return R.string.fmt_time_second_millis;
            }
            return R.string.fmt_time_second;
        } else if ((i & 1) == 1) {
            return R.string.fmt_time_millis;
        } else {
            throw new IllegalArgumentException("no any time date");
        }
    }

    private static int I(int i) {
        if ((i & 32768) == 32768) {
            if ((i & 512) == 512) {
                if ((i & 256) != 256) {
                    return R.string.fmt_date_numeric_year;
                }
                if ((i & 128) == 128) {
                    return R.string.fmt_date_numeric_year_month_day;
                }
                return R.string.fmt_date_numeric_year_month;
            } else if ((i & 256) == 256) {
                if ((i & 128) == 128) {
                    return R.string.fmt_date_numeric_month_day;
                }
                return R.string.fmt_date_numeric_month;
            } else if ((i & 128) == 128) {
                return R.string.fmt_date_numeric_day;
            } else {
                throw new IllegalArgumentException("no any time date");
            }
        } else if ((i & 4096) == 4096) {
            if ((i & 512) == 512) {
                if ((i & 256) != 256) {
                    return R.string.fmt_date_year;
                }
                if ((i & 128) == 128) {
                    return R.string.fmt_date_short_year_month_day;
                }
                return R.string.fmt_date_short_year_month;
            } else if ((i & 256) == 256) {
                if ((i & 128) == 128) {
                    return R.string.fmt_date_short_month_day;
                }
                return R.string.fmt_date_short_month;
            } else if ((i & 128) == 128) {
                return R.string.fmt_date_day;
            } else {
                throw new IllegalArgumentException("no any time date");
            }
        } else if ((i & 512) == 512) {
            if ((i & 256) != 256) {
                return R.string.fmt_date_year;
            }
            if ((i & 128) == 128) {
                return R.string.fmt_date_long_year_month_day;
            }
            return R.string.fmt_date_long_year_month;
        } else if ((i & 256) == 256) {
            if ((i & 128) == 128) {
                return R.string.fmt_date_long_month_day;
            }
            return R.string.fmt_date_long_month;
        } else if ((i & 128) == 128) {
            return R.string.fmt_date_day;
        } else {
            throw new IllegalArgumentException("no any time date");
        }
    }

    private static int J(int i) {
        if ((i & 8192) == 8192) {
            return R.string.fmt_weekday_short;
        }
        return R.string.fmt_weekday_long;
    }

    private static int K(int i) {
        return (i & 1024) == 1024 ? (i & FORMAT_SHOW_DATE) != 0 ? (i & 15) != 0 ? (i & 2048) == 2048 ? R.string.fmt_weekday_date_time_timezone : R.string.fmt_weekday_date_time : (i & 2048) == 2048 ? R.string.fmt_weekday_date_timezone : R.string.fmt_weekday_date : (i & 15) != 0 ? (i & 2048) == 2048 ? R.string.fmt_weekday_time_timezone : R.string.fmt_weekday_time : (i & 2048) == 2048 ? R.string.fmt_weekday_timezone : R.string.fmt_weekday : (i & FORMAT_SHOW_DATE) != 0 ? (i & 15) != 0 ? (i & 2048) == 2048 ? R.string.fmt_date_time_timezone : R.string.fmt_date_time : (i & 2048) == 2048 ? R.string.fmt_date_timezone : R.string.fmt_date : (i & 15) != 0 ? (i & 2048) == 2048 ? R.string.fmt_time_timezone : R.string.fmt_time : (i & 2048) == 2048 ? R.string.fmt_timezone : R.string.empty;
    }

    public static String formatRelativeTime(long j, boolean z) {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        String stringBuilder2 = formatRelativeTime(stringBuilder, j, z, null).toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    public static String formatRelativeTime(long j, boolean z, TimeZone timeZone) {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        String stringBuilder2 = formatRelativeTime(stringBuilder, j, z, timeZone).toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    public static StringBuilder formatRelativeTime(StringBuilder stringBuilder, long j, boolean z) {
        return formatRelativeTime(stringBuilder, j, z, null);
    }

    public static StringBuilder formatRelativeTime(StringBuilder stringBuilder, long j, boolean z, TimeZone timeZone) {
        StringBuilder stringBuilder2 = stringBuilder;
        long j2 = j;
        TimeZone timeZone2 = timeZone;
        long currentTimeMillis = System.currentTimeMillis();
        int i = currentTimeMillis >= j2 ? 1 : 0;
        long abs = Math.abs(currentTimeMillis - j2) / 60000;
        Resources resources = AppConstants.getCurrentApplication().getResources();
        int i2 = (abs > 60 ? 1 : (abs == 60 ? 0 : -1));
        if (i2 > 0 || z) {
            Calendar calendar = (Calendar) xL.acquire();
            calendar.setTimeZone(timeZone2);
            calendar.setTimeInMillis(currentTimeMillis);
            int i3 = calendar.get(1);
            int i4 = calendar.get(12);
            int i5 = calendar.get(14);
            calendar.setTimeInMillis(j2);
            i3 = i3 == calendar.get(1) ? 1 : 0;
            if (i3 != 0 && i4 == calendar.get(12)) {
                formatDateTime(stringBuilder2, j2, 12300, timeZone2);
            } else if (i3 == 0 || Math.abs(i4 - calendar.get(12)) >= 2) {
                if (i3 != 0 && Math.abs(i4 - calendar.get(12)) < 7) {
                    if (i == (i5 > calendar.get(14) ? 1 : 0)) {
                        formatDateTime(stringBuilder2, j2, 13324, timeZone2);
                    }
                }
                if (i3 != 0) {
                    formatDateTime(stringBuilder2, j2, (z ? 396 : 384) | 12288, timeZone2);
                } else {
                    formatDateTime(stringBuilder2, j2, (z ? 908 : FORMAT_SHOW_DATE) | 12288, timeZone2);
                }
            } else {
                stringBuilder2.append(resources.getString(i != 0 ? R.string.yesterday : R.string.tomorrow));
                stringBuilder2.append(' ');
                formatDateTime(stringBuilder2, j2, 12300, timeZone2);
            }
            xL.release(calendar);
        } else {
            int i6;
            if (i != 0) {
                if (i2 == 0) {
                    i6 = R.plurals.abbrev_a_hour_ago;
                } else if (abs == 30) {
                    i6 = R.plurals.abbrev_half_hour_ago;
                } else if (abs == 0) {
                    i6 = R.plurals.abbrev_less_than_one_minute_ago;
                } else {
                    i6 = R.plurals.abbrev_num_minutes_ago;
                }
            } else if (i2 == 0) {
                i6 = R.plurals.abbrev_in_a_hour;
            } else if (abs == 30) {
                i6 = R.plurals.abbrev_in_half_hour;
            } else if (abs == 0) {
                i6 = R.plurals.abbrev_in_less_than_one_minute;
            } else {
                i6 = R.plurals.abbrev_in_num_minutes;
            }
            stringBuilder2.append(String.format(resources.getQuantityString(i6, (int) abs), new Object[]{Long.valueOf(abs)}));
        }
        return stringBuilder2;
    }
}
