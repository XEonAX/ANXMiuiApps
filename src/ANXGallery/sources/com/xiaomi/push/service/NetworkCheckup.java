package com.xiaomi.push.service;

import android.os.Process;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.network.Host;
import com.xiaomi.push.protobuf.ChannelConfig.PushServiceConfig;
import com.xiaomi.stats.StatsHandler;
import com.xiaomi.stats.StatsHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public class NetworkCheckup {
    private static final Pattern IP_PATTERN = Pattern.compile("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})");
    private static long lastCheckTime = 0;
    private static ThreadPoolExecutor sExecutor = new ThreadPoolExecutor(1, 1, 20, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public static void connectivityTest() {
        long now = System.currentTimeMillis();
        if ((sExecutor.getActiveCount() <= 0 || now - lastCheckTime >= 1800000) && StatsHandler.getInstance().isAllowStats()) {
            PushServiceConfig cfg = ServiceConfig.getInstance().getConfig();
            if (cfg != null && cfg.getTestHostsCount() > 0) {
                lastCheckTime = now;
                connectivityTest(cfg.getTestHostsList(), true);
            }
        }
    }

    public static void connectivityTest(final List<String> addrs, final boolean all) {
        sExecutor.execute(new Runnable() {
            public void run() {
                int key = 1;
                boolean success = NetworkCheckup.doConnectTest("www.baidu.com:80");
                for (String host : addrs) {
                    success = success || NetworkCheckup.doConnectTest(host);
                    if (success && !all) {
                        break;
                    }
                }
                if (!success) {
                    key = 2;
                }
                StatsHelper.count(key);
            }
        });
    }

    private static boolean doConnectTest(String host) {
        long start = System.currentTimeMillis();
        try {
            MyLog.w("ConnectivityTest: begin to connect to " + host);
            Socket socket = new Socket();
            socket.connect(Host.from(host, 5222), 5000);
            socket.setTcpNoDelay(true);
            MyLog.w("ConnectivityTest: connect to " + host + " in " + (System.currentTimeMillis() - start));
            socket.close();
            return true;
        } catch (Throwable e) {
            MyLog.e("ConnectivityTest: could not connect to:" + host + " exception: " + e.getClass().getSimpleName() + " description: " + e.getMessage());
            return false;
        }
    }

    private static String readFile(String path) {
        Throwable th;
        BufferedReader br = null;
        try {
            BufferedReader br2 = new BufferedReader(new FileReader(new File(path)));
            try {
                StringBuilder builder = new StringBuilder();
                while (true) {
                    String line = br2.readLine();
                    if (line != null) {
                        builder.append("\n");
                        builder.append(line);
                    } else {
                        String stringBuilder = builder.toString();
                        IOUtils.closeQuietly(br2);
                        br = br2;
                        return stringBuilder;
                    }
                }
            } catch (Exception e) {
                br = br2;
                IOUtils.closeQuietly(br);
                return null;
            } catch (Throwable th2) {
                th = th2;
                br = br2;
                IOUtils.closeQuietly(br);
                throw th;
            }
        } catch (Exception e2) {
            IOUtils.closeQuietly(br);
            return null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(br);
            throw th;
        }
    }

    public static void dumpNativeNetInfo() {
        String tcp = readFile("/proc/self/net/tcp");
        if (!TextUtils.isEmpty(tcp)) {
            MyLog.w("dump tcp for uid = " + Process.myUid());
            MyLog.w(tcp);
        }
        String tcp6 = readFile("/proc/self/net/tcp6");
        if (!TextUtils.isEmpty(tcp6)) {
            MyLog.w("dump tcp6 for uid = " + Process.myUid());
            MyLog.w(tcp6);
        }
    }
}
