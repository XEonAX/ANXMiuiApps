package com.nexstreaming.app.common.nexasset.assetpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.nexstreaming.app.common.util.i;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class AssetPackageReader implements Closeable {
    private static Map<String, WeakReference<AssetPackageReader>> h = new HashMap();
    private static Map<String, com.nexstreaming.app.common.nexasset.assetpackage.security.b> i = new HashMap();
    private c a;
    private final Gson b = new Gson();
    private final PackageInfoJSON c;
    private final EncryptionInfoJSON d;
    private final String e;
    private final boolean f;
    private List<f> g = null;
    private final com.nexstreaming.app.common.nexasset.assetpackage.security.a j;
    private Map<String, String> k = null;
    private Map<String, String> l = null;

    public static class EncryptedException extends IOException {
        public EncryptedException(String str) {
            super(str);
        }

        public EncryptedException(String str, Throwable th) {
            super(str, th);
        }

        public EncryptedException(Throwable th) {
            super(th);
        }
    }

    private static class EncryptionInfoJSON {
        public String provider;
        public String psd;

        private EncryptionInfoJSON() {
        }
    }

    private static class ItemInfoJSON {
        public String filename;
        public boolean hidden;
        public String icon;
        public String id;
        public Map<String, String> label;
        public List<String> mergePaths;
        public String sampleText;
        public String thumbnail;
        public String type;

        private ItemInfoJSON() {
        }
    }

    public static class LocalPathNotAvailableException extends IOException {
        public LocalPathNotAvailableException(String str) {
            super(str);
        }

        public LocalPathNotAvailableException(String str, Throwable th) {
            super(str, th);
        }

        public LocalPathNotAvailableException(Throwable th) {
            super(th);
        }
    }

    private static class PackageInfoJSON {
        public Map<String, String> assetName;
        public String format;
        public List<String> itemRoots;
        public int minVersionCode;
        public int packageContentVersion;
        public int targetVersionCode;

        private PackageInfoJSON() {
        }
    }

    public static class PackageReaderException extends IOException {
        PackageReaderException() {
        }

        PackageReaderException(AssetPackageReader assetPackageReader, String str) {
            super(str + " (in package '" + assetPackageReader.f() + "' via " + assetPackageReader.getClass().getSimpleName() + ")");
        }

        PackageReaderException(AssetPackageReader assetPackageReader, String str, Throwable th) {
            super(str + " (in package '" + assetPackageReader.f() + "' via " + assetPackageReader.getClass().getSimpleName() + ")", th);
        }
    }

    private static class a extends WeakReference<AssetPackageReader> {
        private static ReferenceQueue<AssetPackageReader> a = new ReferenceQueue();
        private c b;

        public a(AssetPackageReader assetPackageReader) {
            super(assetPackageReader, a);
            this.b = assetPackageReader.k();
        }

        private static void b() {
            while (true) {
                a aVar = (a) a.poll();
                if (aVar == null) {
                    return;
                }
                if (aVar.b != null) {
                    try {
                        aVar.b.b();
                        Log.d("AssetPackageReader", "Closed cached container reader");
                    } catch (Throwable e) {
                        Log.d("AssetPackageReader", "Error closing container reader", e);
                    }
                    aVar.b = null;
                }
            }
        }
    }

    interface c {
        InputStream a(String str) throws FileNotFoundException, IOException;

        Iterable<String> a();

        File b(String str) throws LocalPathNotAvailableException, EncryptedException, FileNotFoundException, IOException;

        void b() throws IOException;

        Typeface c(String str) throws LocalPathNotAvailableException;

        String c();

        File d();
    }

    private static class b implements c {
        private final String a;
        private AssetManager b;

        private b(AssetManager assetManager, String str) {
            if (assetManager == null) {
                throw new IllegalArgumentException();
            } else if (str == null) {
                throw new IllegalArgumentException();
            } else {
                this.a = str;
                this.b = assetManager;
                Log.d("AssetPackageReader", "Created ACR:" + String.valueOf(this));
            }
        }

        public InputStream a(String str) throws FileNotFoundException, IOException {
            Log.d("AssetPackageReader", "openFile:" + String.valueOf(this));
            return this.b.open(AssetPackageReader.b(this.a, str));
        }

        public Iterable<String> a() {
            return new Iterable<String>() {
                public Iterator<String> iterator() {
                    final List arrayList = new ArrayList();
                    String[] strArr = null;
                    try {
                        strArr = b.this.b.list(b.this.a);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    if (strArr != null) {
                        for (String a : strArr) {
                            arrayList.add(AssetPackageReader.b(b.this.a, a));
                        }
                    }
                    return new Iterator<String>() {
                        public boolean hasNext() {
                            return !arrayList.isEmpty();
                        }

                        /* renamed from: a */
                        public String next() {
                            String[] strArr;
                            int i = 0;
                            String str = (String) arrayList.remove(0);
                            Log.d("AssetPackageReader", "iter:next -> " + str + " (todo list size: " + arrayList.size() + ")");
                            String[] strArr2 = null;
                            try {
                                strArr2 = b.this.b.list(str);
                                Log.d("AssetPackageReader", "Has " + strArr2.length + " children.");
                                strArr = strArr2;
                            } catch (IOException e) {
                                Log.d("AssetPackageReader", "Has no children.");
                                strArr = strArr2;
                            }
                            if (strArr != null && strArr.length > 0) {
                                for (String a : strArr) {
                                    arrayList.add(AssetPackageReader.b(str, a));
                                }
                                Log.d("AssetPackageReader", "Added " + strArr.length + " children; todo list size: " + arrayList.size());
                            }
                            int length = b.this.a.length();
                            if (length > 0) {
                                i = length + 1;
                            }
                            return str.substring(i);
                        }

                        public void remove() {
                        }
                    };
                }
            };
        }

        public void b() throws IOException {
            this.b = null;
        }

        public String c() {
            return "assets:" + this.a;
        }

        public File b(String str) throws LocalPathNotAvailableException, FileNotFoundException, IOException {
            throw new LocalPathNotAvailableException();
        }

        public Typeface c(String str) throws LocalPathNotAvailableException {
            return Typeface.createFromAsset(this.b, AssetPackageReader.b(this.a, str));
        }

        public File d() {
            return null;
        }
    }

    private static class d implements c {
        private final c a;
        private final com.nexstreaming.app.common.nexasset.assetpackage.security.a b;

        private d(c cVar, com.nexstreaming.app.common.nexasset.assetpackage.security.a aVar) {
            this.a = cVar;
            this.b = aVar;
        }

        public InputStream a(String str) throws FileNotFoundException, IOException {
            return this.b.a(this.a.a(str), str);
        }

        public Iterable<String> a() {
            return this.a.a();
        }

        public void b() throws IOException {
            this.a.b();
        }

        public String c() {
            return this.a.c();
        }

        public File b(String str) throws LocalPathNotAvailableException, EncryptedException, FileNotFoundException, IOException {
            if (this.b.a(str)) {
                return this.a.b(str);
            }
            throw new EncryptedException();
        }

        public Typeface c(String str) throws LocalPathNotAvailableException {
            if (this.b.a(str)) {
                return this.a.c(str);
            }
            throw new LocalPathNotAvailableException();
        }

        public File d() {
            return this.a.d();
        }
    }

    private static class e implements c {
        private final File a;

        private e(File file) {
            this.a = file;
        }

        public InputStream a(String str) throws FileNotFoundException, IOException {
            return new FileInputStream(d(str));
        }

        public File b(String str) throws LocalPathNotAvailableException, FileNotFoundException, IOException {
            return d(str);
        }

        public Typeface c(String str) throws LocalPathNotAvailableException {
            return Typeface.createFromFile(d(str));
        }

        public File d() {
            return this.a;
        }

        private String a(File file) {
            String absolutePath = file.getAbsolutePath();
            String absolutePath2 = this.a.getAbsolutePath();
            if (!absolutePath.startsWith(absolutePath2)) {
                throw new IllegalStateException();
            } else if (absolutePath.length() <= absolutePath2.length()) {
                return "";
            } else {
                if (absolutePath.charAt(absolutePath2.length()) == '/') {
                    return absolutePath.substring(absolutePath2.length() + 1);
                }
                return absolutePath.substring(absolutePath2.length());
            }
        }

        private File d(String str) {
            return new File(this.a, str);
        }

        public Iterable<String> a() {
            return new Iterable<String>() {
                public Iterator<String> iterator() {
                    final List arrayList = new ArrayList();
                    File[] listFiles = e.this.a.listFiles();
                    if (listFiles != null) {
                        for (Object add : listFiles) {
                            arrayList.add(add);
                        }
                    }
                    return new Iterator<String>() {
                        public boolean hasNext() {
                            return !arrayList.isEmpty();
                        }

                        /* renamed from: a */
                        public String next() {
                            int i = 0;
                            File file = (File) arrayList.remove(0);
                            if (file.isDirectory()) {
                                File[] listFiles = file.listFiles();
                                if (listFiles != null) {
                                    int length = listFiles.length;
                                    while (i < length) {
                                        arrayList.add(listFiles[i]);
                                        i++;
                                    }
                                }
                            }
                            return e.this.a(file);
                        }

                        public void remove() {
                        }
                    };
                }
            };
        }

        public void b() throws IOException {
        }

        public String c() {
            return "file:" + this.a.getAbsolutePath();
        }
    }

    private static class f implements f {
        Class<? extends c> a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        Map<String, String> h;
        ItemType i;
        ItemCategory j;
        boolean k;

        private f() {
        }

        public String getId() {
            return this.f;
        }

        public String getPackageURI() {
            return this.b;
        }

        public String getFilePath() {
            return this.c;
        }

        public String getIconPath() {
            return this.d;
        }

        public String getThumbPath() {
            return this.e;
        }

        public Map<String, String> getLabel() {
            return this.h;
        }

        public String getSampleText() {
            return this.g;
        }

        public ItemType getType() {
            return this.i;
        }

        public ItemCategory getCategory() {
            return this.j;
        }

        public b getAssetPackage() {
            throw new UnsupportedOperationException();
        }

        public boolean isHidden() {
            return this.k;
        }
    }

    private static class g implements c {
        private final ZipFile a;
        private final File b;

        public g(File file) throws IOException {
            this.a = new ZipFile(file);
            this.b = file;
        }

        public InputStream a(String str) throws FileNotFoundException, IOException {
            ZipEntry entry = this.a.getEntry(str);
            if (entry == null) {
                entry = this.a.getEntry(i.a(i.d(str), i.c(str).toLowerCase(Locale.ENGLISH)));
                if (entry == null) {
                    throw new FileNotFoundException("File '" + str + "' not found in '" + this.a.getName() + "'");
                }
            }
            return this.a.getInputStream(entry);
        }

        public Iterable<String> a() {
            return new Iterable<String>() {
                public Iterator<String> iterator() {
                    final Enumeration entries = g.this.a.entries();
                    return new Iterator<String>() {
                        public boolean hasNext() {
                            return entries.hasMoreElements();
                        }

                        /* renamed from: a */
                        public String next() {
                            return ((ZipEntry) entries.nextElement()).getName();
                        }

                        public void remove() {
                            throw new UnsupportedOperationException();
                        }
                    };
                }
            };
        }

        public void b() throws IOException {
            this.a.close();
        }

        public String c() {
            return "zipfile:" + this.a.getName();
        }

        public File b(String str) throws LocalPathNotAvailableException, FileNotFoundException, IOException {
            throw new LocalPathNotAvailableException();
        }

        public Typeface c(String str) throws LocalPathNotAvailableException {
            throw new LocalPathNotAvailableException();
        }

        public File d() {
            return this.b;
        }
    }

    public static String[] a() {
        int i = 0;
        List<String> arrayList = new ArrayList();
        for (Entry value : i.entrySet()) {
            for (Object add : ((com.nexstreaming.app.common.nexasset.assetpackage.security.b) value.getValue()).b()) {
                arrayList.add(add);
            }
        }
        String[] strArr = new String[arrayList.size()];
        for (String str : arrayList) {
            int i2 = i + 1;
            strArr[i] = str;
            i = i2;
        }
        return strArr;
    }

    public static void a(com.nexstreaming.app.common.nexasset.assetpackage.security.b bVar) {
        String a = bVar.a();
        if (a == null || a.length() < 1) {
            throw new IllegalArgumentException("id is null or empty");
        } else if (i.get(a) != null) {
            throw new IllegalStateException("id already in use :" + i.get(a));
        } else if (i.values().contains(bVar)) {
            throw new IllegalStateException("provider already registered");
        } else {
            i.put(a, bVar);
        }
    }

    public static void b(com.nexstreaming.app.common.nexasset.assetpackage.security.b bVar) {
        if (bVar != null) {
            if (i.get(bVar.a()) != bVar) {
                throw new IllegalStateException();
            }
            i.remove(bVar.a());
        }
    }

    public static AssetPackageReader a(File file, String str) throws IOException {
        return new AssetPackageReader(new g(file), str, false);
    }

    public static AssetPackageReader b(File file, String str) throws IOException {
        return new AssetPackageReader(new e(file), str, false);
    }

    public static AssetPackageReader a(AssetManager assetManager, String str, String str2) throws IOException {
        return new AssetPackageReader(new b(assetManager, str), str2, false);
    }

    /* JADX WARNING: Missing block: B:3:0x0015, code:
            if (r0 != null) goto L_0x0017;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static AssetPackageReader a(Context context, String str, String str2) throws IOException {
        AssetPackageReader assetPackageReader;
        a.b();
        WeakReference weakReference = (WeakReference) h.get(str);
        if (weakReference != null) {
            assetPackageReader = (AssetPackageReader) weakReference.get();
        }
        String substring = str.substring(str.indexOf(58) + 1);
        if (str.startsWith("assets:")) {
            assetPackageReader = new AssetPackageReader(new b(context.getApplicationContext().getAssets(), substring), str2, true);
        } else if (str.startsWith("file:")) {
            assetPackageReader = new AssetPackageReader(new e(new File(substring)), str2, true);
        } else if (str.startsWith("zipfile:")) {
            assetPackageReader = new AssetPackageReader(new g(new File(substring)), str2, true);
        } else {
            throw new PackageReaderException();
        }
        h.put(str, new a(assetPackageReader));
        return assetPackageReader;
    }

    private AssetPackageReader(c cVar, String str, boolean z) throws IOException {
        Log.d("AssetPackageReader", "NEW APR Instance (Container:" + cVar.getClass().getSimpleName() + ") baseId=" + str + " shared=" + z);
        this.a = cVar;
        this.e = str;
        this.f = z;
        this.d = h();
        this.j = a(this.d);
        if (this.j != null) {
            this.a = new d(cVar, this.j);
        }
        this.c = i();
    }

    public int b() {
        return this.c.packageContentVersion;
    }

    public int c() {
        return this.c.minVersionCode;
    }

    public List<f> d() throws IOException {
        j();
        return this.g;
    }

    private EncryptionInfoJSON h() throws IOException {
        Closeable closeable;
        Throwable th;
        Closeable a;
        try {
            a = this.a.a("e.json");
            try {
                EncryptionInfoJSON encryptionInfoJSON = (EncryptionInfoJSON) this.b.fromJson(new InputStreamReader(a), EncryptionInfoJSON.class);
                Log.d("AssetPackageReader", "Parse e.json file! : " + encryptionInfoJSON.provider.toString() + " / " + encryptionInfoJSON.psd.toString());
                com.nexstreaming.app.common.util.b.a(a);
                return encryptionInfoJSON;
            } catch (FileNotFoundException e) {
                closeable = a;
                com.nexstreaming.app.common.util.b.a(closeable);
                return null;
            } catch (Throwable th2) {
                th = th2;
                com.nexstreaming.app.common.util.b.a(a);
                throw th;
            }
        } catch (FileNotFoundException e2) {
            closeable = null;
        } catch (Throwable th3) {
            th = th3;
            a = null;
            com.nexstreaming.app.common.util.b.a(a);
            throw th;
        }
    }

    private com.nexstreaming.app.common.nexasset.assetpackage.security.a a(EncryptionInfoJSON encryptionInfoJSON) throws PackageReaderException {
        if (encryptionInfoJSON == null || encryptionInfoJSON.provider == null || encryptionInfoJSON.provider.length() <= 0) {
            return null;
        }
        com.nexstreaming.app.common.nexasset.assetpackage.security.b bVar = (com.nexstreaming.app.common.nexasset.assetpackage.security.b) i.get(encryptionInfoJSON.provider);
        if (bVar != null) {
            return bVar.a(encryptionInfoJSON.psd);
        }
        throw new PackageReaderException(this, "invalid provider");
    }

    private PackageInfoJSON i() throws IOException {
        Log.d("AssetPackageReader", "readPackageInfo IN");
        InputStream a;
        try {
            a = this.a.a("packageinfo.json");
            PackageInfoJSON packageInfoJSON = (PackageInfoJSON) this.b.fromJson(new InputStreamReader(a), PackageInfoJSON.class);
            Log.d("AssetPackageReader", "readPackageInfo(), asset name: " + packageInfoJSON.assetName);
            if (packageInfoJSON.assetName != null && packageInfoJSON.assetName.size() > 0) {
                Set<String> keySet = packageInfoJSON.assetName.keySet();
                Map hashMap = new HashMap();
                for (String str : keySet) {
                    hashMap.put(str.toLowerCase(Locale.ENGLISH), packageInfoJSON.assetName.get(str));
                }
                packageInfoJSON.assetName.clear();
                packageInfoJSON.assetName.putAll(hashMap);
            }
            a.close();
            if (packageInfoJSON.minVersionCode > 6) {
                Log.w("AssetPackageReader", "Unsupported package format version: " + packageInfoJSON.minVersionCode);
                throw new PackageReaderException(this, "Unsupported package format version");
            } else if (packageInfoJSON.format == null) {
                Log.w("AssetPackageReader", "Missing package format");
                throw new PackageReaderException(this, "Missing package format");
            } else if (packageInfoJSON.format.equals("com.kinemaster.assetpackage")) {
                Log.d("AssetPackageReader", "readPackageInfo OUT");
                return packageInfoJSON;
            } else {
                Log.w("AssetPackageReader", "Unsupported package format: " + packageInfoJSON.format);
                throw new PackageReaderException(this, "Unsupported package format: " + packageInfoJSON.format);
            }
        } catch (Throwable e) {
            Log.w("AssetPackageReader", "Package missing file: packageinfo.json", e);
            throw new PackageReaderException(this, "Package missing file: packageinfo.json", e);
        } catch (Throwable e2) {
            Log.w("AssetPackageReader", "PackageInfoJSON file : packageinfo.json", e2);
            throw new PackageReaderException(this, "PackageInfoJSON file: packageinfo.json", e2);
        } catch (Throwable th) {
            a.close();
        }
    }

    public Map<String, String> e() {
        return this.c.assetName;
    }

    private void j() throws IOException {
        if (this.g == null) {
            List arrayList = new ArrayList();
            int i;
            f e;
            if (this.c.itemRoots == null || this.c.itemRoots.size() <= 0) {
                Log.d("AssetPackageReader", "makeItemList: no root index; scanning entire package");
                i = 0;
                for (String str : this.a.a()) {
                    if (str != null) {
                        i++;
                        e = e(str);
                        if (e != null) {
                            arrayList.add(e);
                        }
                    }
                }
            } else {
                Log.d("AssetPackageReader", "makeItemList: using root index");
                i = 0;
                for (String str2 : this.c.itemRoots) {
                    if (str2 != null) {
                        i++;
                        e = e(b(str2, "_info.json"));
                        if (e != null) {
                            arrayList.add(e);
                        }
                    }
                }
            }
            this.g = arrayList;
        }
    }

    private f e(String str) throws IOException {
        if (!str.endsWith("/_info.json")) {
            return null;
        }
        int indexOf = str.indexOf(47);
        int indexOf2 = str.indexOf(47, indexOf + 1);
        int indexOf3 = str.indexOf(47, indexOf2 + 1);
        if (indexOf == -1 || indexOf2 == -1 || indexOf3 != -1) {
            Log.w("AssetPackageReader", "Malformed path");
            return null;
        } else if (str.startsWith("merge/")) {
            return null;
        } else {
            ItemCategory itemCategory;
            for (ItemCategory itemCategory2 : ItemCategory.values()) {
                String name = itemCategory2.name();
                if (name.length() == indexOf && str.startsWith(name)) {
                    itemCategory = itemCategory2;
                    break;
                }
            }
            itemCategory = null;
            if (itemCategory == null) {
                Log.w("AssetPackageReader", "Unrecognized item category");
                return null;
            }
            String substring = str.substring(indexOf + 1, indexOf2);
            String substring2 = str.substring(0, indexOf2 + 1);
            InputStream a;
            try {
                a = this.a.a(str);
                ItemInfoJSON itemInfoJSON = (ItemInfoJSON) this.b.fromJson(new InputStreamReader(a), ItemInfoJSON.class);
                if (!(itemInfoJSON == null || itemInfoJSON.label == null || itemInfoJSON.label.size() <= 0)) {
                    Set<String> keySet = itemInfoJSON.label.keySet();
                    Map hashMap = new HashMap();
                    for (String str2 : keySet) {
                        hashMap.put(str2.toLowerCase(Locale.ENGLISH), itemInfoJSON.label.get(str2));
                    }
                    itemInfoJSON.label.clear();
                    itemInfoJSON.label.putAll(hashMap);
                }
                a.close();
                if (itemInfoJSON.filename == null) {
                    throw new PackageReaderException(this, "Missing base file for: " + str);
                }
                if (itemInfoJSON.icon == null) {
                    itemInfoJSON.icon = "_icon.svg";
                }
                if (itemInfoJSON.thumbnail == null) {
                    itemInfoJSON.thumbnail = "_thumb.jpeg";
                }
                if (itemInfoJSON.id == null) {
                    itemInfoJSON.id = this.e + ".items." + substring;
                }
                ItemType fromId = ItemType.fromId(itemInfoJSON.type);
                if (fromId == null) {
                    throw new PackageReaderException(this, "Unrecognized item type '" + itemInfoJSON.type + "' for: " + str);
                }
                f fVar = new f();
                fVar.a = this.a.getClass();
                fVar.b = this.a.c();
                fVar.c = b(substring2, itemInfoJSON.filename);
                fVar.d = b(substring2, itemInfoJSON.icon);
                fVar.e = b(substring2, itemInfoJSON.thumbnail);
                fVar.f = itemInfoJSON.id;
                fVar.h = itemInfoJSON.label;
                fVar.i = fromId;
                fVar.j = itemCategory;
                fVar.g = itemInfoJSON.sampleText;
                fVar.k = itemInfoJSON.hidden;
                return fVar;
            } catch (Throwable e) {
                throw new PackageReaderException(this, "JSON Syntax Error in: " + str, e);
            } catch (Throwable e2) {
                Log.w("AssetPackageReader", "Item in index but missing in package", e2);
                return null;
            } catch (Throwable th) {
                a.close();
            }
        }
    }

    private static String b(String str, String str2) {
        if (str2.startsWith("..") || str2.contains("/..")) {
            throw new SecurityException("Parent Path References Not Allowed");
        } else if (str.endsWith("/")) {
            return str + str2;
        } else {
            return str + "/" + str2;
        }
    }

    public InputStream a(String str) throws FileNotFoundException, IOException {
        String str2;
        Closeable a;
        ItemInfoJSON itemInfoJSON;
        Closeable closeable;
        Throwable th;
        if (this.k != null) {
            str2 = (String) this.k.get(str);
            if (str2 != null && str2.length() > 0) {
                return this.a.a(str2);
            }
        }
        try {
            return this.a.a(str);
        } catch (FileNotFoundException e) {
            FileNotFoundException fileNotFoundException = e;
            ItemInfoJSON itemInfoJSON2 = null;
            String d = i.d(str);
            while (d != null) {
                try {
                    a = this.a.a(i.b(d, "_info.json"));
                    try {
                        itemInfoJSON = (ItemInfoJSON) this.b.fromJson(new InputStreamReader(a), ItemInfoJSON.class);
                        if (itemInfoJSON != null) {
                            com.nexstreaming.app.common.util.b.a(a);
                            break;
                        }
                        com.nexstreaming.app.common.util.b.a(a);
                        d = i.b(d);
                        itemInfoJSON2 = itemInfoJSON;
                    } catch (FileNotFoundException e2) {
                        closeable = a;
                        com.nexstreaming.app.common.util.b.a(closeable);
                        itemInfoJSON = itemInfoJSON2;
                        d = i.b(d);
                        itemInfoJSON2 = itemInfoJSON;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (FileNotFoundException e3) {
                    closeable = null;
                } catch (Throwable th3) {
                    th = th3;
                    a = null;
                }
            }
            itemInfoJSON = itemInfoJSON2;
            if (!(itemInfoJSON == null || itemInfoJSON.mergePaths == null)) {
                String substring = str.substring(d.length(), str.length());
                for (String str22 : itemInfoJSON.mergePaths) {
                    if (str22 != null) {
                        str22 = i.a("merge", str22.trim());
                        if (!str22.endsWith("/")) {
                            str22 = str22 + "/";
                        }
                        if (str22.length() > 0) {
                            String b = i.b(str22, substring);
                            try {
                                InputStream a2 = this.a.a(b);
                                if (this.k == null) {
                                    this.k = new HashMap();
                                }
                                this.k.put(str, b);
                                return a2;
                            } catch (FileNotFoundException e4) {
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            throw fileNotFoundException;
        }
        com.nexstreaming.app.common.util.b.a(a);
        throw th;
    }

    public String b(String str) {
        String str2;
        Closeable a;
        ItemInfoJSON itemInfoJSON;
        Closeable closeable;
        Throwable th;
        if (this.l != null) {
            str2 = (String) this.l.get(str);
            if (str2 != null && str2.length() > 0) {
                return str2;
            }
        }
        ItemInfoJSON itemInfoJSON2 = null;
        String d = i.d(str);
        while (d != null) {
            try {
                a = this.a.a(i.b(d, "_info.json"));
                try {
                    itemInfoJSON = (ItemInfoJSON) this.b.fromJson(new InputStreamReader(a), ItemInfoJSON.class);
                    if (itemInfoJSON != null) {
                        com.nexstreaming.app.common.util.b.a(a);
                        break;
                    }
                    com.nexstreaming.app.common.util.b.a(a);
                    d = i.b(d);
                    itemInfoJSON2 = itemInfoJSON;
                } catch (FileNotFoundException e) {
                    closeable = a;
                    com.nexstreaming.app.common.util.b.a(closeable);
                    itemInfoJSON = itemInfoJSON2;
                    d = i.b(d);
                    itemInfoJSON2 = itemInfoJSON;
                } catch (IOException e2) {
                    com.nexstreaming.app.common.util.b.a(a);
                    itemInfoJSON = itemInfoJSON2;
                    d = i.b(d);
                    itemInfoJSON2 = itemInfoJSON;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e3) {
                closeable = null;
            } catch (IOException e4) {
                a = null;
                com.nexstreaming.app.common.util.b.a(a);
                itemInfoJSON = itemInfoJSON2;
                d = i.b(d);
                itemInfoJSON2 = itemInfoJSON;
            } catch (Throwable th3) {
                th = th3;
                a = null;
            }
        }
        itemInfoJSON = itemInfoJSON2;
        if (!(itemInfoJSON == null || itemInfoJSON.mergePaths == null)) {
            String substring = str.substring(d.length(), str.length());
            for (String str22 : itemInfoJSON.mergePaths) {
                if (str22 != null) {
                    str22 = i.a("merge", str22.trim());
                    if (!str22.endsWith("/")) {
                        str22 = str22 + "/";
                    }
                    if (str22.length() > 0) {
                        str22 = i.b(str22, substring);
                        if (this.l == null) {
                            this.l = new HashMap();
                        }
                        Log.d("AssetPackageReader", "getFilePath mergePath : " + str22);
                        this.l.put(str, str22);
                        return str22;
                    }
                }
            }
        }
        return null;
        com.nexstreaming.app.common.util.b.a(a);
        throw th;
    }

    public void close() throws IOException {
        if (!this.f) {
            this.a.b();
        }
    }

    public String f() {
        return this.a.c();
    }

    public File g() {
        return this.a.d();
    }

    public File c(String str) throws IOException, LocalPathNotAvailableException {
        return this.a.b(str);
    }

    public Typeface d(String str) throws LocalPathNotAvailableException {
        return this.a.c(str);
    }

    private c k() {
        return this.a;
    }
}
