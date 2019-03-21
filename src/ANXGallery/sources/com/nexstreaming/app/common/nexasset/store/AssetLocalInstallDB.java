package com.nexstreaming.app.common.nexasset.store;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.AsyncTask;
import android.os.Process;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.google.gson_nex.JsonIOException;
import com.google.gson_nex.JsonSyntaxException;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.InstallSourceType;
import com.nexstreaming.app.common.nexasset.assetpackage.b;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.store.json.AssetStoreAPIData.AssetInfo;
import com.nexstreaming.app.common.nexasset.store.json.AssetStoreAPIData.GetNewAssetList;
import com.nexstreaming.app.common.nexasset.store.json.AssetStoreAPIData.LangString;
import com.nexstreaming.app.common.nexasset.store.json.AssetStoreAPIData.ThumbInfo;
import com.nexstreaming.app.common.task.Task;
import com.nexstreaming.app.common.task.Task.Event;
import com.nexstreaming.app.common.task.Task.TaskError;
import com.nexstreaming.app.common.util.p;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import javax.crypto.NoSuchPaddingException;

public class AssetLocalInstallDB {
    public static final int ASSET_UNINSTALL_FINISHED = 1;
    public static final int ASSET_UNINSTALL_NOT_YET = 0;
    private static final String TAG = "AssetLocalInstallDB";
    private static String assetStoreRootPath;
    private static final boolean commAS = false;
    private static AssetLocalInstallDB instance;
    private static String localFeaturedPath;
    private static String localRootPath;
    private static final Executor sInstallThreadPool = Executors.newSingleThreadExecutor();
    private static int supportedMimeType;
    private boolean installing = false;
    private Context mContext = null;
    private Map<Integer, ArrayList<remoteAssetItem>> mFeaturedList = new HashMap();
    private Object m_assetdbLock = new Object();
    private List<String> readyToDeletePackages;
    private List<String> readyToInstallPackages;
    private List<String> readyToLoadPackages;

    public static final class InstallTaskError implements TaskError {
        final Exception exception;
        private final String message;

        public InstallTaskError(String str, Exception exception) {
            this.message = str;
            this.exception = exception;
        }

        public InstallTaskError(String str) {
            this.message = str;
            this.exception = null;
        }

        public Exception getException() {
            return this.exception;
        }

        public String getMessage() {
            return this.message;
        }

        public String getLocalizedMessage(Context context) {
            return this.message;
        }
    }

    public static class internalStoreAssetInfo implements StoreAssetInfo {
        private AssetInfo info;

        public internalStoreAssetInfo(AssetInfo assetInfo) {
            this.info = assetInfo;
        }

        public int getAssetIndex() {
            return this.info.idx;
        }

        public String getAssetId() {
            return this.info.asset_id;
        }

        public String getAssetTitle() {
            return this.info.title;
        }

        public String getAssetDescription() {
            return this.info.description;
        }

        public int getCategoryIndex() {
            return this.info.category_idx;
        }

        public String getCategoryAliasName() {
            return this.info.category_aliasName;
        }

        public String getCategoryIconURL() {
            return this.info.categoryimagePath;
        }

        public int getSubCategoryIndex() {
            return this.info.subcategory_idx;
        }

        public Map<String, String> getSubCategoryNameMap() {
            Map<String, String> hashMap = new HashMap();
            if (this.info.subcategoryName != null) {
                for (LangString langString : this.info.subcategoryName) {
                    hashMap.put(langString.language_code.toLowerCase(Locale.ENGLISH), langString.string_title);
                }
            }
            return hashMap;
        }

        public Map<String, String> getAssetNameMap() {
            Map<String, String> hashMap = new HashMap();
            if (this.info.assetName != null) {
                for (LangString langString : this.info.assetName) {
                    hashMap.put(langString.language_code.toLowerCase(Locale.ENGLISH), langString.string_title);
                }
            }
            return hashMap;
        }

        public Map<String, String> getAssetDescriptionMap() {
            return null;
        }

        public String getAssetPackageDownloadURL() {
            return this.info.asset_filepath;
        }

        public String getPriceType() {
            return this.info.priceType;
        }

        public String getAssetThumbnailURL() {
            return this.info.thumbnail_path;
        }

        public String getAssetThumbnailURL_L() {
            return this.info.thumbnail_path_l;
        }

        public String getAssetThumbnailURL_S() {
            return this.info.thumbnail_path_s;
        }

        public List<String> getThumbnailPaths() {
            List<String> arrayList = new ArrayList();
            if (this.info.thumb != null) {
                for (ThumbInfo thumbInfo : this.info.thumb) {
                    arrayList.add(thumbInfo.file_path);
                }
            }
            return arrayList;
        }

        public int getAssetVersion() {
            return this.info.asset_version;
        }

        public int getAssetScopeVersion() {
            return this.info.asset_sversion;
        }

        public int getAssetFilesize() {
            return this.info.asset_filesize;
        }

        public String getAssetVideoURL() {
            return this.info.videoclip_path;
        }

        public int getUpdateTime() {
            return this.info.update_time;
        }

        public String getSubCategoryAliasName() {
            return this.info.category_aliasName;
        }

        public long getExpireTime() {
            return this.info.expire_time;
        }
    }

    public static class remoteAssetItem {
        public String category;
        public String id;
        public int idx;
        public String name;
        public String thumbnailPath;
        public String thumbnailURL;
    }

