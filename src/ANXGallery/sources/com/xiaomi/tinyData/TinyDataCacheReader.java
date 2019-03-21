package com.xiaomi.tinyData;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.xiaomi.channel.commonutils.android.DataCryptUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ByteUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.service.TinyDataStorage;
import com.xiaomi.xmpush.thrift.ClientUploadDataItem;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;

public class TinyDataCacheReader {
    private static boolean mTinyDataJobIsRunning = false;

    static class TinyDataReadJob implements Runnable {
        private Context mContext;
        private TinyDataUploader mUploader;

        public TinyDataReadJob(Context context, TinyDataUploader uploader) {
            this.mUploader = uploader;
            this.mContext = context;
        }

        public void run() {
            TinyDataCacheReader.extractTinyData(this.mContext, this.mUploader);
        }
    }

    public static void addTinyDataCacheReadJob(Context context, TinyDataUploader uploader) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new TinyDataReadJob(context, uploader));
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00e1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void extractTinyData(Context context, TinyDataUploader uploader) {
        Throwable e;
        Throwable th;
        if (mTinyDataJobIsRunning) {
            MyLog.w("TinyData extractTinyData is running");
            return;
        }
        mTinyDataJobIsRunning = true;
        File file = new File(context.getFilesDir(), "tiny_data.data");
        if (file.exists()) {
            verifyFileDir(context);
            RandomAccessFile lockRandomFile = null;
            FileLock lock = null;
            byte[] key = TinyDataStorage.getTinyDataKeyWithDefault(context);
            try {
                File lockFile = new File(context.getFilesDir(), "tiny_data.lock");
                IOUtils.createFileQuietly(lockFile);
                RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                try {
                    lock = lockRandomFile2.getChannel().lock();
                    file.renameTo(new File(context.getFilesDir() + "/tdReadTemp" + "/" + "tiny_data.data"));
                    if (lock != null && lock.isValid()) {
                        try {
                            lock.release();
                        } catch (Throwable e2) {
                            MyLog.e(e2);
                        }
                    }
                    IOUtils.closeQuietly(lockRandomFile2);
                    lockRandomFile = lockRandomFile2;
                } catch (Exception e3) {
                    e2 = e3;
                    lockRandomFile = lockRandomFile2;
                    try {
                        MyLog.e(e2);
                        try {
                            lock.release();
                        } catch (Throwable e22) {
                            MyLog.e(e22);
                        }
                        IOUtils.closeQuietly(lockRandomFile);
                        file = new File(context.getFilesDir() + "/tdReadTemp" + "/" + "tiny_data.data");
                        if (file.exists()) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (lock != null && lock.isValid()) {
                            try {
                                lock.release();
                            } catch (Throwable e222) {
                                MyLog.e(e222);
                            }
                        }
                        IOUtils.closeQuietly(lockRandomFile);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    lockRandomFile = lockRandomFile2;
                    lock.release();
                    IOUtils.closeQuietly(lockRandomFile);
                    throw th;
                }
            } catch (Exception e4) {
                e222 = e4;
                MyLog.e(e222);
                if (lock != null && lock.isValid()) {
                    lock.release();
                }
                IOUtils.closeQuietly(lockRandomFile);
                file = new File(context.getFilesDir() + "/tdReadTemp" + "/" + "tiny_data.data");
                if (file.exists()) {
                }
            }
            file = new File(context.getFilesDir() + "/tdReadTemp" + "/" + "tiny_data.data");
            if (file.exists()) {
                MyLog.w("TinyData no ready file to get data.");
                return;
            }
            readTinyDataFromFile(context, uploader, file, key);
            TinyDataCacheProcessor.setIsTinyDataExtracting(false);
            updateTinyDataUploadTimeStamp(context);
            mTinyDataJobIsRunning = false;
            return;
        }
        MyLog.w("TinyData no ready file to get data.");
    }

    /* JADX WARNING: Missing block: B:18:?, code:
            com.xiaomi.channel.commonutils.logger.MyLog.e("TinyData read from cache file failed cause lengthBuffer error. size:" + r14);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void readTinyDataFromFile(Context context, TinyDataUploader uploader, File file, byte[] key) {
        Throwable e;
        Throwable th;
        ArrayList<ClientUploadDataItem> result = new ArrayList();
        byte[] lengthBuffer = new byte[4];
        BufferedInputStream bis = null;
        int itemCount = 0;
        int itemSize = 0;
        try {
            BufferedInputStream bis2 = new BufferedInputStream(new FileInputStream(file));
            ArrayList<ClientUploadDataItem> result2 = result;
            while (true) {
                try {
                    int size = bis2.read(lengthBuffer);
                    if (size == -1) {
                        break;
                    } else if (size != 4) {
                        break;
                    } else {
                        int length = ByteUtils.toInt(lengthBuffer);
                        if (length < 1 || length > 10240) {
                            MyLog.e("TinyData read from cache file failed cause lengthBuffer < 1 || too big. length:" + length);
                        } else {
                            byte[] buffer = new byte[length];
                            size = bis2.read(buffer);
                            if (size != length) {
                                MyLog.e("TinyData read from cache file failed cause buffer size not equal length. size:" + size + "__length:" + length);
                                break;
                            }
                            byte[] decryptBytes = DataCryptUtils.mipushDecrypt(key, buffer);
                            if (decryptBytes == null || decryptBytes.length == 0) {
                                MyLog.e("TinyData read from cache file failed cause decrypt fail");
                            } else {
                                ClientUploadDataItem item = new ClientUploadDataItem();
                                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(item, decryptBytes);
                                result2.add(item);
                                itemCount++;
                                itemSize += decryptBytes.length;
                                if (itemCount >= 8 || itemSize >= 10240) {
                                    MyLog.w("TinyData readTinyDataFromFile upload tiny data by part. items:" + result2.size() + " ts:" + System.currentTimeMillis());
                                    TinyDataCacheUploader.uploadTinyData(context, uploader, result2);
                                    result = new ArrayList();
                                    itemCount = 0;
                                    itemSize = 0;
                                } else {
                                    result = result2;
                                }
                                result2 = result;
                            }
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    bis = bis2;
                    result = result2;
                } catch (Throwable th2) {
                    th = th2;
                    bis = bis2;
                    result = result2;
                    IOUtils.closeQuietly(bis);
                    throw th;
                }
            }
            TinyDataCacheUploader.uploadTinyData(context, uploader, result2);
            MyLog.w("TinyData readTinyDataFromFile upload tiny data at last. items:" + result2.size() + " ts:" + System.currentTimeMillis());
            if (!(file == null || !file.exists() || file.delete())) {
                MyLog.w("TinyData delete reading temp file failed");
            }
            IOUtils.closeQuietly(bis2);
            bis = bis2;
            result = result2;
        } catch (Exception e3) {
            e = e3;
            try {
                MyLog.e(e);
                IOUtils.closeQuietly(bis);
            } catch (Throwable th3) {
                th = th3;
                IOUtils.closeQuietly(bis);
                throw th;
            }
        }
    }

    private static void verifyFileDir(Context context) {
        File fileDir = new File(context.getFilesDir() + "/tdReadTemp");
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }
    }

    private static void updateTinyDataUploadTimeStamp(Context context) {
        Editor editor = context.getSharedPreferences("mipush_extra", 4).edit();
        editor.putLong("last_tiny_data_upload_timestamp", System.currentTimeMillis() / 1000);
        editor.commit();
    }
}
