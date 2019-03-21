package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PerfKVFileHelper {
    public static void put(String fileName, BaseClientReport[] baseClientReports) {
        Throwable th;
        if (baseClientReports != null && baseClientReports.length > 0 && !TextUtils.isEmpty(fileName)) {
            RandomAccessFile lockRandomFile = null;
            FileLock lock = null;
            try {
                File lockFile = new File(fileName + ".lock");
                IOUtils.createFileQuietly(lockFile);
                RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                try {
                    lock = lockRandomFile2.getChannel().lock();
                    HashMap<String, String> fileLines = readFromFile(fileName);
                    int length = baseClientReports.length;
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= length) {
                            break;
                        }
                        BaseClientReport baseClientReport = baseClientReports[i2];
                        if (baseClientReport != null) {
                            String key = generateKey((PerfClientReport) baseClientReport);
                            long perfCounts = ((PerfClientReport) baseClientReport).perfCounts;
                            long perfLatencies = ((PerfClientReport) baseClientReport).perfLatencies;
                            if (!TextUtils.isEmpty(key) && perfCounts > 0 && perfLatencies >= 0) {
                                putInMemeory(fileLines, key, perfCounts, perfLatencies);
                            }
                        }
                        i = i2 + 1;
                    }
                    writeToFile(fileName, fileLines);
                    if (lock != null && lock.isValid()) {
                        try {
                            lock.release();
                        } catch (Throwable e) {
                            MyLog.e(e);
                        }
                    }
                    IOUtils.closeQuietly(lockRandomFile2);
                    lockRandomFile = lockRandomFile2;
                } catch (Throwable th2) {
                    th = th2;
                    lockRandomFile = lockRandomFile2;
                    lock.release();
                    IOUtils.closeQuietly(lockRandomFile);
                    throw th;
                }
            } catch (Throwable th3) {
                MyLog.v("failed to write perf to file ");
                lock.release();
                IOUtils.closeQuietly(lockRandomFile);
            }
        }
    }

    private static void putInMemeory(HashMap<String, String> fileLines, String key, long count, long latency) {
        String oldValue = (String) fileLines.get(key);
        if (TextUtils.isEmpty(oldValue)) {
            fileLines.put(key, count + "#" + latency);
            return;
        }
        String newValue;
        long[] oldValues = parseValueStr(oldValue);
        if (oldValues == null || oldValues[0] <= 0 || oldValues[1] < 0) {
            newValue = count + "#" + latency;
        } else {
            long newLatence = latency + oldValues[1];
            newValue = (count + oldValues[0]) + "#" + newLatence;
        }
        fileLines.put(key, newValue);
    }

    protected static long[] parseValueStr(String value) {
        long[] values = new long[2];
        try {
            String[] strs = value.split("#");
            if (strs.length < 2) {
                return values;
            }
            values[0] = Long.parseLong(strs[0].trim());
            values[1] = Long.parseLong(strs[1].trim());
            return values;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    private static void writeToFile(String fileName, HashMap<String, String> fileLines) {
        Throwable e;
        Throwable th;
        BufferedWriter writer = null;
        if (!TextUtils.isEmpty(fileName) && fileLines != null && fileLines.size() != 0) {
            File file = new File(fileName);
            if (file.exists()) {
                file.delete();
            }
            try {
                BufferedWriter writer2 = new BufferedWriter(new FileWriter(file));
                try {
                    for (String key : fileLines.keySet()) {
                        writer2.write(key + "%%%" + ((String) fileLines.get(key)));
                        writer2.newLine();
                    }
                    IOUtils.closeQuietly(writer2);
                    writer = writer2;
                } catch (Exception e2) {
                    e = e2;
                    writer = writer2;
                    try {
                        MyLog.e(e);
                        IOUtils.closeQuietly(writer);
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeQuietly(writer);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    writer = writer2;
                    IOUtils.closeQuietly(writer);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                MyLog.e(e);
                IOUtils.closeQuietly(writer);
            }
        }
    }

    private static HashMap<String, String> readFromFile(String file) {
        Throwable e;
        Throwable th;
        BufferedReader bufferedReader = null;
        HashMap<String, String> result = new HashMap();
        if (!TextUtils.isEmpty(file) && new File(file).exists()) {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        String[] strs = line.split("%%%");
                        if (!(strs.length < 2 || TextUtils.isEmpty(strs[0]) || TextUtils.isEmpty(strs[1]))) {
                            result.put(strs[0], strs[1]);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = bufferedReader2;
                        try {
                            MyLog.e(e);
                            IOUtils.closeQuietly(bufferedReader);
                            return result;
                        } catch (Throwable th2) {
                            th = th2;
                            IOUtils.closeQuietly(bufferedReader);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = bufferedReader2;
                        IOUtils.closeQuietly(bufferedReader);
                        throw th;
                    }
                }
                IOUtils.closeQuietly(bufferedReader2);
                bufferedReader = bufferedReader2;
            } catch (Exception e3) {
                e = e3;
                MyLog.e(e);
                IOUtils.closeQuietly(bufferedReader);
                return result;
            }
        }
        return result;
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static List<String> extractToDatas(Context context, String fileName) {
        Throwable e;
        Throwable th;
        BufferedReader bufferedReader = null;
        List<String> result = new ArrayList();
        if (!TextUtils.isEmpty(fileName) && new File(fileName).exists()) {
            RandomAccessFile lockRandomFile = null;
            FileLock lock = null;
            File lockFile = null;
            try {
                File lockFile2 = new File(fileName + ".lock");
                try {
                    IOUtils.createFileQuietly(lockFile2);
                    RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile2, "rw");
                    try {
                        lock = lockRandomFile2.getChannel().lock();
                        BufferedReader bufferedReader2 = new BufferedReader(new FileReader(fileName));
                        while (true) {
                            try {
                                String line = bufferedReader2.readLine();
                                if (line == null) {
                                    break;
                                }
                                String[] strs = line.split("%%%");
                                if (!(strs.length < 2 || TextUtils.isEmpty(strs[0]) || TextUtils.isEmpty(strs[1]))) {
                                    PerfClientReport perfClientReport = buildPerfClientReport(spiltKeyForModel(strs[0]), strs[1]);
                                    if (perfClientReport != null) {
                                        result.add(perfClientReport.toJsonString());
                                    }
                                }
                            } catch (Exception e2) {
                                e = e2;
                                lockFile = lockFile2;
                                lockRandomFile = lockRandomFile2;
                                bufferedReader = bufferedReader2;
                                try {
                                    MyLog.e(e);
                                    if (lock != null && lock.isValid()) {
                                        try {
                                            lock.release();
                                        } catch (Throwable e3) {
                                            MyLog.e(e3);
                                        }
                                    }
                                    IOUtils.closeQuietly(lockRandomFile);
                                    IOUtils.closeQuietly(bufferedReader);
                                    if (lockFile != null) {
                                        lockFile.delete();
                                    }
                                    return result;
                                } catch (Throwable th2) {
                                    th = th2;
                                    try {
                                        lock.release();
                                    } catch (Throwable e32) {
                                        MyLog.e(e32);
                                    }
                                    IOUtils.closeQuietly(lockRandomFile);
                                    IOUtils.closeQuietly(bufferedReader);
                                    if (lockFile != null) {
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                lockFile = lockFile2;
                                lockRandomFile = lockRandomFile2;
                                bufferedReader = bufferedReader2;
                                if (lock != null && lock.isValid()) {
                                    lock.release();
                                }
                                IOUtils.closeQuietly(lockRandomFile);
                                IOUtils.closeQuietly(bufferedReader);
                                if (lockFile != null) {
                                    lockFile.delete();
                                }
                                throw th;
                            }
                        }
                        if (lock != null && lock.isValid()) {
                            try {
                                lock.release();
                            } catch (Throwable e322) {
                                MyLog.e(e322);
                            }
                        }
                        IOUtils.closeQuietly(lockRandomFile2);
                        IOUtils.closeQuietly(bufferedReader2);
                        if (lockFile2 != null) {
                            lockFile2.delete();
                            lockFile = lockFile2;
                            lockRandomFile = lockRandomFile2;
                            bufferedReader = bufferedReader2;
                        } else {
                            lockRandomFile = lockRandomFile2;
                            bufferedReader = bufferedReader2;
                        }
                    } catch (Exception e4) {
                        e322 = e4;
                        lockFile = lockFile2;
                        lockRandomFile = lockRandomFile2;
                        MyLog.e(e322);
                        lock.release();
                        IOUtils.closeQuietly(lockRandomFile);
                        IOUtils.closeQuietly(bufferedReader);
                        if (lockFile != null) {
                        }
                        return result;
                    } catch (Throwable th4) {
                        th = th4;
                        lockFile = lockFile2;
                        lockRandomFile = lockRandomFile2;
                        lock.release();
                        IOUtils.closeQuietly(lockRandomFile);
                        IOUtils.closeQuietly(bufferedReader);
                        if (lockFile != null) {
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e322 = e5;
                    lockFile = lockFile2;
                    MyLog.e(e322);
                    lock.release();
                    IOUtils.closeQuietly(lockRandomFile);
                    IOUtils.closeQuietly(bufferedReader);
                    if (lockFile != null) {
                    }
                    return result;
                } catch (Throwable th5) {
                    th = th5;
                    lockFile = lockFile2;
                    lock.release();
                    IOUtils.closeQuietly(lockRandomFile);
                    IOUtils.closeQuietly(bufferedReader);
                    if (lockFile != null) {
                    }
                    throw th;
                }
            } catch (Exception e6) {
                e322 = e6;
                MyLog.e(e322);
                lock.release();
                IOUtils.closeQuietly(lockRandomFile);
                IOUtils.closeQuietly(bufferedReader);
                if (lockFile != null) {
                }
                return result;
            }
        }
        return result;
    }

    private static String[] spiltKey(String key) {
        if (TextUtils.isEmpty(key)) {
            return null;
        }
        return key.split("#");
    }

    private static PerfClientReport spiltKeyForModel(String key) {
        try {
            String[] strs = spiltKey(key);
            if (strs == null || strs.length < 4 || TextUtils.isEmpty(strs[0]) || TextUtils.isEmpty(strs[1]) || TextUtils.isEmpty(strs[2]) || TextUtils.isEmpty(strs[3])) {
                return null;
            }
            PerfClientReport perfClientReport = PerfClientReport.getBlankInstance();
            perfClientReport.production = Integer.parseInt(strs[0]);
            perfClientReport.clientInterfaceId = strs[1];
            perfClientReport.reportType = Integer.parseInt(strs[2]);
            perfClientReport.code = Integer.parseInt(strs[3]);
            return perfClientReport;
        } catch (Exception e) {
            MyLog.v("parse per key error");
            return null;
        }
    }

    private static PerfClientReport buildPerfClientReport(PerfClientReport perfClientReport, String oldValue) {
        if (perfClientReport == null) {
            return null;
        }
        long[] values = parseValueStr(oldValue);
        if (values == null) {
            return null;
        }
        perfClientReport.perfCounts = values[0];
        perfClientReport.perfLatencies = values[1];
        return perfClientReport;
    }

    public static String generateKey(PerfClientReport clientReport) {
        StringBuilder sb = new StringBuilder();
        sb.append(clientReport.production);
        sb.append("#");
        sb.append(clientReport.clientInterfaceId);
        sb.append("#");
        sb.append(clientReport.reportType);
        sb.append("#");
        sb.append(clientReport.code);
        return sb.toString();
    }
}
