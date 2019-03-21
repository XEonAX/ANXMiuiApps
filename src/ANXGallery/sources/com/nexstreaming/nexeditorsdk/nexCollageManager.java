package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.exception.ExpiredTimeException;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Category;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Item;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.ItemMethodType;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.OnInstallPackageListener;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class nexCollageManager {
    private static final String TAG = "nexCollageManager";
    private static nexCollageManager sSingleton = null;
    private List<Collage> collageEntries = new ArrayList();
    private Context mAppContext;
    private Context mResContext;
    private Object m_collageEntryLock = new Object();

    public static class Collage extends c {
        private nexCollage collage;

        Collage() {
        }

        private Collage(Item item) {
            super(item);
        }

        protected static Collage promote(Item item) {
            if (item.category() == Category.collage || item.category() == Category.staticcollage || item.category() == Category.dynamiccollage) {
                return new Collage(item);
            }
            return null;
        }

        protected void setCollage(nexCollage nexcollage) {
            this.collage = nexcollage;
        }

        protected nexCollage getCollage() {
            return this.collage;
        }

        public String id() {
            return super.id();
        }

        public String name(String str) {
            String assetName = packageInfo().assetName(str);
            return assetName != null ? assetName : super.name(str);
        }

        public String[] getSupportedLocales() {
            if (packageInfo() == null) {
                return new String[0];
            }
            return packageInfo().getSupportedLocales();
        }

        public List<nexCollageInfo> getCollageInfos() {
            if (this.collage == null || !parsingCollage()) {
                return null;
            }
            List<nexCollageInfo> arrayList = new ArrayList();
            for (a aVar : this.collage.f()) {
                if (!aVar.a()) {
                    arrayList.add(aVar);
                }
            }
            for (nexCollageTitleInfo nexcollagetitleinfo : this.collage.g()) {
                if (nexcollagetitleinfo.a()) {
                    arrayList.add(nexcollagetitleinfo);
                }
            }
            return arrayList;
        }

        public nexCollageInfo getCollageInfos(float f, float f2) {
            if (this.collage == null || !parsingCollage()) {
                return null;
            }
            for (nexCollageTitleInfo nexcollagetitleinfo : this.collage.g()) {
                if (nexcollagetitleinfo.a() && nexcollagetitleinfo.a(f, f2)) {
                    return nexcollagetitleinfo;
                }
            }
            for (a aVar : this.collage.f()) {
                if (!aVar.a() && aVar.a(f, f2)) {
                    return aVar;
                }
            }
            return null;
        }

        public CollageType getType() {
            ItemMethodType type = type();
            if (type == ItemMethodType.ItemDynamicCollage) {
                return CollageType.DynamicCollage;
            }
            if (type == ItemMethodType.ItemStaticCollage) {
                return CollageType.StaticCollage;
            }
            if (this.collage == null || !parsingCollage()) {
                return null;
            }
            return this.collage.d();
        }

        public int getDuration() {
            if (this.collage == null || !parsingCollage()) {
                return 0;
            }
            return this.collage.c();
        }

        public int getEditTime() {
            if (this.collage == null || !parsingCollage()) {
                return 0;
            }
            return (int) (((float) this.collage.c()) * this.collage.a());
        }

        public float getRatio() {
            if (this.collage == null || !parsingCollage()) {
                return 0.0f;
            }
            return this.collage.e();
        }

        public int getRatioMode() {
            if (this.collage == null || !parsingCollage()) {
                return 1;
            }
            float e = this.collage.e();
            if (e == 1.0f) {
                return 2;
            }
            if (e == 1.7777778f) {
                return 1;
            }
            if (e == 0.5625f) {
                return 3;
            }
            if (e == 2.0f) {
                return 4;
            }
            if (e == 0.5f) {
                return 5;
            }
            if (e == 1.3333334f) {
                return 6;
            }
            if (e == 0.75f) {
                return 7;
            }
            return 0;
        }

        public boolean applyCollage2Project(nexProject nexproject, nexEngine nexengine, int i, Context context) throws ExpiredTimeException {
            if (nexAssetPackageManager.checkExpireAsset(packageInfo())) {
                throw new ExpiredTimeException(id());
            } else if (this.collage == null || !parsingCollage()) {
                return false;
            } else {
                String a = this.collage.a(nexproject, nexengine, i, context, false);
                if (a == null) {
                    return true;
                }
                Log.d(nexCollageManager.TAG, "applyCollage2Project failed with " + a);
                return false;
            }
        }

        protected boolean loadCollage2Project(nexProject nexproject, nexEngine nexengine, int i, Context context) {
            if (this.collage == null || !parsingCollage()) {
                return false;
            }
            String a = this.collage.a(nexproject, nexengine, i, context, true);
            if (a == null) {
                return true;
            }
            Log.d(nexCollageManager.TAG, "applyCollage2Project failed with " + a);
            return false;
        }

        public boolean restoreBGM() {
            if (this.collage == null) {
                return false;
            }
            return this.collage.a(null);
        }

        public boolean isFrameCollage() {
            if (this.collage == null) {
                return false;
            }
            return this.collage.h();
        }

        public boolean swapDrawInfoClip(nexCollageInfoDraw nexcollageinfodraw, nexCollageInfoDraw nexcollageinfodraw2) {
            if (this.collage == null) {
                return false;
            }
            return this.collage.a((a) nexcollageinfodraw, (a) nexcollageinfodraw2);
        }

        public String saveToString() {
            if (this.collage == null) {
                return null;
            }
            return new Gson().toJson(this.collage.j());
        }

        public boolean loadFromSaveData(Context context, nexEngine nexengine, nexProject nexproject, String str) {
            if (this.collage == null) {
                return false;
            }
            nexSaveDataFormat nexsavedataformat = (nexSaveDataFormat) new Gson().fromJson(str, nexSaveDataFormat.class);
            if (nexsavedataformat.collage == null) {
                return false;
            }
            if (nexsavedataformat.project == null) {
                return false;
            }
            this.collage.a(nexsavedataformat.collage);
            loadCollage2Project(nexproject, nexengine, getDuration(), context);
            nexengine.setProject(nexproject);
            return true;
        }

        public int getSourceCount() {
            if (id().contains(".sc.")) {
                String id = id();
                id = id.substring(id.indexOf(".sc.") + 4, id.length());
                if (id != null && id.length() > 0) {
                    return Integer.parseInt(id);
                }
            }
            if (this.collage == null || !parsingCollage()) {
                return 0;
            }
            return this.collage.b();
        }

        private boolean parsingCollage() {
            if (!this.collage.i()) {
                try {
                    if (nexCollageManager.AssetPackageJsonToString(id()) != null) {
                        String a = this.collage.a(new JSONObject(nexCollageManager.AssetPackageJsonToString(id())));
                        if (a != null) {
                            Log.d(nexCollageManager.TAG, "collage parsing error" + a);
                            return false;
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                    Log.d(nexCollageManager.TAG, "Collage parsing error" + e.getMessage());
                    return false;
                }
            }
            return true;
        }
    }

    public enum CollageType {
        StaticCollage,
        DynamicCollage,
        ALL
    }

    public List<Collage> getCollages(int i, CollageType collageType) {
        List<Collage> arrayList = new ArrayList();
        for (Collage collage : this.collageEntries) {
            if (collage.getSourceCount() == i) {
                if (collageType == CollageType.ALL) {
                    arrayList.add(collage);
                }
                if (collage.getType() == collageType) {
                    arrayList.add(collage);
                }
            }
        }
        return arrayList;
    }

    public List<Collage> getCollages(CollageType collageType) {
        List<Collage> arrayList = new ArrayList();
        for (Collage collage : this.collageEntries) {
            if (collageType == CollageType.ALL) {
                arrayList.add(collage);
            }
            if (collage.getType() == collageType) {
                arrayList.add(collage);
            }
        }
        return arrayList;
    }

    public List<Collage> getCollages() {
        List<Collage> arrayList = new ArrayList();
        for (Collage add : this.collageEntries) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public Collage getCollage(String str) {
        synchronized (this.m_collageEntryLock) {
            for (Collage collage : this.collageEntries) {
                if (collage.id() != null && collage.id().compareTo(str) == 0) {
                    return collage;
                }
            }
            return null;
        }
    }

    private nexCollageManager(Context context, Context context2) {
        this.mAppContext = context;
        this.mResContext = context2;
    }

    public static nexCollageManager getCollageManager(Context context, Context context2) {
        if (!(sSingleton == null || sSingleton.mAppContext.getPackageName().equals(context.getPackageName()))) {
            sSingleton = null;
        }
        if (sSingleton == null) {
            sSingleton = new nexCollageManager(context, context2);
        }
        return sSingleton;
    }

    public static nexCollageManager getCollageManager() {
        return sSingleton;
    }

    private boolean resolveCollage(boolean z) {
        synchronized (this.m_collageEntryLock) {
            Collage promote;
            this.collageEntries.clear();
            for (Item item : nexAssetPackageManager.getAssetPackageManager(this.mAppContext).getInstalledAssetItems(Category.collage)) {
                if (!item.hidden()) {
                    if (z) {
                        nexAssetPackageManager.getAssetPackageManager(this.mAppContext);
                        if (nexAssetPackageManager.checkExpireAsset(item.packageInfo())) {
                        }
                    }
                    promote = Collage.promote(item);
                    if (promote != null) {
                        promote.setCollage(new nexCollage());
                        this.collageEntries.add(promote);
                    }
                }
            }
            for (Item item2 : nexAssetPackageManager.getAssetPackageManager(this.mAppContext).getInstalledAssetItems(Category.staticcollage)) {
                if (!item2.hidden()) {
                    if (z) {
                        nexAssetPackageManager.getAssetPackageManager(this.mAppContext);
                        if (nexAssetPackageManager.checkExpireAsset(item2.packageInfo())) {
                        }
                    }
                    promote = Collage.promote(item2);
                    if (promote != null) {
                        promote.setCollage(new nexCollage());
                        this.collageEntries.add(promote);
                    }
                }
            }
            for (Item item22 : nexAssetPackageManager.getAssetPackageManager(this.mAppContext).getInstalledAssetItems(Category.dynamiccollage)) {
                if (!item22.hidden()) {
                    if (z) {
                        nexAssetPackageManager.getAssetPackageManager(this.mAppContext);
                        if (nexAssetPackageManager.checkExpireAsset(item22.packageInfo())) {
                        }
                    }
                    promote = Collage.promote(item22);
                    if (promote != null) {
                        promote.setCollage(new nexCollage());
                        this.collageEntries.add(promote);
                    }
                }
            }
        }
        return true;
    }

    public boolean loadCollage() {
        return resolveCollage(false);
    }

    public boolean loadCollage(boolean z) {
        return resolveCollage(z);
    }

    public void uninstallPackageById(String str) {
        nexAssetPackageManager.getAssetPackageManager(a.a().b()).uninstallPackageById(str);
    }

    public int findNewPackages() {
        return nexAssetPackageManager.getAssetPackageManager(a.a().b()).findNewPackages();
    }

    public boolean isInstallingPackages() {
        return nexAssetPackageManager.getAssetPackageManager(a.a().b()).isInstallingPackages();
    }

    public void installPackagesAsync(OnInstallPackageListener onInstallPackageListener) {
        nexAssetPackageManager.getAssetPackageManager(a.a().b()).installPackagesAsync(onInstallPackageListener);
    }

    public void installPackagesAsync(int i, OnInstallPackageListener onInstallPackageListener) {
        nexAssetPackageManager.getAssetPackageManager(a.a().b()).installPackagesAsync(i, onInstallPackageListener);
    }

    private static String AssetPackageJsonToString(String str) {
        String str2 = null;
        f c = c.a().c(str);
        if (c == null) {
            Log.e(TAG, "AssetPackageJsonToString info fail=" + str);
        } else if (c.a().a(c.getAssetPackage())) {
            Log.e(TAG, "AssetPackageJsonToString expire id=" + str);
        } else {
            try {
                Closeable a = AssetPackageReader.a(a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                try {
                    InputStream a2 = a.a(c.getFilePath());
                    if (a2 != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a2));
                        StringBuilder stringBuilder = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            stringBuilder.append(readLine);
                            stringBuilder.append("\n");
                        }
                        a2.close();
                        str2 = stringBuilder.toString();
                    } else {
                        b.a(a);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    b.a(a);
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return str2;
    }

    public String getCollageItemId(boolean z, int i, int i2) {
        if (z) {
            loadCollage();
        }
        if (i < 2) {
            return null;
        }
        String id;
        for (Collage collage : this.collageEntries) {
            if (collage.packageInfo().assetIdx() == i && collage.getSourceCount() == i2) {
                id = collage.id();
                break;
            }
        }
        id = null;
        return id;
    }

    boolean updateCollage(boolean z, Item item) {
        boolean z2;
        synchronized (this.m_collageEntryLock) {
            z2 = false;
            if (!z) {
                boolean z3;
                Collection arrayList = new ArrayList();
                Iterator it = this.collageEntries.iterator();
                while (true) {
                    z3 = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Collage collage = (Collage) it.next();
                    if (collage.packageInfo().assetIdx() == item.packageInfo().assetIdx()) {
                        arrayList.add(collage);
                        z2 = true;
                    } else {
                        z2 = z3;
                    }
                }
                this.collageEntries.removeAll(arrayList);
                z2 = z3;
            } else if (item.hidden()) {
            } else {
                Collage promote = Collage.promote(item);
                if (promote != null) {
                    try {
                        if (AssetPackageJsonToString(promote.id()) != null) {
                            JSONObject jSONObject = new JSONObject(AssetPackageJsonToString(promote.id()));
                            nexCollage nexcollage = new nexCollage();
                            String a = nexcollage.a(jSONObject);
                            if (a != null) {
                                Log.d(TAG, "collage parse error" + a);
                            } else {
                                promote.setCollage(nexcollage);
                                this.collageEntries.add(promote);
                                z2 = true;
                            }
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        Log.d(TAG, "json create failed" + e.getMessage());
                    }
                }
            }
        }
        return z2;
    }
}
