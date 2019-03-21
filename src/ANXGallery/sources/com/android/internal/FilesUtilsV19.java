package com.android.internal;

import android.os.FileUtils;

class FilesUtilsV19 {
    public static int setPermissions(String path, int mode, int uid, int gid) {
        return FileUtils.setPermissions(path, mode, uid, gid);
    }
}
