package miui.date;

import android.content.res.Resources;
import android.util.SparseIntArray;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import java.util.HashMap;
import java.util.Locale;
import miui.media.Recorder.ErrorCode;
import miui.os.C0004SystemProperties;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C0007Pool;
import miui.util.SoftReferenceSingleton;

public class Holidays {
    private static final SoftReferenceSingleton<Holidays> s = new HolidaysSingleton();
    private static final C0007Pool<Calendar> xL = C0014Pools.createSoftReferencePool(new C0000Manager<Calendar>() {
        /* renamed from: cj */
        public Calendar createInstance() {
            return new Calendar();
        }
    }, 1);
    private static final int xM = -1;
    private static final int xN = -1;
    private static final HashMap<String, int[][]> xO = new HashMap();
    private static final int[][] xP;
    private static final SparseIntArray xS = new SparseIntArray();
    private Resources nY;
    private String xQ;
    private boolean xR;

    private static class HolidaysSingleton extends SoftReferenceSingleton<Holidays> {
        private HolidaysSingleton() {
        }

        /* synthetic */ HolidaysSingleton(AnonymousClass1 anonymousClass1) {
            this();
        }

        static {
            C0004SystemProperties.addChangeCallback(new Runnable() {
                public void run() {
                    ((Holidays) Holidays.s.get()).u(DeviceHelper.getRegion());
                }
            });
        }

        /* renamed from: cl */
        protected Holidays createInstance() {
            return new Holidays();
        }
    }

    static {
        r0 = new int[16][];
        r0[0] = new int[]{-1, R.string.the_eve_of_the_spring_festival};
        r0[1] = new int[]{101, R.string.the_spring_festival};
        r0[2] = new int[]{102, R.string.the_second_day};
        r0[3] = new int[]{103, R.string.the_third_day};
        r0[4] = new int[]{104, R.string.the_forth_day};
        r0[5] = new int[]{105, R.string.the_fifth_day};
        r0[6] = new int[]{106, R.string.the_sixth_day};
        r0[7] = new int[]{107, R.string.the_seventh_day};
        r0[8] = new int[]{BaiduSceneResult.BUILDING_OTHER, R.string.the_lantern_festival};
        r0[9] = new int[]{505, R.string.the_dragon_boat_festival};
        r0[10] = new int[]{707, R.string.the_night_of_sevens};
        r0[11] = new int[]{715, R.string.the_spirit_festival};
        r0[12] = new int[]{815, R.string.the_mid_autumn_festival};
        r0[13] = new int[]{909, R.string.the_double_ninth_festival};
        r0[14] = new int[]{1015, R.string.the_water_lantern_festival};
        r0[15] = new int[]{1208, R.string.the_laba_festival};
        xP = r0;
        r14 = new int[7][];
        r14[0] = new int[]{101, R.string.the_new_years_day};
        r14[1] = new int[]{214, R.string.the_valentines_day};
        r14[2] = new int[]{308, R.string.the_international_womens_day};
        r14[3] = new int[]{312, R.string.the_arbor_day};
        r14[4] = new int[]{401, R.string.the_fools_day};
        r14[5] = new int[]{501, R.string.the_labour_day};
        r14[6] = new int[]{1225, R.string.the_christmas_day};
        xO.put("", r14);
        r14 = new int[13][];
        r14[0] = new int[]{101, R.string.the_new_years_day};
        r14[1] = new int[]{214, R.string.the_valentines_day};
        r14[2] = new int[]{308, R.string.the_international_womens_day};
        r14[3] = new int[]{312, R.string.the_arbor_day};
        r14[4] = new int[]{401, R.string.the_fools_day};
        r14[5] = new int[]{501, R.string.the_labour_day};
        r14[6] = new int[]{504, R.string.the_chinese_youth_day};
        r14[7] = new int[]{601, R.string.the_childrens_day};
        r14[8] = new int[]{701, R.string.the_partys_day};
        r14[9] = new int[]{801, R.string.the_armys_day};
        r14[10] = new int[]{910, R.string.the_teachers_day};
        r14[11] = new int[]{1001, R.string.the_national_day};
        r14[12] = new int[]{1225, R.string.the_christmas_day};
        xO.put("CN", r14);
        r14 = new int[18][];
        r14[0] = new int[]{101, R.string.the_new_years_day};
        r14[1] = new int[]{214, R.string.the_valentines_day};
        r14[2] = new int[]{228, R.string.the_peace_day};
        r14[3] = new int[]{308, R.string.the_international_womens_day};
        r14[4] = new int[]{312, R.string.the_arbor_day};
        r14[5] = new int[]{314, R.string.the_anti_aggression_day};
        r14[6] = new int[]{329, R.string.the_tw_youth_day};
        r14[7] = new int[]{401, R.string.the_fools_day};
        r14[8] = new int[]{404, R.string.the_tw_childrens_day};
        r14[9] = new int[]{501, R.string.the_labour_day};
        r14[10] = new int[]{715, R.string.the_anniversary_of_lifting_martial_law};
        r14[11] = new int[]{903, R.string.the_armed_forces_day};
        r14[12] = new int[]{928, R.string.the_teachers_day};
        r14[13] = new int[]{ErrorCode.SERVER_DIED, R.string.the_national_day};
        r14[14] = new int[]{1024, R.string.the_united_nations_day};
        r14[15] = new int[]{1025, R.string.the_retrocession_day};
        r14[16] = new int[]{1112, R.string.the_national_father_day};
        r14[17] = new int[]{1225, R.string.the_christmas_day};
        xO.put("TW", r14);
        r10 = new int[7][];
        r10[0] = new int[]{-1, R.string.the_easter_day};
        r10[1] = new int[]{101, R.string.the_new_years_day};
        r10[2] = new int[]{214, R.string.the_valentines_day};
        r10[3] = new int[]{501, R.string.the_labour_day};
        r10[4] = new int[]{701, R.string.the_hksar_establishment_day};
        r10[5] = new int[]{1001, R.string.the_national_day};
        r10[6] = new int[]{1225, R.string.the_christmas_day};
        xO.put("HK", r10);
    }

