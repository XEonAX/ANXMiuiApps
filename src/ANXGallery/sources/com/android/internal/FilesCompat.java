package com.android.internal;

import android.os.Build.VERSION;
import android.system.ErrnoException;
import android.system.Os;
import android.util.Log;

public class FilesCompat {
    public static int setPermissions(String path, int mode, int uid, int gid) {
        if (VERSION.SDK_INT < 21) {
            return FilesUtilsV19.setPermissions(path, mode, uid, gid);
        }
        try {
            Os.chmod(path, mode);
            if (uid >= 0 || gid >= 0) {
                try {
                    Os.chown(path, uid, gid);
                } catch (ErrnoException e) {
                    Log.w("FilesCompat", "chown failed " + path, e);
                    return e.errno;
                }
            }
            return 0;
        } catch (ErrnoException e2) {
            Log.w("FilesCompat", "chmod failed " + path, e2);
            return e2.errno;
        }
    }
}
