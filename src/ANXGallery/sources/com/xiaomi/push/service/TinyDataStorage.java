package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.DataCryptUtils;
import com.xiaomi.channel.commonutils.android.SharedPreferenceManager;
import com.xiaomi.channel.commonutils.android.SystemUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ByteUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.channel.commonutils.string.Base64Coder;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

public class TinyDataStorage {
    public static final Object mTinyDataLock4Thread = new Object();

    public static void cacheTinyData(final Context context, final ClientUploadDataItem item) {
        if (!SystemUtils.isGlobalVersion() || "com.miui.hybrid".equals(item.getPkgName())) {
            MyLog.w("TinyData TinyDataStorage.cacheTinyData cache data to file begin item:" + item.getId() + "  ts:" + System.currentTimeMillis());
            ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
                /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.xiaomi.push.service.TinyDataStorage.1.run():void, dom blocks: [B:16:0x003b, B:38:0x005c]
                    	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:89)
                    	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
                    	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
                    	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
                    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
                    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
                    	at java.util.ArrayList.forEach(Unknown Source)
                    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
                    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
                    	at java.util.ArrayList.forEach(Unknown Source)
                    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
                    	at jadx.core.ProcessClass.process(ProcessClass.java:32)
                    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
                    	at java.lang.Iterable.forEach(Unknown Source)
                    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
                    	at jadx.core.ProcessClass.process(ProcessClass.java:37)
                    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
                    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
                    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
                    */
                /* JADX WARNING: Removed duplicated region for block: B:23:0x0043 A:{SYNTHETIC, Splitter: B:23:0x0043} */
                /* JADX WARNING: Removed duplicated region for block: B:35:0x0056 A:{SYNTHETIC, Splitter: B:35:0x0056} */
                public void run() {
                    /*
                    r8 = this;
                    r6 = com.xiaomi.push.service.TinyDataStorage.mTinyDataLock4Thread;
                    monitor-enter(r6);
                    r3 = 0;
                    r1 = 0;
                    r2 = new java.io.File;	 Catch:{ Exception -> 0x003d }
                    r5 = r4;	 Catch:{ Exception -> 0x003d }
                    r5 = r5.getFilesDir();	 Catch:{ Exception -> 0x003d }
                    r7 = "tiny_data.lock";	 Catch:{ Exception -> 0x003d }
                    r2.<init>(r5, r7);	 Catch:{ Exception -> 0x003d }
                    com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r2);	 Catch:{ Exception -> 0x003d }
                    r4 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x003d }
                    r5 = "rw";	 Catch:{ Exception -> 0x003d }
                    r4.<init>(r2, r5);	 Catch:{ Exception -> 0x003d }
                    r5 = r4.getChannel();	 Catch:{ Exception -> 0x0078, all -> 0x0075 }
                    r1 = r5.lock();	 Catch:{ Exception -> 0x0078, all -> 0x0075 }
                    r5 = r4;	 Catch:{ Exception -> 0x0078, all -> 0x0075 }
                    r7 = r5;	 Catch:{ Exception -> 0x0078, all -> 0x0075 }
                    com.xiaomi.push.service.TinyDataStorage.writeTinyData2File(r5, r7);	 Catch:{ Exception -> 0x0078, all -> 0x0075 }
                    if (r1 == 0) goto L_0x0037;
                L_0x002e:
                    r5 = r1.isValid();	 Catch:{ all -> 0x0072 }
                    if (r5 == 0) goto L_0x0037;
                L_0x0034:
                    r1.release();	 Catch:{ IOException -> 0x006d }
                L_0x0037:
                    com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r4);	 Catch:{ all -> 0x0072 }
                    r3 = r4;
                L_0x003b:
                    monitor-exit(r6);	 Catch:{ all -> 0x0050 }
                    return;
                L_0x003d:
                    r0 = move-exception;
                L_0x003e:
                    com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x0053 }
                    if (r1 == 0) goto L_0x004c;
                L_0x0043:
                    r5 = r1.isValid();	 Catch:{ all -> 0x0050 }
                    if (r5 == 0) goto L_0x004c;
                L_0x0049:
                    r1.release();	 Catch:{ IOException -> 0x0068 }
                L_0x004c:
                    com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);	 Catch:{ all -> 0x0050 }
                    goto L_0x003b;	 Catch:{ all -> 0x0050 }
                L_0x0050:
                    r5 = move-exception;	 Catch:{ all -> 0x0050 }
                L_0x0051:
                    monitor-exit(r6);	 Catch:{ all -> 0x0050 }
                    throw r5;
                L_0x0053:
                    r5 = move-exception;
                L_0x0054:
                    if (r1 == 0) goto L_0x005f;
                L_0x0056:
                    r7 = r1.isValid();	 Catch:{ all -> 0x0050 }
                    if (r7 == 0) goto L_0x005f;
                L_0x005c:
                    r1.release();	 Catch:{ IOException -> 0x0063 }
                L_0x005f:
                    com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);	 Catch:{ all -> 0x0050 }
                    throw r5;	 Catch:{ all -> 0x0050 }
                L_0x0063:
                    r0 = move-exception;	 Catch:{ all -> 0x0050 }
                    com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x0050 }
                    goto L_0x005f;	 Catch:{ all -> 0x0050 }
                L_0x0068:
                    r0 = move-exception;	 Catch:{ all -> 0x0050 }
                    com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x0050 }
                    goto L_0x004c;
                L_0x006d:
                    r0 = move-exception;
                    com.xiaomi.channel.commonutils.logger.MyLog.e(r0);	 Catch:{ all -> 0x0072 }
                    goto L_0x0037;
                L_0x0072:
                    r5 = move-exception;
                    r3 = r4;
                    goto L_0x0051;
                L_0x0075:
                    r5 = move-exception;
                    r3 = r4;
                    goto L_0x0054;
                L_0x0078:
                    r0 = move-exception;
                    r3 = r4;
                    goto L_0x003e;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.TinyDataStorage.1.run():void");
                }
            });
        }
    }

    private static void writeTinyData2File(Context context, ClientUploadDataItem item) {
        IOException e;
        Throwable th;
        Exception e2;
        BufferedOutputStream bos = null;
        try {
            byte[] itemBytes = DataCryptUtils.mipushEncrypt(getTinyDataKeyWithDefault(context), XmPushThriftSerializeUtils.convertThriftObjectToBytes(item));
            if (itemBytes == null || itemBytes.length < 1) {
                MyLog.w("TinyData write to cache file failed case encryption fail item:" + item.getId() + "  ts:" + System.currentTimeMillis());
                IOUtils.closeQuietly(null);
                IOUtils.closeQuietly(bos);
            } else if (itemBytes.length > 10240) {
                MyLog.w("TinyData write to cache file failed case too much data content item:" + item.getId() + "  ts:" + System.currentTimeMillis());
                IOUtils.closeQuietly(null);
                IOUtils.closeQuietly(bos);
            } else {
                BufferedOutputStream bos2 = new BufferedOutputStream(new FileOutputStream(new File(context.getFilesDir(), "tiny_data.data"), true));
                try {
                    bos2.write(ByteUtils.parseInt(itemBytes.length));
                    bos2.write(itemBytes);
                    bos2.flush();
                    MyLog.w("TinyData write to cache file success item:" + item.getId() + "  ts:" + System.currentTimeMillis());
                    IOUtils.closeQuietly(null);
                    IOUtils.closeQuietly(bos2);
                    bos = bos2;
                } catch (IOException e3) {
                    e = e3;
                    bos = bos2;
                    try {
                        MyLog.e("TinyData write to cache file failed cause io exception item:" + item.getId(), e);
                        IOUtils.closeQuietly(null);
                        IOUtils.closeQuietly(bos);
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeQuietly(null);
                        IOUtils.closeQuietly(bos);
                        throw th;
                    }
                } catch (Exception e4) {
                    e2 = e4;
                    bos = bos2;
                    MyLog.e("TinyData write to cache file  failed item:" + item.getId(), e2);
                    IOUtils.closeQuietly(null);
                    IOUtils.closeQuietly(bos);
                } catch (Throwable th3) {
                    th = th3;
                    bos = bos2;
                    IOUtils.closeQuietly(null);
                    IOUtils.closeQuietly(bos);
                    throw th;
                }
            }
        } catch (IOException e5) {
            e = e5;
            MyLog.e("TinyData write to cache file failed cause io exception item:" + item.getId(), e);
            IOUtils.closeQuietly(null);
            IOUtils.closeQuietly(bos);
        } catch (Exception e6) {
            e2 = e6;
            MyLog.e("TinyData write to cache file  failed item:" + item.getId(), e2);
            IOUtils.closeQuietly(null);
            IOUtils.closeQuietly(bos);
        }
    }

    public static byte[] getTinyDataKeyWithDefault(Context context) {
        String key = SharedPreferenceManager.getInstance(context).getStringValue("mipush", "td_key", "");
        if (TextUtils.isEmpty(key)) {
            key = XMStringUtils.generateRandomString(20);
            SharedPreferenceManager.getInstance(context).setStringnValue("mipush", "td_key", key);
        }
        return parseKey(key);
    }

    private static byte[] parseKey(String key) {
        byte[] parsedKey = Arrays.copyOf(Base64Coder.decode(key), 16);
        parsedKey[0] = (byte) 68;
        parsedKey[15] = (byte) 84;
        return parsedKey;
    }
}
