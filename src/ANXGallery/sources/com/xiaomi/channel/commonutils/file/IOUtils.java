package com.xiaomi.channel.commonutils.file;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class IOUtils {
    public static final String[] SUPPORTED_IMAGE_FORMATS = new String[]{"jpg", "png", "bmp", "gif", "webp"};

    public static void zip(File outFile, File file) {
        IOException e;
        Throwable th;
        ZipOutputStream zos = null;
        try {
            FileOutputStream fos = new FileOutputStream(outFile, false);
            FileOutputStream fileOutputStream;
            try {
                ZipOutputStream zos2 = new ZipOutputStream(fos);
                try {
                    zip(zos2, file, null, null);
                    closeQuietly(zos2);
                    zos = zos2;
                    fileOutputStream = fos;
                } catch (FileNotFoundException e2) {
                    zos = zos2;
                    fileOutputStream = fos;
                    closeQuietly(zos);
                } catch (IOException e3) {
                    e = e3;
                    zos = zos2;
                    fileOutputStream = fos;
                    try {
                        MyLog.w("zip file failure + " + e.getMessage());
                        closeQuietly(zos);
                    } catch (Throwable th2) {
                        th = th2;
                        closeQuietly(zos);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    zos = zos2;
                    fileOutputStream = fos;
                    closeQuietly(zos);
                    throw th;
                }
            } catch (FileNotFoundException e4) {
                fileOutputStream = fos;
                closeQuietly(zos);
            } catch (IOException e5) {
                e = e5;
                fileOutputStream = fos;
                MyLog.w("zip file failure + " + e.getMessage());
                closeQuietly(zos);
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = fos;
                closeQuietly(zos);
                throw th;
            }
        } catch (FileNotFoundException e6) {
            closeQuietly(zos);
        } catch (IOException e7) {
            e = e7;
            MyLog.w("zip file failure + " + e.getMessage());
            closeQuietly(zos);
        }
    }

    public static void zip(ZipOutputStream out, File f, String base, FileFilter filter) throws IOException {
        IOException e;
        Throwable th;
        if (base == null) {
            base = "";
        }
        FileInputStream in = null;
        try {
            if (f.isDirectory()) {
                File[] fl;
                if (filter != null) {
                    fl = f.listFiles(filter);
                } else {
                    fl = f.listFiles();
                }
                out.putNextEntry(new ZipEntry(base + File.separator));
                base = TextUtils.isEmpty(base) ? "" : base + File.separator;
                for (int i = 0; i < fl.length; i++) {
                    zip(out, fl[i], base + fl[i].getName(), null);
                }
                File[] dirs = f.listFiles(new FileFilter() {
                    public boolean accept(File pathname) {
                        return pathname.isDirectory();
                    }
                });
                if (dirs != null) {
                    for (File subFile : dirs) {
                        zip(out, subFile, base + File.separator + subFile.getName(), filter);
                    }
                }
            } else {
                if (TextUtils.isEmpty(base)) {
                    out.putNextEntry(new ZipEntry(String.valueOf(new Date().getTime()) + ".txt"));
                } else {
                    out.putNextEntry(new ZipEntry(base));
                }
                FileInputStream in2 = new FileInputStream(f);
                try {
                    byte[] buffer = new byte[1024];
                    while (true) {
                        int bytesRead = in2.read(buffer);
                        if (bytesRead == -1) {
                            break;
                        }
                        out.write(buffer, 0, bytesRead);
                    }
                    in = in2;
                } catch (IOException e2) {
                    e = e2;
                    in = in2;
                    try {
                        MyLog.e("zipFiction failed with exception:" + e.toString());
                        closeQuietly(in);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        closeQuietly(in);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    in = in2;
                    closeQuietly(in);
                    throw th;
                }
            }
            closeQuietly(in);
        } catch (IOException e3) {
            e = e3;
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
            }
        }
    }

    public static void remove(File file) {
        if (file.isDirectory()) {
            File[] files = file.listFiles();
            for (File f : files) {
                remove(f);
            }
            file.delete();
        } else if (file.exists()) {
            file.delete();
        }
    }

    public static String fileToStr(File file) {
        IOException e;
        Throwable th;
        StringWriter writer = new StringWriter();
        InputStreamReader reader = null;
        try {
            InputStreamReader reader2 = new InputStreamReader(new BufferedInputStream(new FileInputStream(file)));
            try {
                char[] buf = new char[2048];
                while (true) {
                    int n = reader2.read(buf);
                    if (n != -1) {
                        writer.write(buf, 0, n);
                    } else {
                        String stringWriter = writer.toString();
                        closeQuietly(reader2);
                        closeQuietly(writer);
                        reader = reader2;
                        return stringWriter;
                    }
                }
            } catch (IOException e2) {
                e = e2;
                reader = reader2;
                try {
                    MyLog.v("read file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
                    closeQuietly(reader);
                    closeQuietly(writer);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(reader);
                    closeQuietly(writer);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                reader = reader2;
                closeQuietly(reader);
                closeQuietly(writer);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            MyLog.v("read file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
            closeQuietly(reader);
            closeQuietly(writer);
            return null;
        }
    }

    public static void strToFile(File file, String str) {
        IOException e;
        Throwable th;
        if (!file.exists()) {
            MyLog.v("mkdir " + file.getAbsolutePath());
            file.getParentFile().mkdirs();
        }
        BufferedWriter writer = null;
        try {
            BufferedWriter writer2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
            try {
                writer2.write(str);
                closeQuietly(writer2);
                writer = writer2;
            } catch (IOException e2) {
                e = e2;
                writer = writer2;
                try {
                    MyLog.v("write file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
                    closeQuietly(writer);
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(writer);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                writer = writer2;
                closeQuietly(writer);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            MyLog.v("write file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
            closeQuietly(writer);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0034  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copyFile(File src, File dest) throws IOException {
        Throwable th;
        if (!src.getAbsolutePath().equals(dest.getAbsolutePath())) {
            InputStream in = null;
            OutputStream out = null;
            try {
                OutputStream out2;
                InputStream in2 = new FileInputStream(src);
                try {
                    out2 = new FileOutputStream(dest);
                } catch (Throwable th2) {
                    th = th2;
                    in = in2;
                    if (in != null) {
                    }
                    if (out != null) {
                    }
                    throw th;
                }
                try {
                    byte[] buf = new byte[1024];
                    while (true) {
                        int len = in2.read(buf);
                        if (len < 0) {
                            break;
                        }
                        out2.write(buf, 0, len);
                    }
                    if (in2 != null) {
                        in2.close();
                    }
                    if (out2 != null) {
                        out2.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    out = out2;
                    in = in2;
                    if (in != null) {
                    }
                    if (out != null) {
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                if (in != null) {
                    in.close();
                }
                if (out != null) {
                    out.close();
                }
                throw th;
            }
        }
    }

    public static boolean createFileQuietly(File file) {
        try {
            if (file.isDirectory()) {
                return false;
            }
            if (file.exists()) {
                return true;
            }
            File parent = file.getParentFile();
            if (parent.exists() || parent.mkdirs()) {
                return file.createNewFile();
            }
            return false;
        } catch (Throwable e) {
            e.printStackTrace();
            return false;
        }
    }

    public static byte[] gZip(byte[] data) {
        try {
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            GZIPOutputStream gzip = new GZIPOutputStream(bos);
            gzip.write(data);
            gzip.finish();
            gzip.close();
            byte[] b = bos.toByteArray();
            bos.close();
            return b;
        } catch (Exception e) {
            return data;
        }
    }
}
