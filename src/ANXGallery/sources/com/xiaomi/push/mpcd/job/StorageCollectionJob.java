package com.xiaomi.push.mpcd.job;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.ClientCollectionType;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class StorageCollectionJob extends CollectionJob {
    public StorageCollectionJob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        return "ram:" + getRamSize() + "," + "rom:" + getRomSize();
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.Storage;
    }

    public int getJobId() {
        return 23;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0081 A:{SYNTHETIC, Splitter: B:27:0x0081} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x008a A:{SYNTHETIC, Splitter: B:32:0x008a} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String getRamSize() {
        Throwable th;
        String ramSize = "0";
        String path = "/proc/meminfo";
        File file = new File(path);
        if (file != null && file.exists()) {
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(path), 8192);
                try {
                    String memTotal = bufferedReader2.readLine();
                    if (!TextUtils.isEmpty(memTotal)) {
                        String[] arr = memTotal.split("\\s+");
                        if (arr != null && arr.length >= 2) {
                            double total_memory = (Double.valueOf(arr[1]).doubleValue() / 1024.0d) / 1024.0d;
                            if (total_memory > 0.5d) {
                                total_memory = Math.ceil(total_memory);
                            }
                            ramSize = total_memory + "";
                        }
                    }
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (Exception e2) {
                    bufferedReader = bufferedReader2;
                    try {
                        ramSize = "0";
                        if (bufferedReader != null) {
                        }
                        return ramSize + "GB";
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                    }
                    throw th;
                }
            } catch (Exception e4) {
                ramSize = "0";
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e5) {
                    }
                }
                return ramSize + "GB";
            }
        }
        return ramSize + "GB";
    }

    private String getRomSize() {
        return getNum(((((double) getSize(Environment.getDataDirectory())) / 1024.0d) / 1024.0d) / 1024.0d) + "GB";
    }

    private long getSize(File path) {
        StatFs stat = new StatFs(path.getPath());
        return ((long) stat.getBlockSize()) * ((long) stat.getBlockCount());
    }

    private double getNum(double size) {
        int value = 1;
        while (((double) value) < size) {
            value <<= 1;
        }
        return (double) value;
    }
}
