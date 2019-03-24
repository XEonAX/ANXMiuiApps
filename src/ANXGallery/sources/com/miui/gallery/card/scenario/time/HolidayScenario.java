package com.miui.gallery.card.scenario.time;

import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.assistant.HolidaysUtil;
import com.miui.internal.vip.VipConstants;
import java.util.List;
import miui.date.Calendar;

public abstract class HolidayScenario extends TimeScenario {
    protected int mYear = 1;

    public HolidayScenario(int id, int flag, int flagDisableMask) {
        super(id, flag, flagDisableMask);
    }

    protected long[] getStartEndTime(long pastYearTime, List<HolidayConfig> holidayConfigs, boolean isChineseHoliday) {
        long[] result = new long[]{DateUtils.getDateTime(pastYearTime), result[0] + VipConstants.DAY};
        int holiday = isChineseHoliday ? HolidaysUtil.getChineseHoliday(pastYearTime) : HolidaysUtil.getHoliday(pastYearTime);
        int maxContinuousDay = 1;
        int previousMaxDay = Integer.MAX_VALUE;
        if (BaseMiscUtil.isValid(holidayConfigs)) {
            for (HolidayConfig holidayConfig : holidayConfigs) {
                if (holidayConfig.getHoliday() == holiday) {
                    maxContinuousDay = holidayConfig.getMaxContinuousDay();
                    previousMaxDay = holidayConfig.getPreviousMaxDay();
                    break;
                }
            }
        }
        if (maxContinuousDay > 1) {
            int leftOffSet = 0;
            int rightOffSet = 0;
            boolean leftCanMove = true;
            boolean rightCanMove = true;
            while (leftOffSet + rightOffSet < maxContinuousDay - 1) {
                List<Long> list;
                if ((!leftCanMove || !rightCanMove || leftOffSet > rightOffSet) && (!leftCanMove || rightCanMove)) {
                    if ((!leftCanMove || !rightCanMove || leftOffSet <= rightOffSet) && (leftCanMove || !rightCanMove)) {
                        break;
                    }
                    rightOffSet++;
                    list = getMediaIdsByStartEndTime(result[0] + (VipConstants.DAY * ((long) rightOffSet)), result[1] + (VipConstants.DAY * ((long) rightOffSet)));
                    if (list == null || list.size() < getMinImageCount()) {
                        rightOffSet--;
                        rightCanMove = false;
                    }
                } else {
                    leftOffSet++;
                    list = getMediaIdsByStartEndTime(result[0] - (VipConstants.DAY * ((long) leftOffSet)), result[1] - (VipConstants.DAY * ((long) leftOffSet)));
                    if (list == null || list.size() < getMinImageCount()) {
                        leftOffSet--;
                        leftCanMove = false;
                    }
                    if (leftOffSet >= previousMaxDay) {
                        leftOffSet = previousMaxDay;
                        leftCanMove = false;
                    }
                }
            }
            result[0] = result[0] - (((long) leftOffSet) * VipConstants.DAY);
            result[1] = result[1] + (((long) rightOffSet) * VipConstants.DAY);
        }
        return result;
    }

    protected String getPrimaryKey() {
        return String.valueOf(this.mYear);
    }

    protected int getHolidayFromRecord(Record record, boolean isChineseHolidy) {
        return getHolidayFromTargetTime(getRecordTargetTime(record), isChineseHolidy);
    }

    protected int getHolidayFromTargetTime(long targetTime, boolean isChineseHolidy) {
        if (targetTime <= 0) {
            return -1;
        }
        Calendar calendar = new Calendar();
        calendar.setTimeInMillis(targetTime);
        return isChineseHolidy ? HolidaysUtil.getChineseHoliday(calendar) : HolidaysUtil.getHoliday(calendar);
    }

    protected int getYearFromRecord(Record record) {
        int year = 1;
        if (record == null) {
            return year;
        }
        try {
            return Integer.valueOf(record.getPrimaryKey()).intValue();
        } catch (NumberFormatException e) {
            Log.e(this.TAG, "get year of record error:" + e);
            return year;
        }
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        if (getRecordTargetTime(record) > 0) {
            return getDatePeriodFromRecord(record);
        }
        return "";
    }
}
