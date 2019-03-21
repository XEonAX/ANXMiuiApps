package com.xiaomi.channel.commonutils.misc;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;

public class JobMutualExclusor {
    private static final String COMMON_PATH = (Environment.getExternalStorageDirectory().getPath() + "/mipush/");
    private static final String LAST_COLLECT_FILE_PATH = (COMMON_PATH + "lcfp");
    private static final String LAST_COLLECT_FILE_PATH_LOCK = (COMMON_PATH + "lcfp.lock");

    /* JADX WARNING: Removed duplicated region for block: B:40:0x010a A:{Catch:{ IOException -> 0x011c, all -> 0x014c }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean checkPeriodAndRecordWorking(Context context, String jobId, long period) {
        Throwable th;
        BufferedWriter writer;
        BufferedWriter writer2;
        IOException e;
        if (VERSION.SDK_INT >= 23 && !AppInfoUtils.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            return true;
        }
        String line;
        File file = new File(LAST_COLLECT_FILE_PATH);
        List<String> lines = new ArrayList();
        long timestamp = System.currentTimeMillis();
        String newLine = jobId + ":" + context.getPackageName() + "," + timestamp;
        if (file.exists()) {
            BufferedReader br = null;
            try {
                BufferedReader br2 = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        line = br2.readLine();
                        if (line == null) {
                            IOUtils.closeQuietly(br2);
                            br = br2;
                            break;
                        }
                        String[] pair = line.split(":");
                        if (pair.length == 2) {
                            if (TextUtils.equals(pair[0], String.valueOf(jobId))) {
                                String[] collectPkgTime = pair[1].split(",");
                                if (collectPkgTime.length == 2) {
                                    long lastTime = Long.parseLong(collectPkgTime[1]);
                                    if (!TextUtils.equals(collectPkgTime[0], context.getPackageName()) && ((float) Math.abs(timestamp - lastTime)) < ((float) (1000 * period)) * 0.9f) {
                                        IOUtils.closeQuietly(br2);
                                        return false;
                                    }
                                }
                                continue;
                            } else {
                                lines.add(line);
                            }
                        }
                    } catch (Exception e2) {
                        br = br2;
                    } catch (Throwable th2) {
                        th = th2;
                        br = br2;
                    }
                }
            } catch (Exception e3) {
                try {
                    lines.clear();
                    IOUtils.closeQuietly(br);
                    lines.add(newLine);
                    writer = null;
                    writer2 = new BufferedWriter(new FileWriter(file));
                    for (String line2 : lines) {
                    }
                    IOUtils.closeQuietly(writer2);
                    writer = writer2;
                    return true;
                } catch (Throwable th3) {
                    th = th3;
                    IOUtils.closeQuietly(br);
                    throw th;
                }
            }
        } else if (!IOUtils.createFileQuietly(file)) {
            return true;
        }
        lines.add(newLine);
        writer = null;
        try {
            writer2 = new BufferedWriter(new FileWriter(file));
            try {
                while (r18.hasNext()) {
                    writer2.write(line2);
                    writer2.newLine();
                    writer2.flush();
                }
                IOUtils.closeQuietly(writer2);
                writer = writer2;
            } catch (IOException e4) {
                e = e4;
                writer = writer2;
                try {
                    MyLog.e(e.toString());
                    IOUtils.closeQuietly(writer);
                    return true;
                } catch (Throwable th4) {
                    th = th4;
                    IOUtils.closeQuietly(writer);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                writer = writer2;
                IOUtils.closeQuietly(writer);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            MyLog.e(e.toString());
            IOUtils.closeQuietly(writer);
            return true;
        }
        return true;
    }

    public static boolean checkPeriodAndRecordWithFileLock(Context context, String jobId, long period) {
        IOException e;
        Throwable th;
        RandomAccessFile lockRandomFile = null;
        FileLock lock = null;
        try {
            File lockFile = new File(LAST_COLLECT_FILE_PATH_LOCK);
            IOUtils.createFileQuietly(lockFile);
            RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
            try {
                lock = lockRandomFile2.getChannel().lock();
                boolean checkPeriodAndRecordWorking = checkPeriodAndRecordWorking(context, jobId, period);
                if (lock != null && lock.isValid()) {
                    try {
                        lock.release();
                    } catch (IOException e2) {
                    }
                }
                IOUtils.closeQuietly(lockRandomFile2);
                lockRandomFile = lockRandomFile2;
                return checkPeriodAndRecordWorking;
            } catch (IOException e3) {
                e = e3;
                lockRandomFile = lockRandomFile2;
            } catch (Throwable th2) {
                th = th2;
                lockRandomFile = lockRandomFile2;
                try {
                    lock.release();
                } catch (IOException e4) {
                }
                IOUtils.closeQuietly(lockRandomFile);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            try {
                e.printStackTrace();
                if (lock != null && lock.isValid()) {
                    try {
                        lock.release();
                    } catch (IOException e6) {
                    }
                }
                IOUtils.closeQuietly(lockRandomFile);
                return true;
            } catch (Throwable th3) {
                th = th3;
                if (lock != null && lock.isValid()) {
                    lock.release();
                }
                IOUtils.closeQuietly(lockRandomFile);
                throw th;
            }
        }
    }
}
