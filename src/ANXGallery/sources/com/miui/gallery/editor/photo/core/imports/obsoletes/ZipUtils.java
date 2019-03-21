package com.miui.gallery.editor.photo.core.imports.obsoletes;

import com.miui.gallery.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public abstract class ZipUtils {
    public static void unzip(File zipFile, File dst) throws FileNotFoundException, IOException {
        Log.d("ZipUtils", "unzip zipfile[%s] to [%s]", zipFile, dst);
        if (zipFile == null) {
            throw new NullPointerException("zip file can't be null");
        } else if (dst == null) {
            throw new NullPointerException("unzip folder can't be null");
        } else if (!zipFile.exists()) {
            throw new FileNotFoundException("zip file not exists");
        } else if (dst.exists() || dst.mkdirs()) {
            ZipFile zip = new ZipFile(zipFile);
            Enumeration<? extends ZipEntry> entries = zip.entries();
            while (entries.hasMoreElements()) {
                InputStream in;
                BufferedOutputStream out;
                try {
                    ZipEntry entry = (ZipEntry) entries.nextElement();
                    in = zip.getInputStream(entry);
                    File file = new File(dst, entry.getName());
                    Log.d("ZipUtils", "unzipping %s", entry.getName());
                    if (!entry.isDirectory()) {
                        out = new BufferedOutputStream(new FileOutputStream(file));
                        byte[] buff = new byte[8192];
                        while (true) {
                            int size = in.read(buff);
                            if (size == -1) {
                                break;
                            }
                            out.write(buff, 0, size);
                        }
                        out.flush();
                        try {
                            out.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        try {
                            in.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    } else if (file.mkdirs()) {
                        try {
                            in.close();
                        } catch (IOException e22) {
                            e22.printStackTrace();
                        }
                    } else {
                        throw new IOException(String.format(Locale.US, "mkdir for %s failed", new Object[]{entry.getName()}));
                    }
                } catch (Throwable th) {
                    try {
                        zip.close();
                    } catch (IOException e222) {
                        e222.printStackTrace();
                    }
                }
            }
            try {
                zip.close();
            } catch (IOException e2222) {
                e2222.printStackTrace();
            }
        } else {
            throw new IOException("create folder failed");
        }
    }
}
