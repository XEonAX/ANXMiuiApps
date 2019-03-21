package com.xiaomi.push.log;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.nexstreaming.nexeditorsdk.nexEngine;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.network.HostManager;
import com.xiaomi.push.service.ServiceConfig;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class LogFilter {
    private static String MIPUSH_LOG_PATH = "/MiPushLog";
    @SuppressLint({"SimpleDateFormat"})
    private final SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private int mCurrentLen;
    private String mEndTime;
    private ArrayList<File> mFiles = new ArrayList();
    private String mFromTime;
    private int mMaxLen = nexEngine.ExportHEVCHighTierLevel6;
    private boolean mStartFound;

    LogFilter() {
    }

    LogFilter setRange(Date from, Date to) {
        if (from.after(to)) {
            this.mFromTime = this.dateFormatter.format(to);
            this.mEndTime = this.dateFormatter.format(from);
        } else {
            this.mFromTime = this.dateFormatter.format(from);
            this.mEndTime = this.dateFormatter.format(to);
        }
        return this;
    }

    void setMaxLen(int len) {
        if (len != 0) {
            this.mMaxLen = len;
        }
    }

    LogFilter addFile(File file) {
        if (file.exists()) {
            this.mFiles.add(file);
        }
        return this;
    }

    private void doFilter(BufferedReader reader, BufferedWriter writer, Pattern pattern) throws IOException {
        char[] buf = new char[4096];
        boolean foundEnd = false;
        int n = reader.read(buf);
        while (n != -1 && !foundEnd) {
            String content = new String(buf, 0, n);
            Matcher matcher = pattern.matcher(content);
            int s = 0;
            int start = 0;
            int end = n;
            while (s < n && matcher.find(s)) {
                s = matcher.start();
                String time = content.substring(s, this.mFromTime.length() + s);
                if (this.mStartFound) {
                    if (time.compareTo(this.mEndTime) > 0) {
                        end = s;
                        foundEnd = true;
                        break;
                    }
                } else if (time.compareTo(this.mFromTime) >= 0) {
                    start = s;
                    this.mStartFound = true;
                }
                int nextline = content.indexOf(10, s);
                if (nextline != -1) {
                    s += nextline;
                } else {
                    s += this.mFromTime.length();
                }
            }
            if (this.mStartFound) {
                int len = end - start;
                this.mCurrentLen += len;
                if (foundEnd) {
                    writer.write(buf, start, len);
                    return;
                }
                writer.write(buf, start, len);
                if (this.mCurrentLen > this.mMaxLen) {
                    return;
                }
            }
            n = reader.read(buf);
        }
    }

    private void filter2File(File file) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        String REGEX_TIME = "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}";
        Pattern pattern = Pattern.compile("\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}");
        BufferedReader br = null;
        BufferedWriter bw = null;
        try {
            BufferedWriter bw2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
            try {
                StringBuilder builder = new StringBuilder();
                builder.append("model :").append(Build.MODEL);
                builder.append("; os :").append(VERSION.INCREMENTAL);
                builder.append("; uid :").append(ServiceConfig.getDeviceUUID());
                builder.append("; lng :").append(Locale.getDefault().toString());
                builder.append("; sdk :").append(38);
                builder.append("; andver :").append(VERSION.SDK_INT);
                builder.append("\n");
                bw2.write(builder.toString());
                this.mCurrentLen = 0;
                Iterator it = this.mFiles.iterator();
                while (true) {
                    BufferedReader br2;
                    try {
                        br2 = br;
                        if (it.hasNext()) {
                            br = new BufferedReader(new InputStreamReader(new FileInputStream((File) it.next())));
                            doFilter(br, bw2, pattern);
                            br.close();
                        } else {
                            bw2.write(HostManager.getInstance().dump());
                            IOUtils.closeQuietly(bw2);
                            IOUtils.closeQuietly(br2);
                            bw = bw2;
                            br = br2;
                            return;
                        }
                    } catch (FileNotFoundException e3) {
                        e = e3;
                        bw = bw2;
                        br = br2;
                        try {
                            MyLog.v("LOG: filter error = " + e.getMessage());
                            IOUtils.closeQuietly(bw);
                            IOUtils.closeQuietly(br);
                        } catch (Throwable th2) {
                            th = th2;
                            IOUtils.closeQuietly(bw);
                            IOUtils.closeQuietly(br);
                            throw th;
                        }
                    } catch (IOException e4) {
                        e2 = e4;
                        bw = bw2;
                        br = br2;
                        MyLog.v("LOG: filter error = " + e2.getMessage());
                        IOUtils.closeQuietly(bw);
                        IOUtils.closeQuietly(br);
                    } catch (Throwable th3) {
                        th = th3;
                        bw = bw2;
                        br = br2;
                        IOUtils.closeQuietly(bw);
                        IOUtils.closeQuietly(br);
                        throw th;
                    }
                }
            } catch (FileNotFoundException e5) {
                e = e5;
                bw = bw2;
            } catch (IOException e6) {
                e2 = e6;
                bw = bw2;
            } catch (Throwable th4) {
                th = th4;
                bw = bw2;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            MyLog.v("LOG: filter error = " + e.getMessage());
            IOUtils.closeQuietly(bw);
            IOUtils.closeQuietly(br);
        } catch (IOException e8) {
            e2 = e8;
            MyLog.v("LOG: filter error = " + e2.getMessage());
            IOUtils.closeQuietly(bw);
            IOUtils.closeQuietly(br);
        }
    }

    File filter(Context ctx, Date from, Date to, File destDir) {
        File dir;
        if ("com.xiaomi.xmsf".equalsIgnoreCase(ctx.getPackageName())) {
            dir = ctx.getFilesDir();
            addFile(new File(dir, "xmsf.log.1"));
            addFile(new File(dir, "xmsf.log"));
        } else {
            dir = new File(ctx.getExternalFilesDir(null) + MIPUSH_LOG_PATH);
            addFile(new File(dir, "log0.txt"));
            addFile(new File(dir, "log1.txt"));
        }
        if (!dir.isDirectory()) {
            return null;
        }
        File zip = new File(destDir, from.getTime() + "-" + to.getTime() + ".zip");
        if (zip.exists()) {
            return null;
        }
        setRange(from, to);
        long start = System.currentTimeMillis();
        File file = new File(destDir, "log.txt");
        filter2File(file);
        MyLog.v("LOG: filter cost = " + (System.currentTimeMillis() - start));
        if (file.exists()) {
            start = System.currentTimeMillis();
            IOUtils.zip(zip, file);
            MyLog.v("LOG: zip cost = " + (System.currentTimeMillis() - start));
            file.delete();
            if (zip.exists()) {
                return zip;
            }
        }
        return null;
    }
}