    AssetLocalInstallDB(Context context) {
        File file;
        if (assetStoreRootPath == null) {
            assetStoreRootPath = EditorGlobal.e().getAbsolutePath() + File.separator + ".nexassets" + File.separator + context.getPackageName();
        }
        if (localRootPath == null) {
            localRootPath = context.getFilesDir().getAbsolutePath() + File.separator + "assets";
            file = new File(localRootPath);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        if (localFeaturedPath == null) {
            localFeaturedPath = context.getFilesDir().getAbsolutePath() + File.separator + "featured";
            file = new File(localFeaturedPath);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        this.readyToInstallPackages = new ArrayList();
        this.readyToDeletePackages = new ArrayList();
        this.readyToLoadPackages = new ArrayList();
        this.mContext = context;
    }

    public static AssetLocalInstallDB getInstance(Context context) {
        if (instance == null) {
            instance = new AssetLocalInstallDB(context.getApplicationContext());
        }
        return instance;
    }

    private boolean isSamePath() {
        return localRootPath.compareTo(assetStoreRootPath) == 0;
    }

    public static void setAssetStoreRootPath(String str) {
        assetStoreRootPath = str;
    }

    public static String getAssetStoreRootPath() {
        return assetStoreRootPath;
    }

    public static void setMimeType(int i) {
        supportedMimeType = i;
    }

    private String getThumbnailOutputPath(String str) {
        String str2 = localRootPath;
        if (localRootPath.startsWith(this.mContext.getFilesDir().getAbsolutePath())) {
            str2 = this.mContext.getFilesDir().getAbsolutePath() + File.separator + "thumb";
        }
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str2 + File.separator + str + ".jpg";
    }

    public static void setInstalledAssetPath(String str) {
        localRootPath = str;
        File file = new File(localRootPath);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static String getInstalledAssetPath() {
        return localRootPath;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x003f A:{SYNTHETIC, Splitter: B:17:0x003f} */
    /* JADX WARNING: Removed duplicated region for block: B:43:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x004b A:{SYNTHETIC, Splitter: B:24:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054 A:{SYNTHETIC, Splitter: B:29:0x0054} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void createDummyIcon(String str) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        File file = new File(getThumbnailOutputPath(str));
        int[] iArr = new int[576];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = -16777216;
        }
        FileOutputStream fileOutputStream = null;
        Bitmap createBitmap = Bitmap.createBitmap(iArr, 32, 18, Config.ARGB_8888);
        FileOutputStream fileOutputStream2;
        try {
            file.createNewFile();
            fileOutputStream2 = new FileOutputStream(file);
            try {
                createBitmap.compress(CompressFormat.PNG, 100, fileOutputStream2);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (FileNotFoundException e4) {
                e = e4;
                try {
                    e.printStackTrace();
                    if (fileOutputStream2 == null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e2 = e5;
                fileOutputStream = fileOutputStream2;
                try {
                    e2.printStackTrace();
                    if (fileOutputStream == null) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileOutputStream2 = null;
            e.printStackTrace();
            if (fileOutputStream2 == null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e8) {
                }
            }
        } catch (IOException e9) {
            e2 = e9;
            e2.printStackTrace();
            if (fileOutputStream == null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e10) {
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0039 A:{SYNTHETIC, Splitter: B:14:0x0039} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0045 A:{SYNTHETIC, Splitter: B:21:0x0045} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x004e A:{SYNTHETIC, Splitter: B:26:0x004e} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public File makeThumbnail(Bitmap bitmap, int i) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        File file = new File(getThumbnailOutputPath("" + i));
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2;
        try {
            file.createNewFile();
            fileOutputStream2 = new FileOutputStream(file);
            try {
                bitmap.compress(CompressFormat.PNG, 100, fileOutputStream2);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (FileNotFoundException e4) {
                e = e4;
                try {
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                    }
                    return file;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e2 = e6;
                fileOutputStream = fileOutputStream2;
                try {
                    e2.printStackTrace();
                    if (fileOutputStream != null) {
                    }
                    return file;
                } catch (Throwable th3) {
                    th = th3;
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileOutputStream2 = null;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e8) {
                }
            }
            return file;
        } catch (IOException e9) {
            e2 = e9;
            e2.printStackTrace();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e10) {
                }
            }
            return file;
        }
        return file;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00d1 A:{SYNTHETIC, Splitter: B:30:0x00d1} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00dd A:{SYNTHETIC, Splitter: B:37:0x00dd} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00e6 A:{SYNTHETIC, Splitter: B:42:0x00e6} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private File copyThumbnail(String str) {
        File file;
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        int i = 1;
        if (isSamePath()) {
            file = new File(assetStoreRootPath + File.separator + str + ".jpg");
            if (!file.isFile()) {
                Log.d(TAG, "copyThumbnail() file not found=" + file.getAbsolutePath());
            }
        } else {
            File file2 = new File(assetStoreRootPath + File.separator + str + ".jpg");
            file = new File(getThumbnailOutputPath(str));
            if (file2.isFile()) {
                Options options = new Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                options.inJustDecodeBounds = false;
                while (i < 8 && options.outWidth / i > 320 && options.outHeight / i > nexClip.kClip_Rotate_180) {
                    i *= 2;
                }
                options.inSampleSize = i;
                Bitmap decodeFile = BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                FileOutputStream fileOutputStream = null;
                FileOutputStream fileOutputStream2;
                try {
                    file.createNewFile();
                    fileOutputStream2 = new FileOutputStream(file);
                    try {
                        decodeFile.compress(CompressFormat.PNG, 100, fileOutputStream2);
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e3) {
                            }
                        }
                    } catch (FileNotFoundException e4) {
                        e = e4;
                        try {
                            e.printStackTrace();
                            if (fileOutputStream2 != null) {
                            }
                            file2.delete();
                            return file;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        e2 = e5;
                        fileOutputStream = fileOutputStream2;
                        try {
                            e2.printStackTrace();
                            if (fileOutputStream != null) {
                            }
                            file2.delete();
                            return file;
                        } catch (Throwable th3) {
                            th = th3;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e6) {
                                }
                            }
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e7) {
                    e = e7;
                    fileOutputStream2 = null;
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e8) {
                        }
                    }
                    file2.delete();
                    return file;
                } catch (IOException e9) {
                    e2 = e9;
                    e2.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e10) {
                        }
                    }
                    file2.delete();
                    return file;
                }
                file2.delete();
            } else {
                createDummyIcon(str);
            }
        }
        return file;
    }

    private void createDummy(String str) throws IOException {
        if (!isSamePath()) {
            OutputStream fileOutputStream = new FileOutputStream(new File(assetStoreRootPath, str));
            fileOutputStream.write(new byte[]{(byte) 80, (byte) 75});
            fileOutputStream.close();
        }
    }

    private boolean checkInstallFile(String str, String str2) {
        boolean z = false;
        File file = new File(str, str2 + ".json");
        boolean z2 = true;
        int assetIdxInJson = getAssetIdxInJson(str2);
        if (assetIdxInJson != Integer.parseInt(str2)) {
            Log.d(TAG, "invalid " + str2 + ".json. idx=" + assetIdxInJson);
            z2 = false;
        }
        File file2 = new File(str, "." + str2);
        file2 = new File(str, str2 + ".jpg");
        if (file2.isFile()) {
            z = z2;
        } else {
            Log.d(TAG, "thumbnail not found (" + str2 + ")");
        }
        if (!z) {
            if (file.isFile()) {
                file.delete();
            }
            if (file2.isFile()) {
                file2.delete();
            }
        }
        return z;
    }

    public int checkStoreInstall() {
        this.readyToInstallPackages.clear();
        int i = supportedMimeType;
        String str = assetStoreRootPath;
        File file = new File(str);
        if (file.isDirectory()) {
            for (String str2 : file.list()) {
                File file2 = new File(str, str2);
                if (file2.isFile() && str2.endsWith(".zip") && file2.length() > 2) {
                    if (checkInstallFile(str, str2.substring(0, str2.length() - 4))) {
                        this.readyToInstallPackages.add(str2);
                    } else {
                        file2.delete();
                    }
                }
            }
        }
        return this.readyToInstallPackages.size();
    }

    public List<String> getReadyToInstallPackages() {
        checkStoreInstall();
        return this.readyToInstallPackages;
    }

    public void checkStore() {
        this.readyToDeletePackages.clear();
        this.readyToLoadPackages.clear();
        File file = new File(localRootPath);
        if (file.isDirectory()) {
            for (String str : file.list()) {
                File file2 = new File(localRootPath, str);
                if (file2.isDirectory()) {
                    if (!new File(assetStoreRootPath + File.separator + str + ".zip").isFile()) {
                        this.readyToDeletePackages.add(str);
                        try {
                            uninstallPackage(Integer.parseInt(str));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (file2.length() <= 2) {
                        this.readyToLoadPackages.add(str);
                    }
                }
            }
        }
    }

    public boolean isInstallingPackages() {
        return this.installing;
    }

    public Task installPackageAsync(int i) {
        final Task task = new Task();
        this.installing = true;
        new AsyncTask<Integer, Void, Exception>() {
            protected void onPreExecute() {
                super.onPreExecute();
            }

            protected Exception doInBackground(Integer... numArr) {
                int parseInt;
                String[] strArr;
                String[] strArr2;
                Process.setThreadPriority(0);
                int intValue = numArr[0].intValue();
                if (intValue == 0) {
                    ArrayList arrayList = new ArrayList();
                    String access$000 = AssetLocalInstallDB.assetStoreRootPath;
                    File file = new File(access$000);
                    if (file.isDirectory()) {
                        for (String str : file.list()) {
                            File file2 = new File(access$000, str);
                            if (file2.isFile() && str.endsWith(".zip") && file2.length() > 2) {
                                if (AssetLocalInstallDB.this.checkInstallFile(access$000, str.substring(0, str.length() - 4))) {
                                    arrayList.add(str);
                                } else {
                                    file2.delete();
                                }
                            }
                        }
                    }
                    if (arrayList.size() == 0) {
                        Log.d(AssetLocalInstallDB.TAG, "download asset package not found.");
                        return new NotFoundException("download asset package not found");
                    }
                    String[] strArr3 = new String[arrayList.size()];
                    String[] strArr4 = new String[arrayList.size()];
                    for (int i = 0; i < arrayList.size(); i++) {
                        strArr3[i] = (String) arrayList.get(i);
                    }
                    strArr = strArr4;
                    strArr2 = strArr3;
                } else if (AssetLocalInstallDB.this.checkInstallFile(AssetLocalInstallDB.assetStoreRootPath, "" + intValue)) {
                    strArr = new String[]{"" + intValue + ".zip"};
                    strArr2 = new String[1];
                } else {
                    Log.d(AssetLocalInstallDB.TAG, "download asset package not found. AssetIdx=" + intValue);
                    return new NotFoundException("download asset package not found");
                }
                int i2 = 0;
                while (i2 < strArr2.length) {
                    String str2 = strArr2[i2];
                    String substring = str2.substring(0, str2.length() - 4);
                    try {
                        parseInt = Integer.parseInt(substring);
                        b b = c.a().b(parseInt);
                        if (b != null) {
                            Log.d(AssetLocalInstallDB.TAG, "already installed Asset=" + parseInt);
                            if (b.getInstallSourceType() == InstallSourceType.STORE) {
                                try {
                                    AssetLocalInstallDB.this.uninstallPackage(parseInt, false);
                                } catch (Exception e) {
                                }
                            } else {
                                Log.d(AssetLocalInstallDB.TAG, "installed Asset is not store type. idx=" + parseInt);
                            }
                        }
                    } catch (NumberFormatException e2) {
                        Log.d(AssetLocalInstallDB.TAG, "baseId is not Integer baseId=" + substring);
                    }
                    File access$300 = AssetLocalInstallDB.this.copyThumbnail(substring);
                    task.setProgress(i2 + 1, strArr2.length);
                    try {
                        AssetLocalInstallDB.this.installPackage(strArr2[i2], substring, access$300, task, false, strArr[i2]);
                        Log.i(AssetLocalInstallDB.TAG, "install asset completed : asset = [" + strArr2[i2] + "]");
                        i2++;
                    } catch (Exception e3) {
                        Log.d(AssetLocalInstallDB.TAG, "install asset failed : asset = [" + strArr2[i2] + "]");
                        return e3;
                    } catch (Exception e32) {
                        Log.d(AssetLocalInstallDB.TAG, "install asset failed : asset = [" + strArr2[i2] + "]");
                        new File(AssetLocalInstallDB.assetStoreRootPath, strArr2[i2]).delete();
                        return e32;
                    }
                }
                return null;
            }

            protected void onPostExecute(Exception exception) {
                super.onPostExecute(exception);
                AssetLocalInstallDB.this.installing = false;
                if (exception != null) {
                    task.sendFailure(new InstallTaskError("asset_install_failed", exception));
                    return;
                }
                task.signalEvent(Event.COMPLETE);
            }
        }.executeOnExecutor(sInstallThreadPool, new Integer[]{Integer.valueOf(i)});
        return task;
    }

    private int getAssetIdxInJson(String str) {
        AssetInfo assetInfo;
        File file = new File(assetStoreRootPath, str + ".json");
        AssetInfo assetInfo2 = null;
        if (!file.isFile()) {
            return -1;
        }
        InputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            assetInfo = (AssetInfo) new Gson().fromJson(new InputStreamReader(fileInputStream), AssetInfo.class);
            try {
                fileInputStream.close();
            } catch (FileNotFoundException e) {
            } catch (IOException e2) {
                assetInfo2 = assetInfo;
                assetInfo = assetInfo2;
            }
        } catch (FileNotFoundException e3) {
            assetInfo = null;
        } catch (IOException e4) {
            assetInfo = assetInfo2;
        } catch (Throwable th) {
            fileInputStream.close();
        }
        if (assetInfo == null) {
            return -1;
        }
        return assetInfo.idx;
    }

    private StoreAssetInfo parseStoreAssetInfo(File file, String str) {
        File file2 = new File(assetStoreRootPath, str + ".json");
        if (file2.isFile()) {
            AssetInfo assetInfo;
            InputStream fileInputStream;
            try {
                fileInputStream = new FileInputStream(file2);
                assetInfo = (AssetInfo) new Gson().fromJson(new InputStreamReader(fileInputStream), AssetInfo.class);
                try {
                    fileInputStream.close();
                } catch (FileNotFoundException e) {
                } catch (IOException e2) {
                }
            } catch (FileNotFoundException e3) {
                assetInfo = null;
            } catch (IOException e4) {
                assetInfo = null;
            } catch (Throwable th) {
                fileInputStream.close();
            }
            file2.delete();
            return new internalStoreAssetInfo(assetInfo);
        }
        Log.d(TAG, "jsonFile file not found!");
        AssetInfo assetInfo2 = new AssetInfo();
        try {
            AssetPackageReader b = AssetPackageReader.b(file, str);
            if (b != null) {
                if (b.e() != null) {
                    assetInfo2.title = (String) b.e().get("en");
                } else {
                    assetInfo2.title = str;
                }
                assetInfo2.idx = Integer.parseInt(str);
                assetInfo2.asset_id = str;
                b.close();
                return new internalStoreAssetInfo(assetInfo2);
            }
            assetInfo2.idx = Integer.parseInt(str);
            assetInfo2.asset_id = str;
            assetInfo2.title = str;
            return new internalStoreAssetInfo(assetInfo2);
        } catch (IOException e5) {
            assetInfo2.idx = Integer.parseInt(str);
            assetInfo2.asset_id = str;
            assetInfo2.title = str;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x018c  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x01b7  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0204  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0122  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x018c  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x01b7  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0122  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0204  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x018c  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x01b7  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0204  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0122  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x018c  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x01b7  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0122  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0204  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean installPackageSync(int i) {
        boolean z;
        String str = assetStoreRootPath;
        String str2 = "" + i;
        if (this.installing) {
            Log.d(TAG, "installPackageSync(" + i + "): installing retry");
            return false;
        }
        this.installing = true;
        File file = new File(str);
        File file2 = new File(str, str2 + ".json");
        File file3 = new File(str, str2 + ".jpg");
        File file4 = new File(str, str2 + ".zip");
        AssetInfo assetInfo = null;
        if (file.isDirectory()) {
            if (file2.isFile()) {
                InputStream fileInputStream;
                AssetInfo assetInfo2;
                try {
                    fileInputStream = new FileInputStream(file2);
                    assetInfo2 = (AssetInfo) new Gson().fromJson(new InputStreamReader(fileInputStream), AssetInfo.class);
                    try {
                        fileInputStream.close();
                        assetInfo = assetInfo2;
                        z = true;
                    } catch (FileNotFoundException e) {
                        assetInfo = assetInfo2;
                        z = false;
                        if (assetInfo == null) {
                        }
                        if (!file3.isFile()) {
                        }
                        if (file4.isFile()) {
                        }
                        if (z) {
                        }
                    } catch (IOException e2) {
                        assetInfo = assetInfo2;
                        Log.d(TAG, "installPackageSync(" + i + "): info json parse fail!");
                        z = false;
                        if (assetInfo == null) {
                        }
                        if (file3.isFile()) {
                        }
                        if (file4.isFile()) {
                        }
                        if (z) {
                        }
                    }
                } catch (FileNotFoundException e3) {
                    assetInfo2 = null;
                    assetInfo = assetInfo2;
                    z = false;
                    if (assetInfo == null) {
                    }
                    if (file3.isFile()) {
                    }
                    if (file4.isFile()) {
                    }
                    if (z) {
                    }
                } catch (IOException e4) {
                    Log.d(TAG, "installPackageSync(" + i + "): info json parse fail!");
                    z = false;
                    if (assetInfo == null) {
                    }
                    if (file3.isFile()) {
                    }
                    if (file4.isFile()) {
                    }
                    if (z) {
                    }
                } catch (Throwable th) {
                    fileInputStream.close();
                }
            } else {
                Log.d(TAG, "installPackageSync(" + i + "): info json not found!");
                z = false;
            }
            if (assetInfo == null) {
                Log.d(TAG, "installPackageSync(" + i + "): json parsing fail!");
                z = false;
            } else if (assetInfo.idx != i) {
                Log.d(TAG, "installPackageSync(" + i + "): invalidation idx=" + assetInfo.idx);
                z = false;
            }
            if (file3.isFile()) {
                Log.d(TAG, "installPackageSync(" + i + "): thumbnail not found!");
                z = false;
            }
            if (file4.isFile()) {
                Log.d(TAG, "installPackageSync(" + i + "): package not found!");
                z = false;
            } else if (!p.a(file4)) {
                Log.d(TAG, "installPackageSync(" + i + "): package is not zip!");
                z = false;
            }
            if (z) {
                if (file2.isFile()) {
                    file2.delete();
                }
                if (file4.isFile()) {
                    file4.delete();
                }
                if (file3.isFile()) {
                    file3.delete();
                }
                this.installing = false;
                return false;
            }
            file = new File(localRootPath, str2);
            try {
                File file5 = new File(getThumbnailOutputPath(str2));
                copyFile(file3, file5.getAbsolutePath());
                p.a(file4, file);
                c.a(this.mContext).a(file, file5, new internalStoreAssetInfo(assetInfo));
                file3.delete();
                file2.delete();
                file4.delete();
                this.installing = false;
                return true;
            } catch (IOException e5) {
                e5.printStackTrace();
                Log.d(TAG, "installPackageSync(" + i + "): unzip fail=" + file.getAbsolutePath());
                this.installing = false;
                return false;
            }
        }
        Log.d(TAG, "installPackageSync(" + i + "): store path not found=" + str);
        this.installing = false;
        return false;
    }

    private void installPackage(String str, String str2, File file, Task task, boolean z, String str3) throws IOException {
        Log.d(TAG, "installPackage() called with: item = [" + str + "], thumbFile = [" + file + "]");
        File file2 = new File(assetStoreRootPath, str);
        if (file2.exists()) {
            File file3;
            if (p.a(file2)) {
                z = false;
            }
            File file4 = new File(localRootPath, str2);
            if (z) {
                try {
                    if (str3.compareTo(AssetStoreClient.none) == 0) {
                        Log.d(TAG, "installPackage() fail. key not found.");
                        file2.delete();
                        file3 = new File(assetStoreRootPath, "." + str2);
                        if (file3.isFile()) {
                            file3.delete();
                            return;
                        }
                        return;
                    }
                } catch (Throwable e) {
                    Log.w(TAG, "installPackage unzip error", e);
                    if (file4.exists()) {
                        file4.delete();
                    }
                    throw new IOException(e);
                }
            }
            try {
                unzip(file2, file4, task, z, str3);
                file3 = new File(assetStoreRootPath, "." + str2);
                if (file3.isFile()) {
                    file3.delete();
                }
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
                if (file4.exists()) {
                    file4.delete();
                }
            } catch (NoSuchPaddingException e3) {
                e3.printStackTrace();
                if (file4.exists()) {
                    file4.delete();
                }
            } catch (InvalidKeyException e4) {
                e4.printStackTrace();
                if (file4.exists()) {
                    file4.delete();
                }
            }
            synchronized (this.m_assetdbLock) {
                StoreAssetInfo parseStoreAssetInfo = parseStoreAssetInfo(file4, str2);
                if (parseStoreAssetInfo != null) {
                    Log.d(TAG, "install StoreAssetItem, idx=" + parseStoreAssetInfo.getAssetIndex() + ", id=" + parseStoreAssetInfo.getAssetId() + ", SDKLevel=" + parseStoreAssetInfo.getAssetScopeVersion() + ", version=" + parseStoreAssetInfo.getAssetVersion());
                }
                c.a(this.mContext).a(file4, file, parseStoreAssetInfo);
                file2.delete();
            }
            return;
        }
        throw new FileNotFoundException("Not found asset file");
    }

    public f getAssetInstalledItemInfoByAssetIdx(int i) {
        Iterator it = c.a(this.mContext).c(i).iterator();
        if (it.hasNext()) {
            return (f) it.next();
        }
        return null;
    }

    public List<? extends b> getAssetInstalledDownloadItemItems() {
        List<? extends b> arrayList = new ArrayList();
        for (b bVar : c.a(this.mContext).b()) {
            if (bVar.getInstallSourceType() == InstallSourceType.STORE) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public void checkInstallDB() {
        int i = 0;
        int i2 = 0;
        for (b installSourceType : c.a(this.mContext).b()) {
            int i3;
            if (installSourceType.getInstallSourceType() == InstallSourceType.STORE) {
                i3 = i2 + 1;
            } else {
                i3 = i2;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            Log.d(TAG, "StoreAsset NotFound!");
            String str = assetStoreRootPath;
            File file = new File(str);
            if (file.isDirectory()) {
                String[] list = file.list();
                int length = list.length;
                while (i < length) {
                    String str2 = list[i];
                    File file2 = new File(str, str2);
                    if (file2.isFile() && (!str2.endsWith(".zip") || file2.length() <= 2)) {
                        file2.delete();
                    }
                    i++;
                }
            }
        }
    }

    public void uninstallFromAssetStoreApp() {
        String str = assetStoreRootPath;
        File file = new File(str);
        if (file.isDirectory()) {
            for (String str2 : file.list()) {
                if (str2.endsWith(".del")) {
                    String substring = str2.substring(0, str2.length() - 4);
                    Log.d(TAG, "uninstallFromAssetStoreApp idx=" + substring);
                    try {
                        uninstallPackage(Integer.parseInt(substring));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    new File(str, str2).delete();
                }
            }
        }
    }

    private void deleteDir(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File deleteDir : listFiles) {
                deleteDir(deleteDir);
            }
        }
        file.delete();
    }

    private int uninstallPackage(int i, boolean z) throws Exception {
        int i2 = 1;
        Log.d(TAG, "uninstallPackage() called with: assetIdx = [" + i + "]");
        if (!(i == 0 || i == 1)) {
            synchronized (this.m_assetdbLock) {
                f assetInstalledItemInfoByAssetIdx = getAssetInstalledItemInfoByAssetIdx(i);
                if (assetInstalledItemInfoByAssetIdx != null) {
                    File file = new File(URI.create(assetInstalledItemInfoByAssetIdx.getPackageURI()).getPath());
                    File file2 = new File(getThumbnailOutputPath("" + i));
                    if (file.isDirectory()) {
                        deleteDir(file);
                    } else {
                        file.delete();
                    }
                    if (file2.isFile()) {
                        if (z) {
                            file2.delete();
                        } else if (!isSamePath()) {
                            file2.delete();
                        }
                    }
                    if (z) {
                        file2 = new File(assetStoreRootPath, i + ".zip");
                        if (file2.isFile()) {
                            file2.delete();
                        }
                    }
                    if (file.exists() && !file.delete()) {
                        i2 = 0;
                    }
                    c.a(this.mContext).a(i);
                }
                Log.d(TAG, "uninstallPackage() returned: " + i2);
            }
        }
        return i2;
    }

    public int uninstallPackage(int i) throws Exception {
        return uninstallPackage(i, true);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: EliminatePhiNodes
        jadx.core.utils.exceptions.JadxRuntimeException: Unexpected register number in merge insn: ?: MERGE  (r3_6 java.io.Closeable) = (r3_5 java.io.Closeable), (r3_12 java.io.Closeable)
        	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMerge(EliminatePhiNodes.java:84)
        	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMergeInstructions(EliminatePhiNodes.java:68)
        	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.visit(EliminatePhiNodes.java:31)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    private static void unzip(java.io.File r12, java.io.File r13, com.nexstreaming.app.common.task.Task r14, boolean r15, java.lang.String r16) throws java.io.IOException, java.security.NoSuchAlgorithmException, javax.crypto.NoSuchPaddingException, java.security.InvalidKeyException {
        /*
        r0 = "AssetLocalInstallDB";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unzipping '";
        r1 = r1.append(r2);
        r1 = r1.append(r12);
        r2 = "' to '";
        r1 = r1.append(r2);
        r1 = r1.append(r13);
        r2 = "'";
        r1 = r1.append(r2);
        r1 = r1.toString();
        android.util.Log.d(r0, r1);
        r0 = r13.mkdirs();
        if (r0 != 0) goto L_0x004d;
    L_0x002e:
        r0 = r13.exists();
        if (r0 != 0) goto L_0x004d;
    L_0x0034:
        r0 = new java.io.IOException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Failed to create directory: ";
        r1 = r1.append(r2);
        r1 = r1.append(r13);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x004d:
        r4 = r12.length();
        r0 = 0;
        r2 = 0;
        r3 = 100;
        r14.setProgress(r2, r3);
        r2 = 0;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 > 0) goto L_0x0067;
    L_0x005f:
        r0 = new java.io.IOException;
        r1 = "Failed because file size is zero";
        r0.<init>(r1);
        throw r0;
    L_0x0067:
        if (r15 == 0) goto L_0x00ad;
    L_0x0069:
        r2 = "AES/ECB/PKCS5Padding";
        r2 = javax.crypto.Cipher.getInstance(r2);
        r3 = 2;
        r6 = new javax.crypto.spec.SecretKeySpec;
        r7 = r16.getBytes();
        r8 = "AES";
        r6.<init>(r7, r8);
        r2.init(r3, r6);
        r3 = new javax.crypto.CipherInputStream;
        r6 = new java.io.FileInputStream;
        r6.<init>(r12);
        r3.<init>(r6, r2);
        r2 = new java.util.zip.ZipInputStream;
        r2.<init>(r3);
        r3 = r2;
    L_0x008e:
        r2 = r3.getNextEntry();	 Catch:{ all -> 0x00a8 }
        if (r2 == 0) goto L_0x0177;	 Catch:{ all -> 0x00a8 }
    L_0x0094:
        r6 = r2.getName();	 Catch:{ all -> 0x00a8 }
        r7 = "..";	 Catch:{ all -> 0x00a8 }
        r7 = r6.contains(r7);	 Catch:{ all -> 0x00a8 }
        if (r7 == 0) goto L_0x00b9;	 Catch:{ all -> 0x00a8 }
    L_0x00a0:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x00a8 }
        r1 = "Relative paths not allowed";	 Catch:{ all -> 0x00a8 }
        r0.<init>(r1);	 Catch:{ all -> 0x00a8 }
        throw r0;	 Catch:{ all -> 0x00a8 }
    L_0x00a8:
        r0 = move-exception;
        com.nexstreaming.app.common.util.b.a(r3);
        throw r0;
    L_0x00ad:
        r2 = new java.util.zip.ZipInputStream;
        r3 = new java.io.FileInputStream;
        r3.<init>(r12);
        r2.<init>(r3);
        r3 = r2;
        goto L_0x008e;
    L_0x00b9:
        r7 = new java.io.File;	 Catch:{ all -> 0x00a8 }
        r7.<init>(r13, r6);	 Catch:{ all -> 0x00a8 }
        r8 = r2.isDirectory();	 Catch:{ all -> 0x00a8 }
        if (r8 == 0) goto L_0x0108;	 Catch:{ all -> 0x00a8 }
    L_0x00c4:
        r2 = r7.mkdirs();	 Catch:{ all -> 0x00a8 }
        if (r2 != 0) goto L_0x00e9;	 Catch:{ all -> 0x00a8 }
    L_0x00ca:
        r2 = r7.exists();	 Catch:{ all -> 0x00a8 }
        if (r2 != 0) goto L_0x00e9;	 Catch:{ all -> 0x00a8 }
    L_0x00d0:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x00a8 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a8 }
        r1.<init>();	 Catch:{ all -> 0x00a8 }
        r2 = "Failed to create directory: ";	 Catch:{ all -> 0x00a8 }
        r1 = r1.append(r2);	 Catch:{ all -> 0x00a8 }
        r1 = r1.append(r7);	 Catch:{ all -> 0x00a8 }
        r1 = r1.toString();	 Catch:{ all -> 0x00a8 }
        r0.<init>(r1);	 Catch:{ all -> 0x00a8 }
        throw r0;	 Catch:{ all -> 0x00a8 }
    L_0x00e9:
        r2 = "AssetLocalInstallDB";	 Catch:{ all -> 0x00a8 }
        r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a8 }
        r7.<init>();	 Catch:{ all -> 0x00a8 }
        r8 = "  - unzip: made folder '";	 Catch:{ all -> 0x00a8 }
        r7 = r7.append(r8);	 Catch:{ all -> 0x00a8 }
        r6 = r7.append(r6);	 Catch:{ all -> 0x00a8 }
        r7 = "'";	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r7);	 Catch:{ all -> 0x00a8 }
        r6 = r6.toString();	 Catch:{ all -> 0x00a8 }
        android.util.Log.d(r2, r6);	 Catch:{ all -> 0x00a8 }
        goto L_0x008e;	 Catch:{ all -> 0x00a8 }
    L_0x0108:
        r8 = "AssetLocalInstallDB";	 Catch:{ all -> 0x00a8 }
        r9 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a8 }
        r9.<init>();	 Catch:{ all -> 0x00a8 }
        r10 = "  - unzip: unzipping file '";	 Catch:{ all -> 0x00a8 }
        r9 = r9.append(r10);	 Catch:{ all -> 0x00a8 }
        r6 = r9.append(r6);	 Catch:{ all -> 0x00a8 }
        r9 = "' ";	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r9);	 Catch:{ all -> 0x00a8 }
        r10 = r2.getCompressedSize();	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r10);	 Catch:{ all -> 0x00a8 }
        r9 = "->";	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r9);	 Catch:{ all -> 0x00a8 }
        r10 = r2.getSize();	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r10);	 Catch:{ all -> 0x00a8 }
        r9 = " (";	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r9);	 Catch:{ all -> 0x00a8 }
        r9 = r2.getMethod();	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r9);	 Catch:{ all -> 0x00a8 }
        r9 = ")";	 Catch:{ all -> 0x00a8 }
        r6 = r6.append(r9);	 Catch:{ all -> 0x00a8 }
        r6 = r6.toString();	 Catch:{ all -> 0x00a8 }
        android.util.Log.d(r8, r6);	 Catch:{ all -> 0x00a8 }
        r6 = new java.io.FileOutputStream;	 Catch:{ all -> 0x00a8 }
        r6.<init>(r7);	 Catch:{ all -> 0x00a8 }
        copy(r3, r6);	 Catch:{ all -> 0x0172 }
        com.nexstreaming.app.common.util.b.a(r6);	 Catch:{ all -> 0x00a8 }
        r6 = r2.getCompressedSize();	 Catch:{ all -> 0x00a8 }
        r0 = r0 + r6;	 Catch:{ all -> 0x00a8 }
        r6 = 100;	 Catch:{ all -> 0x00a8 }
        r6 = r6 * r0;	 Catch:{ all -> 0x00a8 }
        r6 = r6 / r4;	 Catch:{ all -> 0x00a8 }
        r2 = (int) r6;	 Catch:{ all -> 0x00a8 }
        r6 = 100;	 Catch:{ all -> 0x00a8 }
        if (r2 < r6) goto L_0x016b;	 Catch:{ all -> 0x00a8 }
    L_0x0169:
        r2 = 99;	 Catch:{ all -> 0x00a8 }
    L_0x016b:
        r6 = 100;	 Catch:{ all -> 0x00a8 }
        r14.setProgress(r2, r6);	 Catch:{ all -> 0x00a8 }
        goto L_0x008e;	 Catch:{ all -> 0x00a8 }
    L_0x0172:
        r0 = move-exception;	 Catch:{ all -> 0x00a8 }
        com.nexstreaming.app.common.util.b.a(r6);	 Catch:{ all -> 0x00a8 }
        throw r0;	 Catch:{ all -> 0x00a8 }
    L_0x0177:
        com.nexstreaming.app.common.util.b.a(r3);
        r0 = 100;
        r1 = 100;
        r14.setProgress(r0, r1);
        r0 = "AssetLocalInstallDB";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unzipping DONE for: '";
        r1 = r1.append(r2);
        r1 = r1.append(r12);
        r2 = "' to '";
        r1 = r1.append(r2);
        r1 = r1.append(r13);
        r2 = "'";
        r1 = r1.append(r2);
        r1 = r1.toString();
        android.util.Log.d(r0, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB.unzip(java.io.File, java.io.File, com.nexstreaming.app.common.task.Task, boolean, java.lang.String):void");
    }

    public File getUnzipFolder(int i) {
        return new File(localRootPath, "" + i);
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
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

    private static String readFromFile(File file) {
        try {
            InputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream));
            StringBuilder stringBuilder = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuilder.append(readLine);
                    stringBuilder.append("\n");
                } else {
                    bufferedInputStream.close();
                    return stringBuilder.toString();
                }
            }
        } catch (FileNotFoundException e) {
            return e.getMessage();
        } catch (IOException e2) {
            return e2.getMessage();
        }
    }

    private boolean copyFile(File file, String str) {
        if (file == null || !file.exists()) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            fileInputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0072 A:{SYNTHETIC, Splitter: B:30:0x0072} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x007e A:{SYNTHETIC, Splitter: B:37:0x007e} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0087 A:{SYNTHETIC, Splitter: B:42:0x0087} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean copyThumbnail(String str, String str2) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        File file = new File(str);
        File file2 = new File(str2);
        if (file2.isFile()) {
            file2.delete();
        }
        if (!file.isFile()) {
            return false;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inJustDecodeBounds = false;
        int i = 1;
        while (i < 8 && options.outWidth / i > 320 && options.outHeight / i > nexClip.kClip_Rotate_180) {
            i *= 2;
        }
        options.inSampleSize = i;
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        if (decodeFile == null) {
            file.delete();
            return false;
        }
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2;
        try {
            file2.createNewFile();
            fileOutputStream2 = new FileOutputStream(file2);
            try {
                decodeFile.compress(CompressFormat.PNG, 100, fileOutputStream2);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (FileNotFoundException e4) {
                e = e4;
                try {
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                    }
                    file.delete();
                    return true;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e2 = e5;
                fileOutputStream = fileOutputStream2;
                try {
                    e2.printStackTrace();
                    if (fileOutputStream != null) {
                    }
                    file.delete();
                    return true;
                } catch (Throwable th3) {
                    th = th3;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileOutputStream2 = null;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e8) {
                }
            }
            file.delete();
            return true;
        } catch (IOException e9) {
            e2 = e9;
            e2.printStackTrace();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e10) {
                }
            }
            file.delete();
            return true;
        }
        file.delete();
        return true;
    }

    public static boolean isUpdatedFeaturedList(int i, String str) {
        File file = new File(localFeaturedPath + File.separator + "" + i + ".json");
        boolean z = true;
        if (file.isFile()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[((int) file.length())];
                fileInputStream.read(bArr);
                if (Arrays.equals(bArr, str.getBytes())) {
                    Log.d(TAG, "FeaturedList equals index=" + i);
                    z = false;
                }
                fileInputStream.close();
            } catch (FileNotFoundException e) {
            } catch (IOException e2) {
                Log.d(TAG, "FeaturedList IOException");
            }
        }
        return z;
    }

    public static void saveFeaturedList(int i, String str) {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(localFeaturedPath + File.separator + "" + i + ".json");
            fileOutputStream.write(str.getBytes());
            try {
                fileOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (IOException e2) {
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        } catch (FileNotFoundException e4) {
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00b2 A:{SYNTHETIC, Splitter: B:20:0x00b2} */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00be A:{SYNTHETIC, Splitter: B:27:0x00be} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c7 A:{SYNTHETIC, Splitter: B:32:0x00c7} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void saveFeaturedThumbnail(int i, Bitmap bitmap) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        File file = new File(localFeaturedPath, "" + i);
        FileOutputStream fileOutputStream = null;
        if (file.isFile()) {
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            if (options.outWidth == bitmap.getWidth() || options.outHeight == bitmap.getHeight()) {
                Log.d(TAG, "saveFeaturedThumbnail assetIdx=" + i + ", exists. lastModified=" + (System.currentTimeMillis() - file.lastModified()));
                return;
            }
            Log.d(TAG, "saveFeaturedThumbnail assetIdx=" + i + ", is not bmp . size=" + file.length());
            file.delete();
        }
        FileOutputStream fileOutputStream2;
        try {
            file.createNewFile();
            fileOutputStream2 = new FileOutputStream(file);
            try {
                bitmap.compress(CompressFormat.PNG, 100, fileOutputStream2);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (FileNotFoundException e4) {
                e = e4;
                try {
                    e.printStackTrace();
                    if (fileOutputStream2 == null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e2 = e5;
                fileOutputStream = fileOutputStream2;
                try {
                    e2.printStackTrace();
                    if (fileOutputStream == null) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileOutputStream2 = null;
            e.printStackTrace();
            if (fileOutputStream2 == null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e8) {
                }
            }
        } catch (IOException e9) {
            e2 = e9;
            e2.printStackTrace();
            if (fileOutputStream == null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e10) {
                }
            }
        }
    }

    private void moveFeaturedList(String str) {
        File file = new File(assetStoreRootPath + File.separator + str);
        if (file.isDirectory()) {
            for (String str2 : file.list()) {
                if (!str2.startsWith(".")) {
                    if (str2.endsWith(".json")) {
                        File file2 = new File(file.getAbsolutePath(), str2);
                        if (!copyFile(file2, localFeaturedPath + File.separator + str2)) {
                            Log.d(TAG, "copyFile fail!");
                        }
                        file2.delete();
                    } else {
                        copyThumbnail(file.getAbsolutePath() + File.separator + str2, localFeaturedPath + File.separator + str2);
                    }
                }
            }
        }
    }

    private boolean getFeaturedList(String str, int i) {
        ArrayList arrayList;
        boolean z;
        Throwable th;
        Throwable th2;
        InputStream inputStream;
        InputStream inputStream2 = null;
        boolean z2 = false;
        File file = new File(str);
        ArrayList arrayList2 = (ArrayList) this.mFeaturedList.get(Integer.valueOf(i));
        if (arrayList2 == null) {
            arrayList2 = new ArrayList();
            this.mFeaturedList.put(Integer.valueOf(i), arrayList2);
            arrayList = arrayList2;
        } else {
            arrayList = arrayList2;
        }
        if (file.isDirectory()) {
            File file2 = new File(file.getAbsolutePath(), "" + i + ".json");
            if (file2.isFile()) {
                try {
                    InputStream fileInputStream = new FileInputStream(file2);
                    try {
                        GetNewAssetList getNewAssetList = (GetNewAssetList) new Gson().fromJson(new InputStreamReader(fileInputStream), GetNewAssetList.class);
                        if (getNewAssetList == null) {
                            try {
                                fileInputStream.close();
                                return false;
                            } catch (FileNotFoundException e) {
                                e.printStackTrace();
                                z = z2;
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                z = z2;
                            } catch (JsonSyntaxException e3) {
                                Log.e(TAG, "getFeaturedList err!");
                                e3.printStackTrace();
                                z = z2;
                            } catch (JsonIOException e4) {
                                Log.e(TAG, "getFeaturedList err!");
                                e4.printStackTrace();
                                z = z2;
                            }
                        } else if (getNewAssetList.objList == null) {
                            fileInputStream.close();
                            return false;
                        } else {
                            if (getNewAssetList.objList.size() > 0) {
                                arrayList.clear();
                                for (AssetInfo assetInfo : getNewAssetList.objList) {
                                    if (new File(str, "" + assetInfo.idx).isFile()) {
                                        remoteAssetItem remoteassetitem = new remoteAssetItem();
                                        remoteassetitem.id = assetInfo.asset_id;
                                        remoteassetitem.idx = assetInfo.idx;
                                        remoteassetitem.name = ((LangString) assetInfo.assetName.get(0)).string_title;
                                        String language = this.mContext.getResources().getConfiguration().locale.getLanguage();
                                        int i2 = 0;
                                        while (i2 < assetInfo.assetName.size()) {
                                            if (((LangString) assetInfo.assetName.get(i2)).language_code.equals(language) && ((LangString) assetInfo.assetName.get(i2)).string_title != null) {
                                                remoteassetitem.name = ((LangString) assetInfo.assetName.get(i2)).string_title;
                                                break;
                                            }
                                            i2++;
                                        }
                                        remoteassetitem.thumbnailPath = str + File.separator + remoteassetitem.idx;
                                        remoteassetitem.thumbnailURL = assetInfo.thumbnail_path_s;
                                        if (assetInfo.category_aliasName != null) {
                                            remoteassetitem.category = assetInfo.category_aliasName;
                                        } else {
                                            remoteassetitem.category = "None";
                                        }
                                        arrayList.add(remoteassetitem);
                                    } else {
                                        Log.d(TAG, "getFeaturedList() mode=" + i + ", idx=" + i + ", thumbnail not found!");
                                    }
                                }
                                z2 = true;
                            }
                            fileInputStream.close();
                            z = z2;
                            if (!z) {
                                try {
                                    InputStream fileInputStream2 = new FileInputStream(file2);
                                    try {
                                        Object obj = new byte[((int) file2.length())];
                                        fileInputStream2.read(obj);
                                        Log.d(TAG, "ErrJson:" + String.valueOf(obj));
                                    } catch (Throwable th3) {
                                        th = th3;
                                        inputStream2 = fileInputStream2;
                                        inputStream2.close();
                                        throw th;
                                    }
                                    try {
                                        fileInputStream2.close();
                                    } catch (FileNotFoundException e5) {
                                        e5.printStackTrace();
                                    } catch (IOException e6) {
                                        e6.printStackTrace();
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStream2.close();
                                    throw th;
                                }
                            }
                            return z;
                        }
                    } catch (Throwable th5) {
                        th2 = th5;
                        inputStream = fileInputStream;
                        inputStream.close();
                        throw th2;
                    }
                } catch (Throwable th6) {
                    th2 = th6;
                    inputStream = null;
                    inputStream.close();
                    throw th2;
                }
            }
            Log.d(TAG, "file not found=" + file2.getAbsolutePath());
        }
        z = false;
        return z;
    }

    public List<remoteAssetItem> getList(int i, String str) {
        getFeaturedList(localFeaturedPath, i);
        return (List) this.mFeaturedList.get(Integer.valueOf(i));
    }

    public String getThumbnailUrl(int i) {
        List<remoteAssetItem> list = (List) this.mFeaturedList.get(Integer.valueOf(1));
        if (list != null) {
            for (remoteAssetItem remoteassetitem : list) {
                if (remoteassetitem.idx == i) {
                    return remoteassetitem.thumbnailURL;
                }
            }
        }
        list = (List) this.mFeaturedList.get(Integer.valueOf(2));
        if (list != null) {
            for (remoteAssetItem remoteassetitem2 : list) {
                if (remoteassetitem2.idx == i) {
                    return remoteassetitem2.thumbnailURL;
                }
            }
        }
        return null;
    }
}
