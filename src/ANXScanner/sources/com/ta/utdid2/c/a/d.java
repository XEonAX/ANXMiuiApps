package com.ta.utdid2.c.a;

import com.ta.utdid2.c.a.b.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: TransactionXMLFile */
public class d {
    private static final Object c = new Object();
    private File a;
    /* renamed from: a */
    private HashMap<File, a> f90a = new HashMap();
    private final Object b = new Object();

    /* compiled from: TransactionXMLFile */
    private static final class a implements b {
        private static final Object d = new Object();
        private WeakHashMap<b, Object> a;
        private final File b;
        private final int c;
        /* renamed from: c */
        private final File f91c;
        /* renamed from: c */
        private Map f92c;
        private boolean k = false;

        /* compiled from: TransactionXMLFile */
        public final class a implements com.ta.utdid2.c.a.b.a {
            private final Map<String, Object> d = new HashMap();
            private boolean l = false;

            public com.ta.utdid2.c.a.b.a a(String str, String str2) {
                synchronized (this) {
                    this.d.put(str, str2);
                }
                return this;
            }

            public com.ta.utdid2.c.a.b.a a(String str, int i) {
                synchronized (this) {
                    this.d.put(str, Integer.valueOf(i));
                }
                return this;
            }

            public com.ta.utdid2.c.a.b.a a(String str, long j) {
                synchronized (this) {
                    this.d.put(str, Long.valueOf(j));
                }
                return this;
            }

            public com.ta.utdid2.c.a.b.a a(String str, float f) {
                synchronized (this) {
                    this.d.put(str, Float.valueOf(f));
                }
                return this;
            }

            public com.ta.utdid2.c.a.b.a a(String str, boolean z) {
                synchronized (this) {
                    this.d.put(str, Boolean.valueOf(z));
                }
                return this;
            }

            public com.ta.utdid2.c.a.b.a a(String str) {
                synchronized (this) {
                    this.d.put(str, this);
                }
                return this;
            }

            public com.ta.utdid2.c.a.b.a b() {
                synchronized (this) {
                    this.l = true;
                }
                return this;
            }

