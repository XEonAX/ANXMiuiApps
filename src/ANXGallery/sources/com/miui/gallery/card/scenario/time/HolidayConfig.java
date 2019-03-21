package com.miui.gallery.card.scenario.time;

public class HolidayConfig {
    final int mHoliday;
    final int mMaxContinuousDay;
    final int mPreviousMaxDay;

    public HolidayConfig(int holiday, int previousMaxDay, int maxContinuousDay) {
        this.mHoliday = holiday;
        this.mPreviousMaxDay = previousMaxDay;
        this.mMaxContinuousDay = maxContinuousDay;
    }

    public int getHoliday() {
        return this.mHoliday;
    }

    public int getPreviousMaxDay() {
        return this.mPreviousMaxDay;
    }

    public int getMaxContinuousDay() {
        return this.mMaxContinuousDay;
    }
}
