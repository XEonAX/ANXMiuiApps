package miui.date;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.util.SimpleNumberFormatter;
import com.miui.internal.vip.VipConstants;
import java.io.Serializable;
import java.util.Date;
import java.util.TimeZone;
import miui.media.Recorder.ErrorCode;
import miui.util.C0014Pools;

public class Calendar implements Serializable, Cloneable, Comparable<Calendar> {
    public static final int AD = 1;
    public static final int AFTERNOON = 4;
    public static final int AM = 0;
    public static final int AM_PM = 17;
    public static final int APRIL = 3;
    public static final int AUGUST = 7;
    public static final int AUTUMN_BEGINS = 15;
    public static final int AUTUMN_EQUINOX = 18;
    public static final int BC = 0;
    public static final int CHICKEN = 9;
    public static final int CHINESE_ERA_DAY = 11;
    public static final int CHINESE_ERA_HOUR = 19;
    public static final int CHINESE_ERA_MONTH = 7;
    public static final int CHINESE_ERA_YEAR = 4;
    public static final int CHINESE_MONTH = 6;
    public static final int CHINESE_MONTH_IS_LEAP = 8;
    public static final int CHINESE_YEAR = 2;
    private static final int[] CHINESE_YEAR_INFO = new int[]{19416, 19168, 42352, 21717, 53856, 55632, 21844, 22191, 39632, 21970, 19168, 42422, 42192, 53840, 53909, 46415, 54944, 44450, 38320, 18807, 18815, 42160, 46261, 27216, 27968, 43860, 11119, 38256, 21234, 18800, 25958, 54432, 59984, 27285, 23263, 11104, 34531, 37615, 51415, 51551, 54432, 55462, 46431, 22176, 42420, 9695, 37584, 53938, 43344, 46423, 27808, 46416, 21333, 19887, 42416, 17779, 21183, 43432, 59728, 27296, 44710, 43856, 19296, 43748, 42352, 21088, 62051, 55632, 23383, 22176, 38608, 19925, 19152, 42192, 54484, 53840, 54616, 46400, 46752, 38310, 38335, 18864, 43380, 42160, 45690, 27216, 27968, 44870, 43872, 38256, 19189, 18800, 25776, 29859, 59984, 27480, 23232, 43872, 38613, 37600, 51552, 55636, 54432, 55888, 30034, 22176, 43959, 9680, 37584, 51893, 43344, 46240, 47780, 44368, 21977, 19360, 42416, 20854, 21183, 43312, 31060, 27296, 44368, 23378, 19296, 42726, 42208, 53856, 60005, 54576, 23200, 30371, 38608, 19195, 19152, 42192, 53430, 53855, 54560, 56645, 46496, 22224, 21938, 18864, 42359, 42160, 43600, 45653, 27951, 44448, 19299, 37759, 18936, 18800, 25776, 26790, 59999, 27424, 42692, 43759, 37600, 53987, 51552, 54615, 54432, 55888, 23893, 22176, 42704, 21972, 21200, 43448, 43344, 46240, 46758, 44368, 21920, 43940, 42416, 21168, 45683, 26928, 29495, 27296, 44368, 19285, 19311, 42352, 21732, 53856, 59752, 54560, 55968, 27302, 22239, 19168, 43476, 42192, 53584, 62034, 54560};
    public static final int CHINESE_YEAR_SYMBOL_ANIMAL = 3;
    public static final int CLEAR_AND_BRIGHT = 7;
    public static final int COLD_DEWS = 19;
    public static final int COW = 1;
    private static final int DAYS_19000131_TO_19700101 = -25537;
    private static final byte[] DAYS_IN_MONTH = new byte[]{(byte) 31, (byte) 28, (byte) 31, (byte) 30, (byte) 31, (byte) 30, (byte) 31, (byte) 31, (byte) 30, (byte) 31, (byte) 30, (byte) 31};
    private static final int[] DAYS_IN_YEAR = new int[]{0, 31, 59, 90, BaiduSceneResult.MOTORCYCLE, 151, 181, 212, 243, 273, 304, 334, 365};
    private static final int[] DAY_CHINESE_YEAR_FROM_19000101 = new int[]{0, 384, 738, 1093, 1476, 1830, 2185, 2569, 2923, 3278, 3662, 4016, 4400, 4754, 5108, 5492, 5846, 6201, 6585, 6940, 7324, 7678, 8032, 8416, 8770, 9124, 9509, 9863, 10218, 10602, 10956, 11339, 11693, 12048, 12432, 12787, 13141, 13525, 13879, 14263, 14617, 14971, 15355, 15710, 16064, 16449, 16803, 17157, 17541, 17895, 18279, 18633, 18988, 19372, 19726, 20081, 20465, 20819, 21202, 21557, 21911, 22295, 22650, 23004, 23388, 23743, 24096, 24480, 24835, 25219, 25573, 25928, 26312, 26666, 27020, 27404, 27758, 28142, 28496, 28851, 29235, 29590, 29944, 30328, 30682, 31066, 31420, 31774, 32158, 32513, 32868, 33252, 33606, 33960, 34343, 34698, 35082, 35436, 35791, 36175, 36529, 36883, 37267, 37621, 37976, 38360, 38714, 39099, 39453, 39807, 40191, 40545, 40899, 41283, 41638, 42022, 42376, 42731, 43115, 43469, 43823, 44207, 44561, 44916, 45300, 45654, 46038, 46392, 46746, 47130, 47485, 47839, 48223, 48578, 48962, 49316, 49670, 50054, 50408, 50762, 51146, 51501, 51856, 52240, 52594, 52978, 53332, 53686, 54070, 54424, 54779, 55163, 55518, 55902, 56256, 56610, 56993, 57348, 57702, 58086, 58441, 58795, 59179, 59533, 59917, 60271, 60626, 61010, 61364, 61719, 62103, 62457, 62841, 63195, 63549, 63933, 64288, 64642, 65026, 65381, 65735, 66119, 66473, 66857, 67211, 67566, 67950, 68304, 68659, 69042, 69396, 69780, 70134, 70489, 70873, 71228, 71582, 71966, 72320, 72674, 73058, 73412};
    public static final int DAY_OF_CHINESE_MONTH = 10;
    public static final int DAY_OF_CHINESE_YEAR = 13;
    public static final int DAY_OF_MONTH = 9;
    public static final int DAY_OF_WEEK = 14;
    public static final int DAY_OF_YEAR = 12;
    public static final int DECEMBER = 11;
    public static final int DETAIL_AM_PM = 16;
    public static final int DOG = 10;
    public static final int DRAGON = 4;
    public static final int DST_OFFSET = 24;
    public static final int EARLY_MORNING = 1;
    public static final int ERA = 0;
    public static final int EVENING = 5;
    public static final int FEBRUARY = 1;
    public static final int FIELD_COUNT = 25;
    private static final String[] FIELD_NAMES = new String[]{"ERA", "YEAR", "CHINESE_YEAR", "CHINESE_YEAR_SYMBOL_ANIMAL", "CHINESE_ERA_YEAR", "MONTH", "CHINESE_MONTH", "CHINESE_ERA_MONTH", "CHINESE_MONTH_IS_LEAP", "DAY_OF_MONTH", "DAY_OF_CHINESE_MONTH", "CHINESE_ERA_DAY", "DAY_OF_YEAR", "DAY_OF_CHINESE_YEAR", "DAY_OF_WEEK", "SOLAR_TERM", "DETAIL_AM_PM", "AM_PM", "HOUR", "CHINESE_ERA_HOUR", "MINUTE", "SECOND", "MILLISECOND", "ZONE_OFFSET", "DST_OFFSET"};
    private static final int[] FORMAT_CHARACTERS = new int[]{3, -1, -1, 12, 14, 26, 0, 18, 19, -1, 18, 5, 5, 7, -1, -1, -1, -1, 22, -1, -1, -1, 26, -1, 4, 25, -1, -1, -1, -1, -1, -1, 16, -1, 14, 9, 7, -1, -1, 18, -1, -1, 18, -1, 20, -1, -1, -1, -1, -1, 21, 15, -1, -1, 26, -1, 1, 25};
    public static final int FRIDAY = 6;
    public static final int GRAIN_BUDS = 10;
    public static final int GRAIN_IN_EAR = 11;
    public static final int GRAIN_RAIN = 8;
    public static final int GREAT_COLD = 2;
    public static final int GREAT_HEAT = 14;
    public static final int HEAVY_SNOW = 23;
    public static final int HOAR_FROST_FALLS = 20;
    public static final int HORSE = 6;
    public static final int HOUR = 18;
    public static final int INSECTS_AWAKEN = 5;
    public static final int IS_CHINESE_LEAP_MONTH = 1;
    public static final int JANUARY = 0;
    public static final int JULY = 6;
    public static final int JUNE = 5;
    public static final int LIGHT_SNOW = 22;
    public static final int MARCH = 2;
    private static final long MAX_CHINESE_CALENDAR_MILLISECOND = 4136400000000L;
    private static final int MAX_CHINESE_YEAR = 2100;
    public static final int MAY = 4;
    public static final int MIDNIGHT = 0;
    public static final int MILLISECOND = 22;
    public static final int MILLISECOND_OF_DAY = 86400000;
    public static final int MILLISECOND_OF_HOUR = 3600000;
    public static final int MILLISECOND_OF_MINUTE = 60000;
    public static final int MILLISECOND_OF_SECOND = 1000;
    public static final int MINUTE = 20;
    private static final long MIN_CHINESE_CALENDAR_MILLISECOND = -2206396800000L;
    private static final int MIN_CHINESE_YEAR = 1900;
    public static final int MONDAY = 2;
    public static final int MONKEY = 8;
    public static final int MONTH = 5;
    public static final int MORNING = 2;
    public static final int MOUSE = 0;
    public static final int NIGHT = 6;
    public static final int NOON = 3;
    public static final int NOT_CHINESE_LEAP_MONTH = 0;
    public static final int NOVEMBER = 10;
    public static final int NO_SOLAR_TERM = 0;
    public static final int OCTOBER = 9;
    public static final int PIG = 11;
    public static final int PM = 1;
    public static final int RABBIT = 3;
    public static final int SATURDAY = 7;
    public static final int SECOND = 21;
    public static final int SEPTEMBER = 8;
    public static final int SHEEP = 7;
    public static final int SLIGHT_COLD = 1;
    public static final int SLIGHT_HEAT = 13;
    public static final int SNAKE = 5;
    public static final int SOLAR_TERM = 15;
    private static final int[] SOLAR_TERM_BASE = new int[]{4, 19, 3, 18, 4, 19, 4, 19, 4, 20, 4, 20, 6, 22, 6, 22, 6, 22, 7, 22, 6, 21, 6, 21};
    private static final byte[] SOLAR_TERM_INDEX = "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W".getBytes();
    private static final byte[] SOLAR_TERM_OS = "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000".getBytes();
    public static final int SPRING_BEGINS = 3;
    public static final int STOPPING_THE_HEAT = 16;
    public static final int SUMMER_BEGINS = 9;
    public static final int SUMMER_SOLSTICE = 12;
    public static final int SUNDAY = 1;
    public static final int THE_RAINS = 4;
    public static final int THURSDAY = 5;
    public static final int TIGER = 2;
    public static final int TUESDAY = 3;
    public static final int VERNAL_EQUINOX = 6;
    public static final int WEDNESDAY = 4;
    public static final int WHITE_DEWS = 17;
    public static final int WINTER_BEGINS = 21;
    public static final int WINTER_SOLSTICE = 24;
    public static final int YEAR = 1;
    public static final int ZONE_OFFSET = 23;
    private static final long defaultGregorianCutover = -12219292800000L;
    private static final long serialVersionUID = 1;
    private transient int changeYear;
    private transient int currentYearSkew;
    private transient long gregorianCutover;
    private transient int julianError;
    private transient int julianSkew;
    private transient int lastYearSkew;
    private int[] mFields;
    private long mMillisecond;
    private TimeZone mTimeZone;

