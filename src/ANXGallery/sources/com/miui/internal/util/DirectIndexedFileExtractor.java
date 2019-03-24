package com.miui.internal.util;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import miui.os.C0002FileUtils;
import miui.util.DirectIndexedFile;
import miui.util.DirectIndexedFile.Reader;

public class DirectIndexedFileExtractor {
    public static String IDF_FILES_PATH = null;
    private static final String TAG = "DirectIndexedFileExtractor";
    private static final int iJ = 436;
    private static final int jq = 505;
    private static final String jr = "idf";
    private static final String js = ".idf";
    private static final String jt = "-tmp";

    public static void tryExtractDirectIndexedFiles(final Context context) {
        k(context);
        try {
            final String[] list = context.getAssets().list("");
            new AsyncTask<Void, Void, Void>() {
                /* renamed from: a */
                protected Void doInBackground(Void... voidArr) {
                    for (String str : list) {
                        if (str.endsWith(DirectIndexedFileExtractor.js)) {
                            DirectIndexedFileExtractor.b(context, str);
                        }
                    }
                    return null;
                }
            }.execute(new Void[0]);
        } catch (IOException e) {
            Log.w(TAG, "Error reading asset files, extraction abort");
            e.printStackTrace();
        }
    }

    private static void k(Context context) {
        if (IDF_FILES_PATH == null) {
            try {
                context = context.createPackageContext(PackageConstants.PACKAGE_NAME, 2);
                if (VERSION.SDK_INT >= 24) {
                    try {
                        context = (Context) context.getClass().getMethod("createDeviceProtectedStorageContext", new Class[0]).invoke(context, new Object[0]);
                    } catch (NoSuchMethodException e) {
                    } catch (IllegalAccessException e2) {
                    } catch (InvocationTargetException e3) {
                    }
                }
                if (context.getFilesDir() != null) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(context.getFilesDir().getAbsolutePath());
                    stringBuilder.append(File.separator);
                    stringBuilder.append(jr);
                    IDF_FILES_PATH = stringBuilder.toString();
                }
            } catch (NameNotFoundException e4) {
                e4.printStackTrace();
            }
        }
        if (IDF_FILES_PATH != null) {
            File file = new File(IDF_FILES_PATH);
            if (!file.exists() && file.mkdirs()) {
                C0002FileUtils.chmod(IDF_FILES_PATH, jq);
                return;
            }
            return;
        }
        Log.w(TAG, "Error: Cannot locate IDF_FILES_PATH");
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ba A:{SYNTHETIC, Splitter: B:42:0x00ba} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00b0 A:{SYNTHETIC, Splitter: B:36:0x00b0} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00c5 A:{SYNTHETIC, Splitter: B:47:0x00c5} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void b(Context context, String str) {
        IOException e;
        FileNotFoundException e2;
        Throwable th;
        String directIndexedFilePath = getDirectIndexedFilePath(context, str);
        if (directIndexedFilePath == null) {
            Log.w(TAG, "directIndexedFilePath is null");
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            AssetManager assets = context.getResources().getAssets();
            File file = new File(directIndexedFilePath);
            if (!file.exists() || a(context, str, directIndexedFilePath)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(directIndexedFilePath);
                stringBuilder.append(jt);
                File file2 = new File(stringBuilder.toString());
                InputStream inputStream = null;
                try {
                    InputStream open = assets.open(str);
                    try {
                        boolean copyToFile = C0002FileUtils.copyToFile(open, file2);
                        file.delete();
                        if (copyToFile && file2.renameTo(file)) {
                            C0002FileUtils.chmod(directIndexedFilePath, iJ);
                            String str2 = TAG;
                            StringBuilder stringBuilder2 = new StringBuilder();
                            stringBuilder2.append(file.getAbsolutePath());
                            stringBuilder2.append(" extraction completed.");
                            Log.v(str2, stringBuilder2.toString());
                        } else {
                            directIndexedFilePath = TAG;
                            StringBuilder stringBuilder3 = new StringBuilder();
                            stringBuilder3.append(file2.getAbsolutePath());
                            stringBuilder3.append(" copy failed.");
                            Log.w(directIndexedFilePath, stringBuilder3.toString());
                        }
                        if (open != null) {
                            try {
                                open.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                    } catch (FileNotFoundException e4) {
                        e2 = e4;
                        inputStream = open;
                        e2.printStackTrace();
                        if (inputStream != null) {
                        }
                    } catch (IOException e5) {
                        e3 = e5;
                        inputStream = open;
                        try {
                            e3.printStackTrace();
                            if (inputStream != null) {
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            open = inputStream;
                            if (open != null) {
                                try {
                                    open.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (open != null) {
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e7) {
                    e2 = e7;
                    e2.printStackTrace();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e8) {
                    e3 = e8;
                    e3.printStackTrace();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            }
            Log.v(TAG, " don't need overwrite");
        }
    }

    public static boolean replaceDirectIndexedFile(Context context, String str, String str2) {
        String directIndexedFilePath = getDirectIndexedFilePath(context, str2);
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            Log.w(TAG, "replaceDirectIndexedFile srcPath is null");
            return false;
        } else if (TextUtils.isEmpty(directIndexedFilePath)) {
            Log.w(TAG, "replaceDirectIndexedFile destPath is null");
            return false;
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(directIndexedFilePath);
            stringBuilder.append(jt);
            File file = new File(stringBuilder.toString());
            File file2 = new File(directIndexedFilePath);
            boolean copyFile = C0002FileUtils.copyFile(new File(str), file);
            if (!file2.delete()) {
                Log.w(TAG, String.format("old idf file:%s delete fail", new Object[]{str2}));
            }
            if (copyFile && file.renameTo(file2)) {
                str = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(file2.getAbsolutePath());
                stringBuilder2.append(" copy and rename success.");
                Log.v(str, stringBuilder2.toString());
                z = C0002FileUtils.chmod(directIndexedFilePath, iJ);
            } else {
                boolean delete;
                if (file.exists()) {
                    delete = file.delete();
                } else {
                    delete = true;
                }
                Log.w(TAG, String.format("%s copy or rename failed , tmp file delete: %s", new Object[]{file.getAbsolutePath(), Boolean.valueOf(delete)}));
            }
            directIndexedFilePath = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("replaceDirectIndexedFile result is ");
            stringBuilder3.append(z);
            Log.v(directIndexedFilePath, stringBuilder3.toString());
            return z;
        }
    }

    private static boolean a(Context context, String str, String str2) {
        boolean z = false;
        try {
            Reader open = DirectIndexedFile.open(context.getAssets().open(str, 1));
            try {
                Reader open2 = DirectIndexedFile.open(str2);
                if (open.getDataVersion() > open2.getDataVersion()) {
                    z = true;
                }
                open.close();
                open2.close();
                return z;
            } catch (IOException e) {
                e.printStackTrace();
                open.close();
                return true;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static String getDirectIndexedFilePath(Context context, String str) {
        k(context);
        if (IDF_FILES_PATH == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(IDF_FILES_PATH);
        stringBuilder.append(File.separator);
        stringBuilder.append(str);
        return stringBuilder.toString();
    }
}
