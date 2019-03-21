package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader.EncryptedException;
import com.nexstreaming.app.common.nexasset.assetpackage.InstallSourceType;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.e;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB;
import com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB.remoteAssetItem;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.Event;
import com.nexstreaming.app.common.task.Task.OnFailListener;
import com.nexstreaming.app.common.task.Task.OnProgressListener;
import com.nexstreaming.app.common.task.Task.OnTaskEventListener;
import com.nexstreaming.app.common.task.Task.TaskError;
import com.nexstreaming.app.common.util.FileType;
import com.nexstreaming.app.common.util.n;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class nexAssetPackageManager {
    public static final int Mode_Hot = 1;
    public static final int Mode_New = 2;
    private static final String TAG = "nexAssetPackageMan";
    private static nexAssetPackageManager sSingleton = null;
    private List<b> featuredLists;
    private int installPackagesCount = 0;
    private int installPackagesMaxCount = 0;
    private Context mAppContext;
    private List<Integer> uninstalledAssetIdxList = new ArrayList();
    private Object uninstalledAssetLock = new Object();
    private SparseArray<List<Item>> uninstalledItems = new SparseArray();

    public static abstract class OnInstallPackageListener {
        public static int kEvent_installOk = 0;
        public static int kEvent_linstallFail = -1;

        public abstract void onCompleted(int i, int i2);

        public abstract void onProgress(int i, int i2, int i3);
    }

    public interface Item {
        Category category();

        String[] getSupportedLocales();

        boolean hidden();

        Bitmap icon();

        String id();

        boolean isDelete();

        String name(String str);

        Asset packageInfo();

        Bitmap thumbnail();

        ItemMethodType type();

        boolean validate();
    }

    static class c implements Item {
        protected Category category;
        private boolean getNamesMap;
        protected String id;
        protected boolean isDelete;
        protected boolean isHidden;
        protected String name;
        private Map<String, String> namesMap;
        protected Asset packInfo;
        protected ItemMethodType type;

        c() {
        }

        private void loadLabels() {
            if (this.namesMap == null && !this.getNamesMap) {
                this.getNamesMap = true;
                this.namesMap = new HashMap();
                f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(id());
                if (c == null) {
                    Log.d(nexAssetPackageManager.TAG, "No ItemInfo! id=" + id());
                    return;
                }
                Map label = c.getLabel();
                if (label != null) {
                    for (String str : label.keySet()) {
                        if (this.name == null) {
                            this.name = (String) label.get(str);
                        }
                        this.namesMap.put(str.toLowerCase(Locale.ENGLISH), label.get(str));
                    }
                }
            }
        }

        protected c(Item item) {
            this.id = item.id();
            this.packInfo = item.packageInfo();
            this.category = item.category();
            this.isDelete = item.isDelete();
            this.isHidden = item.hidden();
            this.category = item.category();
            this.type = item.type();
        }

        public String name(String str) {
            loadLabels();
            if (str == null) {
                this.name = n.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), this.namesMap, this.id);
            }
            if (str != null) {
                if (this.namesMap != null) {
                    String str2 = (String) this.namesMap.get(str.toLowerCase(Locale.ENGLISH));
                    if (str2 != null) {
                        return str2;
                    }
                }
                if (this.name == null) {
                    return this.id;
                }
                return this.name;
            } else if (this.name == null) {
                return this.id;
            } else {
                return this.name;
            }
        }

        public String id() {
            return this.id;
        }

        public Asset packageInfo() {
            return this.packInfo;
        }

        public boolean validate() {
            if (com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(this.id) != null) {
                return true;
            }
            return false;
        }

        public boolean isDelete() {
            return this.isDelete;
        }

        public Bitmap icon() {
            f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(this.id);
            if (c != null) {
                Bitmap a;
                try {
                    a = e.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c, 0, 0);
                } catch (IOException e) {
                    a = null;
                }
                if (a == null) {
                    try {
                        a = e.b(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c, 0, 0);
                    } catch (IOException e2) {
                    }
                }
                if (a != null) {
                    return a;
                }
            }
            return null;
        }

        public Category category() {
            return this.category;
        }

        public boolean hidden() {
            return this.isHidden;
        }

        public Bitmap thumbnail() {
            String thumbPath;
            if (this.packInfo == null) {
                f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(this.id);
                if (c == null) {
                    return null;
                }
                com.nexstreaming.app.common.nexasset.assetpackage.b assetPackage = c.getAssetPackage();
                if (assetPackage == null) {
                    return null;
                }
                thumbPath = assetPackage.getThumbPath();
                if (thumbPath == null || !new File(thumbPath).isFile()) {
                    return null;
                }
                return BitmapFactory.decodeFile(thumbPath);
            }
            thumbPath = this.packInfo.getThumbnailPath();
            if (thumbPath == null || !new File(thumbPath).isFile()) {
                return null;
            }
            return BitmapFactory.decodeFile(thumbPath);
        }

        public String[] getSupportedLocales() {
            int i = 0;
            loadLabels();
            if (this.namesMap == null) {
                return new String[0];
            }
            if (this.namesMap.size() == 0) {
                return new String[0];
            }
            String[] strArr = new String[this.namesMap.size()];
            Iterator it = this.namesMap.keySet().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return strArr;
                }
                strArr[i2] = (String) it.next();
                i = i2 + 1;
            }
        }

        public ItemMethodType type() {
            return this.type;
        }
    }

    public interface Asset {
        String assetId();

        int assetIdx();

        String assetName(String str);

        long expireRemain();

        int getAssetVersionCode();

        String getCategoryAlias();

        String[] getSupportedLocales();

        String getThumbnailPath();

        long installedTime();

        AssetInstallType installedType();

        String priceType();
    }

    public enum AssetInstallType {
        STORE,
        SHARE,
        APP_ASSETS,
        EXTRA
    }

    public enum Category {
        audio,
        audiofilter,
        background,
        effect,
        filter,
        font,
        overlay,
        template,
        transition,
        extra,
        collage,
        staticcollage,
        dynamiccollage,
        beattemplate
    }

    public enum ItemMethodType {
        ItemOverlay,
        ItemRenderitem,
        ItemKedl,
        ItemAudio,
        ItemFont,
        ItemTemplate,
        ItemLut,
        ItemMedia,
        ItemExtra,
        ItemCollage,
        ItemStaticCollage,
        ItemDynamicCollage,
        ItemBeat
    }

    public enum PreAssetCategoryAlias {
        Effect,
        Transition,
        Font,
        Overlay,
        Audio,
        Template,
        ClipGraphics,
        TextEffect,
        Extra,
        Collage,
        StaticCollage,
        DynamicCollage,
        BeatTemplate
    }

    public interface RemoteAssetInfo {
        String getCategoryAlias();

        Bitmap icon();

        String id();

        int idx();

        String name();
    }

    static class a implements Asset {
        protected int a;
        protected String b;
        protected String c;
        protected Map<String, String> d;
        protected String e;
        protected long f;
        protected long g;
        protected AssetInstallType h;
        protected String i;
        protected String j;
        protected int k;
        private boolean l;

        a() {
        }

        private void a() {
            Throwable th;
            if (this.d == null && !this.l) {
                this.l = true;
                this.d = new HashMap();
                com.nexstreaming.app.common.nexasset.assetpackage.b a = com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(this.b);
                if (a == null) {
                    Log.d(nexAssetPackageManager.TAG, "No AssetInfo! id=" + this.b);
                    return;
                }
                Map assetName = a.getAssetName();
                if (assetName != null) {
                    for (String str : assetName.keySet()) {
                        if (this.c == null) {
                            this.c = (String) assetName.get(str);
                        }
                        this.d.put(str.toLowerCase(Locale.ENGLISH), assetName.get(str));
                    }
                    return;
                }
                AssetPackageReader assetPackageReader = null;
                try {
                    AssetPackageReader a2 = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), ((f) com.nexstreaming.app.common.nexasset.assetpackage.c.a().b(this.b).get(0)).getPackageURI(), this.b);
                    try {
                        Map e = a2.e();
                        if (e != null) {
                            for (String str2 : e.keySet()) {
                                if (this.c == null) {
                                    this.c = (String) e.get(str2);
                                }
                                this.d.put(str2.toLowerCase(Locale.ENGLISH), e.get(str2));
                            }
                        }
                        a2.close();
                    } catch (Throwable th2) {
                        th = th2;
                        assetPackageReader = a2;
                        try {
                            assetPackageReader.close();
                            throw th;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }

        public int assetIdx() {
            return this.a;
        }

        public String assetId() {
            return this.b;
        }

        public String assetName(String str) {
            a();
            if (str == null) {
                this.c = n.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), this.d, this.b);
            }
            if (this.d != null) {
                if (str == null) {
                    return this.c;
                }
                String str2 = (String) this.d.get(str.toLowerCase(Locale.ENGLISH));
                if (str2 != null) {
                    return str2;
                }
            }
            if (this.c == null) {
                return this.b;
            }
            return this.c;
        }

        public String priceType() {
            return this.e;
        }

        public long installedTime() {
            return this.f;
        }

        public long expireRemain() {
            return this.g;
        }

        public AssetInstallType installedType() {
            return this.h;
        }

        public String getCategoryAlias() {
            return this.i;
        }

        public String getThumbnailPath() {
            return this.j;
        }

        public String[] getSupportedLocales() {
            int i = 0;
            a();
            if (this.d == null) {
                return new String[0];
            }
            if (this.d.size() == 0) {
                return new String[0];
            }
            String[] strArr = new String[this.d.size()];
            Iterator it = this.d.keySet().iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return strArr;
                }
                String str = (String) it.next();
                Log.d(nexAssetPackageManager.TAG, "AssetEnt locale=" + str);
                strArr[i2] = str;
                i = i2 + 1;
            }
        }

        public int getAssetVersionCode() {
            return this.k;
        }
    }

    private class b {
        private int b;
        private int c;
        private List<d> d;

        private b() {
        }

        /* synthetic */ b(nexAssetPackageManager nexassetpackagemanager, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    static class d implements RemoteAssetInfo {
        private int a;
        private String b;
        private String c;
        private String d;
        private String e;

        d(String str, String str2, int i, String str3, String str4) {
            this.d = str;
            this.b = str2;
            this.a = i;
            this.c = str3;
            this.e = str4;
        }

        public int idx() {
            return this.a;
        }

        public String id() {
            return this.b;
        }

        public String name() {
            return this.c;
        }

        public Bitmap icon() {
            if (this.d == null) {
                return null;
            }
            return BitmapFactory.decodeFile(this.d);
        }

        public String getCategoryAlias() {
            return this.e;
        }

        public String toString() {
            return "RemoteAssetInfoEnt{category='" + this.e + '\'' + ", idx=" + this.a + ", id='" + this.b + '\'' + ", name='" + this.c + '\'' + ", iconPath='" + this.d + '\'' + '}';
        }
    }

    private nexAssetPackageManager(Context context) {
        this.mAppContext = context;
    }

    public static nexAssetPackageManager getAssetPackageManager(Context context) {
        if (!(sSingleton == null || sSingleton.mAppContext.getPackageName().equals(context.getPackageName()))) {
            sSingleton = null;
        }
        if (sSingleton == null) {
            sSingleton = new nexAssetPackageManager(context);
            AssetLocalInstallDB.getInstance(context);
        }
        return sSingleton;
    }

    private ItemCategory getItemCategory(Category category) {
        if (category == Category.audio) {
            return ItemCategory.audio;
        }
        if (category == Category.audiofilter) {
            return ItemCategory.audiofilter;
        }
        if (category == Category.background) {
            return ItemCategory.background;
        }
        if (category == Category.effect) {
            return ItemCategory.effect;
        }
        if (category == Category.filter) {
            return ItemCategory.filter;
        }
        if (category == Category.font) {
            return ItemCategory.font;
        }
        if (category == Category.overlay) {
            return ItemCategory.overlay;
        }
        if (category == Category.template) {
            return ItemCategory.template;
        }
        if (category == Category.transition) {
            return ItemCategory.transition;
        }
        if (category == Category.collage) {
            return ItemCategory.collage;
        }
        if (category == Category.staticcollage) {
            return ItemCategory.staticcollage;
        }
        if (category == Category.dynamiccollage) {
            return ItemCategory.dynamiccollage;
        }
        if (category == Category.beattemplate) {
            return ItemCategory.beattemplate;
        }
        return null;
    }

    private Category getCategory(ItemCategory itemCategory) {
        if (itemCategory == ItemCategory.audio) {
            return Category.audio;
        }
        if (itemCategory == ItemCategory.audiofilter) {
            return Category.audiofilter;
        }
        if (itemCategory == ItemCategory.background) {
            return Category.background;
        }
        if (itemCategory == ItemCategory.effect) {
            return Category.effect;
        }
        if (itemCategory == ItemCategory.filter) {
            return Category.filter;
        }
        if (itemCategory == ItemCategory.font) {
            return Category.font;
        }
        if (itemCategory == ItemCategory.overlay) {
            return Category.overlay;
        }
        if (itemCategory == ItemCategory.template) {
            return Category.template;
        }
        if (itemCategory == ItemCategory.transition) {
            return Category.transition;
        }
        if (itemCategory == ItemCategory.collage) {
            return Category.collage;
        }
        if (itemCategory == ItemCategory.staticcollage) {
            return Category.staticcollage;
        }
        if (itemCategory == ItemCategory.dynamiccollage) {
            return Category.dynamiccollage;
        }
        if (itemCategory == ItemCategory.beattemplate) {
            return Category.beattemplate;
        }
        return Category.extra;
    }

    static ItemMethodType getMethodType(ItemType itemType) {
        if (itemType == ItemType.overlay) {
            return ItemMethodType.ItemOverlay;
        }
        if (itemType == ItemType.renderitem) {
            return ItemMethodType.ItemRenderitem;
        }
        if (itemType == ItemType.kedl) {
            return ItemMethodType.ItemKedl;
        }
        if (itemType == ItemType.audio) {
            return ItemMethodType.ItemAudio;
        }
        if (itemType == ItemType.font) {
            return ItemMethodType.ItemFont;
        }
        if (itemType == ItemType.template) {
            return ItemMethodType.ItemTemplate;
        }
        if (itemType == ItemType.lut) {
            return ItemMethodType.ItemLut;
        }
        if (itemType == ItemType.media) {
            return ItemMethodType.ItemMedia;
        }
        if (itemType == ItemType.collage) {
            return ItemMethodType.ItemCollage;
        }
        if (itemType == ItemType.staticcollage) {
            return ItemMethodType.ItemStaticCollage;
        }
        if (itemType == ItemType.dynamiccollage) {
            return ItemMethodType.ItemDynamicCollage;
        }
        if (itemType == ItemType.beat) {
            return ItemMethodType.ItemBeat;
        }
        return null;
    }

    private void resolveAssets(List<Item> list, Category category) {
        ItemCategory itemCategory = null;
        if (category != null) {
            itemCategory = getItemCategory(category);
            if (itemCategory == null) {
                return;
            }
        }
        if (itemCategory != null) {
            List<f> a = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).a(itemCategory);
            if (a != null) {
                for (f itemEnt : a) {
                    list.add(getItemEnt(itemEnt));
                }
            }
        }
    }

    public List<Item> getInstalledAssetItems() {
        List<Item> arrayList = new ArrayList();
        List<f> c = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).c();
        if (c != null) {
            for (f itemEnt : c) {
                arrayList.add(getItemEnt(itemEnt));
            }
        }
        return arrayList;
    }

    public List<Item> getInstalledAssetItems(Category category) {
        List<Item> arrayList = new ArrayList();
        resolveAssets(arrayList, category);
        return arrayList;
    }

    public void getInstalledAssetItems(List<Item> list, Category category) {
        resolveAssets(list, category);
    }

    public List<Item> getInstalledAssetItemsByAssetIDx(int i) {
        List<f> c = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).c(i);
        List<Item> arrayList = new ArrayList();
        for (f itemEnt : c) {
            arrayList.add(getItemEnt(itemEnt));
        }
        return arrayList;
    }

    public List<Item> getInstalledAssetItemsByAssetID(String str) {
        List<f> b = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).b(str);
        List<Item> arrayList = new ArrayList();
        for (f itemEnt : b) {
            arrayList.add(getItemEnt(itemEnt));
        }
        return arrayList;
    }

    public List<Asset> getInstalledAsset() {
        List<com.nexstreaming.app.common.nexasset.assetpackage.b> b = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).b();
        List<Asset> arrayList = new ArrayList();
        for (com.nexstreaming.app.common.nexasset.assetpackage.b assetEnt : b) {
            arrayList.add(getAssetEnt(assetEnt));
        }
        return arrayList;
    }

    public List<Item> getInstalledAssetItemsByAssetIDx(int i, Category category) {
        List<f> a = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).a(i, getItemCategory(category));
        List<Item> arrayList = new ArrayList();
        for (f itemEnt : a) {
            arrayList.add(getItemEnt(itemEnt));
        }
        return arrayList;
    }

    public List<Asset> getInstalledAssetByAppAsset() {
        List<com.nexstreaming.app.common.nexasset.assetpackage.b> b = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).b();
        List<Asset> arrayList = new ArrayList();
        for (com.nexstreaming.app.common.nexasset.assetpackage.b bVar : b) {
            if (bVar.getInstallSourceType() == InstallSourceType.APP_ASSETS) {
                arrayList.add(getAssetEnt(bVar));
            }
        }
        return arrayList;
    }

    public List<Asset> getInstalledAssetByAppShare() {
        List<com.nexstreaming.app.common.nexasset.assetpackage.b> b = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).b();
        List<Asset> arrayList = new ArrayList();
        for (com.nexstreaming.app.common.nexasset.assetpackage.b bVar : b) {
            if (bVar.getInstallSourceType() == InstallSourceType.FOLDER) {
                arrayList.add(getAssetEnt(bVar));
            }
        }
        return arrayList;
    }

    public List<Asset> getInstalledAssetByStore() {
        List<com.nexstreaming.app.common.nexasset.assetpackage.b> b = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).b();
        List<Asset> arrayList = new ArrayList();
        for (com.nexstreaming.app.common.nexasset.assetpackage.b bVar : b) {
            if (bVar.getInstallSourceType() == InstallSourceType.STORE) {
                arrayList.add(getAssetEnt(bVar));
            }
        }
        return arrayList;
    }

    public Asset getInstalledAssetByIdx(int i) {
        com.nexstreaming.app.common.nexasset.assetpackage.b b = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).b(i);
        if (b == null) {
            return null;
        }
        return getAssetEnt(b);
    }

    private c getItemEnt(f fVar) {
        c cVar = new c();
        cVar.id = fVar.getId();
        Map label = fVar.getLabel();
        if (label != null) {
            cVar.name = (String) label.get("en");
        }
        if (cVar.name == null) {
            cVar.name = cVar.id;
        }
        cVar.packInfo = getAssetEnt(fVar.getAssetPackage());
        if (cVar.packInfo.installedType() == AssetInstallType.STORE) {
            cVar.isDelete = true;
        } else {
            cVar.isDelete = false;
        }
        cVar.isHidden = fVar.isHidden();
        cVar.category = getCategory(fVar.getCategory());
        cVar.type = getMethodType(fVar.getType());
        return cVar;
    }

    private a getAssetEnt(com.nexstreaming.app.common.nexasset.assetpackage.b bVar) {
        a aVar = new a();
        if (bVar == null) {
            Log.d(TAG, "getAssetEnt AssetInfo is null!");
            aVar.h = AssetInstallType.EXTRA;
            aVar.i = "Unknown";
            aVar.e = "Free";
        } else {
            aVar.a = bVar.getAssetIdx();
            aVar.b = bVar.getAssetId();
            Map assetName = bVar.getAssetName();
            if (assetName != null) {
                aVar.c = (String) assetName.get("en");
            }
            aVar.e = bVar.getPriceType();
            if (aVar.e == null) {
                aVar.e = "Free";
            }
            aVar.g = bVar.getExpireTime();
            aVar.f = bVar.getInstalledTime();
            if (bVar.getInstallSourceType() == InstallSourceType.APP_ASSETS) {
                aVar.h = AssetInstallType.APP_ASSETS;
            } else if (bVar.getInstallSourceType() == InstallSourceType.FOLDER) {
                aVar.h = AssetInstallType.SHARE;
            } else if (bVar.getInstallSourceType() == InstallSourceType.STORE) {
                aVar.h = AssetInstallType.STORE;
            }
            if (bVar.getAssetCategory() != null) {
                aVar.i = bVar.getAssetCategory().getCategoryAlias();
            } else {
                aVar.i = "Unknown";
            }
            aVar.j = bVar.getThumbPath();
            aVar.k = bVar.getPackageVersion();
        }
        return aVar;
    }

    public Item getInstalledAssetItemById(String str) {
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).c(str);
        if (c == null) {
            return null;
        }
        return getItemEnt(c);
    }

    public void uninstallPackageByAssetIdx(int i) {
        putUninstallItem(i);
        try {
            AssetLocalInstallDB.getInstance(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).uninstallPackage(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void uninstallPackageById(String str) {
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        if (c != null) {
            com.nexstreaming.app.common.nexasset.assetpackage.b assetPackage = c.getAssetPackage();
            if (assetPackage != null) {
                uninstallPackageByAssetIdx(assetPackage.getAssetIdx());
            } else {
                Log.d(TAG, "AssetInfo is null");
            }
        }
    }

    public int findNewPackages() {
        return AssetLocalInstallDB.getInstance(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).checkStoreInstall();
    }

    public boolean isInstallingPackages() {
        return AssetLocalInstallDB.getInstance(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).isInstallingPackages();
    }

    public void installPackagesAsync(OnInstallPackageListener onInstallPackageListener) {
        installPackagesAsync(0, onInstallPackageListener);
    }

    public void installPackagesAsync(final int i, final OnInstallPackageListener onInstallPackageListener) {
        this.installPackagesCount = 0;
        this.installPackagesMaxCount = 0;
        AssetLocalInstallDB.getInstance(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).installPackageAsync(i).onComplete(new OnTaskEventListener() {
            public void onTaskEvent(Task task, Event event) {
                if (onInstallPackageListener != null) {
                    onInstallPackageListener.onCompleted(0, i);
                }
            }
        }).onFailure(new OnFailListener() {
            public void onFail(Task task, Event event, TaskError taskError) {
                if (onInstallPackageListener != null) {
                    onInstallPackageListener.onCompleted(-1, i);
                }
            }
        }).onProgress(new OnProgressListener() {
            public void onProgress(Task task, Event event, int i, int i2) {
                if (onInstallPackageListener == null) {
                    return;
                }
                if (i2 == 100) {
                    onInstallPackageListener.onProgress(nexAssetPackageManager.this.installPackagesCount, nexAssetPackageManager.this.installPackagesMaxCount, i);
                    return;
                }
                nexAssetPackageManager.this.installPackagesCount = i;
                nexAssetPackageManager.this.installPackagesMaxCount = i2;
                onInstallPackageListener.onProgress(i, i2, 0);
            }
        });
    }

    public boolean installPackageFromStorePath(int i) {
        return AssetLocalInstallDB.getInstance(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).installPackageSync(i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0058  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String getAssetPackageMediaPath(Context context, String str) {
        IOException e;
        Object obj = null;
        AssetLocalInstallDB.getInstance(context);
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        if (c == null) {
            return null;
        }
        if (com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(c.getAssetPackage())) {
            Log.d(TAG, "getAssetPackageMediaPath expire id=" + str);
            return null;
        }
        AssetPackageReader a;
        try {
            a = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
            try {
                a.c(c.getFilePath());
            } catch (EncryptedException e2) {
                try {
                    Log.d(TAG, "getAssetPackageMediaPath encrypted item id=" + str);
                    obj = 1;
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                    if (a != null) {
                    }
                }
            } catch (IOException e4) {
            }
        } catch (IOException e5) {
            e = e5;
            a = null;
        }
        if (a != null) {
            Log.d(TAG, "getAssetPackageMediaPath file not found!=" + str);
            return null;
        }
        String packageURI;
        if (obj == null) {
            packageURI = c.getPackageURI();
            if (packageURI != null) {
                String substring = packageURI.substring(packageURI.indexOf(58) + 1);
                if (packageURI.startsWith("file:")) {
                    File file = new File(substring, c.getFilePath());
                    if (file.isFile()) {
                        try {
                            a.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                        return file.getAbsolutePath();
                    }
                } else if (packageURI.startsWith("assets:")) {
                    packageURI = substring + "/" + c.getFilePath();
                    if (!FileType.fromExtension(packageURI).isImage()) {
                        try {
                            AssetFileDescriptor openFd = context.getAssets().openFd(packageURI);
                            long startOffset = openFd.getStartOffset();
                            long length = openFd.getLength();
                            openFd.close();
                            try {
                                a.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                            return "nexasset://" + str.hashCode() + ":" + startOffset + ":" + length;
                        } catch (IOException e72) {
                            e72.printStackTrace();
                        }
                    }
                }
            }
        } else {
            packageURI = c.getPackageURI();
            if (packageURI != null && FileType.fromExtension(packageURI + "/" + c.getFilePath()).isImage()) {
                try {
                    a.close();
                } catch (IOException e722) {
                    e722.printStackTrace();
                }
                return "@assetItem:" + str;
            }
        }
        packageURI = context.getCacheDir().getAbsolutePath() + File.separator + "media";
        File file2 = new File(packageURI);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        Log.d(TAG, "media path=" + c.getFilePath());
        file2 = new File(packageURI, c.getId());
        if (file2.isFile() || a == null) {
            try {
                a.close();
            } catch (IOException e7222) {
                e7222.printStackTrace();
            }
            return file2.getAbsolutePath();
        }
        try {
            InputStream a2 = a.a(c.getFilePath());
            if (a2 != null) {
                com.nexstreaming.app.common.util.d.a(a2, file2);
                a2.close();
            }
            if (a != null) {
                try {
                    a.close();
                } catch (IOException e72222) {
                    e72222.printStackTrace();
                }
            }
        } catch (IOException e722222) {
            e722222.printStackTrace();
            file2.delete();
            if (a != null) {
                try {
                    a.close();
                } catch (IOException e7222222) {
                    e7222222.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (a != null) {
                try {
                    a.close();
                } catch (IOException e62) {
                    e62.printStackTrace();
                }
            }
        }
        return file2.getAbsolutePath();
    }

    static Rect getAssetPackageMediaOptions(String str) {
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        Options options = new Options();
        Rect rect = new Rect();
        if (c != null) {
            try {
                AssetPackageReader a = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                try {
                    InputStream a2 = a.a(c.getFilePath());
                    InputStream bufferedInputStream = new BufferedInputStream(a2);
                    bufferedInputStream.mark(bufferedInputStream.available());
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(bufferedInputStream, null, options);
                    rect.set(0, 0, options.outWidth, options.outHeight);
                    bufferedInputStream.close();
                    a2.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                a.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return rect;
    }

    public static String getPreloadedMediaAppAssetPath(Context context, String str) {
        AssetLocalInstallDB.getInstance(context);
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        if (c == null) {
            return null;
        }
        if (com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(c.getAssetPackage())) {
            Log.d(TAG, "getPreloadedAssetPath expire id=" + str);
            return null;
        }
        String packageURI = c.getPackageURI();
        if (packageURI == null) {
            return null;
        }
        String substring = packageURI.substring(packageURI.indexOf(58) + 1);
        if (!packageURI.startsWith("assets:")) {
            return null;
        }
        String str2 = substring + "/" + c.getFilePath();
        Log.d(TAG, "getPreloadedAssetPath assets path=" + str2);
        return str2;
    }

    public String[] getAssetCategoriesWithInstalledItems() {
        List d = com.nexstreaming.app.common.nexasset.assetpackage.c.a().d();
        String[] strArr = new String[d.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return strArr;
            }
            strArr[i2] = new String(((com.nexstreaming.app.common.nexasset.assetpackage.a) d.get(i2)).getCategoryAlias());
            i = i2 + 1;
        }
    }

    public RemoteAssetInfo[] getRemoteAssetInfos(int i) {
        List list = AssetLocalInstallDB.getInstance(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).getList(i, nexAssetStoreAppUtils.vendorName());
        RemoteAssetInfo[] remoteAssetInfoArr = new d[list.size()];
        int i2 = 0;
        Iterator it = list.iterator();
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                return remoteAssetInfoArr;
            }
            remoteAssetItem remoteassetitem = (remoteAssetItem) it.next();
            remoteAssetInfoArr[i3] = new d(remoteassetitem.thumbnailPath, remoteassetitem.id, remoteassetitem.idx, remoteassetitem.name, remoteassetitem.category);
            i2 = i3 + 1;
        }
    }

    private void updateList(int i) {
        if (this.featuredLists == null) {
            this.featuredLists = new ArrayList();
        }
        List<remoteAssetItem> list = AssetLocalInstallDB.getInstance(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).getList(i, nexAssetStoreAppUtils.vendorName());
        if (list.size() != 0) {
            b bVar;
            for (b bVar2 : this.featuredLists) {
                if (bVar2.b == i) {
                    break;
                }
            }
            b bVar22 = null;
            if (bVar22 == null) {
                bVar22 = new b(this, null);
                bVar22.b = i;
                bVar22.d = new ArrayList();
                this.featuredLists.add(bVar22);
                bVar = bVar22;
            } else {
                bVar22.d.clear();
                bVar22.c = 0;
                bVar = bVar22;
            }
            for (remoteAssetItem remoteassetitem : list) {
                bVar.d.add(new d(remoteassetitem.thumbnailPath, remoteassetitem.id, remoteassetitem.idx, remoteassetitem.name, remoteassetitem.category));
            }
        }
    }

    public RemoteAssetInfo getRemoteAssetInfo(int i) {
        b bVar;
        if (this.featuredLists == null) {
            updateList(i);
        }
        for (b bVar2 : this.featuredLists) {
            if (bVar2.b == i) {
                bVar = bVar2;
                break;
            }
        }
        bVar = null;
        if (bVar == null) {
            return null;
        }
        if (bVar.d.size() == 0) {
            return null;
        }
        if (bVar.c >= bVar.d.size()) {
            updateList(i);
            bVar.c = 0;
        }
        Log.d(TAG, "afl.current=" + bVar.c + ", afl.list.size()=" + bVar.d.size());
        RemoteAssetInfo remoteAssetInfo = (RemoteAssetInfo) bVar.d.get(bVar.c);
        bVar.c = bVar.c + 1;
        return remoteAssetInfo;
    }

    @Deprecated
    public void uninstallFromAssetStoreApp() {
        AssetLocalInstallDB.getInstance(this.mAppContext).uninstallFromAssetStoreApp();
    }

    public boolean validateAssetPackage(int i) {
        if (i < 3) {
            return true;
        }
        List<f> c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(i);
        if (c.size() == 0) {
            return false;
        }
        String packageURI = ((f) c.get(0)).getPackageURI();
        if (!packageURI.startsWith("file:")) {
            return true;
        }
        String substring = packageURI.substring(packageURI.indexOf(58) + 1);
        if (!new File(substring).isDirectory()) {
            return false;
        }
        for (f fVar : c) {
            if (!new File(substring, fVar.getFilePath()).isFile()) {
                Log.d(TAG, "file not found " + substring + "/" + fVar.getFilePath());
                return false;
            }
        }
        return true;
    }

    public static boolean checkExpireAsset(Asset asset) {
        if (asset != null) {
            return com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(com.nexstreaming.app.common.nexasset.assetpackage.c.a().b(asset.assetIdx()));
        }
        Log.d(TAG, "checkExpireAsset() : asset is null! return true.");
        return true;
    }

    public static long expireRemainTime(Asset asset) {
        long j = Long.MAX_VALUE;
        if (asset.expireRemain() > 0) {
            j = (asset.installedTime() + asset.expireRemain()) - System.currentTimeMillis();
            if (j < 0) {
                return 0;
            }
        }
        return j;
    }

    public PreAssetCategoryAlias getPreAssetCategoryAliasFromItem(String str) {
        Item installedAssetItemById = getAssetPackageManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).getInstalledAssetItemById(str);
        if (installedAssetItemById == null) {
            return PreAssetCategoryAlias.Extra;
        }
        return getPreAssetCategoryAliasFromItem(installedAssetItemById);
    }

    public static PreAssetCategoryAlias getPreAssetCategoryAliasFromItem(Item item) {
        if (item.category() == Category.template) {
            return PreAssetCategoryAlias.Template;
        }
        if (item.category() == Category.overlay && item.type() == ItemMethodType.ItemTemplate) {
            return PreAssetCategoryAlias.TextEffect;
        }
        if (item.category() == Category.overlay && item.type() == ItemMethodType.ItemOverlay) {
            return PreAssetCategoryAlias.Overlay;
        }
        if (item.category() == Category.audio) {
            return PreAssetCategoryAlias.Audio;
        }
        if (item.category() == Category.effect) {
            return PreAssetCategoryAlias.Effect;
        }
        if (item.category() == Category.transition) {
            return PreAssetCategoryAlias.Transition;
        }
        if (item.category() == Category.font) {
            return PreAssetCategoryAlias.Font;
        }
        if (item.category() == Category.collage) {
            return PreAssetCategoryAlias.Collage;
        }
        if (item.category() == Category.staticcollage) {
            return PreAssetCategoryAlias.StaticCollage;
        }
        if (item.category() == Category.dynamiccollage) {
            return PreAssetCategoryAlias.DynamicCollage;
        }
        if (item.category() == Category.beattemplate) {
            return PreAssetCategoryAlias.BeatTemplate;
        }
        return PreAssetCategoryAlias.Extra;
    }

    public PreAssetCategoryAlias[] updateAssetInManager(boolean z, int i) {
        Set<PreAssetCategoryAlias> hashSet = new HashSet();
        List list = null;
        if (!z) {
            list = popUninstallItems(i);
            if (list == null) {
                Log.d(TAG, "updateAssetInManager can not found uninstalled items assetIdx=" + i);
            }
        }
        if (list == null) {
            list = getAssetPackageManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b()).getInstalledAssetItemsByAssetIDx(i);
        }
        if (r0 == null) {
            Log.d(TAG, "updateAssetInManager asset not found assetIdx=" + i);
            return new PreAssetCategoryAlias[0];
        } else if (r0.size() == 0) {
            Log.d(TAG, "updateAssetInManager asset size 0 assetIdx=" + i);
            return new PreAssetCategoryAlias[0];
        } else {
            PreAssetCategoryAlias preAssetCategoryAlias;
            boolean z2 = true;
            boolean z3 = true;
            boolean z4 = true;
            boolean z5 = true;
            for (Item item : r0) {
                boolean z6;
                if (item.category() == Category.filter && item.type() == ItemMethodType.ItemLut) {
                    Log.d(TAG, "updateAssetInManager update color effect assetIdx=" + i);
                    com.nexstreaming.kminternal.kinemaster.editorwrapper.b a = com.nexstreaming.kminternal.kinemaster.editorwrapper.b.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b());
                    if (a != null) {
                        if (item.hidden()) {
                            a.h();
                        } else {
                            nexColorEffect.setNeedUpdate();
                        }
                    }
                    z6 = z2;
                    z2 = z3;
                    z3 = z4;
                } else if (item.category() == Category.template || item.category() == Category.beattemplate) {
                    nexTemplateManager templateManager = nexTemplateManager.getTemplateManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), com.nexstreaming.kminternal.kinemaster.config.a.a().b());
                    if (z5) {
                        templateManager.updateTemplate(false, item);
                        z5 = false;
                    }
                    if (z) {
                        templateManager.updateTemplate(true, item);
                    }
                    if (item.category() == Category.beattemplate) {
                        nexBeatTemplateManager beatTemplateManager = nexBeatTemplateManager.getBeatTemplateManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b());
                        if (z2) {
                            beatTemplateManager.updateBeatTemplate(false, item);
                            z2 = false;
                        }
                        if (z) {
                            beatTemplateManager.updateBeatTemplate(true, item);
                        }
                    }
                    if (!item.hidden()) {
                        if (item.category() == Category.template) {
                            hashSet.add(PreAssetCategoryAlias.Template);
                        } else {
                            hashSet.add(PreAssetCategoryAlias.BeatTemplate);
                        }
                    }
                    z6 = z2;
                    z2 = z3;
                    z3 = z4;
                } else if (item.category() == Category.overlay && item.type() == ItemMethodType.ItemTemplate) {
                    nexOverlayManager overlayManager = nexOverlayManager.getOverlayManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), com.nexstreaming.kminternal.kinemaster.config.a.a().b());
                    if (z4) {
                        overlayManager.updateOverlayTitle(false, item);
                        z4 = false;
                    }
                    if (z) {
                        overlayManager.updateOverlayTitle(true, item);
                    }
                    if (!item.hidden()) {
                        hashSet.add(PreAssetCategoryAlias.TextEffect);
                    }
                    z6 = z2;
                    z2 = z3;
                    z3 = z4;
                } else if (item.category() == Category.audio) {
                    nexAssetMediaManager audioManager = nexAssetMediaManager.getAudioManager(com.nexstreaming.kminternal.kinemaster.config.a.a().b());
                    audioManager.updateMedia(false, 0, false, item);
                    if (z) {
                        audioManager.updateMedia(true, 3, false, item);
                    }
                    if (!item.hidden()) {
                        hashSet.add(PreAssetCategoryAlias.Audio);
                    }
                    z6 = z2;
                    z2 = z3;
                    z3 = z4;
                } else {
                    if (item.category() == Category.font) {
                        nexFont.needUpdate();
                        if (!item.hidden()) {
                            hashSet.add(PreAssetCategoryAlias.Font);
                            z6 = z2;
                            z2 = z3;
                            z3 = z4;
                        }
                    } else if (item.category() == Category.effect) {
                        if (!item.hidden()) {
                            hashSet.add(PreAssetCategoryAlias.Effect);
                            z6 = z2;
                            z2 = z3;
                            z3 = z4;
                        }
                    } else if (item.category() == Category.transition) {
                        if (!item.hidden()) {
                            hashSet.add(PreAssetCategoryAlias.Transition);
                            z6 = z2;
                            z2 = z3;
                            z3 = z4;
                        }
                    } else if (item.category() == Category.overlay && item.type() == ItemMethodType.ItemOverlay) {
                        if (!item.hidden()) {
                            hashSet.add(PreAssetCategoryAlias.Overlay);
                            z6 = z2;
                            z2 = z3;
                            z3 = z4;
                        }
                    } else if (item.category() == Category.collage || item.category() == Category.staticcollage || item.category() == Category.dynamiccollage) {
                        boolean z7;
                        nexCollageManager collageManager = nexCollageManager.getCollageManager();
                        if (z3) {
                            collageManager.updateCollage(false, item);
                            z7 = false;
                        } else {
                            z7 = z3;
                        }
                        if (z) {
                            collageManager.updateCollage(true, item);
                        }
                        if (!item.hidden()) {
                            Object preAssetCategoryAlias2;
                            PreAssetCategoryAlias preAssetCategoryAlias3 = PreAssetCategoryAlias.Collage;
                            if (item.category() == Category.staticcollage) {
                                preAssetCategoryAlias2 = PreAssetCategoryAlias.StaticCollage;
                            } else if (item.category() == Category.dynamiccollage) {
                                preAssetCategoryAlias2 = PreAssetCategoryAlias.DynamicCollage;
                            } else {
                                preAssetCategoryAlias2 = preAssetCategoryAlias3;
                            }
                            hashSet.add(preAssetCategoryAlias2);
                        }
                        z6 = z2;
                        z3 = z4;
                        z2 = z7;
                    }
                    z6 = z2;
                    z2 = z3;
                    z3 = z4;
                }
                z5 = z5;
                z4 = z3;
                z3 = z2;
                z2 = z6;
            }
            PreAssetCategoryAlias[] preAssetCategoryAliasArr = new PreAssetCategoryAlias[hashSet.size()];
            int i2 = 0;
            for (PreAssetCategoryAlias preAssetCategoryAlias22 : hashSet) {
                preAssetCategoryAliasArr[i2] = preAssetCategoryAlias22;
                i2++;
            }
            return preAssetCategoryAliasArr;
        }
    }

    private void removeUninstallItem(int i) {
        Iterator it = this.uninstalledAssetIdxList.iterator();
        while (it.hasNext()) {
            if (((Integer) it.next()).intValue() == i) {
                it.remove();
                break;
            }
        }
        this.uninstalledItems.remove(i);
        if (this.uninstalledAssetIdxList.size() > 5) {
            this.uninstalledItems.remove(((Integer) this.uninstalledAssetIdxList.remove(0)).intValue());
        }
    }

    public void putUninstallItem(int i) {
        synchronized (this.uninstalledAssetLock) {
            removeUninstallItem(i);
            List installedAssetItemsByAssetIDx = getInstalledAssetItemsByAssetIDx(i);
            if (installedAssetItemsByAssetIDx == null) {
                return;
            }
            this.uninstalledItems.put(i, installedAssetItemsByAssetIDx);
            this.uninstalledAssetIdxList.add(Integer.valueOf(i));
        }
    }

    public List<Item> popUninstallItems(int i) {
        List<Item> list;
        synchronized (this.uninstalledAssetLock) {
            list = (List) this.uninstalledItems.get(i);
            removeUninstallItem(i);
        }
        return list;
    }
}
