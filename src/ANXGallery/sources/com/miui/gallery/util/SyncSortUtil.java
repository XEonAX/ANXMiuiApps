package com.miui.gallery.util;

public class SyncSortUtil {
    public static void sort(long[] targetArray, long[] compareArray, int lo, int hi) {
        if (lo < hi) {
            int index = partition(targetArray, compareArray, lo, hi);
            sort(targetArray, compareArray, lo, index - 1);
            sort(targetArray, compareArray, index + 1, hi);
        }
    }

    private static int partition(long[] targetArray, long[] compareArray, int lo, int hi) {
        long key = compareArray[lo];
        long targetKey = targetArray[lo];
        while (lo < hi) {
            while (compareArray[hi] >= key && hi > lo) {
                hi--;
            }
            compareArray[lo] = compareArray[hi];
            targetArray[lo] = targetArray[hi];
            while (compareArray[lo] <= key && hi > lo) {
                lo++;
            }
            compareArray[hi] = compareArray[lo];
            targetArray[hi] = targetArray[lo];
        }
        compareArray[hi] = key;
        targetArray[hi] = targetKey;
        return hi;
    }

    public static void sort(int[] targetArray, long[] compareArray, int lo, int hi) {
        if (lo < hi) {
            int index = partition(targetArray, compareArray, lo, hi);
            sort(targetArray, compareArray, lo, index - 1);
            sort(targetArray, compareArray, index + 1, hi);
        }
    }

    private static int partition(int[] targetArray, long[] compareArray, int lo, int hi) {
        long key = compareArray[lo];
        int targetKey = targetArray[lo];
        while (lo < hi) {
            while (compareArray[hi] >= key && hi > lo) {
                hi--;
            }
            compareArray[lo] = compareArray[hi];
            targetArray[lo] = targetArray[hi];
            while (compareArray[lo] <= key && hi > lo) {
                lo++;
            }
            compareArray[hi] = compareArray[lo];
            targetArray[hi] = targetArray[lo];
        }
        compareArray[hi] = key;
        targetArray[hi] = targetKey;
        return hi;
    }
}
