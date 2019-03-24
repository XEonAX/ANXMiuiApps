package com.miui.internal.server;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.format.Time;
import android.util.Log;
import com.miui.internal.server.IDropBoxManagerService.Stub;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.zip.GZIPOutputStream;
import miui.os.C0002FileUtils;
import miui.os.DropBoxManager;
import miui.os.DropBoxManager.Entry;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public final class DropBoxManagerService extends Stub {
    public static final String SERVICE_NAME = "DropBoxManagerService";
    private static final String TAG = "DropBoxManagerService";
    private static final int hT = 259200;
    private static final int hU = 1000;
    private static final int hV = 5120;
    private static final int hW = 10;
    private static final int hX = 10;
    private static final int hY = 5000;
    private static final int hZ = 1;
    private static final boolean ia = false;
    private static final String ib = "dropbox:";
    private static final SoftReferenceSingleton<DropBoxManagerService> s = new SoftReferenceSingleton<DropBoxManagerService>() {
        /* renamed from: ab */
        protected DropBoxManagerService createInstance() {
            return new DropBoxManagerService();
        }
    };
    private File ic;
    private FileList ie;
    /* renamed from: if */
    private HashMap<String, FileList> f215if;
    private StatFs ig;
    private int ii;
    private int ij;
    private long ik;
    private Context mContext;
    private Handler mHandler;

    private static final class EntryFile implements Comparable<EntryFile> {
        public final File file;
        public final int flags;
        public final long im;
        public final int io;
        public final String tag;

        /* renamed from: b */
        public final int compareTo(EntryFile entryFile) {
            if (this.im < entryFile.im) {
                return -1;
            }
            if (this.im > entryFile.im) {
                return 1;
            }
            if (this.file != null && entryFile.file != null) {
                return this.file.compareTo(entryFile.file);
            }
            if (entryFile.file != null) {
                return -1;
            }
            if (this.file != null) {
                return 1;
            }
            if (this == entryFile) {
                return 0;
            }
            if (hashCode() < entryFile.hashCode()) {
                return -1;
            }
            if (hashCode() > entryFile.hashCode()) {
                return 1;
            }
            return 0;
        }

        public EntryFile(File file, File file2, String str, long j, int i, int i2) throws IOException {
            if ((i & 1) == 0) {
                this.tag = str;
                this.im = j;
                this.flags = i;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(Uri.encode(str));
                stringBuilder.append("@");
                stringBuilder.append(j);
                stringBuilder.append((i & 2) != 0 ? ".txt" : ".dat");
                stringBuilder.append((i & 4) != 0 ? ".gz" : "");
                this.file = new File(file2, stringBuilder.toString());
                if (file.renameTo(this.file)) {
                    long j2 = (long) i2;
                    this.io = (int) (((this.file.length() + j2) - 1) / j2);
                    return;
                }
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("Can't rename ");
                stringBuilder2.append(file);
                stringBuilder2.append(" to ");
                stringBuilder2.append(this.file);
                throw new IOException(stringBuilder2.toString());
            }
            throw new IllegalArgumentException();
        }

        public EntryFile(File file, String str, long j) throws IOException {
            this.tag = str;
            this.im = j;
            this.flags = 1;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(Uri.encode(str));
            stringBuilder.append("@");
            stringBuilder.append(j);
            stringBuilder.append(".lost");
            this.file = new File(file, stringBuilder.toString());
            this.io = 0;
            new FileOutputStream(this.file).close();
        }

        public EntryFile(File file, int i) {
            this.file = file;
            long j = (long) i;
            this.io = (int) (((this.file.length() + j) - 1) / j);
            String name = file.getName();
            i = name.lastIndexOf(64);
            if (i < 0) {
                this.tag = null;
                this.im = 0;
                this.flags = 1;
                return;
            }
            long longValue;
            int i2 = 0;
            this.tag = Uri.decode(name.substring(0, i));
            if (name.endsWith(".gz")) {
                name = name.substring(0, name.length() - 3);
                i2 = 4;
            }
            if (name.endsWith(".lost")) {
                i2 |= 1;
                name = name.substring(i + 1, name.length() - 5);
            } else if (name.endsWith(".txt")) {
                i2 |= 2;
                name = name.substring(i + 1, name.length() - 4);
            } else if (name.endsWith(".dat")) {
                name = name.substring(i + 1, name.length() - 4);
            } else {
                this.flags = 1;
                this.im = 0;
                return;
            }
            this.flags = i2;
            try {
                longValue = Long.valueOf(name).longValue();
            } catch (NumberFormatException e) {
                longValue = 0;
            }
            this.im = longValue;
        }

        public EntryFile(long j) {
            this.tag = null;
            this.im = j;
            this.flags = 1;
            this.file = null;
            this.io = 0;
        }
    }

    private static final class FileList implements Comparable<FileList> {
        public int io;
        public final TreeSet<EntryFile> ip;

        private FileList() {
            this.io = 0;
            this.ip = new TreeSet();
        }

        /* synthetic */ FileList(AnonymousClass1 anonymousClass1) {
            this();
        }

        /* renamed from: a */
        public final int compareTo(FileList fileList) {
            if (this.io != fileList.io) {
                return fileList.io - this.io;
            }
            if (this == fileList) {
                return 0;
            }
            if (hashCode() < fileList.hashCode()) {
                return -1;
            }
            if (hashCode() > fileList.hashCode()) {
                return 1;
            }
            return 0;
        }
    }

    /* synthetic */ DropBoxManagerService(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static DropBoxManagerService getInstance() {
        return (DropBoxManagerService) s.get();
    }

    public static void onReceive(Context context, Intent intent) {
        if (Receiver.isActionEquals(intent, "android.intent.action.DEVICE_STORAGE_LOW")) {
            getInstance().Z();
        }
    }

    private DropBoxManagerService() {
        this.ie = null;
        this.f215if = null;
        this.ig = null;
        this.ii = 0;
        this.ij = 0;
        this.ik = 0;
        this.mContext = AppConstants.getCurrentApplication();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.mContext.getFilesDir().getAbsolutePath());
        stringBuilder.append(File.separator);
        stringBuilder.append("dropbox");
        this.ic = new File(stringBuilder.toString());
        this.mHandler = new Handler(Looper.getMainLooper()) {
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    DropBoxManagerService.this.mContext.sendBroadcast((Intent) message.obj, "miui.permission.READ_LOGS");
                }
            }
        };
        Z();
    }

    private void Z() {
        this.ik = 0;
        new Thread() {
            public void run() {
                try {
                    DropBoxManagerService.this.init();
                    DropBoxManagerService.this.aa();
                } catch (Throwable e) {
                    Log.e("DropBoxManagerService", "Can't init", e);
                }
            }
        }.start();
    }

    /* JADX WARNING: Removed duplicated region for block: B:86:0x0171 A:{SYNTHETIC, Splitter: B:86:0x0171} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0178 A:{SYNTHETIC, Splitter: B:90:0x0178} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x018a A:{SYNTHETIC, Splitter: B:100:0x018a} */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x0191 A:{SYNTHETIC, Splitter: B:104:0x0191} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x019b  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0171 A:{SYNTHETIC, Splitter: B:86:0x0171} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0178 A:{SYNTHETIC, Splitter: B:90:0x0178} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x018a A:{SYNTHETIC, Splitter: B:100:0x018a} */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x0191 A:{SYNTHETIC, Splitter: B:104:0x0191} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x019b  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0171 A:{SYNTHETIC, Splitter: B:86:0x0171} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0178 A:{SYNTHETIC, Splitter: B:90:0x0178} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x018a A:{SYNTHETIC, Splitter: B:100:0x018a} */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x0191 A:{SYNTHETIC, Splitter: B:104:0x0191} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x019b  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0171 A:{SYNTHETIC, Splitter: B:86:0x0171} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0178 A:{SYNTHETIC, Splitter: B:90:0x0178} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x018a A:{SYNTHETIC, Splitter: B:100:0x018a} */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x0191 A:{SYNTHETIC, Splitter: B:104:0x0191} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x019b  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0171 A:{SYNTHETIC, Splitter: B:86:0x0171} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0178 A:{SYNTHETIC, Splitter: B:90:0x0178} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0182  */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x018a A:{SYNTHETIC, Splitter: B:100:0x018a} */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x0191 A:{SYNTHETIC, Splitter: B:104:0x0191} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x019b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void add(Entry entry) {
        Throwable e;
        OutputStream outputStream;
        File file;
        StringBuilder stringBuilder;
        Throwable th;
        String tag = entry.getTag();
        InputStream inputStream;
        try {
            int flags = entry.getFlags();
            if ((flags & 1) == 0) {
                init();
                if (isTagEnabled(tag)) {
                    long aa = aa();
                    long currentTimeMillis = System.currentTimeMillis();
                    byte[] bArr = new byte[this.ii];
                    inputStream = entry.getInputStream();
                    int i = 0;
                    while (i < bArr.length) {
                        try {
                            int read = inputStream.read(bArr, i, bArr.length - i);
                            if (read <= 0) {
                                break;
                            }
                            i += read;
                        } catch (IOException e2) {
                            e = e2;
                            outputStream = null;
                            file = null;
                            try {
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("Can't write: ");
                                stringBuilder.append(tag);
                                Log.e("DropBoxManagerService", stringBuilder.toString(), e);
                                if (outputStream != null) {
                                }
                                if (inputStream != null) {
                                }
                                entry.close();
                                if (file != null) {
                                }
                            } catch (Throwable e3) {
                                th = e3;
                                if (outputStream != null) {
                                    try {
                                        outputStream.close();
                                    } catch (IOException e4) {
                                    }
                                }
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e5) {
                                    }
                                }
                                entry.close();
                                if (file != null) {
                                    file.delete();
                                }
                                throw th;
                            }
                        } catch (Throwable e32) {
                            th = e32;
                            outputStream = null;
                            file = null;
                            if (outputStream != null) {
                            }
                            if (inputStream != null) {
                            }
                            entry.close();
                            if (file != null) {
                            }
                            throw th;
                        }
                    }
                    File file2 = this.ic;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("drop");
                    int i2 = flags;
                    stringBuilder2.append(Thread.currentThread().getId());
                    stringBuilder2.append(".tmp");
                    file = new File(file2, stringBuilder2.toString());
                    try {
                        long a;
                        int i3 = this.ii;
                        if (i3 > 4096) {
                            i3 = 4096;
                        }
                        if (i3 < 512) {
                            i3 = 512;
                        }
                        OutputStream fileOutputStream = new FileOutputStream(file);
                        OutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, i3);
                        try {
                            int i4;
                            if (i == bArr.length && (i2 & 4) == 0) {
                                outputStream = new GZIPOutputStream(bufferedOutputStream);
                                i4 = i2 | 4;
                            } else {
                                outputStream = bufferedOutputStream;
                                i4 = i2;
                            }
                            do {
                                try {
                                    outputStream.write(bArr, 0, i);
                                    long currentTimeMillis2 = System.currentTimeMillis();
                                    if (currentTimeMillis2 - currentTimeMillis > 30000) {
                                        aa = aa();
                                        currentTimeMillis = currentTimeMillis2;
                                    }
                                    i = inputStream.read(bArr);
                                    if (i <= 0) {
                                        C0002FileUtils.sync(fileOutputStream);
                                        outputStream.close();
                                        outputStream = null;
                                    } else {
                                        outputStream.flush();
                                    }
                                    if (file.length() > aa) {
                                        StringBuilder stringBuilder3 = new StringBuilder();
                                        stringBuilder3.append("Dropping: ");
                                        stringBuilder3.append(tag);
                                        stringBuilder3.append(" (");
                                        stringBuilder3.append(file.length());
                                        stringBuilder3.append(" > ");
                                        stringBuilder3.append(aa);
                                        stringBuilder3.append(" bytes)");
                                        Log.w("DropBoxManagerService", stringBuilder3.toString());
                                        file.delete();
                                        file = null;
                                        break;
                                    }
                                } catch (IOException e6) {
                                    e32 = e6;
                                    stringBuilder = new StringBuilder();
                                    stringBuilder.append("Can't write: ");
                                    stringBuilder.append(tag);
                                    Log.e("DropBoxManagerService", stringBuilder.toString(), e32);
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (IOException e7) {
                                        }
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e8) {
                                        }
                                    }
                                    entry.close();
                                    if (file != null) {
                                        file.delete();
                                    }
                                }
                            } while (i > 0);
                            a = a(file, tag, i4);
                        } catch (IOException e9) {
                            e32 = e9;
                            outputStream = bufferedOutputStream;
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Can't write: ");
                            stringBuilder.append(tag);
                            Log.e("DropBoxManagerService", stringBuilder.toString(), e32);
                            if (outputStream != null) {
                            }
                            if (inputStream != null) {
                            }
                            entry.close();
                            if (file != null) {
                            }
                        } catch (Throwable e322) {
                            th = e322;
                            outputStream = bufferedOutputStream;
                            if (outputStream != null) {
                            }
                            if (inputStream != null) {
                            }
                            entry.close();
                            if (file != null) {
                            }
                            throw th;
                        }
                        try {
                            Intent intent = new Intent(DropBoxManager.ACTION_DROPBOX_ENTRY_ADDED);
                            intent.putExtra("tag", tag);
                            intent.putExtra("time", a);
                            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, intent));
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (IOException e10) {
                                }
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e11) {
                                }
                            }
                            entry.close();
                        } catch (IOException e12) {
                            e322 = e12;
                            file = null;
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Can't write: ");
                            stringBuilder.append(tag);
                            Log.e("DropBoxManagerService", stringBuilder.toString(), e322);
                            if (outputStream != null) {
                            }
                            if (inputStream != null) {
                            }
                            entry.close();
                            if (file != null) {
                            }
                        } catch (Throwable e3222) {
                            th = e3222;
                            file = null;
                            if (outputStream != null) {
                            }
                            if (inputStream != null) {
                            }
                            entry.close();
                            if (file != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e13) {
                        e3222 = e13;
                        outputStream = null;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Can't write: ");
                        stringBuilder.append(tag);
                        Log.e("DropBoxManagerService", stringBuilder.toString(), e3222);
                        if (outputStream != null) {
                        }
                        if (inputStream != null) {
                        }
                        entry.close();
                        if (file != null) {
                        }
                    } catch (Throwable e32222) {
                        th = e32222;
                        outputStream = null;
                        if (outputStream != null) {
                        }
                        if (inputStream != null) {
                        }
                        entry.close();
                        if (file != null) {
                        }
                        throw th;
                    }
                }
                entry.close();
                return;
            }
            throw new IllegalArgumentException();
        } catch (IOException e14) {
            e32222 = e14;
            outputStream = null;
            inputStream = null;
            file = null;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Can't write: ");
            stringBuilder.append(tag);
            Log.e("DropBoxManagerService", stringBuilder.toString(), e32222);
            if (outputStream != null) {
            }
            if (inputStream != null) {
            }
            entry.close();
            if (file != null) {
            }
        } catch (Throwable e322222) {
            th = e322222;
            outputStream = null;
            inputStream = null;
            file = null;
            if (outputStream != null) {
            }
            if (inputStream != null) {
            }
            entry.close();
            if (file != null) {
            }
            throw th;
        }
    }

    public boolean isTagEnabled(String str) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(ib);
            stringBuilder.append(str);
            boolean equals = "disabled".equals(stringBuilder.toString()) ^ 1;
            return equals;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public synchronized Entry getNextEntry(String str, long j) {
        if (this.mContext.checkCallingOrSelfPermission("miui.permission.READ_LOGS") == 0) {
            try {
                init();
                FileList fileList = str == null ? this.ie : (FileList) this.f215if.get(str);
                if (fileList == null) {
                    return null;
                }
                for (EntryFile entryFile : fileList.ip.tailSet(new EntryFile(j + 1))) {
                    if (entryFile.tag != null) {
                        if ((entryFile.flags & 1) != 0) {
                            return new Entry(entryFile.tag, entryFile.im);
                        }
                        try {
                            return new Entry(entryFile.tag, entryFile.im, entryFile.file, entryFile.flags);
                        } catch (Throwable e) {
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("Can't read: ");
                            stringBuilder.append(entryFile.file);
                            Log.e("DropBoxManagerService", stringBuilder.toString(), e);
                        }
                    }
                }
                return null;
            } catch (Throwable e2) {
                Log.e("DropBoxManagerService", "Can't init", e2);
                return null;
            }
        }
        throw new SecurityException("READ_LOGS permission required");
    }

    /* JADX WARNING: Removed duplicated region for block: B:186:0x02ce A:{Catch:{ IOException -> 0x02fc }} */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x02ad A:{SYNTHETIC, Splitter: B:167:0x02ad} */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x02b2 A:{SYNTHETIC, Splitter: B:170:0x02b2} */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x02ce A:{Catch:{ IOException -> 0x02fc }} */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x02ad A:{SYNTHETIC, Splitter: B:167:0x02ad} */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x02b2 A:{SYNTHETIC, Splitter: B:170:0x02b2} */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x02ce A:{Catch:{ IOException -> 0x02fc }} */
    /* JADX WARNING: Removed duplicated region for block: B:134:0x0228 A:{ExcHandler: all (r0_65 'th' java.lang.Throwable), Splitter: B:96:0x01cc} */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x02ad A:{SYNTHETIC, Splitter: B:167:0x02ad} */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x02b2 A:{SYNTHETIC, Splitter: B:170:0x02b2} */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x02ce A:{Catch:{ IOException -> 0x02fc }} */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x021e A:{ExcHandler: all (r0_61 'th' java.lang.Throwable), Splitter: B:99:0x01d7} */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x02ad A:{SYNTHETIC, Splitter: B:167:0x02ad} */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x02b2 A:{SYNTHETIC, Splitter: B:170:0x02b2} */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x02ce A:{Catch:{ IOException -> 0x02fc }} */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0275 A:{ExcHandler: all (r0_76 'th' java.lang.Throwable), Splitter: B:86:0x01ad} */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x021e A:{ExcHandler: all (r0_61 'th' java.lang.Throwable), Splitter: B:99:0x01d7} */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x021e A:{ExcHandler: all (r0_61 'th' java.lang.Throwable), Splitter: B:99:0x01d7} */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x02ad A:{SYNTHETIC, Splitter: B:167:0x02ad} */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x02b2 A:{SYNTHETIC, Splitter: B:170:0x02b2} */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x02ce A:{Catch:{ IOException -> 0x02fc }} */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0275 A:{ExcHandler: all (r0_76 'th' java.lang.Throwable), Splitter: B:86:0x01ad} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:103:0x01e1, code:
            if (r9 != null) goto L_0x01ef;
     */
    /* JADX WARNING: Missing block: B:105:?, code:
            r4.append("\n");
     */
    /* JADX WARNING: Missing block: B:106:0x01e9, code:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:107:0x01ea, code:
            r5 = r14;
            r14 = r17;
     */
    /* JADX WARNING: Missing block: B:124:0x0215, code:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:129:0x021e, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:130:0x021f, code:
            r2 = r0;
            r5 = r14;
     */
    /* JADX WARNING: Missing block: B:131:0x0223, code:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:133:0x0225, code:
            r5 = r14;
            r14 = r17;
     */
    /* JADX WARNING: Missing block: B:134:0x0228, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:135:0x0229, code:
            r2 = r0;
            r5 = null;
     */
    /* JADX WARNING: Missing block: B:136:0x022d, code:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:156:0x026f, code:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:159:0x0275, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:160:0x0276, code:
            r2 = r0;
            r5 = null;
            r15 = null;
     */
    /* JADX WARNING: Missing block: B:161:0x027a, code:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:162:0x027b, code:
            r24 = r5;
            r23 = r10;
     */
    /* JADX WARNING: Missing block: B:168:?, code:
            r14.close();
     */
    /* JADX WARNING: Missing block: B:171:?, code:
            r5.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        ArrayList arrayList;
        int i;
        Throwable e;
        Entry entry;
        InputStreamReader inputStreamReader;
        StringBuilder stringBuilder;
        Throwable th;
        Entry entry2;
        PrintWriter printWriter2 = printWriter;
        String[] strArr2 = strArr;
        synchronized (this) {
            if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
                printWriter2.println("Permission Denial: Can't dump DropBoxManagerService");
                return;
            }
            try {
                init();
                StringBuilder stringBuilder2 = new StringBuilder();
                ArrayList arrayList2 = new ArrayList();
                int i2 = 0;
                Object obj = null;
                Object obj2 = null;
                while (strArr2 != null && i2 < strArr2.length) {
                    if (strArr2[i2].equals("-p") || strArr2[i2].equals("--print")) {
                        obj = 1;
                    } else if (strArr2[i2].equals("-f") || strArr2[i2].equals("--file")) {
                        obj2 = 1;
                    } else if (strArr2[i2].startsWith("-")) {
                        stringBuilder2.append("Unknown argument: ");
                        stringBuilder2.append(strArr2[i2]);
                        stringBuilder2.append("\n");
                    } else {
                        arrayList2.add(strArr2[i2]);
                    }
                    i2++;
                }
                stringBuilder2.append("Drop box contents: ");
                stringBuilder2.append(this.ie.ip.size());
                stringBuilder2.append(" entries\n");
                if (!arrayList2.isEmpty()) {
                    stringBuilder2.append("Searching for:");
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        stringBuilder2.append(" ");
                        stringBuilder2.append(str);
                    }
                    stringBuilder2.append("\n");
                }
                int size = arrayList2.size();
                Time time = new Time();
                stringBuilder2.append("\n");
                Iterator it2 = this.ie.ip.iterator();
                i2 = 0;
                while (it2.hasNext()) {
                    EntryFile entryFile = (EntryFile) it2.next();
                    time.set(entryFile.im);
                    String format = time.format("%Y-%m-%d %H:%M:%S");
                    Object obj3 = 1;
                    for (int i3 = 0; i3 < size && obj3 != null; i3++) {
                        String str2 = (String) arrayList2.get(i3);
                        obj3 = (format.contains(str2) || str2.equals(entryFile.tag)) ? 1 : null;
                    }
                    if (obj3 != null) {
                        int i4 = i2 + 1;
                        if (obj != null) {
                            stringBuilder2.append("========================================\n");
                        }
                        stringBuilder2.append(format);
                        stringBuilder2.append(" ");
                        stringBuilder2.append(entryFile.tag == null ? "(no tag)" : entryFile.tag);
                        if (entryFile.file == null) {
                            stringBuilder2.append(" (no file)\n");
                        } else if ((entryFile.flags & 1) != 0) {
                            stringBuilder2.append(" (contents lost)\n");
                        } else {
                            stringBuilder2.append(" (");
                            if ((entryFile.flags & 4) != 0) {
                                stringBuilder2.append("compressed ");
                            }
                            stringBuilder2.append((entryFile.flags & 2) != 0 ? "text" : "data");
                            stringBuilder2.append(", ");
                            stringBuilder2.append(entryFile.file.length());
                            stringBuilder2.append(" bytes)\n");
                            if (obj2 != null || (obj != null && (entryFile.flags & 2) == 0)) {
                                if (obj == null) {
                                    stringBuilder2.append("    ");
                                }
                                stringBuilder2.append(entryFile.file.getPath());
                                stringBuilder2.append("\n");
                            }
                            if ((entryFile.flags & 2) == 0 || (obj == null && obj2 != null)) {
                                arrayList = arrayList2;
                                i = size;
                            } else {
                                try {
                                    InputStreamReader inputStreamReader2;
                                    i = size;
                                    arrayList = arrayList2;
                                    Entry entry3 = new Entry(entryFile.tag, entryFile.im, entryFile.file, entryFile.flags);
                                    char c = 10;
                                    if (obj != null) {
                                        try {
                                            inputStreamReader2 = new InputStreamReader(entry3.getInputStream());
                                            try {
                                                char[] cArr = new char[4096];
                                                Object obj4 = null;
                                                while (true) {
                                                    size = inputStreamReader2.read(cArr);
                                                    if (size <= 0) {
                                                        break;
                                                    }
                                                    stringBuilder2.append(cArr, 0, size);
                                                    obj4 = cArr[size + -1] == c ? 1 : null;
                                                    if (stringBuilder2.length() > 65536) {
                                                        printWriter2.write(stringBuilder2.toString());
                                                        stringBuilder2.setLength(0);
                                                    }
                                                    c = 10;
                                                }
                                            } catch (IOException e2) {
                                                e = e2;
                                                size = 0;
                                            } catch (Throwable th2) {
                                            }
                                        } catch (IOException e3) {
                                            e = e3;
                                            entry = entry3;
                                            inputStreamReader = null;
                                            try {
                                                stringBuilder2.append("*** ");
                                                stringBuilder2.append(e.toString());
                                                stringBuilder2.append("\n");
                                                stringBuilder = new StringBuilder();
                                                stringBuilder.append("Can't read: ");
                                                stringBuilder.append(entryFile.file);
                                                Log.e("DropBoxManagerService", stringBuilder.toString(), e);
                                                if (entry != null) {
                                                }
                                                if (inputStreamReader != null) {
                                                }
                                                if (obj != null) {
                                                }
                                                i2 = i4;
                                                size = i;
                                                arrayList2 = arrayList;
                                            } catch (Throwable e4) {
                                                th = e4;
                                                entry2 = entry;
                                            }
                                        } catch (Throwable th3) {
                                        }
                                    } else {
                                        String text = entry3.getText(70);
                                        Object obj5 = text.length() == 70 ? 1 : null;
                                        stringBuilder2.append("    ");
                                        stringBuilder2.append(text.trim().replace(10, '/'));
                                        if (obj5 != null) {
                                            stringBuilder2.append(" ...");
                                        }
                                        stringBuilder2.append("\n");
                                        inputStreamReader2 = null;
                                    }
                                    entry3.close();
                                    if (inputStreamReader2 != null) {
                                        try {
                                            inputStreamReader2.close();
                                        } catch (IOException e5) {
                                        }
                                    }
                                } catch (IOException e6) {
                                    e4 = e6;
                                    arrayList = arrayList2;
                                    inputStreamReader = null;
                                    entry = null;
                                    stringBuilder2.append("*** ");
                                    stringBuilder2.append(e4.toString());
                                    stringBuilder2.append("\n");
                                    stringBuilder = new StringBuilder();
                                    stringBuilder.append("Can't read: ");
                                    stringBuilder.append(entryFile.file);
                                    Log.e("DropBoxManagerService", stringBuilder.toString(), e4);
                                    if (entry != null) {
                                    }
                                    if (inputStreamReader != null) {
                                    }
                                    if (obj != null) {
                                    }
                                    i2 = i4;
                                    size = i;
                                    arrayList2 = arrayList;
                                } catch (Throwable th4) {
                                }
                            }
                            if (obj != null) {
                                stringBuilder2.append("\n");
                            }
                            i2 = i4;
                            size = i;
                            arrayList2 = arrayList;
                        }
                        arrayList = arrayList2;
                        i = size;
                        i2 = i4;
                        size = i;
                        arrayList2 = arrayList;
                    }
                }
                if (i2 == 0) {
                    stringBuilder2.append("(No entries found.)\n");
                }
                if (strArr2 == null || strArr2.length == 0) {
                    if (obj == null) {
                        stringBuilder2.append("\n");
                    }
                    stringBuilder2.append("Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n");
                }
                printWriter2.write(stringBuilder2.toString());
                return;
            } catch (Throwable e42) {
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append("Can't initialize: ");
                Throwable th5 = e42;
                stringBuilder3.append(th5);
                printWriter2.println(stringBuilder3.toString());
                Log.e("DropBoxManagerService", "Can't init", th5);
                return;
            }
        }
        throw th;
        if (entry2 != null) {
            entry2.close();
        }
        if (inputStreamReader != null) {
            try {
                inputStreamReader.close();
            } catch (IOException e7) {
            }
        }
        throw th;
    }

    private synchronized void init() throws IOException {
        StringBuilder stringBuilder;
        if (this.ig == null) {
            if (this.ic.isDirectory() || this.ic.mkdirs()) {
                try {
                    this.ig = new StatFs(this.ic.getPath());
                    this.ii = this.ig.getBlockSize();
                } catch (IllegalArgumentException e) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Can't statfs: ");
                    stringBuilder.append(this.ic);
                    throw new IOException(stringBuilder.toString());
                }
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("Can't mkdir: ");
            stringBuilder.append(this.ic);
            throw new IOException(stringBuilder.toString());
        }
        if (this.ie == null) {
            File[] listFiles = this.ic.listFiles();
            if (listFiles != null) {
                this.ie = new FileList();
                this.f215if = new HashMap();
                for (File file : listFiles) {
                    StringBuilder stringBuilder2;
                    if (file.getName().endsWith(".tmp")) {
                        stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("Cleaning temp file: ");
                        stringBuilder2.append(file);
                        Log.i("DropBoxManagerService", stringBuilder2.toString());
                        file.delete();
                    } else {
                        EntryFile entryFile = new EntryFile(file, this.ii);
                        if (entryFile.tag == null) {
                            stringBuilder2 = new StringBuilder();
                            stringBuilder2.append("Unrecognized file: ");
                            stringBuilder2.append(file);
                            Log.w("DropBoxManagerService", stringBuilder2.toString());
                        } else if (entryFile.im == 0) {
                            stringBuilder2 = new StringBuilder();
                            stringBuilder2.append("Invalid filename: ");
                            stringBuilder2.append(file);
                            Log.w("DropBoxManagerService", stringBuilder2.toString());
                            file.delete();
                        } else {
                            a(entryFile);
                        }
                    }
                }
            } else {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Can't list files: ");
                stringBuilder.append(this.ic);
                throw new IOException(stringBuilder.toString());
            }
        }
    }

    private synchronized void a(EntryFile entryFile) {
        this.ie.ip.add(entryFile);
        FileList fileList = this.ie;
        fileList.io += entryFile.io;
        if (!(entryFile.tag == null || entryFile.file == null || entryFile.io <= 0)) {
            fileList = (FileList) this.f215if.get(entryFile.tag);
            if (fileList == null) {
                fileList = new FileList();
                this.f215if.put(entryFile.tag, fileList);
            }
            fileList.ip.add(entryFile);
            fileList.io += entryFile.io;
        }
    }

    private synchronized long a(File file, String str, int i) throws IOException {
        long j;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            SortedSet tailSet = this.ie.ip.tailSet(new EntryFile(10000 + currentTimeMillis));
            EntryFile[] entryFileArr = null;
            if (!tailSet.isEmpty()) {
                entryFileArr = (EntryFile[]) tailSet.toArray(new EntryFile[tailSet.size()]);
                tailSet.clear();
            }
            if (!this.ie.ip.isEmpty()) {
                currentTimeMillis = Math.max(currentTimeMillis, ((EntryFile) this.ie.ip.last()).im + 1);
            }
            if (entryFileArr != null) {
                j = currentTimeMillis;
                for (EntryFile entryFile : entryFileArr) {
                    FileList fileList = this.ie;
                    fileList.io -= entryFile.io;
                    fileList = (FileList) this.f215if.get(entryFile.tag);
                    if (fileList != null && fileList.ip.remove(entryFile)) {
                        fileList.io -= entryFile.io;
                    }
                    if ((entryFile.flags & 1) == 0) {
                        long j2 = j + 1;
                        a(new EntryFile(entryFile.file, this.ic, entryFile.tag, j, entryFile.flags, this.ii));
                        j = j2;
                    } else {
                        long j3 = j + 1;
                        a(new EntryFile(this.ic, entryFile.tag, j));
                        j = j3;
                    }
                }
            } else {
                j = currentTimeMillis;
            }
            if (file == null) {
                a(new EntryFile(this.ic, str, j));
            } else {
                a(new EntryFile(file, this.ic, str, j, i, this.ii));
            }
        }
        return j;
    }

    private synchronized long aa() {
        EntryFile entryFile;
        FileList fileList;
        long currentTimeMillis = System.currentTimeMillis() - ((long) 259200000);
        while (!this.ie.ip.isEmpty()) {
            entryFile = (EntryFile) this.ie.ip.first();
            if (entryFile.im > currentTimeMillis && this.ie.ip.size() < 1000) {
                break;
            }
            fileList = (FileList) this.f215if.get(entryFile.tag);
            if (fileList != null && fileList.ip.remove(entryFile)) {
                fileList.io -= entryFile.io;
            }
            if (this.ie.ip.remove(entryFile)) {
                fileList = this.ie;
                fileList.io -= entryFile.io;
            }
            if (entryFile.file != null) {
                entryFile.file.delete();
            }
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i = 0;
        if (uptimeMillis > this.ik + 5000) {
            this.ig.restat(this.ic.getPath());
            this.ij = Math.min(5242880 / this.ii, Math.max(0, ((this.ig.getAvailableBlocks() - ((this.ig.getBlockCount() * 10) / 100)) * 10) / 100));
            this.ik = uptimeMillis;
        }
        if (this.ie.io > this.ij) {
            int i2 = this.ie.io;
            TreeSet treeSet = new TreeSet(this.f215if.values());
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                fileList = (FileList) it.next();
                if (i > 0 && fileList.io <= (this.ij - i2) / i) {
                    break;
                }
                i2 -= fileList.io;
                i++;
            }
            int i3 = (this.ij - i2) / i;
            Iterator it2 = treeSet.iterator();
            while (it2.hasNext()) {
                FileList fileList2 = (FileList) it2.next();
                if (this.ie.io < this.ij) {
                    break;
                }
                while (fileList2.io > i3 && !fileList2.ip.isEmpty()) {
                    entryFile = (EntryFile) fileList2.ip.first();
                    if (fileList2.ip.remove(entryFile)) {
                        fileList2.io -= entryFile.io;
                    }
                    if (this.ie.ip.remove(entryFile)) {
                        fileList = this.ie;
                        fileList.io -= entryFile.io;
                    }
                    try {
                        if (entryFile.file != null) {
                            entryFile.file.delete();
                        }
                        a(new EntryFile(this.ic, entryFile.tag, entryFile.im));
                    } catch (Throwable e) {
                        Log.e("DropBoxManagerService", "Can't write tombstone file", e);
                    }
                }
            }
        }
        return ((long) this.ij) * ((long) this.ii);
    }
}