    private Holidays() {
        this(DeviceHelper.getRegion());
    }

    protected Holidays(Locale locale) {
        this(locale.getCountry());
    }

    private Holidays(String str) {
        this.nY = AppConstants.getCurrentApplication().getResources();
        u(str);
    }

    private void u(String str) {
        this.xQ = str.toUpperCase();
        boolean z = "CN".equals(this.xQ) || "HK".equals(this.xQ) || "TW".equals(this.xQ);
        this.xR = z;
    }

    public static Holidays getDefault() {
        return (Holidays) s.get();
    }

    public String getHolidayName(Calendar calendar) {
        int[][] iArr = (int[][]) xO.get(this.xQ);
        if (iArr == null) {
            iArr = (int[][]) xO.get("");
        }
        int i = ((calendar.get(5) + 1) * 100) + calendar.get(9);
        for (int[] iArr2 : iArr) {
            if (iArr2[0] != -1) {
                if (iArr2[0] == i) {
                    return this.nY.getString(iArr2[1]);
                }
            } else if (i == getEasterDayOfYear(calendar.get(1))) {
                return this.nY.getString(iArr2[1]);
            }
        }
        if (this.xR && !calendar.outOfChineseCalendarRange()) {
            int i2 = ((calendar.get(6) + 1) * 100) + calendar.get(10);
            for (int[] iArr22 : xP) {
                if (iArr22[0] != -1) {
                    if (!calendar.isChineseLeapMonth() && i2 == iArr22[0]) {
                        return this.nY.getString(iArr22[1]);
                    }
                } else if (Calendar.E(calendar.get(2)) == calendar.get(13)) {
                    return this.nY.getString(iArr22[1]);
                }
            }
        }
        return "";
    }

    protected final int getEasterDayOfYear(int i) {
        int i2 = xS.get(i, 0);
        if (i2 != 0) {
            return i2;
        }
        int i3;
        Calendar calendar = ((Calendar) xL.acquire()).set(i, 2, Calendar.i(i, 2) & 255, 0, 0, 0, 0);
        if (calendar.get(10) < 15) {
            i3 = 15 - calendar.get(10);
        } else {
            int F;
            if (calendar.isChineseLeapMonth()) {
                F = Calendar.F(i);
            } else {
                F = Calendar.h(i, calendar.get(6));
            }
            i3 = 15 + (F - calendar.get(10));
        }
        calendar.add(9, i3);
        switch (calendar.get(14)) {
            case 1:
                calendar.add(9, 7);
                break;
            case 2:
                calendar.add(9, 6);
                break;
            case 3:
                calendar.add(9, 5);
                break;
            case 4:
                calendar.add(9, 4);
                break;
            case 5:
                calendar.add(9, 3);
                break;
            case 6:
                calendar.add(9, 2);
                break;
            case 7:
                calendar.add(9, 1);
                break;
        }
        i2 = ((calendar.get(5) + 1) * 100) + calendar.get(9);
        xL.release(calendar);
        xS.put(i, i2);
        return i2;
    }
}
