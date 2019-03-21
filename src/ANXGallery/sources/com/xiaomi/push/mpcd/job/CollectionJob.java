package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.misc.ByteUtils;
import com.xiaomi.channel.commonutils.misc.JobMutualExclusor;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.push.mpcd.CDActionProvider;
import com.xiaomi.push.mpcd.CDActionProviderHolder;
import com.xiaomi.push.mpcd.CDataHelper;
import com.xiaomi.push.mpcd.Constants;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import com.xiaomi.xmpush.thrift.DataCollectionItem;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;

public abstract class CollectionJob extends Job {
    protected Context context;
    protected int period;

    public abstract String collectInfo();

    public abstract ClientCollectionType getCollectionType();

    public CollectionJob(Context context, int period) {
        this.period = period;
        this.context = context;
    }

    public void run() {
        if (checkPeriodAndRecord()) {
            CDActionProvider cdActionProvider = CDActionProviderHolder.getInstance().getCDActionProvider();
            String regSecret = cdActionProvider == null ? "" : cdActionProvider.getRegSecret();
            if (!TextUtils.isEmpty(regSecret) && checkPermission()) {
                String info = collectInfo();
                if (!TextUtils.isEmpty(info)) {
                    DataCollectionItem collectionItem = new DataCollectionItem();
                    collectionItem.setContent(info);
                    collectionItem.setCollectedAt(System.currentTimeMillis());
                    collectionItem.setCollectionType(getCollectionType());
                    writeItemToFile(this.context, collectionItem, regSecret);
                }
            }
        }
    }

    protected boolean checkPeriodAndRecord() {
        return JobMutualExclusor.checkPeriodAndRecordWithFileLock(this.context, String.valueOf(getJobId()), (long) this.period);
    }

    public static void writeItemToFile(Context context, DataCollectionItem collectionItem) {
        CDActionProvider cdActionProvider = CDActionProviderHolder.getInstance().getCDActionProvider();
        String regSecret = cdActionProvider == null ? "" : cdActionProvider.getRegSecret();
        if (!TextUtils.isEmpty(regSecret) && !TextUtils.isEmpty(collectionItem.getContent())) {
            writeItemToFile(context, collectionItem, regSecret);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0075 A:{SYNTHETIC, Splitter: B:31:0x0075} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0075 A:{SYNTHETIC, Splitter: B:31:0x0075} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void writeItemToFile(Context context, DataCollectionItem collectionItem, String regSecret) {
        IOException e;
        Throwable th;
        byte[] itemBytes = CDataHelper.encryptData(regSecret, XmPushThriftSerializeUtils.convertThriftObjectToBytes(collectionItem));
        if (itemBytes != null && itemBytes.length != 0) {
            synchronized (Constants.cDataLock4Thread) {
                RandomAccessFile lockRandomFile = null;
                FileLock lock = null;
                BufferedOutputStream bos = null;
                try {
                    BufferedOutputStream bos2;
                    File lockFile = new File(context.getExternalFilesDir(null), "push_cdata.lock");
                    IOUtils.createFileQuietly(lockFile);
                    RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                    try {
                        lock = lockRandomFile2.getChannel().lock();
                        bos2 = new BufferedOutputStream(new FileOutputStream(new File(context.getExternalFilesDir(null), "push_cdata.data"), true));
                    } catch (IOException e2) {
                        e = e2;
                        lockRandomFile = lockRandomFile2;
                        try {
                            e.printStackTrace();
                            if (lock != null) {
                                if (lock.isValid()) {
                                    try {
                                        lock.release();
                                    } catch (IOException e3) {
                                    }
                                }
                            }
                            IOUtils.closeQuietly(bos);
                            IOUtils.closeQuietly(lockRandomFile);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        lockRandomFile = lockRandomFile2;
                        if (lock != null && lock.isValid()) {
                            lock.release();
                        }
                        IOUtils.closeQuietly(bos);
                        IOUtils.closeQuietly(lockRandomFile);
                        throw th;
                    }
                    try {
                        bos2.write(ByteUtils.parseInt(itemBytes.length));
                        bos2.write(itemBytes);
                        bos2.flush();
                        if (lock != null) {
                            try {
                                if (lock.isValid()) {
                                    try {
                                        lock.release();
                                    } catch (IOException e4) {
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                bos = bos2;
                                lockRandomFile = lockRandomFile2;
                            }
                        }
                        IOUtils.closeQuietly(bos2);
                        IOUtils.closeQuietly(lockRandomFile2);
                        bos = bos2;
                        lockRandomFile = lockRandomFile2;
                    } catch (IOException e5) {
                        e = e5;
                        bos = bos2;
                        lockRandomFile = lockRandomFile2;
                        e.printStackTrace();
                        if (lock != null) {
                        }
                        IOUtils.closeQuietly(bos);
                        IOUtils.closeQuietly(lockRandomFile);
                        return;
                    } catch (Throwable th5) {
                        th = th5;
                        bos = bos2;
                        lockRandomFile = lockRandomFile2;
                        lock.release();
                        IOUtils.closeQuietly(bos);
                        IOUtils.closeQuietly(lockRandomFile);
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                    e.printStackTrace();
                    if (lock != null) {
                    }
                    IOUtils.closeQuietly(bos);
                    IOUtils.closeQuietly(lockRandomFile);
                    return;
                }
                return;
            }
        }
        return;
        throw th;
    }

    protected boolean checkPermission() {
        return true;
    }
}
