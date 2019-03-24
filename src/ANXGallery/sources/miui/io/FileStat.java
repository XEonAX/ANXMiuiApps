package miui.io;

import libcore.io.Libcore;

public class FileStat {
    public static long getCreatedTime(String path) {
        try {
            return Libcore.os.lstat(path).st_ctime * 1000;
        } catch (Exception e) {
            return 0;
        }
    }
}
