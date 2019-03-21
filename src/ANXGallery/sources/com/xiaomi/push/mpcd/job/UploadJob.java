package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.misc.ByteUtils;
import com.xiaomi.channel.commonutils.misc.CollectionUtils;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager.Job;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.push.mpcd.CDActionProvider;
import com.xiaomi.push.mpcd.CDActionProviderHolder;
import com.xiaomi.push.mpcd.CDataHelper;
import com.xiaomi.push.mpcd.Constants;
import com.xiaomi.push.service.OnlineConfig;
import com.xiaomi.xmpush.thrift.ActionType;
import com.xiaomi.xmpush.thrift.ConfigKey;
import com.xiaomi.xmpush.thrift.DataCollectionItem;
import com.xiaomi.xmpush.thrift.NotificationType;
import com.xiaomi.xmpush.thrift.XmPushActionCollectData;
import com.xiaomi.xmpush.thrift.XmPushActionNotification;
import com.xiaomi.xmpush.thrift.XmPushThriftSerializeUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;

public class UploadJob extends Job {
    private Context context;
    private OnlineConfig mOnlineConfig;
    private SharedPreferences mSharedPreference;

    public UploadJob(Context context) {
        this.context = context;
        this.mSharedPreference = context.getSharedPreferences("mipush_extra", 0);
        this.mOnlineConfig = OnlineConfig.getInstance(context);
    }

    public int getJobId() {
        return 1;
    }

    public void run() {
        File file = new File(this.context.getExternalFilesDir(null), "push_cdata.data");
        if (Network.isConnected(this.context)) {
            if (!verifyUploadDataWithoutWIFI() && file.exists()) {
                List<DataCollectionItem> dataCollectionItemList = readFromFile(file);
                if (!CollectionUtils.isEmpty(dataCollectionItemList)) {
                    int size = dataCollectionItemList.size();
                    if (size > 4000) {
                        dataCollectionItemList = dataCollectionItemList.subList(size - 4000, size);
                    }
                    XmPushActionCollectData dataMessage = new XmPushActionCollectData();
                    dataMessage.setDataCollectionItems(dataCollectionItemList);
                    byte[] data = IOUtils.gZip(XmPushThriftSerializeUtils.convertThriftObjectToBytes(dataMessage));
                    XmPushActionNotification notification = new XmPushActionNotification("-1", false);
                    notification.setType(NotificationType.DataCollection.value);
                    notification.setBinaryExtra(data);
                    CDActionProvider cdActionProvider = CDActionProviderHolder.getInstance().getCDActionProvider();
                    if (cdActionProvider != null) {
                        cdActionProvider.uploadNotification(notification, ActionType.Notification, null);
                    }
                    updateUpdateTimeStamp();
                }
                file.delete();
                this.mSharedPreference.edit().remove("ltapn").commit();
            }
        } else if (file.length() > 1863680) {
            file.delete();
        }
    }

    private boolean verifyUploadDataWithoutWIFI() {
        if (Network.isWIFIConnected(this.context)) {
            return false;
        }
        if (Network.is4GConnected(this.context) && !verify4GUploadData()) {
            return true;
        }
        if (Network.is3GConnected(this.context) && !verify3GUploadData()) {
            return true;
        }
        if (Network.is2GConnected(this.context)) {
            return true;
        }
        return false;
    }

    private boolean verify3GUploadData() {
        boolean z = true;
        if (!this.mOnlineConfig.getBooleanValue(ConfigKey.Upload3GSwitch.getValue(), true)) {
            return false;
        }
        int period = Math.max(86400, this.mOnlineConfig.getIntValue(ConfigKey.Upload3GFrequency.getValue(), 432000));
        if (Math.abs((System.currentTimeMillis() / 1000) - this.mSharedPreference.getLong("last_upload_data_timestamp", -1)) <= ((long) period)) {
            z = false;
        }
        return z;
    }

