package com.nexstreaming.app.common.util;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: ZipUtil */
public class p {
    /*  JADX ERROR: ConcurrentModificationException in pass: EliminatePhiNodes
        java.util.ConcurrentModificationException
        	at java.util.ArrayList$Itr.checkForComodification(Unknown Source)
        	at java.util.ArrayList$Itr.next(Unknown Source)
        	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMerge(EliminatePhiNodes.java:114)
        	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMergeInstructions(EliminatePhiNodes.java:68)
        	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.visit(EliminatePhiNodes.java:31)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
        	at java.lang.Iterable.forEach(Unknown Source)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
        	at jadx.core.ProcessClass.process(ProcessClass.java:37)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    public static void a(java.io.File r8, java.io.File r9) throws java.io.IOException {
        /*
        r0 = "ZipUtil";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unzipping '";
        r1 = r1.append(r2);
        r1 = r1.append(r8);
        r2 = "' to '";
        r1 = r1.append(r2);
        r1 = r1.append(r9);
        r2 = "'";
        r1 = r1.append(r2);
        r1 = r1.toString();
        android.util.Log.d(r0, r1);
        r0 = r9.mkdirs();
        if (r0 != 0) goto L_0x004d;
    L_0x002e:
        r0 = r9.exists();
        if (r0 != 0) goto L_0x004d;
    L_0x0034:
        r0 = new java.io.IOException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Failed to create directory: ";
        r1 = r1.append(r2);
        r1 = r1.append(r9);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x004d:
        r1 = new java.util.zip.ZipInputStream;
        r0 = new java.io.FileInputStream;
        r0.<init>(r8);
        r1.<init>(r0);
    L_0x0057:
        r0 = r1.getNextEntry();	 Catch:{ all -> 0x0071 }
        if (r0 == 0) goto L_0x0123;	 Catch:{ all -> 0x0071 }
    L_0x005d:
        r2 = r0.getName();	 Catch:{ all -> 0x0071 }
        r3 = "..";	 Catch:{ all -> 0x0071 }
        r3 = r2.contains(r3);	 Catch:{ all -> 0x0071 }
        if (r3 == 0) goto L_0x0076;	 Catch:{ all -> 0x0071 }
    L_0x0069:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x0071 }
        r2 = "Relative paths not allowed";	 Catch:{ all -> 0x0071 }
        r0.<init>(r2);	 Catch:{ all -> 0x0071 }
        throw r0;	 Catch:{ all -> 0x0071 }
    L_0x0071:
        r0 = move-exception;
        com.nexstreaming.app.common.util.b.a(r1);
        throw r0;
    L_0x0076:
        r3 = new java.io.File;	 Catch:{ all -> 0x0071 }
        r3.<init>(r9, r2);	 Catch:{ all -> 0x0071 }
        r4 = r0.isDirectory();	 Catch:{ all -> 0x0071 }
        if (r4 == 0) goto L_0x00c5;	 Catch:{ all -> 0x0071 }
    L_0x0081:
        r0 = r3.mkdirs();	 Catch:{ all -> 0x0071 }
        if (r0 != 0) goto L_0x00a6;	 Catch:{ all -> 0x0071 }
    L_0x0087:
        r0 = r3.exists();	 Catch:{ all -> 0x0071 }
        if (r0 != 0) goto L_0x00a6;	 Catch:{ all -> 0x0071 }
    L_0x008d:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x0071 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0071 }
        r2.<init>();	 Catch:{ all -> 0x0071 }
        r4 = "Failed to create directory: ";	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r4);	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r3);	 Catch:{ all -> 0x0071 }
        r2 = r2.toString();	 Catch:{ all -> 0x0071 }
        r0.<init>(r2);	 Catch:{ all -> 0x0071 }
        throw r0;	 Catch:{ all -> 0x0071 }
    L_0x00a6:
        r0 = "ZipUtil";	 Catch:{ all -> 0x0071 }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0071 }
        r3.<init>();	 Catch:{ all -> 0x0071 }
        r4 = "  - unzip: made folder '";	 Catch:{ all -> 0x0071 }
        r3 = r3.append(r4);	 Catch:{ all -> 0x0071 }
        r2 = r3.append(r2);	 Catch:{ all -> 0x0071 }
        r3 = "'";	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r3);	 Catch:{ all -> 0x0071 }
        r2 = r2.toString();	 Catch:{ all -> 0x0071 }
        android.util.Log.d(r0, r2);	 Catch:{ all -> 0x0071 }
        goto L_0x0057;	 Catch:{ all -> 0x0071 }
    L_0x00c5:
        r4 = "ZipUtil";	 Catch:{ all -> 0x0071 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0071 }
        r5.<init>();	 Catch:{ all -> 0x0071 }
        r6 = "  - unzip: unzipping file '";	 Catch:{ all -> 0x0071 }
        r5 = r5.append(r6);	 Catch:{ all -> 0x0071 }
        r2 = r5.append(r2);	 Catch:{ all -> 0x0071 }
        r5 = "' ";	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r5);	 Catch:{ all -> 0x0071 }
        r6 = r0.getCompressedSize();	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r6);	 Catch:{ all -> 0x0071 }
        r5 = "->";	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r5);	 Catch:{ all -> 0x0071 }
        r6 = r0.getSize();	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r6);	 Catch:{ all -> 0x0071 }
        r5 = " (";	 Catch:{ all -> 0x0071 }
        r2 = r2.append(r5);	 Catch:{ all -> 0x0071 }
        r0 = r0.getMethod();	 Catch:{ all -> 0x0071 }
        r0 = a(r0);	 Catch:{ all -> 0x0071 }
        r0 = r2.append(r0);	 Catch:{ all -> 0x0071 }
        r2 = ")";	 Catch:{ all -> 0x0071 }
        r0 = r0.append(r2);	 Catch:{ all -> 0x0071 }
        r0 = r0.toString();	 Catch:{ all -> 0x0071 }
        android.util.Log.d(r4, r0);	 Catch:{ all -> 0x0071 }
        r0 = new java.io.FileOutputStream;	 Catch:{ all -> 0x0071 }
        r0.<init>(r3);	 Catch:{ all -> 0x0071 }
        a(r1, r0);	 Catch:{ all -> 0x011e }
        com.nexstreaming.app.common.util.b.a(r0);	 Catch:{ all -> 0x0071 }
        goto L_0x0057;	 Catch:{ all -> 0x0071 }
    L_0x011e:
        r2 = move-exception;	 Catch:{ all -> 0x0071 }
        com.nexstreaming.app.common.util.b.a(r0);	 Catch:{ all -> 0x0071 }
        throw r2;	 Catch:{ all -> 0x0071 }
    L_0x0123:
        com.nexstreaming.app.common.util.b.a(r1);
        r0 = "ZipUtil";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unzipping DONE for: '";
        r1 = r1.append(r2);
        r1 = r1.append(r8);
        r2 = "' to '";
        r1 = r1.append(r2);
        r1 = r1.append(r9);
        r2 = "'";
        r1 = r1.append(r2);
        r1 = r1.toString();
        android.util.Log.d(r0, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.util.p.a(java.io.File, java.io.File):void");
    }

    private static String a(int i) {
        switch (i) {
            case 0:
                return "STORED";
            case 8:
                return "DEFLATED";
            default:
                return "UNKNOWN_" + i;
        }
    }

    private static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                j += (long) read;
            } else {
                return;
            }
        }
    }

    public static boolean a(File file) {
        try {
            InputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[2];
            try {
                fileInputStream.read(bArr);
                fileInputStream.close();
                if (bArr[0] == (byte) 80 && bArr[1] == (byte) 75) {
                    return true;
                }
                Log.d("ZipUtil", "magic[0]=" + bArr[0] + ",magic[1]=" + bArr[1]);
                return false;
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        }
    }
}
