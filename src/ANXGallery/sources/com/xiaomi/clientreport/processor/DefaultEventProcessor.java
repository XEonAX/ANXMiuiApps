package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.android.DataCryptUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ByteUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.manager.ClientReportLogicManager;
import com.xiaomi.clientreport.util.ClientReportUtil;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DefaultEventProcessor implements IEventProcessor {
    protected Context mContext;
    private HashMap<String, ArrayList<BaseClientReport>> mEventMap;

    public DefaultEventProcessor(Context context) {
        setContext(context);
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public static String getFirstEventFileName(BaseClientReport clientReport) {
        return String.valueOf(clientReport.production);
    }

    public void send(List<String> data) {
        ClientReportUtil.sendFile(this.mContext, data);
    }

    /* JADX WARNING: Removed duplicated region for block: B:76:0x0039 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0039 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00c6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void readAndSend() {
        FileLock lock;
        Throwable e;
        File lockFile;
        RandomAccessFile lockRandomFile;
        Throwable th;
        ClientReportUtil.moveFiles(this.mContext, "event", "eventUploading");
        File[] files = ClientReportUtil.getReadFileName(this.mContext, "eventUploading");
        if (files != null && files.length > 0) {
            lock = null;
            int length = files.length;
            int i = 0;
            File lockFile2 = null;
            RandomAccessFile lockRandomFile2 = null;
            while (i < length) {
                File file = files[i];
                if (file == null) {
                    if (lock != null && lock.isValid()) {
                        try {
                            lock.release();
                        } catch (Throwable e2) {
                            MyLog.e(e2);
                        }
                    }
                    IOUtils.closeQuietly(lockRandomFile2);
                    if (lockFile2 != null) {
                        lockFile2.delete();
                        lockFile = lockFile2;
                        lockRandomFile = lockRandomFile2;
                    } else {
                        lockFile = lockFile2;
                        lockRandomFile = lockRandomFile2;
                    }
                } else {
                    try {
                        String path = file.getAbsolutePath();
                        lockFile = new File(path + ".lock");
                        try {
                            IOUtils.createFileQuietly(lockFile);
                            lockRandomFile = new RandomAccessFile(lockFile, "rw");
                        } catch (Exception e3) {
                            e2 = e3;
                            lockRandomFile = lockRandomFile2;
                            try {
                                MyLog.e(e2);
                                if (lock != null && lock.isValid()) {
                                    try {
                                        lock.release();
                                    } catch (Throwable e22) {
                                        MyLog.e(e22);
                                    }
                                }
                                IOUtils.closeQuietly(lockRandomFile);
                                if (lockFile != null) {
                                    lockFile.delete();
                                }
                                i++;
                                lockFile2 = lockFile;
                                lockRandomFile2 = lockRandomFile;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            lockRandomFile = lockRandomFile2;
                        }
                        try {
                            lock = lockRandomFile.getChannel().lock();
                            send(readFile(path));
                            file.delete();
                            if (lock != null && lock.isValid()) {
                                try {
                                    lock.release();
                                } catch (Throwable e222) {
                                    MyLog.e(e222);
                                }
                            }
                            IOUtils.closeQuietly(lockRandomFile);
                            if (lockFile != null) {
                                lockFile.delete();
                            }
                        } catch (Exception e4) {
                            e222 = e4;
                            MyLog.e(e222);
                            lock.release();
                            IOUtils.closeQuietly(lockRandomFile);
                            if (lockFile != null) {
                            }
                            i++;
                            lockFile2 = lockFile;
                            lockRandomFile2 = lockRandomFile;
                        }
                    } catch (Exception e5) {
                        e222 = e5;
                        lockFile = lockFile2;
                        lockRandomFile = lockRandomFile2;
                        MyLog.e(e222);
                        lock.release();
                        IOUtils.closeQuietly(lockRandomFile);
                        if (lockFile != null) {
                        }
                        i++;
                        lockFile2 = lockFile;
                        lockRandomFile2 = lockRandomFile;
                    } catch (Throwable th4) {
                        th = th4;
                        lockFile = lockFile2;
                        lockRandomFile = lockRandomFile2;
                    }
                }
                i++;
                lockFile2 = lockFile;
                lockRandomFile2 = lockRandomFile;
            }
            return;
        }
        return;
        IOUtils.closeQuietly(lockRandomFile);
        if (lockFile != null) {
            lockFile.delete();
        }
        throw th;
        if (lock != null && lock.isValid()) {
            try {
                lock.release();
            } catch (Throwable e2222) {
                MyLog.e(e2222);
            }
        }
        IOUtils.closeQuietly(lockRandomFile);
        if (lockFile != null) {
        }
        throw th;
    }

    /* JADX WARNING: Missing block: B:12:?, code:
            com.xiaomi.channel.commonutils.logger.MyLog.e("eventData read from cache file failed because magicNumber error");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private List<String> readFile(String filePath) {
        Throwable e;
        Throwable th;
        List<String> result = new ArrayList();
        byte[] magicBuffer = new byte[4];
        byte[] lengthBuffer = new byte[4];
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = new FileInputStream(new File(filePath));
            while (true) {
                try {
                    int magicSize = fis2.read(magicBuffer);
                    if (magicSize == -1) {
                        break;
                    } else if (magicSize != 4) {
                        break;
                    } else if (ByteUtils.toInt(magicBuffer) != -573785174) {
                        MyLog.e("eventData read from cache file failed because magicNumber error");
                        break;
                    } else {
                        int size = fis2.read(lengthBuffer);
                        if (size == -1) {
                            break;
                        } else if (size != 4) {
                            MyLog.e("eventData read from cache file failed cause lengthBuffer error");
                            break;
                        } else {
                            int length = ByteUtils.toInt(lengthBuffer);
                            if (length < 1 || length > 4096) {
                                MyLog.e("eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K");
                            } else {
                                byte[] buffer = new byte[length];
                                if (fis2.read(buffer) != length) {
                                    MyLog.e("eventData read from cache file failed cause buffer size not equal length");
                                    break;
                                }
                                result.add(bytesToString(buffer));
                            }
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    fis = fis2;
                } catch (Throwable th2) {
                    th = th2;
                    fis = fis2;
                }
            }
            MyLog.e("eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K");
            IOUtils.closeQuietly(fis2);
            fis = fis2;
        } catch (Exception e3) {
            e = e3;
            try {
                MyLog.e(e);
                IOUtils.closeQuietly(fis);
                return result;
            } catch (Throwable th3) {
                th = th3;
                IOUtils.closeQuietly(fis);
                throw th;
            }
        }
        return result;
    }

    public String bytesToString(byte[] buffer) {
        String str = null;
        if (buffer == null || buffer.length < 1) {
            return str;
        }
        if (!ClientReportLogicManager.getInstance(this.mContext).getConfig().isEventEncrypted()) {
            return XMStringUtils.bytesToString(buffer);
        }
        String key = ClientReportUtil.getEventKeyWithDefault(this.mContext);
        if (TextUtils.isEmpty(key)) {
            return str;
        }
        byte[] keyBytes = ClientReportUtil.parseKey(key);
        if (keyBytes == null || keyBytes.length <= 0) {
            return str;
        }
        try {
            return XMStringUtils.bytesToString(Base64.decode(DataCryptUtils.mipushDecrypt(keyBytes, buffer), 2));
        } catch (Throwable e) {
            MyLog.e(e);
            return str;
        } catch (Throwable e2) {
            MyLog.e(e2);
            return str;
        } catch (Throwable e22) {
            MyLog.e(e22);
            return str;
        } catch (Throwable e222) {
            MyLog.e(e222);
            return str;
        } catch (Throwable e2222) {
            MyLog.e(e2222);
            return str;
        } catch (Throwable e22222) {
            MyLog.e(e22222);
            return str;
        }
    }

    public byte[] stringToBytes(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!ClientReportLogicManager.getInstance(this.mContext).getConfig().isEventEncrypted()) {
            return XMStringUtils.getBytes(str);
        }
        String key = ClientReportUtil.getEventKeyWithDefault(this.mContext);
        byte[] src = XMStringUtils.getBytes(str);
        if (TextUtils.isEmpty(key) || src == null || src.length <= 1) {
            return null;
        }
        byte[] keyBytes = ClientReportUtil.parseKey(key);
        if (keyBytes == null) {
            return null;
        }
        try {
            if (keyBytes.length > 1) {
                return DataCryptUtils.mipushEncrypt(keyBytes, Base64.encode(src, 2));
            }
            return null;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    public void setEventMap(HashMap<String, ArrayList<BaseClientReport>> map) {
        this.mEventMap = map;
    }

    private void write2File(BaseClientReport[] items, String path) {
        Exception e;
        Throwable th;
        if (items != null && items.length > 0 && !TextUtils.isEmpty(path)) {
            BufferedOutputStream bos = null;
            try {
                BufferedOutputStream bos2 = new BufferedOutputStream(new FileOutputStream(new File(path), true));
                try {
                    for (BaseClientReport item : items) {
                        if (item != null) {
                            byte[] itemBytes = stringToBytes(item.toJsonString());
                            if (itemBytes == null || itemBytes.length < 1 || itemBytes.length > 4096) {
                                MyLog.e("event data throw a invalid item ");
                            } else {
                                bos2.write(ByteUtils.parseInt(-573785174));
                                bos2.write(ByteUtils.parseInt(itemBytes.length));
                                bos2.write(itemBytes);
                                bos2.flush();
                            }
                        }
                    }
                    IOUtils.closeQuietly(bos2);
                    bos = bos2;
                } catch (Exception e2) {
                    e = e2;
                    bos = bos2;
                } catch (Throwable th2) {
                    th = th2;
                    bos = bos2;
                }
            } catch (Exception e3) {
                e = e3;
                try {
                    MyLog.e("event data write to cache file failed cause exception", e);
                    IOUtils.closeQuietly(bos);
                } catch (Throwable th3) {
                    th = th3;
                    IOUtils.closeQuietly(bos);
                    throw th;
                }
            }
        }
    }

    public void write(BaseClientReport[] clientReports) {
        Throwable e;
        Throwable th;
        int i = 0;
        if (clientReports != null && clientReports.length > 0 && clientReports[0] != null) {
            String path = getWriteFileName(clientReports[0]);
            if (!TextUtils.isEmpty(path)) {
                RandomAccessFile lockRandomFile = null;
                FileLock lock = null;
                try {
                    File lockFile = new File(path + ".lock");
                    IOUtils.createFileQuietly(lockFile);
                    RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                    try {
                        lock = lockRandomFile2.getChannel().lock();
                        int length = clientReports.length;
                        while (i < length) {
                            if (clientReports[i] != null) {
                                write2File(clientReports, path);
                            }
                            i++;
                        }
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
                            if (lock != null && lock.isValid()) {
                                try {
                                    lock.release();
                                } catch (Throwable e22) {
                                    MyLog.e(e22);
                                }
                            }
                            IOUtils.closeQuietly(lockRandomFile);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                lock.release();
                            } catch (Throwable e222) {
                                MyLog.e(e222);
                            }
                            IOUtils.closeQuietly(lockRandomFile);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        lockRandomFile = lockRandomFile2;
                        if (lock != null && lock.isValid()) {
                            lock.release();
                        }
                        IOUtils.closeQuietly(lockRandomFile);
                        throw th;
                    }
                } catch (Exception e4) {
                    e222 = e4;
                    MyLog.e(e222);
                    lock.release();
                    IOUtils.closeQuietly(lockRandomFile);
                }
            }
        }
    }

    public void process() {
        if (this.mEventMap != null) {
            if (this.mEventMap.size() > 0) {
                for (String key : this.mEventMap.keySet()) {
                    ArrayList<BaseClientReport> list = (ArrayList) this.mEventMap.get(key);
                    if (list != null && list.size() > 0) {
                        BaseClientReport[] dataArray = new BaseClientReport[list.size()];
                        MyLog.v("begin write eventJob " + list.size());
                        list.toArray(dataArray);
                        write(dataArray);
                    }
                }
            }
            this.mEventMap.clear();
        }
    }

    public void preProcess(BaseClientReport clientReport) {
        if ((clientReport instanceof EventClientReport) && this.mEventMap != null) {
            EventClientReport eventClientReport = (EventClientReport) clientReport;
            String fileKey = getFirstEventFileName(eventClientReport);
            ArrayList<BaseClientReport> list = (ArrayList) this.mEventMap.get(fileKey);
            if (list == null) {
                list = new ArrayList();
            }
            list.add(eventClientReport);
            this.mEventMap.put(fileKey, list);
            MyLog.v("pre event out " + this.mEventMap.size() + " list " + list.size());
        }
    }

    private String getWriteFileName(BaseClientReport clientReport) {
        File folder = this.mContext.getExternalFilesDir("event");
        String production = getFirstEventFileName(clientReport);
        if (folder == null) {
            return null;
        }
        String beginFilePath = folder.getAbsolutePath() + File.separator + production;
        for (int i = 0; i < 100; i++) {
            String path = beginFilePath + i;
            if (ClientReportUtil.isFileCanBeUse(this.mContext, path)) {
                return path;
            }
        }
        return null;
    }
}