    private boolean verify4GUploadData() {
        boolean z = true;
        if (!this.mOnlineConfig.getBooleanValue(ConfigKey.Upload4GSwitch.getValue(), true)) {
            return false;
        }
        int period = Math.max(86400, this.mOnlineConfig.getIntValue(ConfigKey.Upload4GFrequency.getValue(), 259200));
        if (Math.abs((System.currentTimeMillis() / 1000) - this.mSharedPreference.getLong("last_upload_data_timestamp", -1)) <= ((long) period)) {
            z = false;
        }
        return z;
    }

    private void updateUpdateTimeStamp() {
        Editor editor = this.mSharedPreference.edit();
        editor.putLong("last_upload_data_timestamp", System.currentTimeMillis() / 1000);
        editor.commit();
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x00ae A:{SYNTHETIC, Splitter: B:43:0x00ae} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private List<DataCollectionItem> readFromFile(File file) {
        Throwable th;
        CDActionProvider cdActionProvider = CDActionProviderHolder.getInstance().getCDActionProvider();
        String regSecret = cdActionProvider == null ? "" : cdActionProvider.getRegSecret();
        if (TextUtils.isEmpty(regSecret)) {
            return null;
        }
        List<DataCollectionItem> result = new ArrayList();
        FileInputStream fis = null;
        byte[] lengthBuffer = new byte[4];
        RandomAccessFile lockRandomFile = null;
        FileLock lock = null;
        synchronized (Constants.cDataLock4Thread) {
            try {
                File lockFile = new File(this.context.getExternalFilesDir(null), "push_cdata.lock");
                IOUtils.createFileQuietly(lockFile);
                RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                try {
                    lock = lockRandomFile2.getChannel().lock();
                    FileInputStream fis2 = new FileInputStream(file);
                    while (fis2.read(lengthBuffer) == 4) {
                        try {
                            int length = ByteUtils.toInt(lengthBuffer);
                            byte[] buffer = new byte[length];
                            if (fis2.read(buffer) != length) {
                                break;
                            }
                            byte[] decryptBytes = CDataHelper.decryptData(regSecret, buffer);
                            if (!(decryptBytes == null || decryptBytes.length == 0)) {
                                DataCollectionItem item = new DataCollectionItem();
                                XmPushThriftSerializeUtils.convertByteArrayToThriftObject(item, decryptBytes);
                                result.add(item);
                            }
                        } catch (Exception e) {
                            lockRandomFile = lockRandomFile2;
                            fis = fis2;
                        } catch (Throwable th2) {
                            th = th2;
                            lockRandomFile = lockRandomFile2;
                            fis = fis2;
                        }
                    }
                    if (lock != null) {
                        try {
                            if (lock.isValid()) {
                                try {
                                    lock.release();
                                } catch (IOException e2) {
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            lockRandomFile = lockRandomFile2;
                            fis = fis2;
                        }
                    }
                    IOUtils.closeQuietly(fis2);
                    IOUtils.closeQuietly(lockRandomFile2);
                    lockRandomFile = lockRandomFile2;
                    fis = fis2;
                } catch (Exception e3) {
                    lockRandomFile = lockRandomFile2;
                    if (lock != null) {
                        if (lock.isValid()) {
                            try {
                                lock.release();
                            } catch (IOException e4) {
                            }
                        }
                    }
                    IOUtils.closeQuietly(fis);
                    IOUtils.closeQuietly(lockRandomFile);
                    return result;
                } catch (Throwable th4) {
                    th = th4;
                    lockRandomFile = lockRandomFile2;
                    if (lock != null && lock.isValid()) {
                        try {
                            lock.release();
                        } catch (IOException e5) {
                        }
                    }
                    IOUtils.closeQuietly(fis);
                    IOUtils.closeQuietly(lockRandomFile);
                    throw th;
                }
            } catch (Exception e6) {
                if (lock != null) {
                }
                IOUtils.closeQuietly(fis);
                IOUtils.closeQuietly(lockRandomFile);
                return result;
            } catch (Throwable th5) {
                th = th5;
            }
            return result;
        }
        throw th;
    }
}