    public Calendar() {
        this(null);
    }

    public Calendar(TimeZone timeZone) {
        this.mFields = new int[25];
        this.gregorianCutover = defaultGregorianCutover;
        this.changeYear = 1582;
        this.julianError = ((this.changeYear / 100) - (this.changeYear / 400)) - 2;
        this.julianSkew = (((this.changeYear - 2000) / 400) + this.julianError) - ((this.changeYear - 2000) / 100);
        this.currentYearSkew = 10;
        this.lastYearSkew = 0;
        this.mMillisecond = System.currentTimeMillis();
        setTimeZone(timeZone);
    }

    public Calendar setTimeZone(TimeZone timeZone) {
        if (timeZone == null) {
            timeZone = TimeZone.getDefault();
        }
        if (this.mTimeZone == null || !this.mTimeZone.getID().equals(timeZone.getID())) {
            this.mTimeZone = timeZone;
            compute();
        }
        return this;
    }

    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public long getTimeInMillis() {
        return this.mMillisecond;
    }

    public Calendar setTimeInMillis(long j) {
        this.mMillisecond = j;
        compute();
        return this;
    }

    public Calendar set(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        StringBuilder stringBuilder;
        if (i2 < 0 || i2 > 11) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Year ");
            stringBuilder2.append(i);
            stringBuilder2.append(" has no month ");
            stringBuilder2.append(i2);
            throw new IllegalArgumentException(stringBuilder2.toString());
        } else if (i3 <= 0 || i3 > a(isLeapYear(i), i2)) {
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("Year ");
            stringBuilder3.append(i);
            stringBuilder3.append(" month ");
            stringBuilder3.append(i2);
            stringBuilder3.append(" has no day ");
            stringBuilder3.append(i3);
            throw new IllegalArgumentException(stringBuilder3.toString());
        } else if (i4 < 0 || i4 > 23) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Invalid hour ");
            stringBuilder.append(i4);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (i5 < 0 || i5 > 59) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Invalid minute ");
            stringBuilder.append(i5);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (i6 < 0 || i6 > 59) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Invalid second ");
            stringBuilder.append(i6);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (i7 < 0 || i7 > ErrorCode.UNKNOWN) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Invalid millisecond ");
            stringBuilder.append(i7);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else {
            this.mFields[1] = i;
            this.mFields[5] = i2;
            this.mFields[9] = i3;
            this.mFields[18] = i4;
            this.mFields[20] = i5;
            this.mFields[21] = i6;
            this.mFields[22] = i7;
            ce();
            return this;
        }
    }

    public Calendar setChineseTime(int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7) {
        StringBuilder stringBuilder;
        if (i < 1900 || i > MAX_CHINESE_YEAR) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Date out of range [1900 - 2100] expected, but year is ");
            stringBuilder2.append(i);
            throw new IllegalArgumentException(stringBuilder2.toString());
        } else if (i2 < 0 || i2 > 11) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Year ");
            stringBuilder.append(i);
            stringBuilder.append(" has no month ");
            stringBuilder.append(i2);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (!z || G(i) == i2) {
            StringBuilder stringBuilder3;
            if (z) {
                if (i3 <= 0 || i3 > F(i)) {
                    stringBuilder3 = new StringBuilder();
                    stringBuilder3.append("Year ");
                    stringBuilder3.append(i);
                    stringBuilder3.append(" month ");
                    stringBuilder3.append(i2);
                    stringBuilder3.append(" has no day ");
                    stringBuilder3.append(i3);
                    throw new IllegalArgumentException(stringBuilder3.toString());
                }
            } else if (i3 <= 0 || i3 > h(i, i2)) {
                stringBuilder3 = new StringBuilder();
                stringBuilder3.append("Year ");
                stringBuilder3.append(i);
                stringBuilder3.append(" month ");
                stringBuilder3.append(i2);
                stringBuilder3.append(" has no day ");
                stringBuilder3.append(i3);
                throw new IllegalArgumentException(stringBuilder3.toString());
            }
            StringBuilder stringBuilder4;
            if (i4 < 0 || i4 > 23) {
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append("Invalid hour ");
                stringBuilder4.append(i4);
                throw new IllegalArgumentException(stringBuilder4.toString());
            } else if (i5 < 0 || i5 > 59) {
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append("Invalid minute ");
                stringBuilder4.append(i5);
                throw new IllegalArgumentException(stringBuilder4.toString());
            } else if (i6 < 0 || i6 > 59) {
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append("Invalid second ");
                stringBuilder4.append(i6);
                throw new IllegalArgumentException(stringBuilder4.toString());
            } else if (i7 < 0 || i7 > 1000) {
                stringBuilder4 = new StringBuilder();
                stringBuilder4.append("Invalid millisecond ");
                stringBuilder4.append(i7);
                throw new IllegalArgumentException(stringBuilder4.toString());
            } else {
                this.mFields[2] = i;
                this.mFields[6] = i2;
                this.mFields[10] = i3;
                this.mFields[8] = z;
                this.mFields[18] = i4;
                this.mFields[20] = i5;
                this.mFields[21] = i6;
                this.mFields[22] = i7;
                cf();
                return this;
            }
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Year ");
            stringBuilder.append(i);
            stringBuilder.append(" has no leap month ");
            stringBuilder.append(i2);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public Calendar set(int i, int i2) {
        StringBuilder stringBuilder;
        StringBuilder stringBuilder2;
        if (i == 6) {
            if (i2 < 0) {
                i2 = -i2;
                if (i2 == G(this.mFields[2])) {
                    this.mFields[8] = 1;
                } else {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("year ");
                    stringBuilder.append(this.mFields[2]);
                    stringBuilder.append(" has no such leap month:");
                    stringBuilder.append(i2);
                    throw new IllegalArgumentException(stringBuilder.toString());
                }
            } else if (i2 >= getActualMinimum(i) || i2 <= getActualMaximum(i)) {
                this.mFields[8] = 0;
            } else {
                stringBuilder2 = new StringBuilder();
                stringBuilder2.append("value is out of date range [");
                stringBuilder2.append(getActualMinimum(i));
                stringBuilder2.append("-");
                stringBuilder2.append(getActualMaximum(i));
                stringBuilder2.append("]: ");
                stringBuilder2.append(i2);
                throw new IllegalArgumentException(stringBuilder2.toString());
            }
            this.mFields[6] = i2;
            if (this.mFields[8] == 1) {
                i = F(this.mFields[2]);
            } else {
                i = h(this.mFields[2], this.mFields[6]);
            }
            if (this.mFields[10] > i) {
                this.mFields[10] = i;
            }
            cf();
            return this;
        } else if (i2 >= getActualMinimum(i) || i2 <= getActualMaximum(i)) {
            try {
                add(i, i2 - this.mFields[i]);
                return this;
            } catch (IllegalArgumentException e) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("unsupported set field:");
                stringBuilder.append(FIELD_NAMES[i]);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        } else {
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("value is out of date range [");
            stringBuilder2.append(getActualMinimum(i));
            stringBuilder2.append("-");
            stringBuilder2.append(getActualMaximum(i));
            stringBuilder2.append("]: ");
            stringBuilder2.append(i2);
            throw new IllegalArgumentException(stringBuilder2.toString());
        }
    }

    public Calendar add(int i, int i2) {
        StringBuilder stringBuilder;
        if (i < 0 || i >= 25) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Field out of range [0-25]: ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        int i3 = 0;
        int[] iArr;
        long j;
        switch (i) {
            case 0:
                if (!(i2 == 0 || this.mFields[0] == (this.mFields[0] + i2) % 2 || this.mFields[0] != 0)) {
                    this.mFields[1] = -1 - this.mFields[1];
                    ce();
                    break;
                }
            case 1:
                if (i2 != 0) {
                    if (this.mFields[0] == 0) {
                        this.mFields[1] = -1 - this.mFields[1];
                    }
                    iArr = this.mFields;
                    iArr[1] = iArr[1] + i2;
                    i = a(isLeapYear(this.mFields[1]), this.mFields[5]);
                    if (this.mFields[9] > i) {
                        this.mFields[9] = i;
                    }
                    ce();
                    break;
                }
                break;
            case 2:
                if (i2 != 0) {
                    i2 += this.mFields[2];
                    if (!outOfChineseCalendarRange() && i2 >= 1900 && i2 <= MAX_CHINESE_YEAR) {
                        this.mFields[2] = i2;
                        if (this.mFields[8] == 1 && this.mFields[6] == G(this.mFields[2])) {
                            this.mFields[8] = 0;
                        }
                        if (this.mFields[8] == 1) {
                            i = F(this.mFields[2]);
                        } else {
                            i = h(this.mFields[2], this.mFields[6]);
                        }
                        if (this.mFields[10] > i) {
                            this.mFields[10] = i;
                        }
                        cf();
                        break;
                    }
                    throw new IllegalArgumentException("out of range of Chinese Lunar Year");
                }
                break;
            case 5:
                if (i2 != 0) {
                    i2 += this.mFields[5];
                    i = i2 / 12;
                    i2 %= 12;
                    if (i2 < 0) {
                        i2 += 12;
                        i--;
                    }
                    this.mFields[5] = i2;
                    if (i != 0) {
                        add(1, i);
                        break;
                    }
                    if (this.mFields[0] == 0) {
                        this.mFields[1] = -1 - this.mFields[1];
                    }
                    i = a(isLeapYear(this.mFields[1]), this.mFields[5]);
                    if (this.mFields[9] > i) {
                        this.mFields[9] = i;
                    }
                    ce();
                    break;
                }
                break;
            case 6:
                if (i2 != 0) {
                    if (!outOfChineseCalendarRange()) {
                        i = G(this.mFields[2]);
                        while (i2 > 0) {
                            if (this.mFields[6] == i && this.mFields[8] == 0) {
                                this.mFields[8] = 1;
                            } else {
                                int[] iArr2 = this.mFields;
                                iArr2[6] = iArr2[6] + 1;
                                this.mFields[8] = 0;
                                if (this.mFields[6] > 11) {
                                    this.mFields[6] = 0;
                                    iArr = this.mFields;
                                    iArr[2] = iArr[2] + 1;
                                    if (this.mFields[2] <= MAX_CHINESE_YEAR) {
                                        i = G(this.mFields[2]);
                                    } else {
                                        throw new IllegalArgumentException("out of range of Chinese Lunar Year");
                                    }
                                }
                                continue;
                            }
                            i2--;
                        }
                        while (i2 < 0) {
                            if (this.mFields[6] == i && this.mFields[8] == 1) {
                                this.mFields[8] = 0;
                            } else {
                                int[] iArr3 = this.mFields;
                                iArr3[6] = iArr3[6] - 1;
                                if (this.mFields[6] < 0) {
                                    this.mFields[6] = 11;
                                    iArr = this.mFields;
                                    iArr[6] = iArr[6] - 1;
                                    if (this.mFields[2] >= 1900) {
                                        i = G(this.mFields[1]);
                                    } else {
                                        throw new IllegalArgumentException("out of range of Chinese Lunar Year");
                                    }
                                }
                                if (this.mFields[6] == i) {
                                    this.mFields[8] = 1;
                                }
                            }
                            i2++;
                        }
                        if (this.mFields[8] == 1) {
                            i = F(this.mFields[2]);
                        } else {
                            i = h(this.mFields[2], this.mFields[6]);
                        }
                        if (this.mFields[10] > i) {
                            this.mFields[10] = i;
                        }
                        cf();
                        break;
                    }
                    throw new IllegalArgumentException("out of range of Chinese Lunar Year");
                }
                break;
            case 9:
            case 10:
            case 12:
            case 13:
                if (i2 != 0) {
                    j = this.mMillisecond + (((long) i2) * VipConstants.DAY);
                    i = i2 > 0 ? 1 : 0;
                    if (j > this.mMillisecond) {
                        i3 = 1;
                    }
                    if (i == i3) {
                        this.mMillisecond = j;
                        compute();
                        break;
                    }
                    throw new IllegalArgumentException("out of range");
                }
                break;
            case 18:
                if (i2 != 0) {
                    j = this.mMillisecond + (((long) i2) * VipConstants.HOUR);
                    i = i2 > 0 ? 1 : 0;
                    if (j > this.mMillisecond) {
                        i3 = 1;
                    }
                    if (i == i3) {
                        this.mMillisecond = j;
                        compute();
                        break;
                    }
                    throw new IllegalArgumentException("out of range");
                }
                break;
            case 20:
                if (i2 != 0) {
                    j = this.mMillisecond + (((long) i2) * 60000);
                    i = i2 > 0 ? 1 : 0;
                    if (j > this.mMillisecond) {
                        i3 = 1;
                    }
                    if (i == i3) {
                        this.mMillisecond = j;
                        compute();
                        break;
                    }
                    throw new IllegalArgumentException("out of range");
                }
                break;
            case 21:
                if (i2 != 0) {
                    j = this.mMillisecond + (((long) i2) * 1000);
                    i = i2 > 0 ? 1 : 0;
                    if (j > this.mMillisecond) {
                        i3 = 1;
                    }
                    if (i == i3) {
                        this.mMillisecond = j;
                        compute();
                        break;
                    }
                    throw new IllegalArgumentException("out of range");
                }
                break;
            case 22:
                if (i2 != 0) {
                    j = this.mMillisecond + ((long) i2);
                    i = i2 > 0 ? 1 : 0;
                    if (j > this.mMillisecond) {
                        i3 = 1;
                    }
                    if (i == i3) {
                        this.mMillisecond = j;
                        compute();
                        break;
                    }
                    throw new IllegalArgumentException("out of range");
                }
                break;
            default:
                stringBuilder = new StringBuilder();
                stringBuilder.append("unsupported set field:");
                stringBuilder.append(FIELD_NAMES[i]);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
        return this;
    }

    private void ce() {
        int i = this.mFields[1];
        int i2 = this.mFields[5];
        int i3 = this.mFields[9];
        long f = f((long) i) + ((long) ((b(isLeapYear(i), i2) + i3) - 1));
        int a = a(f - 3, 7) + 1;
        this.mFields[14] = a;
        int i4 = (((this.mFields[18] * MILLISECOND_OF_HOUR) + (this.mFields[20] * MILLISECOND_OF_MINUTE)) + (this.mFields[21] * 1000)) + this.mFields[22];
        this.mMillisecond = (f * VipConstants.DAY) + ((long) i4);
        f = (long) this.mTimeZone.getOffset(1, i, i2, i3, a, i4);
        if (this.mTimeZone.inDaylightTime(new Date(this.mMillisecond))) {
            f -= (long) H(i4);
        }
        long j = this.mMillisecond;
        if (i <= 0) {
            f = 0;
        }
        this.mMillisecond = j - f;
        compute();
    }

    private void cf() {
        int i;
        long j = -25537 + ((long) DAY_CHINESE_YEAR_FROM_19000101[this.mFields[2] - 1900]);
        for (i = 0; i < this.mFields[6]; i++) {
            j += (long) h(this.mFields[2], i);
        }
        if (this.mFields[8] == 1) {
            j += (long) h(this.mFields[2], this.mFields[6]);
        } else {
            i = G(this.mFields[2]);
            if (i >= 0 && i < this.mFields[6]) {
                j += (long) F(this.mFields[2]);
            }
        }
        b(j + ((long) (this.mFields[10] - 1)), 0);
        ce();
    }

    public int get(int i) {
        if (i >= 0 && i < 25) {
            return this.mFields[i];
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Field out of range [0-25]: ");
        stringBuilder.append(i);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    private void compute() {
        long ch = ch();
        if (!outOfChineseCalendarRange()) {
            e(ch);
            cg();
            d(ch);
        }
    }

    public boolean outOfChineseCalendarRange() {
        return this.mMillisecond < (MIN_CHINESE_CALENDAR_MILLISECOND - ((long) this.mFields[23])) - ((long) this.mFields[24]) || this.mMillisecond >= (MAX_CHINESE_CALENDAR_MILLISECOND - ((long) this.mFields[23])) - ((long) this.mFields[24]);
    }

    private void d(long j) {
        int i = this.mFields[1];
        if (this.mFields[5] < 2) {
            i--;
        }
        if (this.mFields[5] == 1 && this.mFields[9] >= (i(this.mFields[1], 1) >> 8)) {
            i = this.mFields[1];
        }
        i -= 1900;
        this.mFields[3] = a((long) (i + 12), 12);
        this.mFields[4] = a((long) (i + 36), 60);
        int i2 = ((this.mFields[1] - 1900) * 12) + this.mFields[5];
        if (this.mFields[9] >= (i(this.mFields[1], this.mFields[5]) >> 8)) {
            i2++;
        }
        this.mFields[7] = a((long) (i2 + 12), 60);
        int i3 = (int) (j - -25537);
        this.mFields[11] = a((long) (i3 + 40), 60);
        this.mFields[19] = a((long) ((i3 * 12) + (((this.mFields[18] + 1) % 24) / 2)), 60);
    }

    private void cg() {
        int i = i(this.mFields[1], this.mFields[5]);
        if (this.mFields[9] == (i >> 8)) {
            this.mFields[15] = (this.mFields[5] * 2) + 1;
        } else if (this.mFields[9] == (i & 255)) {
            this.mFields[15] = (this.mFields[5] * 2) + 2;
        } else {
            this.mFields[15] = 0;
        }
    }

    private void e(long j) {
        int i = (int) (j - -25537);
        int i2 = this.mFields[1];
        int i3 = MAX_CHINESE_YEAR;
        if (i2 < MAX_CHINESE_YEAR) {
            i3 = this.mFields[1] + 1;
        }
        i -= DAY_CHINESE_YEAR_FROM_19000101[i3 - 1900];
        if (i < 0) {
            i3--;
            i += E(i3);
        }
        if (i < 0) {
            i3--;
            i += E(i3);
        }
        this.mFields[2] = i3;
        this.mFields[13] = i + 1;
        i2 = G(i3);
        int i4 = 0;
        int i5 = i;
        i = 0;
        int i6 = i;
        int i7 = i6;
        while (i < 12 && i5 > 0) {
            if (i2 >= 0 && i == i2 + 1 && i6 == 0) {
                i--;
                i7 = F(i3);
                i6 = 1;
            } else {
                i7 = h(i3, i);
            }
            if (i6 != 0 && i == i2 + 1) {
                i6 = 0;
            }
            i5 -= i7;
            i++;
        }
        if (i5 != 0 || i2 <= 0 || i != i2 + 1) {
            i4 = i6;
        } else if (i6 == 0) {
            i--;
            i4 = 1;
        }
        if (i5 < 0) {
            i5 += i7;
            i--;
        }
        this.mFields[8] = i4;
        this.mFields[6] = i;
        this.mFields[10] = i5 + 1;
    }

    public void setGregorianChange(long j) {
        this.gregorianCutover = j;
        Calendar calendar = new Calendar(TimeZone.getTimeZone("GMT"));
        calendar.setTimeInMillis(j);
        this.changeYear = calendar.get(1);
        if (calendar.get(0) == 0) {
            this.changeYear = 1 - this.changeYear;
        }
        this.julianError = ((this.changeYear / 100) - (this.changeYear / 400)) - 2;
        this.julianSkew = (((this.changeYear - 2000) / 400) + this.julianError) - ((this.changeYear - 2000) / 100);
        int i = calendar.get(12);
        if (i < this.julianSkew) {
            this.currentYearSkew = i - 1;
            this.lastYearSkew = (this.julianSkew - i) + 1;
            return;
        }
        this.lastYearSkew = 0;
        this.currentYearSkew = this.julianSkew;
    }

    private long ch() {
        this.mFields[23] = this.mTimeZone.getRawOffset();
        long j = this.mMillisecond / VipConstants.DAY;
        int i = (int) (this.mMillisecond % VipConstants.DAY);
        if (i < 0) {
            i += MILLISECOND_OF_DAY;
            j--;
        }
        i += this.mFields[23];
        while (i < 0) {
            i += MILLISECOND_OF_DAY;
            j--;
        }
        while (i >= MILLISECOND_OF_DAY) {
            i -= MILLISECOND_OF_DAY;
            j++;
        }
        int i2 = this.mFields[23];
        long j2 = this.mMillisecond + ((long) i2);
        if (this.mMillisecond > 0 && j2 < 0 && i2 > 0) {
            j2 = Long.MAX_VALUE;
        } else if (this.mMillisecond < 0 && j2 > 0 && i2 < 0) {
            j2 = Long.MIN_VALUE;
        }
        b(j, j2);
        i2 = H(i);
        this.mFields[24] = i2;
        if (i2 != 0) {
            long j3;
            i += i2;
            if (i < 0) {
                i += MILLISECOND_OF_DAY;
                j3 = j - 1;
            } else if (i >= MILLISECOND_OF_DAY) {
                i -= MILLISECOND_OF_DAY;
                j3 = 1 + j;
            } else {
                j3 = j;
            }
            if (j != j3) {
                int i3 = this.mFields[24] - this.mFields[23];
                long j4 = this.mMillisecond + ((long) i3);
                if (this.mMillisecond > 0 && j4 < 0 && i3 > 0) {
                    j4 = Long.MAX_VALUE;
                } else if (this.mMillisecond < 0 && j4 > 0 && i3 < 0) {
                    j4 = Long.MIN_VALUE;
                }
                b(j3, j4);
            }
            j = j3;
        }
        if (this.mFields[1] <= 0) {
            this.mFields[0] = 0;
            this.mFields[1] = 1 - this.mFields[1];
        } else {
            this.mFields[0] = 1;
        }
        this.mFields[22] = i % 1000;
        i /= 1000;
        this.mFields[21] = i % 60;
        i /= 60;
        this.mFields[20] = i % 60;
        this.mFields[18] = (i / 60) % 24;
        this.mFields[17] = this.mFields[18] > 11 ? 1 : 0;
        switch (this.mFields[18]) {
            case 0:
                this.mFields[16] = 0;
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                this.mFields[16] = 1;
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                this.mFields[16] = 2;
                break;
            case 12:
                this.mFields[16] = 3;
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                this.mFields[16] = 4;
                break;
            case 18:
                this.mFields[16] = 5;
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                this.mFields[16] = 6;
                break;
        }
        return j;
    }

    public boolean isChineseLeapMonth() {
        return this.mFields[8] == 1;
    }

    public int getChineseLeapMonth() {
        return G(this.mFields[2]);
    }

    public int compareTo(Calendar calendar) {
        if (this.mMillisecond < calendar.mMillisecond) {
            return -1;
        }
        return this.mMillisecond == calendar.mMillisecond ? 0 : 1;
    }

    public int hashCode() {
        return (int) (this.mMillisecond ^ (this.mMillisecond >>> 32));
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof Calendar) && this.mMillisecond == ((Calendar) obj).mMillisecond);
    }

    public String toString() {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        stringBuilder.append(getClass().getName());
        stringBuilder.append("[time");
        stringBuilder.append(this.mMillisecond);
        stringBuilder.append(",zone=");
        stringBuilder.append(this.mTimeZone.getID());
        for (int i = 0; i < 25; i++) {
            stringBuilder.append(',');
            stringBuilder.append(FIELD_NAMES[i]);
            stringBuilder.append('=');
            stringBuilder.append(this.mFields[i]);
        }
        stringBuilder.append(']');
        String stringBuilder2 = stringBuilder.toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    public final Object clone() {
        try {
            Calendar calendar = (Calendar) super.clone();
            calendar.mFields = (int[]) this.mFields.clone();
            calendar.mTimeZone = (TimeZone) this.mTimeZone.clone();
            return calendar;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public boolean after(Calendar calendar) {
        return getTimeInMillis() > calendar.getTimeInMillis();
    }

    public boolean before(Calendar calendar) {
        return getTimeInMillis() < calendar.getTimeInMillis();
    }

    public int getActualMaximum(int i) {
        StringBuilder stringBuilder;
        if (i < 0 || i >= 25) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Field out of range [0-25]: ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        int i2 = 0;
        switch (i) {
            case 0:
                return 1;
            case 1:
                return this.mFields[0] == 1 ? 292278994 : 292269055;
            case 2:
                return MAX_CHINESE_YEAR;
            case 3:
                return 11;
            case 4:
            case 7:
            case 11:
            case 19:
                return 59;
            case 5:
            case 6:
                return 11;
            case 8:
                return 1;
            case 9:
                return a(isLeapYear(this.mFields[1]), this.mFields[5]);
            case 10:
                if (!outOfChineseCalendarRange()) {
                    i2 = isChineseLeapMonth() ? F(this.mFields[2]) : h(this.mFields[2], this.mFields[6]);
                }
                return i2;
            case 12:
                return D(this.mFields[1]);
            case 13:
                if (!outOfChineseCalendarRange()) {
                    i2 = E(this.mFields[2]);
                }
                return i2;
            case 14:
                return 7;
            case 15:
                return 24;
            case 16:
                return 6;
            case 17:
                return 1;
            case 18:
                return 23;
            case 20:
                return 59;
            case 21:
                return 59;
            case 22:
                return ErrorCode.UNKNOWN;
            default:
                stringBuilder = new StringBuilder();
                stringBuilder.append("unsupported field: ");
                stringBuilder.append(FIELD_NAMES[i]);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public int getActualMinimum(int i) {
        StringBuilder stringBuilder;
        if (i < 0 || i >= 25) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Field out of range [0-25]: ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 1900;
            case 3:
                return 0;
            case 4:
            case 7:
            case 11:
            case 19:
                return 0;
            case 5:
            case 6:
                return 0;
            case 8:
                return 0;
            case 9:
                return 1;
            case 10:
                return outOfChineseCalendarRange() ^ 1;
            case 12:
                return 1;
            case 13:
                return outOfChineseCalendarRange() ^ 1;
            case 14:
                return 1;
            case 15:
                return 0;
            case 16:
                return 0;
            case 17:
                return 0;
            case 18:
                return 0;
            case 20:
                return 0;
            case 21:
                return 0;
            case 22:
                return 0;
            default:
                stringBuilder = new StringBuilder();
                stringBuilder.append("unsupported field: ");
                stringBuilder.append(FIELD_NAMES[i]);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public boolean isLeapYear(int i) {
        boolean z = false;
        if (i > this.changeYear) {
            if (i % 4 == 0 && (i % 100 != 0 || i % 400 == 0)) {
                z = true;
            }
            return z;
        }
        if (i % 4 == 0) {
            z = true;
        }
        return z;
    }

    private void b(long j, long j2) {
        int c = c(j, j2);
        this.mFields[12] = c;
        if (this.mFields[1] == this.changeYear && this.gregorianCutover <= j2) {
            c += this.currentYearSkew;
        }
        int i = c / 32;
        boolean isLeapYear = isLeapYear(this.mFields[1]);
        c -= b(isLeapYear, i);
        if (c > a(isLeapYear, i)) {
            c -= a(isLeapYear, i);
            i++;
        }
        this.mFields[5] = i;
        this.mFields[9] = c;
        this.mFields[14] = a(j - 3, 7) + 1;
    }

    private int c(long j, long j2) {
        long j3;
        int i = 1970;
        if (j2 < this.gregorianCutover) {
            j3 = j - ((long) this.julianSkew);
        } else {
            j3 = j;
        }
        while (true) {
            int i2 = (int) (j3 / 365);
            if (i2 == 0) {
                break;
            }
            i += i2;
            j3 = j - f((long) i);
        }
        if (j3 < 0) {
            i--;
            j3 += (long) D(i);
        }
        this.mFields[1] = i;
        return ((int) j3) + 1;
    }

    private long f(long j) {
        if (j >= 1970) {
            long j2 = ((j - 1970) * 365) + ((j - 1969) / 4);
            if (j > ((long) this.changeYear)) {
                j2 -= ((j - 1901) / 100) - ((j - 1601) / 400);
            } else if (j == ((long) this.changeYear)) {
                j2 += (long) this.currentYearSkew;
            } else if (j == ((long) (this.changeYear - 1))) {
                j2 += (long) this.lastYearSkew;
            } else {
                j2 += (long) this.julianSkew;
            }
            return j2;
        } else if (j <= ((long) this.changeYear)) {
            return (((j - 1970) * 365) + ((j - 1972) / 4)) + ((long) this.julianSkew);
        } else {
            j -= 2000;
            return ((((j - 1970) * 365) + ((j - 1972) / 4)) - (j / 100)) + (j / 400);
        }
    }

    private static int a(boolean z, int i) {
        if (z && i == 1) {
            return DAYS_IN_MONTH[i] + 1;
        }
        return DAYS_IN_MONTH[i];
    }

    private int D(int i) {
        int i2 = isLeapYear(i) ? 366 : 365;
        if (i == this.changeYear) {
            i2 -= this.currentYearSkew;
        }
        if (i == this.changeYear - 1) {
            return i2 - this.lastYearSkew;
        }
        return i2;
    }

    private static int b(boolean z, int i) {
        if (!z || i <= 1) {
            return DAYS_IN_YEAR[i];
        }
        return DAYS_IN_YEAR[i] + 1;
    }

    private static int a(long j, int i) {
        int i2 = (int) (j % ((long) i));
        if (j >= 0 || i2 >= 0) {
            return i2;
        }
        return i2 + i;
    }

    static int h(int i, int i2) {
        return (CHINESE_YEAR_INFO[i + -1900] & (65536 >> (i2 + 1))) != 0 ? 30 : 29;
    }

    static int E(int i) {
        i -= 1900;
        return DAY_CHINESE_YEAR_FROM_19000101[i + 1] - DAY_CHINESE_YEAR_FROM_19000101[i];
    }

    static int F(int i) {
        if (G(i) >= 0) {
            return (CHINESE_YEAR_INFO[(i + -1900) + 1] & 15) == 15 ? 30 : 29;
        } else {
            return 0;
        }
    }

    private static int G(int i) {
        i = CHINESE_YEAR_INFO[i - 1900] & 15;
        return i == 15 ? -1 : i - 1;
    }

    static int i(int i, int i2) {
        if (i > MAX_CHINESE_YEAR) {
            return 0;
        }
        i2 *= 2;
        i = ((SOLAR_TERM_INDEX[i - 1900] - 48) * 24) + i2;
        int i3 = i + 1;
        return (((SOLAR_TERM_OS[i] - 48) + SOLAR_TERM_BASE[i2]) << 8) + ((SOLAR_TERM_OS[i3] - 48) + SOLAR_TERM_BASE[i2 + 1]);
    }

    public String format(CharSequence charSequence) {
        return format(charSequence, null);
    }

    public String format(CharSequence charSequence, CalendarFormatSymbols calendarFormatSymbols) {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        String stringBuilder2 = format(stringBuilder, charSequence, calendarFormatSymbols).toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    public StringBuilder format(StringBuilder stringBuilder, CharSequence charSequence) {
        return format(stringBuilder, charSequence, null);
    }

    public StringBuilder format(StringBuilder stringBuilder, CharSequence charSequence, CalendarFormatSymbols calendarFormatSymbols) {
        if (calendarFormatSymbols == null) {
            calendarFormatSymbols = CalendarFormatSymbols.getDefault();
        }
        int length = charSequence.length();
        int i = 0;
        int i2 = i;
        while (i < length) {
            int i3;
            char charAt = charSequence.charAt(i);
            if (i2 != 0) {
                if (charAt == '\'') {
                    i3 = i + 1;
                    if (i3 >= length || charSequence.charAt(i3) != charAt) {
                        i2 = 0;
                    } else {
                        stringBuilder.append(charAt);
                    }
                } else {
                    stringBuilder.append(charAt);
                }
                i++;
            } else {
                if (charAt == '\'') {
                    i3 = i + 1;
                    if (i3 >= length || charSequence.charAt(i3) != charAt) {
                        i2 = 1;
                    } else {
                        stringBuilder.append(charAt);
                    }
                } else {
                    if (charAt >= 'A' && charAt <= 'z') {
                        int i4 = charAt - 65;
                        if (FORMAT_CHARACTERS[i4] >= 0) {
                            int i5 = i;
                            int i6 = 1;
                            while (true) {
                                i = i5 + 1;
                                if (i >= length || charSequence.charAt(i) != charAt) {
                                    a(stringBuilder, calendarFormatSymbols, charAt, i6, FORMAT_CHARACTERS[i4]);
                                    i = i5;
                                } else {
                                    i6++;
                                    i5 = i;
                                }
                            }
                            a(stringBuilder, calendarFormatSymbols, charAt, i6, FORMAT_CHARACTERS[i4]);
                            i = i5;
                        }
                    }
                    stringBuilder.append(charAt);
                }
                i++;
            }
            i = i3;
            i++;
        }
        return stringBuilder;
    }

    private void a(StringBuilder stringBuilder, CalendarFormatSymbols calendarFormatSymbols, char c, int i, int i2) {
        switch (c) {
            case 'A':
                stringBuilder.append(calendarFormatSymbols.getChineseSymbolAnimals()[this.mFields[3]]);
                return;
            case 'D':
            case 'H':
            case BaiduSceneResult.RUN /*83*/:
            case 'd':
            case BaiduSceneResult.CHURCH /*109*/:
            case BaiduSceneResult.BUILDING_OTHER /*115*/:
                b(stringBuilder, i, this.mFields[i2]);
                return;
            case 'E':
            case BaiduSceneResult.VOLLEYBALL /*99*/:
                if (i == 4) {
                    stringBuilder.append(calendarFormatSymbols.getWeekDays()[this.mFields[14] - 1]);
                    return;
                } else if (i == 5) {
                    stringBuilder.append(calendarFormatSymbols.getShortestWeekDays()[this.mFields[14] - 1]);
                    return;
                } else {
                    stringBuilder.append(calendarFormatSymbols.getShortWeekDays()[this.mFields[14] - 1]);
                    return;
                }
            case 'G':
                stringBuilder.append(calendarFormatSymbols.getEras()[this.mFields[0]]);
                return;
            case 'I':
                if (i == 2) {
                    stringBuilder.append(calendarFormatSymbols.getHeavenlyStems()[this.mFields[19] % 10]);
                }
                stringBuilder.append(calendarFormatSymbols.getEarthlyBranches()[this.mFields[19] % 12]);
                return;
            case 'K':
                b(stringBuilder, i, this.mFields[18] % 12);
                return;
            case 'L':
            case 'M':
                if (i < 3) {
                    b(stringBuilder, i, this.mFields[5] + 1);
                    return;
                } else if (i == 4) {
                    stringBuilder.append(calendarFormatSymbols.getMonths()[this.mFields[5]]);
                    return;
                } else if (i == 5) {
                    stringBuilder.append(calendarFormatSymbols.getShortestMonths()[this.mFields[5]]);
                    return;
                } else {
                    stringBuilder.append(calendarFormatSymbols.getShortMonths()[this.mFields[5]]);
                    return;
                }
            case 'N':
                if (i != 2) {
                    stringBuilder.append(calendarFormatSymbols.getChineseLeapMonths()[this.mFields[8]]);
                    stringBuilder.append(calendarFormatSymbols.getChineseMonths()[this.mFields[6]]);
                    return;
                }
                stringBuilder.append(calendarFormatSymbols.getHeavenlyStems()[this.mFields[7] % 10]);
                stringBuilder.append(calendarFormatSymbols.getEarthlyBranches()[this.mFields[7] % 12]);
                return;
            case BaiduSceneResult.BOWLING /*89*/:
                if (i != 2) {
                    String[] chineseDigits = calendarFormatSymbols.getChineseDigits();
                    int i3 = this.mFields[2];
                    i = stringBuilder.length();
                    while (i3 > 0) {
                        i2 = i3 % 10;
                        i3 /= 10;
                        stringBuilder.insert(i, chineseDigits[i2]);
                    }
                    return;
                }
                stringBuilder.append(calendarFormatSymbols.getHeavenlyStems()[this.mFields[4] % 10]);
                stringBuilder.append(calendarFormatSymbols.getEarthlyBranches()[this.mFields[4] % 12]);
                return;
            case 'Z':
                if (i == 4) {
                    a(stringBuilder, true, true);
                    return;
                } else if (i == 5) {
                    a(stringBuilder, false, true);
                    return;
                } else {
                    a(stringBuilder, false, false);
                    return;
                }
            case BaiduSceneResult.SKATEBOARD /*97*/:
                if (i != 2) {
                    stringBuilder.append(calendarFormatSymbols.getAmPms()[this.mFields[17]]);
                    return;
                } else {
                    stringBuilder.append(calendarFormatSymbols.getDetailedAmPms()[this.mFields[16]]);
                    return;
                }
            case 'e':
                if (i != 2) {
                    stringBuilder.append(calendarFormatSymbols.getChineseDays()[this.mFields[10] - 1]);
                    return;
                }
                stringBuilder.append(calendarFormatSymbols.getHeavenlyStems()[this.mFields[11] % 10]);
                stringBuilder.append(calendarFormatSymbols.getEarthlyBranches()[this.mFields[11] % 12]);
                return;
            case 'h':
                int i4 = this.mFields[18] % 12;
                if (i4 == 0) {
                    i4 = 12;
                }
                b(stringBuilder, i, i4);
                return;
            case 'k':
                b(stringBuilder, i, this.mFields[18]);
                return;
            case BaiduSceneResult.CAR /*116*/:
                stringBuilder.append(calendarFormatSymbols.getSolarTerms()[this.mFields[15]]);
                return;
            case BaiduSceneResult.STATION /*121*/:
                if (i == 2) {
                    b(stringBuilder, i, this.mFields[1] % 100);
                    return;
                } else {
                    b(stringBuilder, i, this.mFields[1]);
                    return;
                }
            case 'z':
                a(stringBuilder, calendarFormatSymbols, i);
                return;
            default:
                return;
        }
    }

    private static void b(StringBuilder stringBuilder, int i, int i2) {
        stringBuilder.append(SimpleNumberFormatter.format(i, i2));
    }

    private void a(StringBuilder stringBuilder, CalendarFormatSymbols calendarFormatSymbols, int i) {
        TimeZone timeZone = this.mTimeZone;
        int i2 = 1;
        boolean z = this.mFields[24] != 0;
        if (i != 4) {
            i2 = 0;
        }
        String displayName = timeZone.getDisplayName(z, i2, calendarFormatSymbols.getLocale());
        if (displayName != null) {
            stringBuilder.append(displayName);
        } else {
            a(stringBuilder, false, false);
        }
    }

    private void a(StringBuilder stringBuilder, boolean z, boolean z2) {
        char c;
        int i = get(23) + get(24);
        if (i < 0) {
            c = '-';
            i = -i;
        } else {
            c = '+';
        }
        if (z) {
            stringBuilder.append("GMT");
        }
        stringBuilder.append(c);
        b(stringBuilder, 2, i / MILLISECOND_OF_HOUR);
        if (z2) {
            stringBuilder.append(':');
        }
        b(stringBuilder, 2, (i % MILLISECOND_OF_HOUR) / MILLISECOND_OF_MINUTE);
    }

    private int H(int i) {
        if (this.mFields[1] <= 0) {
            i = 0;
        } else {
            i = this.mTimeZone.getOffset(1, this.mFields[1], this.mFields[5], this.mFields[9], this.mFields[14], i);
        }
        if (this.mFields[1] > 0) {
            return i - this.mFields[23];
        }
        return 0;
    }
}
