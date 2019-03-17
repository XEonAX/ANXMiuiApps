package com.alibaba.wireless.security.framework.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

public class b {
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0042 A:{SYNTHETIC, Splitter: B:31:0x0042} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a(File file) {
        Throwable th;
        BufferedReader bufferedReader = null;
        if (file == null || !file.exists()) {
            return null;
        }
        BufferedReader bufferedReader2;
        try {
            bufferedReader2 = new BufferedReader(new FileReader(file));
            try {
                StringBuilder stringBuilder = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuilder.append(readLine);
                }
                bufferedReader2.close();
                BufferedReader bufferedReader3 = null;
                String stringBuilder2 = stringBuilder.toString();
                if (null == null) {
                    return stringBuilder2;
                }
                try {
                    bufferedReader3.close();
                    return stringBuilder2;
                } catch (Exception e) {
                    return stringBuilder2;
                }
            } catch (Exception e2) {
                if (bufferedReader2 == null) {
                    return null;
                }
                try {
                    bufferedReader2.close();
                    return null;
                } catch (Exception e3) {
                    return null;
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                bufferedReader = bufferedReader2;
                th = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            bufferedReader2 = null;
        } catch (Throwable th4) {
            th = th4;
            if (bufferedReader != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0059 A:{SYNTHETIC, Splitter: B:26:0x0059} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(File file, String str) {
        Throwable th;
        BufferedWriter bufferedWriter = null;
        boolean z = false;
        if (!(file == null || str == null)) {
            File file2 = new File(file.getAbsolutePath() + ".tmp");
            try {
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file2, false));
                try {
                    bufferedWriter2.write(str);
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                    bufferedWriter2 = null;
                    z = file2.renameTo(file);
                    if (null != null) {
                        try {
                            bufferedWriter2.close();
                        } catch (Exception e) {
                        }
                    }
                } catch (Exception e2) {
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.close();
                        } catch (Exception e3) {
                        }
                    }
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                    }
                    throw th;
                }
            } catch (Exception e4) {
            } catch (Throwable th3) {
                th = th3;
                if (bufferedWriter != null) {
                    try {
                        bufferedWriter.close();
                    } catch (Exception e5) {
                    }
                }
                throw th;
            }
        }
        return z;
    }
}
