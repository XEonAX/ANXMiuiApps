package com.nexstreaming.app.common.nexasset.assetpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.sqlite.SQLiteFullException;
import android.graphics.Typeface;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.db.AssetPackageDb;
import com.nexstreaming.app.common.nexasset.assetpackage.db.AssetPackageRecord;
import com.nexstreaming.app.common.nexasset.assetpackage.db.CategoryRecord;
import com.nexstreaming.app.common.nexasset.assetpackage.db.InstallSourceRecord;
import com.nexstreaming.app.common.nexasset.assetpackage.db.ItemRecord;
import com.nexstreaming.app.common.nexasset.assetpackage.db.SubCategoryRecord;
import com.nexstreaming.app.common.nexasset.store.AbstractStoreAssetInfo;
import com.nexstreaming.app.common.nexasset.store.StoreAssetInfo;
import com.nexstreaming.app.common.norm.b;
import com.nexstreaming.app.common.util.h;
import com.nexstreaming.app.common.util.m;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.kminternal.kinemaster.fonts.Font.TypefaceLoadException;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: AssetPackageManager */
public class c {
    private static c a;
    private final AssetPackageDb b;
    private InstallSourceRecord c = null;

    /* compiled from: AssetPackageManager */
    /* renamed from: com.nexstreaming.app.common.nexasset.assetpackage.c$5 */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] a = new int[ItemType.values().length];

        static {
            b = new int[InstallSourceType.values().length];
            try {
                b[InstallSourceType.STORE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[InstallSourceType.APP_ASSETS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[InstallSourceType.FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[ItemType.audio.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[ItemType.font.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public static c a(Context context) {
        if (a == null) {
            a = new c(context.getApplicationContext());
        }
        return a;
    }

    public static c a() {
        if (a == null) {
            a = new c(a.a().b());
        }
        return a;
    }

    private c(Context context) {
        this.b = new AssetPackageDb(context);
    }

    public void a(File file, File file2, StoreAssetInfo storeAssetInfo) throws IOException {
        AssetPackageReader b;
        if (file.isDirectory()) {
            b = AssetPackageReader.b(file, storeAssetInfo.getAssetId());
        } else {
            b = AssetPackageReader.a(file, storeAssetInfo.getAssetId());
        }
        a(b, file2, storeAssetInfo, f());
    }

    private InstallSourceRecord f() {
        if (this.c != null) {
            return this.c;
        }
        InstallSourceRecord installSourceRecord = (InstallSourceRecord) this.b.findFirst(InstallSourceRecord.class, "install_source_id = ?", "store");
        if (installSourceRecord == null) {
            installSourceRecord = new InstallSourceRecord();
            installSourceRecord.installSourceId = "store";
            installSourceRecord.installSourceType = InstallSourceType.STORE;
            installSourceRecord.installSourceVersion = 0;
            this.b.add(installSourceRecord);
        }
        this.c = installSourceRecord;
        return installSourceRecord;
    }

    private InstallSourceRecord a(InstallSourceType installSourceType, String str) {
        String str2;
        switch (installSourceType) {
            case STORE:
                return f();
            case APP_ASSETS:
                str2 = "assets:" + str;
                break;
            case FOLDER:
                str2 = "file:" + str;
                break;
            default:
                throw new IllegalArgumentException();
        }
        InstallSourceRecord installSourceRecord = (InstallSourceRecord) this.b.findFirst(InstallSourceRecord.class, "install_source_id = ?", str2);
        if (installSourceRecord != null) {
            return installSourceRecord;
        }
        installSourceRecord = new InstallSourceRecord();
        installSourceRecord.installSourceId = str2;
        installSourceRecord.installSourceType = installSourceType;
        installSourceRecord.installSourceVersion = 0;
        this.b.add(installSourceRecord);
        return installSourceRecord;
    }

    private void a(AssetPackageReader assetPackageReader, File file, StoreAssetInfo storeAssetInfo, InstallSourceRecord installSourceRecord) throws IOException {
        int i = 0;
        this.b.beginTransaction();
        try {
            b categoryRecord;
            CategoryRecord categoryRecord2;
            SubCategoryRecord subCategoryRecord;
            b subCategoryRecord2;
            if (storeAssetInfo.getCategoryIndex() != 0) {
                CategoryRecord categoryRecord3 = (CategoryRecord) this.b.findFirst(CategoryRecord.class, "category_id = ?", Integer.valueOf(storeAssetInfo.getCategoryIndex()));
                if (categoryRecord3 == null) {
                    categoryRecord = new CategoryRecord();
                    categoryRecord.categoryId = (long) storeAssetInfo.getCategoryIndex();
                    categoryRecord.categoryName = storeAssetInfo.getCategoryAliasName();
                    categoryRecord.categoryIconURL = storeAssetInfo.getCategoryIconURL();
                    this.b.addOrUpdate(categoryRecord);
                    categoryRecord2 = categoryRecord;
                } else {
                    if (!(categoryRecord3.categoryIconURL == null || storeAssetInfo.getCategoryIconURL() == null || categoryRecord3.categoryIconURL.equals(storeAssetInfo.getCategoryIconURL()))) {
                        categoryRecord3.categoryIconURL = storeAssetInfo.getCategoryIconURL();
                        this.b.update(categoryRecord3);
                    }
                    categoryRecord2 = categoryRecord3;
                }
            } else {
                categoryRecord2 = null;
            }
            SubCategoryRecord subCategoryRecord3;
            if (storeAssetInfo.getSubCategoryIndex() != 0) {
                subCategoryRecord3 = (SubCategoryRecord) this.b.findFirst(SubCategoryRecord.class, "sub_category_id = ?", Integer.valueOf(storeAssetInfo.getSubCategoryIndex()));
                if (subCategoryRecord3 == null) {
                    categoryRecord = new SubCategoryRecord();
                    categoryRecord.subCategoryId = (long) storeAssetInfo.getSubCategoryIndex();
                    categoryRecord.subCategoryName = storeAssetInfo.getSubCategoryNameMap();
                    categoryRecord.subCategoryAlias = storeAssetInfo.getSubCategoryAliasName();
                    this.b.add(categoryRecord);
                    subCategoryRecord2 = categoryRecord;
                } else {
                    subCategoryRecord3.subCategoryName = storeAssetInfo.getSubCategoryNameMap();
                    this.b.update(subCategoryRecord3);
                    subCategoryRecord2 = subCategoryRecord3;
                }
            } else {
                subCategoryRecord3 = (SubCategoryRecord) this.b.findFirst(SubCategoryRecord.class, "sub_category_id = ?", Long.valueOf(-1));
                if (subCategoryRecord3 == null) {
                    Map hashMap = new HashMap();
                    hashMap.put("en", "Local");
                    categoryRecord = new SubCategoryRecord();
                    categoryRecord.subCategoryId = -1;
                    categoryRecord.subCategoryAlias = "local";
                    categoryRecord.subCategoryName = hashMap;
                    this.b.add(categoryRecord);
                    subCategoryRecord2 = categoryRecord;
                } else {
                    subCategoryRecord2 = subCategoryRecord3;
                }
            }
            b assetPackageRecord = new AssetPackageRecord();
            assetPackageRecord.assetIdx = storeAssetInfo.getAssetIndex();
            assetPackageRecord.packageURI = assetPackageReader.f();
            assetPackageRecord.assetId = storeAssetInfo.getAssetId();
            assetPackageRecord.assetUrl = storeAssetInfo.getAssetPackageDownloadURL();
            assetPackageRecord.thumbPath = file == null ? null : file.getAbsolutePath();
            assetPackageRecord.assetDesc = null;
            assetPackageRecord.assetName = storeAssetInfo.getAssetNameMap();
            if (assetPackageRecord.assetName.size() < 1) {
                assetPackageRecord.assetName = assetPackageReader.e();
            }
            assetPackageRecord.priceType = storeAssetInfo.getPriceType();
            assetPackageRecord.thumbUrl = storeAssetInfo.getAssetThumbnailURL();
            assetPackageRecord.installSource = installSourceRecord;
            assetPackageRecord.category = categoryRecord2;
            assetPackageRecord.subCategory = subCategoryRecord2;
            File g = assetPackageReader.g();
            assetPackageRecord.localPath = g == null ? null : g.getAbsolutePath();
            assetPackageRecord.expireTime = storeAssetInfo.getExpireTime();
            assetPackageRecord.installedTime = System.currentTimeMillis();
            assetPackageRecord.minVersion = storeAssetInfo.getAssetScopeVersion();
            assetPackageRecord.packageVersion = storeAssetInfo.getAssetVersion();
            this.b.add(assetPackageRecord);
            for (f fVar : assetPackageReader.d()) {
                subCategoryRecord2 = new ItemRecord();
                subCategoryRecord2.assetPackageRecord = assetPackageRecord;
                subCategoryRecord2.itemId = fVar.getId();
                subCategoryRecord2.packageURI = fVar.getPackageURI();
                subCategoryRecord2.filePath = fVar.getFilePath();
                subCategoryRecord2.iconPath = fVar.getIconPath();
                subCategoryRecord2.hidden = fVar.isHidden();
                subCategoryRecord2.thumbPath = fVar.getThumbPath();
                subCategoryRecord2.label = fVar.getLabel();
                subCategoryRecord2.itemType = fVar.getType();
                subCategoryRecord2.itemCategory = fVar.getCategory();
                subCategoryRecord2.sampleText = fVar.getSampleText();
                this.b.add(subCategoryRecord2);
                i++;
            }
            assetPackageReader.close();
            this.b.setTransactionSuccessful();
            Log.d("AssetPackageManager", "Added DB Record for: " + assetPackageRecord.assetId + " and " + i + " items.");
            try {
                this.b.endTransaction();
            } catch (Throwable e) {
                Log.d("AssetPackageManager", "AssetPackageDb.endTransaction() throws SQLiteFullException. e=" + e);
                throw new IOException(e);
            }
        } catch (Throwable th) {
            try {
                this.b.endTransaction();
            } catch (Throwable e2) {
                Log.d("AssetPackageManager", "AssetPackageDb.endTransaction() throws SQLiteFullException. e=" + e2);
                throw new IOException(e2);
            }
        }
    }

    public void a(Context context, String str, long j) throws IOException {
        Log.d("AssetPackageManager", "syncPackagesFromAndroidAssets - IN : " + str);
        InstallSourceRecord a = a(InstallSourceType.APP_ASSETS, str);
        Log.d("AssetPackageManager", "syncPackagesFromAndroidAssets - ISR CHECK: " + a.installSourceVersion + " / " + j);
        if (a.installSourceVersion != j) {
            Log.d("AssetPackageManager", "syncPackagesFromAndroidAssets - ISR MISMATCH; UPDATING : " + a.installSourceVersion + " -> " + j);
            a.installSourceVersion = 0;
            this.b.update(a);
            a(a);
            AssetManager assets = context.getAssets();
            for (final String str2 : assets.list(str)) {
                String[] list;
                String b = b(str, str2);
                try {
                    list = assets.list(b);
                } catch (IOException e) {
                    list = null;
                }
                if (list != null && list.length > 0) {
                    Log.d("AssetPackageManager", "syncPackagesFromAndroidAssets - Processing package: " + str2 + " (in " + b + ")");
                    AssetPackageReader a2 = AssetPackageReader.a(assets, b, str2);
                    a(a2, null, new AbstractStoreAssetInfo(a2.c(), a2.b()) {
                        public String getAssetId() {
                            return str2;
                        }

                        public String getAssetTitle() {
                            return str2;
                        }

                        public String getSubCategoryAliasName() {
                            return "local";
                        }
                    }, a);
                }
            }
            a.installSourceVersion = j;
            this.b.update(a);
        }
        Log.d("AssetPackageManager", "syncPackagesFromAndroidAssets - OUT");
    }

    public void a(File file) {
        InstallSourceRecord a = a(InstallSourceType.FOLDER, file.getAbsolutePath());
        a(a);
        a.installSourceVersion = 0;
        this.b.update(a);
    }

    public boolean b(File file) throws IOException {
        InstallSourceRecord a = a(InstallSourceType.FOLDER, file.getAbsolutePath());
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length < 1) {
            a(a);
            return false;
        }
        long j = 0;
        for (File lastModified : listFiles) {
            j = Math.max(j, lastModified.lastModified());
        }
        if (a.installSourceVersion == j) {
            return false;
        }
        a.installSourceVersion = 0;
        this.b.update(a);
        a(a);
        for (File file2 : listFiles) {
            String name;
            AssetPackageReader b;
            if (file2.isDirectory()) {
                name = file2.getName();
                b = AssetPackageReader.b(file2, name);
            } else if (file2.getName().endsWith(".zip")) {
                name = file2.getName();
                name = name.substring(0, name.length() - 4);
                b = AssetPackageReader.a(file2, name);
            } else {
                b = null;
                name = null;
            }
            if (b != null) {
                a(b, null, new AbstractStoreAssetInfo(b.c(), b.b()) {
                    public int getAssetIndex() {
                        return 1;
                    }

                    public String getAssetId() {
                        return name;
                    }

                    public String getSubCategoryAliasName() {
                        return "local";
                    }
                }, a);
            }
        }
        a.installSourceVersion = j;
        this.b.update(a);
        return true;
    }

    public void a(InstallSourceRecord installSourceRecord) {
        this.b.beginTransaction();
        try {
            for (AssetPackageRecord dbRowID : this.b.query(AssetPackageRecord.class, "install_source = ?", Long.valueOf(installSourceRecord.getDbRowID()))) {
                for (ItemRecord delete : this.b.query(ItemRecord.class, "asset_package_record = ?", Long.valueOf(dbRowID.getDbRowID()))) {
                    this.b.delete(delete);
                }
                this.b.delete(dbRowID);
            }
            this.b.setTransactionSuccessful();
        } finally {
            try {
                this.b.endTransaction();
            } catch (SQLiteFullException e) {
                Log.d("AssetPackageManager", "AssetPackageDb.endTransaction() throws SQLiteFullException. e=" + e);
            }
        }
    }

    public void a(int i) {
        this.b.beginTransaction();
        try {
            for (ItemRecord delete : this.b.query(ItemRecord.class, "asset_package_record = ?", Long.valueOf(((AssetPackageRecord) this.b.findFirst(AssetPackageRecord.class, "asset_idx = ?", Integer.valueOf(i))).getDbRowID()))) {
                this.b.delete(delete);
            }
            this.b.delete(r0);
            this.b.setTransactionSuccessful();
        } finally {
            try {
                this.b.endTransaction();
            } catch (SQLiteFullException e) {
                Log.d("AssetPackageManager", "AssetPackageDb.endTransaction() throws SQLiteFullException. e=" + e);
            }
        }
    }

    public b a(String str) {
        return (b) this.b.findFirst(AssetPackageRecord.class, "asset_id = ?", str);
    }

    public b b(int i) {
        return (b) this.b.findFirst(AssetPackageRecord.class, "asset_idx = ?", Integer.valueOf(i));
    }

    public List<? extends b> b() {
        return this.b.query(AssetPackageRecord.class);
    }

    public List<? extends f> b(String str) {
        long findFirstRowId = this.b.findFirstRowId(AssetPackageRecord.class, "asset_id = ?", str);
        return this.b.query(ItemRecord.class, "asset_package_record = ?", Long.valueOf(findFirstRowId));
    }

    public List<? extends f> c(int i) {
        long findFirstRowId = this.b.findFirstRowId(AssetPackageRecord.class, "asset_idx = ?", Integer.valueOf(i));
        return this.b.query(ItemRecord.class, "asset_package_record = ?", Long.valueOf(findFirstRowId));
    }

    public List<? extends f> a(ItemCategory itemCategory) {
        return this.b.query(ItemRecord.class, "item_category = ?", itemCategory);
    }

    public List<? extends f> a(int i, ItemCategory itemCategory) {
        long findFirstRowId = this.b.findFirstRowId(AssetPackageRecord.class, "asset_idx = ?", Integer.valueOf(i));
        return this.b.query(ItemRecord.class, "asset_package_record = ? AND item_category = ?", Long.valueOf(findFirstRowId), itemCategory);
    }

    public boolean a(String str, ItemCategory itemCategory) {
        long findFirstRowId = this.b.findFirstRowId(AssetPackageRecord.class, "asset_id = ?", str);
        if (this.b.count(ItemRecord.class, "asset_package_record = ? AND item_category = ?", Long.valueOf(findFirstRowId), itemCategory) > 0) {
            return true;
        }
        return false;
    }

    public List<? extends f> c() {
        return this.b.query(ItemRecord.class);
    }

    public List<? extends a> d() {
        List arrayList = new ArrayList();
        for (CategoryRecord dbRowID : this.b.query(CategoryRecord.class)) {
            if (this.b.count(AssetPackageRecord.class, "category = ?", Long.valueOf(dbRowID.getDbRowID())) > 0) {
                arrayList.add((CategoryRecord) r2.next());
            }
        }
        return a(arrayList);
    }

    private List<a> a(List<? extends a> list) {
        List<a> arrayList = new ArrayList();
        Collection<Object> arrayList2 = new ArrayList(list);
        for (AssetCategoryAlias assetCategoryAlias : AssetCategoryAlias.values()) {
            for (Object obj : arrayList2) {
                if (!obj.getCategoryAlias().equalsIgnoreCase(assetCategoryAlias.name())) {
                    if (obj.getCategoryAlias().equalsIgnoreCase(assetCategoryAlias.name() + "s")) {
                        break;
                    }
                }
                break;
            }
            Object obj2 = null;
            if (obj2 != null) {
                arrayList.add(obj2);
                arrayList2.remove(obj2);
            }
        }
        if (!arrayList2.isEmpty()) {
            Collections.sort(arrayList2, new Comparator<a>() {
                /* renamed from: a */
                public int compare(a aVar, a aVar2) {
                    return aVar.getCategoryAlias().compareTo(aVar2.getCategoryAlias());
                }
            });
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public f c(String str) {
        return (f) this.b.findFirst(ItemRecord.class, "item_id = ?", str);
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

    private static String c(String str, String str2) {
        if (str2.startsWith("..") || str2.contains("/..")) {
            throw new SecurityException("Parent Path References Not Allowed");
        } else if (str.endsWith("/")) {
            return str + str2;
        } else {
            int lastIndexOf = str.lastIndexOf(47);
            return lastIndexOf >= 0 ? str.substring(0, lastIndexOf + 1) + str2 : str2;
        }
    }

    public void a(Iterable<String> iterable, NexEditor nexEditor, boolean z, boolean z2) {
        if (nexEditor != null && iterable != null) {
            try {
                nexEditor.b(a((Iterable) iterable, z2), z);
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void a(Iterable<String> iterable, NexEditor nexEditor, boolean z) {
        if (nexEditor != null && iterable != null) {
            Log.d("AssetPackageManager", "loadRenderItemsInEditor");
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Context b = a.a().b();
            nexEditor.a(z);
            for (String str : iterable) {
                if (str != null) {
                    f c;
                    if (str.endsWith(".force_effect")) {
                        c = c(str.substring(0, str.length() - ".force_effect".length()));
                    } else {
                        c = c(str);
                    }
                    if (c == null) {
                        Log.w("AssetPackageManager", "Could not find item for id: " + str);
                    } else if (c.getType() == ItemType.renderitem) {
                        AssetPackageReader a;
                        try {
                            a = AssetPackageReader.a(b, c.getPackageURI(), c.getAssetPackage().getAssetId());
                            InputStream a2 = a.a(c.getFilePath());
                            byteArrayOutputStream.reset();
                            m.a(a2, byteArrayOutputStream);
                            a.close();
                            nexEditor.a(str, byteArrayOutputStream.toString(), z);
                        } catch (Throwable e) {
                            throw new RuntimeException(e);
                        } catch (Throwable th) {
                            a.close();
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    public String a(Iterable<String> iterable) throws IOException {
        Context b = a.a().b();
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        StringBuilder stringBuilder = new StringBuilder();
        for (String str : iterable) {
            if (str != null) {
                f c;
                if (str.endsWith(".force_effect")) {
                    c = c(str.substring(0, str.length() - ".force_effect".length()));
                } else {
                    c = c(str);
                }
                if (c == null) {
                    Log.w("AssetPackageManager", "Could not find item for id: " + str);
                } else if (c.getType() == ItemType.renderitem) {
                    AssetPackageReader a;
                    try {
                        a = AssetPackageReader.a(b, c.getPackageURI(), c.getAssetPackage().getAssetId());
                        InputStream a2 = a.a(c.getFilePath());
                        byteArrayOutputStream.reset();
                        m.a(a2, byteArrayOutputStream);
                        a.close();
                        stringBuilder.append(byteArrayOutputStream.toString());
                    } catch (Throwable e) {
                        throw new RuntimeException(e);
                    } catch (Throwable th) {
                        a.close();
                    }
                } else {
                    continue;
                }
            }
        }
        return stringBuilder.toString();
    }

    public String a(Iterable<String> iterable, boolean z) throws IOException {
        Context b = a.a().b();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<themeset name=\"KM\" defaultTheme=\"none\" defaultTransition=\"none\" >");
        stringBuilder.append("<texture id=\"video_out\" video=\"1\" />");
        stringBuilder.append("<texture id=\"video_in\" video=\"2\" />");
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (String str : iterable) {
            String str2;
            if (str2 != null) {
                f c;
                if (str2.endsWith(".force_effect")) {
                    c = c(str2.substring(0, str2.length() - ".force_effect".length()));
                } else {
                    c = c(str2);
                }
                if (c == null) {
                    Log.w("AssetPackageManager", "Could not find item for id: " + str2);
                } else if (c.getType() != ItemType.renderitem) {
                    AssetPackageReader a = AssetPackageReader.a(b, c.getPackageURI(), c.getAssetPackage().getAssetId());
                    try {
                        InputStream a2 = a.a(c.getFilePath());
                        byteArrayOutputStream.reset();
                        m.a(a2, byteArrayOutputStream);
                        Log.d("AssetPackageManager", "template effects: " + c.getId());
                        if (z || !str2.endsWith(".force_effect")) {
                            stringBuilder.append(byteArrayOutputStream.toString());
                        } else {
                            Log.d("AssetPackageManager", "Original template transition: " + byteArrayOutputStream.toString());
                            str2 = h.a(byteArrayOutputStream.toString(), str2);
                            Log.d("AssetPackageManager", "Modify template transition: " + str2);
                            stringBuilder.append(str2);
                        }
                    } finally {
                        a.close();
                    }
                }
            }
        }
        stringBuilder.append("</themeset>");
        return stringBuilder.toString();
    }

    public boolean a(b bVar) {
        if (bVar == null) {
            Log.d("AssetPackageManager", "checkExpireAsset assetinfo is null.");
            return true;
        }
        if (bVar.getExpireTime() > 0) {
            long installedTime = bVar.getInstalledTime() + bVar.getExpireTime();
            long installedTime2 = bVar.getInstalledTime() - 86400000;
            long currentTimeMillis = System.currentTimeMillis();
            if (installedTime < currentTimeMillis || installedTime2 > currentTimeMillis) {
                return true;
            }
        }
        return false;
    }

    public com.nexstreaming.kminternal.nexvideoeditor.a e() {
        return new com.nexstreaming.kminternal.nexvideoeditor.a() {
            public File a(String str, String str2) throws IOException {
                throw new UnsupportedOperationException();
            }

            public InputStream b(String str, String str2) throws IOException {
                String filePath;
                f c = c.this.c(str);
                AssetPackageReader a = AssetPackageReader.a(a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                if (str2 == null) {
                    filePath = c.getFilePath();
                } else {
                    filePath = c.c(c.getFilePath(), str2);
                }
                return a.a(filePath);
            }

            public Typeface a(String str) throws TypefaceLoadException {
                return com.nexstreaming.kminternal.kinemaster.fonts.c.a().b(str);
            }

            public Typeface c(String str, String str2) throws TypefaceLoadException, IOException {
                f c = c.this.c(str);
                AssetPackageReader a = AssetPackageReader.a(a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                String f = a.f();
                String a2 = c.c(c.getFilePath(), str2);
                if (f.startsWith("file:")) {
                    try {
                        return Typeface.createFromFile(f.substring("file:".length()) + "/" + a.b(a2));
                    } catch (RuntimeException e) {
                        throw new TypefaceLoadException();
                    }
                }
                if (f.startsWith("assets:")) {
                    AssetManager assets = a.a().b().getAssets();
                    if (assets != null) {
                        try {
                            return Typeface.createFromAsset(assets, f.substring("assets:".length()) + "/" + a.b(a2));
                        } catch (RuntimeException e2) {
                            throw new TypefaceLoadException();
                        }
                    }
                }
                return null;
            }
        };
    }
}