            public boolean commit() {
                List list;
                String str;
                boolean a;
                Object obj = null;
                synchronized (d.a()) {
                    if (a.this.c.size() > 0) {
                        obj = 1;
                    }
                    Set hashSet;
                    if (obj != null) {
                        ArrayList arrayList = new ArrayList();
                        hashSet = new HashSet(a.this.c.keySet());
                        list = arrayList;
                    } else {
                        hashSet = null;
                        list = null;
                    }
                    synchronized (this) {
                        if (this.l) {
                            a.this.c.clear();
                            this.l = false;
                        }
                        for (Entry entry : this.d.entrySet()) {
                            str = (String) entry.getKey();
                            a value = entry.getValue();
                            if (value == this) {
                                a.this.c.remove(str);
                            } else {
                                a.this.c.put(str, value);
                            }
                            if (obj != null) {
                                list.add(str);
                            }
                        }
                        this.d.clear();
                    }
                    a = a.this.c;
                    if (a) {
                        a.this.a(true);
                    }
                }
                if (obj != null) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        str = (String) list.get(size);
                        for (b bVar : hashSet) {
                            if (bVar != null) {
                                bVar.a(a.this, str);
                            }
                        }
                    }
                }
                return a;
            }
        }

        a(File file, int i, Map map) {
            this.b = file;
            this.c = d.a(file);
            this.c = i;
            if (map == null) {
                map = new HashMap();
            }
            this.c = map;
            this.a = new WeakHashMap();
        }

        /* renamed from: a */
        public boolean m28a() {
            if (this.b == null || !new File(this.b.getAbsolutePath()).exists()) {
                return false;
            }
            return true;
        }

        public void a(boolean z) {
            synchronized (this) {
                this.k = z;
            }
        }

        public boolean c() {
            boolean z;
            synchronized (this) {
                z = this.k;
            }
            return z;
        }

        public void a(Map map) {
            if (map != null) {
                synchronized (this) {
                    this.c = map;
                }
            }
        }

        public Map<String, ?> getAll() {
            Map hashMap;
            synchronized (this) {
                hashMap = new HashMap(this.c);
            }
            return hashMap;
        }

        public String getString(String key, String defValue) {
            String str;
            synchronized (this) {
                str = (String) this.c.get(key);
                if (str == null) {
                    str = defValue;
                }
            }
            return str;
        }

        public long getLong(String key, long defValue) {
            synchronized (this) {
                Long l = (Long) this.c.get(key);
                if (l != null) {
                    defValue = l.longValue();
                }
            }
            return defValue;
        }

        public com.ta.utdid2.c.a.b.a a() {
            return new a();
        }

        private FileOutputStream a(File file) {
            try {
                return new FileOutputStream(file);
            } catch (FileNotFoundException e) {
                if (!file.getParentFile().mkdir()) {
                    return null;
                }
                try {
                    return new FileOutputStream(file);
                } catch (FileNotFoundException e2) {
                    return null;
                }
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:20:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x0041  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private boolean d() {
            if (this.b.exists()) {
                if (this.c.exists()) {
                    this.b.delete();
                } else if (!this.b.renameTo(this.c)) {
                    return false;
                }
            }
            try {
                OutputStream a = a(this.b);
                if (a == null) {
                    return false;
                }
                e.a(this.c, a);
                a.close();
                this.c.delete();
                return true;
            } catch (XmlPullParserException e) {
                if (this.b.exists()) {
                    return false;
                }
                this.b.delete();
                return false;
            } catch (IOException e2) {
                if (this.b.exists()) {
                }
            }
        }
    }

    public d(String str) {
        if (str == null || str.length() <= 0) {
            throw new RuntimeException("Directory can not be empty");
        }
        this.a = new File(str);
    }

    private File a(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }

    private File a() {
        File file;
        synchronized (this.b) {
            file = this.a;
        }
        return file;
    }

    private File b(String str) {
        return a(a(), new StringBuilder(String.valueOf(str)).append(".xml").toString());
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0081 A:{SYNTHETIC, Splitter: B:50:0x0081} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0081 A:{SYNTHETIC, Splitter: B:50:0x0081} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0090 A:{SYNTHETIC, Splitter: B:58:0x0090} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0081 A:{SYNTHETIC, Splitter: B:50:0x0081} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x009f A:{SYNTHETIC, Splitter: B:66:0x009f} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0081 A:{SYNTHETIC, Splitter: B:50:0x0081} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x00a9 A:{SYNTHETIC, Splitter: B:72:0x00a9} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x007c A:{SYNTHETIC, Splitter: B:47:0x007c} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0081 A:{SYNTHETIC, Splitter: B:50:0x0081} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x00bb A:{SYNTHETIC, Splitter: B:86:0x00bb} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x00c8 A:{SYNTHETIC, Splitter: B:94:0x00c8} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x00d5 A:{SYNTHETIC, Splitter: B:102:0x00d5} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x00b0 A:{SYNTHETIC, Splitter: B:78:0x00b0} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b a(String str, int i) {
        b bVar;
        FileInputStream fileInputStream;
        byte[] bArr;
        String str2;
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        FileNotFoundException fileNotFoundException;
        IOException iOException;
        InputStream inputStream;
        Exception e3;
        Map map = null;
        File b = b(str);
        synchronized (c) {
            bVar = (a) this.a.get(b);
            if (bVar == null || bVar.c()) {
                File a = a(b);
                if (a.exists()) {
                    b.delete();
                    a.renameTo(b);
                }
                if (b.exists()) {
                    b.canRead();
                }
                if (b.exists() && b.canRead()) {
                    InputStream fileInputStream2;
                    try {
                        fileInputStream2 = new FileInputStream(b);
                        try {
                            map = e.a(fileInputStream2);
                            fileInputStream2.close();
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (Throwable th2) {
                                }
                            }
                        } catch (XmlPullParserException e4) {
                            try {
                                fileInputStream = new FileInputStream(b);
                                try {
                                    bArr = new byte[fileInputStream.available()];
                                    fileInputStream.read(bArr);
                                    str2 = new String(bArr, 0, bArr.length, "UTF-8");
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (Throwable th3) {
                                        }
                                    }
                                } catch (FileNotFoundException e5) {
                                    e = e5;
                                    try {
                                        e.printStackTrace();
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (Throwable th4) {
                                            }
                                        }
                                        if (fileInputStream != null) {
                                        }
                                        synchronized (c) {
                                        }
                                        return bVar;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        if (fileInputStream != null) {
                                        }
                                        try {
                                            throw th;
                                        } catch (Throwable th6) {
                                            th = th6;
                                        }
                                    }
                                } catch (IOException e6) {
                                    e2 = e6;
                                    e2.printStackTrace();
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (Throwable th7) {
                                        }
                                    }
                                    if (fileInputStream != null) {
                                    }
                                    synchronized (c) {
                                    }
                                    return bVar;
                                }
                            } catch (FileNotFoundException e7) {
                                fileNotFoundException = e7;
                                fileInputStream = fileInputStream2;
                                e = fileNotFoundException;
                                e.printStackTrace();
                                if (fileInputStream != null) {
                                }
                                if (fileInputStream != null) {
                                }
                                synchronized (c) {
                                }
                                return bVar;
                            } catch (IOException e8) {
                                iOException = e8;
                                fileInputStream = fileInputStream2;
                                e2 = iOException;
                                e2.printStackTrace();
                                if (fileInputStream != null) {
                                }
                                if (fileInputStream != null) {
                                }
                                synchronized (c) {
                                }
                                return bVar;
                            } catch (Throwable th8) {
                                th = th8;
                                fileInputStream = fileInputStream2;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (Throwable th9) {
                                    }
                                }
                                throw th;
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th10) {
                                }
                            }
                            synchronized (c) {
                            }
                            return bVar;
                        } catch (FileNotFoundException e72) {
                            fileNotFoundException = e72;
                            inputStream = fileInputStream2;
                            e = fileNotFoundException;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th11) {
                                }
                            }
                            synchronized (c) {
                            }
                            return bVar;
                        } catch (IOException e82) {
                            iOException = e82;
                            inputStream = fileInputStream2;
                            e2 = iOException;
                            e2.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th12) {
                                }
                            }
                            synchronized (c) {
                            }
                            return bVar;
                        } catch (Exception e9) {
                            Exception exception = e9;
                            inputStream = fileInputStream2;
                            e3 = exception;
                            e3.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th13) {
                                }
                            }
                            synchronized (c) {
                            }
                            return bVar;
                        } catch (Throwable th14) {
                            th = th14;
                            inputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th15) {
                                }
                            }
                            throw th;
                        }
                    } catch (XmlPullParserException e10) {
                        fileInputStream2 = null;
                        fileInputStream = new FileInputStream(b);
                        bArr = new byte[fileInputStream.available()];
                        fileInputStream.read(bArr);
                        str2 = new String(bArr, 0, bArr.length, "UTF-8");
                        if (fileInputStream != null) {
                        }
                        if (fileInputStream != null) {
                        }
                        synchronized (c) {
                        }
                        return bVar;
                    } catch (FileNotFoundException e11) {
                        e = e11;
                        fileInputStream = null;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                        }
                        synchronized (c) {
                        }
                        return bVar;
                    } catch (IOException e12) {
                        e2 = e12;
                        fileInputStream = null;
                        e2.printStackTrace();
                        if (fileInputStream != null) {
                        }
                        synchronized (c) {
                        }
                        return bVar;
                    } catch (Exception e13) {
                        e3 = e13;
                        fileInputStream = null;
                        e3.printStackTrace();
                        if (fileInputStream != null) {
                        }
                        synchronized (c) {
                        }
                        return bVar;
                    } catch (Throwable th16) {
                        th = th16;
                        fileInputStream = null;
                        if (fileInputStream != null) {
                        }
                        throw th;
                    }
                }
                synchronized (c) {
                    if (bVar != null) {
                        bVar.a(map);
                    } else {
                        a bVar2 = (a) this.a.get(b);
                        if (bVar2 == null) {
                            bVar2 = new a(b, i, map);
                            this.a.put(b, bVar2);
                        }
                    }
                }
            }
        }
        return bVar2;
    }

    private static File a(File file) {
        return new File(file.getPath() + ".bak");
    }
}
