package com.miui.gallery.data;

public class UbiIndexMapper {
    public static int localToCloud(int localIndex, int subUbiCount) {
        if (localIndex == subUbiCount - 1) {
            return 0;
        }
        return localIndex + 1;
    }

    public static int cloudToLocal(int cloudIndex, int subUbiCount) {
        if (cloudIndex == 0) {
            return subUbiCount - 1;
        }
        return cloudIndex - 1;
    }
}
