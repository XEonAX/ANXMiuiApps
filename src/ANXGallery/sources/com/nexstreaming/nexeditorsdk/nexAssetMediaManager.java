package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.e;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Category;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Item;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class nexAssetMediaManager {
    private static final String TAG = "nexAudioManager";
    private static Context mAppContext;
    private static nexAssetMediaManager sSingleton = null;
    private List<AssetMedia> externalView_mediaEntries = null;
    private Object m_mediaentryLock = new Object();
    private List<AssetMedia> mediaEntries = new ArrayList();

    public static class AssetMedia extends c {
        private boolean filter;
        private boolean getPath;
        private boolean getpreloadedAssetPath;
        private String mediaPath;
        private String preloadedAssetPath;
        private int type;

        AssetMedia(Item item) {
            super(item);
        }

        public static AssetMedia promote(Item item) {
            AssetMedia assetMedia = new AssetMedia(item);
            assetMedia.type = 3;
            assetMedia.filter = false;
            return assetMedia;
        }

        public String getPath() {
            if (!this.getPath) {
                this.mediaPath = nexAssetPackageManager.getAssetPackageMediaPath(a.a().b(), id());
                this.getPath = true;
            }
            return this.mediaPath;
        }

        public int getClipType() {
            return this.type;
        }

        public boolean filter() {
            return this.filter;
        }

        public Bitmap getImageThumbnail() {
            Bitmap bitmap = null;
            if (this.type != 1) {
                return bitmap;
            }
            f c = c.a().c(id());
            if (c == null) {
                return bitmap;
            }
            try {
                return e.b(a.a().b(), c, 0, 0);
            } catch (IOException e) {
                return bitmap;
            }
        }

        public String getPreloadedAssetPath() {
            if (!this.getpreloadedAssetPath) {
                this.preloadedAssetPath = nexAssetPackageManager.getPreloadedMediaAppAssetPath(a.a().b(), id());
                this.getpreloadedAssetPath = true;
            }
            return this.preloadedAssetPath;
        }
    }

    private nexAssetMediaManager(Context context) {
        mAppContext = context;
    }

    public static nexAssetMediaManager getAudioManager(Context context) {
        if (sSingleton != null) {
            nexAssetMediaManager nexassetmediamanager = sSingleton;
            if (!mAppContext.getPackageName().equals(context.getPackageName())) {
                sSingleton = null;
            }
        }
        if (sSingleton == null) {
            sSingleton = new nexAssetMediaManager(context);
        }
        return sSingleton;
    }

    private void resolveMedia(int i, boolean z) {
        synchronized (this.m_mediaentryLock) {
            this.mediaEntries.clear();
            if (i == 3) {
                for (Item item : nexAssetPackageManager.getAssetPackageManager(mAppContext).getInstalledAssetItems(Category.audio)) {
                    if (!item.hidden()) {
                        if (z) {
                            nexAssetPackageManager.getAssetPackageManager(mAppContext);
                            if (nexAssetPackageManager.checkExpireAsset(item.packageInfo())) {
                            }
                        }
                        AssetMedia assetMedia = new AssetMedia(item);
                        assetMedia.type = 3;
                        assetMedia.filter = false;
                        this.mediaEntries.add(assetMedia);
                    }
                }
            }
        }
    }

    public void loadMedia(int i) {
        resolveMedia(i, false);
    }

    public void loadMedia(int i, boolean z) {
        resolveMedia(i, z);
    }

    public String[] getAssetMediaIds(int i) {
        String[] strArr;
        synchronized (this.m_mediaentryLock) {
            List arrayList = new ArrayList();
            for (AssetMedia assetMedia : this.mediaEntries) {
                if (assetMedia.getClipType() == 3) {
                    arrayList.add(assetMedia.id());
                }
            }
            strArr = new String[arrayList.size()];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < strArr.length) {
                    strArr[i3] = (String) arrayList.get(i3);
                    i2 = i3 + 1;
                }
            }
        }
        return strArr;
    }

    public AssetMedia getAssetMedia(String str) {
        AssetMedia assetMedia;
        synchronized (this.m_mediaentryLock) {
            for (AssetMedia assetMedia2 : this.mediaEntries) {
                if (assetMedia2.id().compareTo(str) == 0) {
                    break;
                }
            }
            assetMedia2 = null;
        }
        return assetMedia2;
    }

    public List<AssetMedia> getAssetMedias() {
        if (this.externalView_mediaEntries == null) {
            this.externalView_mediaEntries = Collections.unmodifiableList(this.mediaEntries);
        }
        return this.externalView_mediaEntries;
    }

    public AssetMedia[] getAssetMedias(int i) {
        AssetMedia[] assetMediaArr;
        synchronized (this.m_mediaentryLock) {
            List arrayList = new ArrayList();
            for (AssetMedia assetMedia : this.mediaEntries) {
                if (assetMedia.getClipType() == i) {
                    arrayList.add(assetMedia);
                }
            }
            assetMediaArr = new AssetMedia[arrayList.size()];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < assetMediaArr.length) {
                    assetMediaArr[i3] = (AssetMedia) arrayList.get(i3);
                    i2 = i3 + 1;
                }
            }
        }
        return assetMediaArr;
    }

    public nexClip createAudioClip(String str) {
        AssetMedia assetMedia = getAssetMedia(str);
        if (assetMedia == null) {
            return null;
        }
        return nexClip.getSupportedClip(assetMedia.getPath());
    }

    public void applyProjectBGM(nexProject nexproject, String str) {
        String str2 = null;
        AssetMedia assetMedia = getAssetMedia(str);
        if (assetMedia != null) {
            if (nexAssetPackageManager.checkExpireAsset(assetMedia.packageInfo())) {
                Log.d(TAG, "applyProjectBGM expire Id=" + str);
                return;
            } else if (assetMedia.getClipType() == 3) {
                str2 = assetMedia.getPath();
            }
        }
        nexproject.setBackgroundMusicPath(str2);
    }

    public void uninstallPackageById(String str) {
        nexAssetPackageManager.getAssetPackageManager(a.a().b()).uninstallPackageById(str);
    }

    boolean updateMedia(boolean z, int i, boolean z2, Item item) {
        synchronized (this.m_mediaentryLock) {
            Log.d(TAG, "updateMedia(" + z + "," + i + "," + item.packageInfo().assetIdx() + ")");
            AssetMedia assetMedia;
            if (!z) {
                for (AssetMedia assetMedia2 : this.mediaEntries) {
                    if (assetMedia2.id().compareTo(item.id()) == 0) {
                        this.mediaEntries.remove(assetMedia2);
                        break;
                    }
                }
            } else if (!item.hidden()) {
                assetMedia2 = new AssetMedia(item);
                assetMedia2.type = i;
                assetMedia2.filter = z2;
                this.mediaEntries.add(assetMedia2);
            }
        }
        return false;
    }
}
