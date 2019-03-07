package com.miui.screenrecorder.compat;

import android.os.Process;
import android.os.UserHandle;

public class UserHandleCompat {
    public static final UserHandle ALL = getAllUserHandle(-1);
    public static final UserHandle CURRENT = getAllUserHandle(-2);
    public static final boolean MU_ENABLED = true;
    public static final int PER_USER_RANGE = 100000;
    public static final int USER_ALL = -1;
    public static final int USER_CURRENT = -2;
    public static final int USER_OWNER = 0;

    public static UserHandle getAllUserHandle(int num) {
        try {
            return (UserHandle) Class.forName("android.os.UserHandle").getConstructor(new Class[]{Integer.TYPE}).newInstance(new Object[]{Integer.valueOf(num)});
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static final int myUserId() {
        return getUserId(Process.myUid());
    }

    public static final int getUserId(int uid) {
        return uid / PER_USER_RANGE;
    }
}
