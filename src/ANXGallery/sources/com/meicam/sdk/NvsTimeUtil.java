package com.meicam.sdk;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

public class NvsTimeUtil {
    public static int getRandomTime(int i, int i2) {
        if (i >= i2 || i < 0 || i2 < 0) {
            return 0;
        }
        return new Random().nextInt(i2 - i) + i;
    }

    public static int compareData(String str, String str2) {
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        try {
            Date parse = simpleDateFormat.parse(str);
            Date parse2 = simpleDateFormat.parse(str2);
            if (parse.getTime() < parse2.getTime()) {
                return 1;
            }
            if (parse.getTime() > parse2.getTime()) {
                return -1;
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String getCurrentTime() {
        Calendar.getInstance();
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    public static int getHourRange(String str, String str2) {
        int i = -1;
        if (compareData(str, str2) < 0) {
            return i;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date parse = simpleDateFormat.parse(str);
            Date parse2 = simpleDateFormat.parse(str2);
            return (int) ((parse2.getTime() - parse.getTime()) / 3600000);
        } catch (Exception e) {
            e.printStackTrace();
            return i;
        }
    }
}
