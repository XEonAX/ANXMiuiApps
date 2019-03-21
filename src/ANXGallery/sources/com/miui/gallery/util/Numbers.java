package com.miui.gallery.util;

import android.database.Cursor;
import java.util.List;

public class Numbers {
    public static Long parse(String value, Long defaultValue) {
        try {
            return Long.valueOf(Long.parseLong(value));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    public static void ensurePositive(long... nums) {
        if (nums == null) {
            throw new NullPointerException("nums can not be null");
        } else if (nums.length == 0) {
            throw new IllegalArgumentException("nums can not be empty");
        } else {
            for (long valueOf : nums) {
                if (Long.valueOf(valueOf).longValue() <= 0) {
                    throw new IllegalArgumentException("negative or zero received");
                }
            }
        }
    }

    public static <T extends Number & Comparable<T>> int compare(T i, T j) {
        if (i != null && j != null) {
            return ((Comparable) i).compareTo(j);
        }
        if (i != null) {
            return 1;
        }
        if (j != null) {
            return -1;
        }
        return 0;
    }

    public static <T extends Number & Comparable<T>> boolean equals(T i, T j) {
        if (i == null || j == null) {
            return i == null && j == null;
        } else {
            return i.equals(j);
        }
    }

    public static <T extends Number & Comparable<T>> boolean equals(T i, long value) {
        if (i != null && i.longValue() == value) {
            return true;
        }
        return false;
    }

    public static <T extends Number & Comparable<T>> boolean equals(T i, int value) {
        if (i != null && i.intValue() == value) {
            return true;
        }
        return false;
    }

    public static int unbox(Integer x, int defaultValue) {
        return x == null ? defaultValue : x.intValue();
    }

    public static long unbox(Long x, long defaultValue) {
        return x == null ? defaultValue : x.longValue();
    }

    public static Long getLong(Cursor cursor, int index) {
        if (cursor.isNull(index)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(index));
    }

    public static long[] toArray(List<Long> values) {
        if (values == null || values.size() <= 0) {
            return null;
        }
        long[] array = new long[values.size()];
        for (int i = 0; i < values.size(); i++) {
            array[i] = ((Long) values.get(i)).longValue();
        }
        return array;
    }
}
