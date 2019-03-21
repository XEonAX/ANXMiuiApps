package com.miui.gallery.provider.cache;

import android.text.TextUtils;
import com.miui.gallery.util.Numbers;
import java.util.Arrays;

public class CacheUtils {
    public static boolean columnEquals(CacheItem item1, CacheItem item2, int columnIndex) {
        if (item1 == item2) {
            return true;
        }
        if (item1 == null || item2 == null) {
            return false;
        }
        switch (item1.getType(columnIndex)) {
            case 0:
                if (item2.getType(columnIndex) == 0) {
                    return true;
                }
                return false;
            case 1:
                Object o1 = item1.get(columnIndex, true);
                Object o2 = item2.get(columnIndex, true);
                if (o1 instanceof Long) {
                    return Numbers.equals((Long) o1, o2 instanceof Long ? ((Long) o2).longValue() : (long) ((Integer) o2).intValue());
                }
                return Numbers.equals((Integer) o1, o2 instanceof Long ? ((Long) o2).longValue() : (long) ((Integer) o2).intValue());
            case 2:
                return Numbers.equals((Float) item1.get(columnIndex, true), (Float) item2.get(columnIndex, true));
            case 3:
                return TextUtils.equals((String) item1.get(columnIndex, true), (String) item2.get(columnIndex, true));
            case 4:
                return Arrays.deepEquals((Byte[]) item1.get(columnIndex, true), (Byte[]) item2.get(columnIndex, true));
            default:
                return false;
        }
    }
}
