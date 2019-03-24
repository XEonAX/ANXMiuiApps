package miui.date;

import android.content.res.Resources;
import com.miui.internal.R;
import java.util.Locale;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class CalendarFormatSymbols {
    private static final SoftReferenceSingleton<CalendarFormatSymbols> s = new SoftReferenceSingleton<CalendarFormatSymbols>() {
        /* renamed from: ci */
        protected CalendarFormatSymbols createInstance() {
            return new CalendarFormatSymbols();
        }
    };
    private Resources nY = AppConstants.getCurrentApplication().getResources();

    public static CalendarFormatSymbols getDefault() {
        return (CalendarFormatSymbols) s.get();
    }

    public Locale getLocale() {
        return Locale.getDefault();
    }

    public String[] getSolarTerms() {
        return this.nY.getStringArray(R.array.solar_terms);
    }

    public String[] getChineseDays() {
        return this.nY.getStringArray(R.array.chinese_days);
    }

    public String[] getDetailedAmPms() {
        return this.nY.getStringArray(R.array.detailed_am_pms);
    }

    public String[] getAmPms() {
        return this.nY.getStringArray(R.array.am_pms);
    }

    public String[] getChineseDigits() {
        return this.nY.getStringArray(R.array.chinese_digits);
    }

    public String[] getChineseLeapMonths() {
        return this.nY.getStringArray(R.array.chinese_leap_months);
    }

    public String[] getChineseMonths() {
        return this.nY.getStringArray(R.array.chinese_months);
    }

    public String[] getEarthlyBranches() {
        return this.nY.getStringArray(R.array.earthly_branches);
    }

    public String[] getShortMonths() {
        return this.nY.getStringArray(R.array.months_short);
    }

    public String[] getShortestMonths() {
        return this.nY.getStringArray(R.array.months_shortest);
    }

    public String[] getMonths() {
        return this.nY.getStringArray(R.array.months);
    }

    public String[] getHeavenlyStems() {
        return this.nY.getStringArray(R.array.heavenly_stems);
    }

    public String[] getChineseSymbolAnimals() {
        return this.nY.getStringArray(R.array.chinese_symbol_animals);
    }

    public String[] getEras() {
        return this.nY.getStringArray(R.array.eras);
    }

    public String[] getShortWeekDays() {
        return this.nY.getStringArray(R.array.week_days_short);
    }

    public String[] getShortestWeekDays() {
        return this.nY.getStringArray(R.array.week_days_shortest);
    }

    public String[] getWeekDays() {
        return this.nY.getStringArray(R.array.week_days);
    }
}
