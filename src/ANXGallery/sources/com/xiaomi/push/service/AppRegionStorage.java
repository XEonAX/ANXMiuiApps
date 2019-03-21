package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

public class AppRegionStorage {
    private static volatile AppRegionStorage sInstance;
    private final String REGION_CACHE_FILE_LOCK = "mipush_region.lock";
    private final String REGION_CACHE_FILE_NAME = "mipush_region";
    private Context mContext;
    private volatile String mRegion;
    private final Object mRegionLock = new Object();

    public static AppRegionStorage getInstance(Context context) {
        if (sInstance == null) {
            synchronized (AppRegionStorage.class) {
                if (sInstance == null) {
                    sInstance = new AppRegionStorage(context);
                }
            }
        }
        return sInstance;
    }

    public AppRegionStorage(Context context) {
        this.mContext = context;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.xiaomi.push.service.AppRegionStorage.writeRegion2FileWithLock(android.content.Context, java.lang.String):void, dom blocks: [B:16:0x0034, B:38:0x0055]
        	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:89)
        	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
        	at java.lang.Iterable.forEach(Unknown Source)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
        	at jadx.core.ProcessClass.process(ProcessClass.java:37)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x004f A:{SYNTHETIC, Splitter: B:35:0x004f} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003c A:{SYNTHETIC, Splitter: B:23:0x003c} */
    private void writeRegion2FileWithLock(android.content.Context r9, java.lang.String r10) {
        /*
        r8 = this;
        r6 = r8.mRegionLock;
        monitor-enter(r6);
        r3 = 0;
        r1 = 0;
        r2 = new java.io.File;	 Catch:{ Exception -> 0x0036 }
        r5 = r9.getFilesDir();	 Catch:{ Exception -> 0x0036 }
        r7 = "mipush_region.lock";	 Catch:{ Exception -> 0x0036 }
        r2.<init>(r5, r7);	 Catch:{ Exception -> 0x0036 }
        com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r2);	 Catch:{ Exception -> 0x0036 }
        r4 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x0036 }
        r5 = "rw";	 Catch:{ Exception -> 0x0036 }
        r4.<init>(r2, r5);	 Catch:{ Exception -> 0x0036 }
        r5 = r4.getChannel();	 Catch:{ Exception -> 0x0071, all -> 0x006e }
        r1 = r5.lock();	 Catch:{ Exception -> 0x0071, all -> 0x006e }
        r8.writeRegion2File(r9, r10);	 Catch:{ Exception -> 0x0071, all -> 0x006e }
        if (r1 == 0) goto L_0x0030;
    L_0x0027:
        r5 = r1.isValid();	 Catch:{ all -> 0x006b }
        if (r5 == 0) goto L_0x0030;
    L_0x002d:
        r1.release();	 Catch:{ IOException -> 0x0066 }
    L_0x0030:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r4);	 Catch:{ all -> 0x006b }
        r3 = r4;
    L_0x0034:
        monitor-exit(r6);	 Catch:{ all -> 0x0049 }
        return;
    L_0x0036:
        r0 = move-exception;
    L_0x0037:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x004c }
        if (r1 == 0) goto L_0x0045;
    L_0x003c:
        r5 = r1.isValid();	 Catch:{ all -> 0x0049 }
        if (r5 == 0) goto L_0x0045;
    L_0x0042:
        r1.release();	 Catch:{ IOException -> 0x0061 }
    L_0x0045:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);	 Catch:{ all -> 0x0049 }
        goto L_0x0034;	 Catch:{ all -> 0x0049 }
    L_0x0049:
        r5 = move-exception;	 Catch:{ all -> 0x0049 }
    L_0x004a:
        monitor-exit(r6);	 Catch:{ all -> 0x0049 }
        throw r5;
    L_0x004c:
        r5 = move-exception;
    L_0x004d:
        if (r1 == 0) goto L_0x0058;
    L_0x004f:
        r7 = r1.isValid();	 Catch:{ all -> 0x0049 }
        if (r7 == 0) goto L_0x0058;
    L_0x0055:
        r1.release();	 Catch:{ IOException -> 0x005c }
    L_0x0058:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);	 Catch:{ all -> 0x0049 }
        throw r5;	 Catch:{ all -> 0x0049 }
    L_0x005c:
        r0 = move-exception;	 Catch:{ all -> 0x0049 }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x0049 }
        goto L_0x0058;	 Catch:{ all -> 0x0049 }
    L_0x0061:
        r0 = move-exception;	 Catch:{ all -> 0x0049 }
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x0049 }
        goto L_0x0045;
    L_0x0066:
        r0 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x006b }
        goto L_0x0030;
    L_0x006b:
        r5 = move-exception;
        r3 = r4;
        goto L_0x004a;
    L_0x006e:
        r5 = move-exception;
        r3 = r4;
        goto L_0x004d;
    L_0x0071:
        r0 = move-exception;
        r3 = r4;
        goto L_0x0037;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.AppRegionStorage.writeRegion2FileWithLock(android.content.Context, java.lang.String):void");
    }

    private void writeRegion2File(Context context, String region) {
        FileOutputStream output = null;
        try {
            output = context.openFileOutput("mipush_region", 32768);
            output.write(region.getBytes());
            output.flush();
        } catch (Throwable e) {
            MyLog.e(e);
        } catch (Throwable th) {
            IOUtils.closeQuietly(output);
        }
        IOUtils.closeQuietly(output);
    }

    private String readRegionFromFileWithLock(Context context) {
        Throwable e;
        Throwable th;
        String str = null;
        if (new File(context.getFilesDir(), "mipush_region").exists()) {
            RandomAccessFile lockRandomFile = null;
            FileLock lock = null;
            synchronized (this.mRegionLock) {
                try {
                    File lockFile = new File(context.getFilesDir(), "mipush_region.lock");
                    IOUtils.createFileQuietly(lockFile);
                    RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                    try {
                        lock = lockRandomFile2.getChannel().lock();
                        str = readRegionFromFile(context);
                        if (lock != null) {
                            try {
                                if (lock.isValid()) {
                                    lock.release();
                                }
                            } catch (Throwable e2) {
                                MyLog.e(e2);
                            } catch (Throwable th2) {
                                th = th2;
                                lockRandomFile = lockRandomFile2;
                            }
                        }
                        IOUtils.closeQuietly(lockRandomFile2);
                    } catch (Exception e3) {
                        e2 = e3;
                        lockRandomFile = lockRandomFile2;
                    } catch (Throwable th3) {
                        th = th3;
                        lockRandomFile = lockRandomFile2;
                        if (lock != null && lock.isValid()) {
                            try {
                                lock.release();
                            } catch (Throwable e22) {
                                MyLog.e(e22);
                            }
                        }
                        IOUtils.closeQuietly(lockRandomFile);
                        throw th;
                    }
                } catch (Exception e4) {
                    e22 = e4;
                    try {
                        MyLog.e(e22);
                        if (lock != null) {
                            if (lock.isValid()) {
                                try {
                                    lock.release();
                                } catch (Throwable e222) {
                                    MyLog.e(e222);
                                }
                            }
                        }
                        IOUtils.closeQuietly(lockRandomFile);
                        return str;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            }
        } else {
            MyLog.w("Region no ready file to get data.");
        }
        return str;
        throw th;
    }

    private String readRegionFromFile(Context context) {
        Throwable e;
        Throwable th;
        String result = "";
        FileInputStream input = null;
        BufferedReader reader = null;
        try {
            input = context.openFileInput("mipush_region");
            BufferedReader reader2 = new BufferedReader(new InputStreamReader(input));
            while (true) {
                try {
                    String data = reader2.readLine();
                    if (data == null) {
                        break;
                    }
                    result = result + data;
                } catch (Exception e2) {
                    e = e2;
                    reader = reader2;
                    try {
                        MyLog.e(e);
                        IOUtils.closeQuietly(input);
                        IOUtils.closeQuietly(reader);
                        return result;
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeQuietly(input);
                        IOUtils.closeQuietly(reader);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    reader = reader2;
                    IOUtils.closeQuietly(input);
                    IOUtils.closeQuietly(reader);
                    throw th;
                }
            }
            IOUtils.closeQuietly(input);
            IOUtils.closeQuietly(reader2);
            reader = reader2;
        } catch (Exception e3) {
            e = e3;
            MyLog.e(e);
            IOUtils.closeQuietly(input);
            IOUtils.closeQuietly(reader);
            return result;
        }
        return result;
    }

    public String getRegion() {
        if (TextUtils.isEmpty(this.mRegion)) {
            this.mRegion = readRegionFromFileWithLock(this.mContext);
        }
        return this.mRegion;
    }

    public void setRegion(String region) {
        if (!TextUtils.equals(region, this.mRegion)) {
            this.mRegion = region;
            writeRegion2FileWithLock(this.mContext, this.mRegion);
        }
    }
}
