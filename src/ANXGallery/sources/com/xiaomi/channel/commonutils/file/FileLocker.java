package com.xiaomi.channel.commonutils.file;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class FileLocker {
    private static final Set<String> LOCK_HELD = Collections.synchronizedSet(new HashSet());
    private Context mContext;
    private FileLock mLock;
    private RandomAccessFile mLockFile;
    private String mLockFileName;

    private FileLocker(Context context) {
        this.mContext = context;
    }

    public static FileLocker lock(Context context, File target) throws IOException {
        MyLog.v("Locking: " + target.getAbsolutePath());
        String name = target.getAbsolutePath() + ".LOCK";
        File file = new File(name);
        if (!file.exists()) {
            file.getParentFile().mkdirs();
            file.createNewFile();
        }
        if (LOCK_HELD.add(name)) {
            FileLocker locker = new FileLocker(context);
            locker.mLockFileName = name;
            try {
                locker.mLockFile = new RandomAccessFile(file, "rw");
                locker.mLock = locker.mLockFile.getChannel().lock();
                MyLog.v("Locked: " + name + " :" + locker.mLock);
                return locker;
            } finally {
                if (locker.mLock == null) {
                    if (locker.mLockFile != null) {
                        IOUtils.closeQuietly(locker.mLockFile);
                    }
                    LOCK_HELD.remove(locker.mLockFileName);
                }
            }
        } else {
            throw new IOException("abtain lock failure");
        }
    }

    public void unlock() {
        MyLog.v("unLock: " + this.mLock);
        if (this.mLock != null && this.mLock.isValid()) {
            try {
                this.mLock.release();
            } catch (IOException e) {
            }
            this.mLock = null;
        }
        if (this.mLockFile != null) {
            IOUtils.closeQuietly(this.mLockFile);
        }
        LOCK_HELD.remove(this.mLockFileName);
    }
}
