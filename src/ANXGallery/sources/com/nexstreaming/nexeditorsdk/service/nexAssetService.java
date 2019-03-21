package com.nexstreaming.nexeditorsdk.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Base64;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.nexstreaming.app.common.nexasset.assetpackage.InstallSourceType;
import com.nexstreaming.app.common.nexasset.assetpackage.b;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB;
import com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB.internalStoreAssetInfo;
import com.nexstreaming.app.common.nexasset.store.json.AssetStoreAPIData.AssetInfo;
import com.nexstreaming.app.common.util.l;
import com.nexstreaming.app.common.util.n;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager;
import com.nexstreaming.nexeditorsdk.service.INexAssetService.Stub;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class nexAssetService extends Service {
    public static final String ACTION_ASSET_FEATUREDLIST_COMPLETED = "com.nexstreaming.nexeditorsdk.asset.feathredlist.completed";
    public static final String ACTION_ASSET_INSTALL_COMPLETED = "com.nexstreaming.nexeditorsdk.asset.install.completed";
    public static final String ACTION_ASSET_UNINSTALL_COMPLETED = "com.nexstreaming.nexeditorsdk.asset.uninstall.completed";
    private static final String ACTION_BIND = "com.nexstreaming.nexeditorsdk.service.bind";
    private static final String TAG = "nexAssetService";
    private static final int TYPE_BITMAP_DATA = 1;
    private static final int TYPE_JSON_DATA = 0;
    private static final ExecutorService sInstallThreadExcutor = Executors.newSingleThreadExecutor();
    private AsyncTask<Context, Void, Void> checkReceivedFeaturedListAsyncTask;
    private boolean isRunningAsyncTask;
    private volatile boolean isUpdatedFeaturedList;
    private volatile long lastReceivedFeaturedListTime;
    private AssetInfo mCurrentAssetInfo;
    private Bitmap mCurrentThumbnail;
    private FileOutputStream mFileOutputStream;
    private long mReceivedDataSize = 0;
    private Stub nexAssetService = new Stub() {
        public void connectInstaller(int i, String str, String str2, INexAssetConnectionCallback iNexAssetConnectionCallback) throws RemoteException {
            nexAssetService.this.onConnectionInstaller(i, str, str2, iNexAssetConnectionCallback);
        }

        public void sendAssetData(int i, String str, int i2, long j, INexAssetInstallCallback iNexAssetInstallCallback) throws RemoteException {
            nexAssetService.this.onReceivedAssetData(i, str, i2, j, iNexAssetInstallCallback);
        }

        public void uninstallAsset(int i, INexAssetUninstallCallback iNexAssetUninstallCallback) throws RemoteException {
            nexAssetService.this.onUninstallAsset(i, iNexAssetUninstallCallback);
        }

        public void loadInstalledAssetList(INexAssetDataCallback iNexAssetDataCallback) throws RemoteException {
            nexAssetService.this.onLoadInstalledAssetList(iNexAssetDataCallback);
        }

        public void saveAssetInfoData(int i, int i2, String str) throws RemoteException {
            nexAssetService.this.onReceivedAssetInfoData(i, i2, str);
        }
    };

    private static final class a extends AsyncTask<Void, Void, Boolean> {
        private Context a;
        private String b;
        private Bitmap c;
        private AssetInfo d;
        private INexAssetInstallCallback e;
        private long f = 0;
        private l g = new l();

        public a(Context context, String str, Bitmap bitmap, AssetInfo assetInfo, INexAssetInstallCallback iNexAssetInstallCallback) {
            this.g.c();
            this.g.a();
            Log.d(nexAssetService.TAG, "InstallTask() called with: context = [" + context + "], assetPath = [" + str + "], bitmap = [" + bitmap + "], assetInfo = [" + assetInfo + "], callback = [" + iNexAssetInstallCallback + "]");
            this.a = context;
            this.b = str;
            this.c = bitmap;
            this.d = assetInfo;
            this.e = iNexAssetInstallCallback;
        }

        private void a(boolean z, int i) {
            if (!z && System.currentTimeMillis() - this.f > 1000) {
                z = true;
            }
            if (z) {
                this.f = System.currentTimeMillis();
                Log.d(nexAssetService.TAG, "sendProgress() asset(" + this.d.idx + ") progress=" + i);
                try {
                    this.e.onProgressInstall(this.d.idx, i, 100);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }

        private void a(String str) {
            if (str != null) {
                try {
                    this.e.onInstallFailed(this.d.idx, str);
                    Log.d(nexAssetService.TAG, "sendCompleted install asset(" + this.d.idx + ") error=" + str);
                    return;
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return;
                }
            }
            this.e.onInstallCompleted(this.d.idx);
            Log.d(nexAssetService.TAG, "sendCompleted install asset(" + this.d.idx + ") installed");
        }

        /* renamed from: a */
        protected Boolean doInBackground(Void... voidArr) {
            String message;
            Log.d(nexAssetService.TAG, "installAsset() assetPath = [" + this.b + "]");
            a(true, 0);
            b b = c.a(this.a).b(this.d.idx);
            if (b != null) {
                Log.d(nexAssetService.TAG, "already installed Asset=" + this.d.idx);
                if (b.getInstallSourceType() == InstallSourceType.STORE) {
                    try {
                        AssetLocalInstallDB.getInstance(this.a).uninstallPackage(this.d.idx);
                    } catch (Exception e) {
                        message = e.getMessage();
                        if (message == null) {
                            message = "uninstall fail asset=" + this.d.idx;
                        }
                        new File(this.b).delete();
                        a(message);
                        return Boolean.valueOf(false);
                    }
                }
                Log.d(nexAssetService.TAG, "installed Asset is not store type. idx=" + this.d.idx);
                new File(this.b).delete();
                a("installed Asset is not store type. idx=" + this.d.idx);
                return Boolean.valueOf(false);
            }
            try {
                File file = new File(this.b);
                File unzipFolder = AssetLocalInstallDB.getInstance(this.a).getUnzipFolder(this.d.idx);
                a(file, unzipFolder, this.d.idx);
                file.delete();
                if (this.c != null) {
                    file = AssetLocalInstallDB.getInstance(this.a).makeThumbnail(this.c, this.d.idx);
                } else {
                    file = null;
                }
                Log.d(nexAssetService.TAG, "installed Asset idx=" + this.d.idx + ", sdklevel=" + this.d.asset_sversion + ", version=" + this.d.asset_version);
                c.a(this.a).a(unzipFolder, file, new internalStoreAssetInfo(this.d));
                a(null);
                return Boolean.valueOf(true);
            } catch (IOException e2) {
                e2.printStackTrace();
                message = e2.getMessage();
                if (message == null) {
                    message = "unzip or db update fail! asset=" + this.d.idx;
                }
                a(message);
                return Boolean.valueOf(false);
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: EliminatePhiNodes
            jadx.core.utils.exceptions.JadxRuntimeException: Unexpected register number in merge insn: ?: MERGE  (r3_3 java.io.Closeable) = (r3_2 java.io.Closeable), (r3_7 java.io.Closeable)
            	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMerge(EliminatePhiNodes.java:84)
            	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMergeInstructions(EliminatePhiNodes.java:68)
            	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.visit(EliminatePhiNodes.java:31)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
            	at java.util.ArrayList.forEach(Unknown Source)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
            	at java.util.ArrayList.forEach(Unknown Source)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
            	at jadx.core.ProcessClass.process(ProcessClass.java:32)
            	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
            	at jadx.api.JavaClass.decompile(JavaClass.java:62)
            	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
            */
        private void a(java.io.File r11, java.io.File r12, int r13) throws java.io.IOException {
            /*
            r10 = this;
            r0 = "nexAssetService";
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Unzipping '";
            r1 = r1.append(r2);
            r1 = r1.append(r11);
            r2 = "' to '";
            r1 = r1.append(r2);
            r1 = r1.append(r12);
            r2 = "'";
            r1 = r1.append(r2);
            r1 = r1.toString();
            android.util.Log.d(r0, r1);
            r0 = r12.mkdirs();
            if (r0 != 0) goto L_0x004d;
        L_0x002e:
            r0 = r12.exists();
            if (r0 != 0) goto L_0x004d;
        L_0x0034:
            r0 = new java.io.IOException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Failed to create directory: ";
            r1 = r1.append(r2);
            r1 = r1.append(r12);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x004d:
            r4 = r11.length();
            r0 = 0;
            r3 = new java.util.zip.ZipInputStream;
            r2 = new java.io.FileInputStream;
            r2.<init>(r11);
            r3.<init>(r2);
        L_0x005d:
            r2 = r3.getNextEntry();	 Catch:{ all -> 0x0088 }
            if (r2 == 0) goto L_0x00e5;	 Catch:{ all -> 0x0088 }
        L_0x0063:
            r6 = r2.getName();	 Catch:{ all -> 0x0088 }
            r7 = "..";	 Catch:{ all -> 0x0088 }
            r7 = r6.contains(r7);	 Catch:{ all -> 0x0088 }
            if (r7 == 0) goto L_0x008d;	 Catch:{ all -> 0x0088 }
        L_0x006f:
            r0 = new java.io.IOException;	 Catch:{ all -> 0x0088 }
            r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0088 }
            r1.<init>();	 Catch:{ all -> 0x0088 }
            r2 = "Relative paths not allowed: ";	 Catch:{ all -> 0x0088 }
            r1 = r1.append(r2);	 Catch:{ all -> 0x0088 }
            r1 = r1.append(r6);	 Catch:{ all -> 0x0088 }
            r1 = r1.toString();	 Catch:{ all -> 0x0088 }
            r0.<init>(r1);	 Catch:{ all -> 0x0088 }
            throw r0;	 Catch:{ all -> 0x0088 }
        L_0x0088:
            r0 = move-exception;
            com.nexstreaming.app.common.util.b.a(r3);
            throw r0;
        L_0x008d:
            r7 = new java.io.File;	 Catch:{ all -> 0x0088 }
            r7.<init>(r12, r6);	 Catch:{ all -> 0x0088 }
            r6 = r2.isDirectory();	 Catch:{ all -> 0x0088 }
            if (r6 == 0) goto L_0x00bd;	 Catch:{ all -> 0x0088 }
        L_0x0098:
            r2 = r7.mkdirs();	 Catch:{ all -> 0x0088 }
            if (r2 != 0) goto L_0x005d;	 Catch:{ all -> 0x0088 }
        L_0x009e:
            r2 = r7.exists();	 Catch:{ all -> 0x0088 }
            if (r2 != 0) goto L_0x005d;	 Catch:{ all -> 0x0088 }
        L_0x00a4:
            r0 = new java.io.IOException;	 Catch:{ all -> 0x0088 }
            r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0088 }
            r1.<init>();	 Catch:{ all -> 0x0088 }
            r2 = "Failed to create directory: ";	 Catch:{ all -> 0x0088 }
            r1 = r1.append(r2);	 Catch:{ all -> 0x0088 }
            r1 = r1.append(r7);	 Catch:{ all -> 0x0088 }
            r1 = r1.toString();	 Catch:{ all -> 0x0088 }
            r0.<init>(r1);	 Catch:{ all -> 0x0088 }
            throw r0;	 Catch:{ all -> 0x0088 }
        L_0x00bd:
            r6 = new java.io.FileOutputStream;	 Catch:{ all -> 0x0088 }
            r6.<init>(r7);	 Catch:{ all -> 0x0088 }
            com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB.copy(r3, r6);	 Catch:{ all -> 0x00e0 }
            com.nexstreaming.app.common.util.b.a(r6);	 Catch:{ all -> 0x0088 }
            r6 = r2.getCompressedSize();	 Catch:{ all -> 0x0088 }
            r0 = r0 + r6;	 Catch:{ all -> 0x0088 }
            r6 = (double) r0;	 Catch:{ all -> 0x0088 }
            r8 = 4636737291354636288; // 0x4059000000000000 float:0.0 double:100.0;	 Catch:{ all -> 0x0088 }
            r6 = r6 * r8;	 Catch:{ all -> 0x0088 }
            r8 = (double) r4;	 Catch:{ all -> 0x0088 }
            r6 = r6 / r8;	 Catch:{ all -> 0x0088 }
            r2 = (int) r6;	 Catch:{ all -> 0x0088 }
            r6 = 100;	 Catch:{ all -> 0x0088 }
            if (r2 < r6) goto L_0x00da;	 Catch:{ all -> 0x0088 }
        L_0x00d8:
            r2 = 99;	 Catch:{ all -> 0x0088 }
        L_0x00da:
            r6 = 0;	 Catch:{ all -> 0x0088 }
            r10.a(r6, r2);	 Catch:{ all -> 0x0088 }
            goto L_0x005d;	 Catch:{ all -> 0x0088 }
        L_0x00e0:
            r0 = move-exception;	 Catch:{ all -> 0x0088 }
            com.nexstreaming.app.common.util.b.a(r6);	 Catch:{ all -> 0x0088 }
            throw r0;	 Catch:{ all -> 0x0088 }
        L_0x00e5:
            com.nexstreaming.app.common.util.b.a(r3);
            r0 = "nexAssetService";
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Unzipping DONE for: '";
            r1 = r1.append(r2);
            r1 = r1.append(r11);
            r2 = "' to '";
            r1 = r1.append(r2);
            r1 = r1.append(r12);
            r2 = "'";
            r1 = r1.append(r2);
            r1 = r1.toString();
            android.util.Log.d(r0, r1);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.service.nexAssetService.a.a(java.io.File, java.io.File, int):void");
        }

        /* renamed from: a */
        protected void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            if (bool.booleanValue()) {
                Intent intent = new Intent(nexAssetService.ACTION_ASSET_INSTALL_COMPLETED);
                intent.putExtra("index", this.d.idx);
                intent.putExtra("category.alias", this.d.category_aliasName);
                this.a.sendBroadcast(intent);
                this.g.b();
                Log.d(nexAssetService.TAG, "install asset(" + this.d.idx + ") time elapsed = " + this.g.toString());
            }
        }
    }

    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "onCreate() called");
    }

    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy() called");
    }

    public IBinder onBind(Intent intent) {
        Log.d(TAG, "onBind() called with: intent = [" + intent + "]");
        if (intent == null || intent.getAction() == null || !intent.getAction().equals(ACTION_BIND)) {
            return null;
        }
        if (intent.getPackage() != null) {
            Intent intent2 = new Intent();
            intent2.setPackage(getPackageName());
            intent2.setAction("com.nexstreaming.app.assetstore.sdk.service.bind");
            intent2.setClassName(intent.getPackage(), intent.getPackage() + ".AssetStoreService");
            Log.d(TAG, "onBind: " + intent2);
            startService(intent2);
        }
        return this.nexAssetService;
    }

    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        Log.d(TAG, "onTaskRemoved() called");
    }

    private void onConnectionInstaller(int i, String str, String str2, INexAssetConnectionCallback iNexAssetConnectionCallback) {
        if (str != null && str2 != null && iNexAssetConnectionCallback != null) {
            byte[] decode = Base64.decode(str, 0);
            this.mCurrentThumbnail = BitmapFactory.decodeByteArray(decode, 0, decode.length);
            Log.d(TAG, "onConnectionInstaller: make bitmap completed " + this.mCurrentThumbnail);
            this.mCurrentAssetInfo = (AssetInfo) new Gson().fromJson(str2, AssetInfo.class);
            Log.d(TAG, "onConnectionInstaller: convert Asset completed " + this.mCurrentAssetInfo);
            try {
                iNexAssetConnectionCallback.onConnectionCompleted(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void onReceivedAssetData(int i, String str, int i2, long j, INexAssetInstallCallback iNexAssetInstallCallback) {
        String str2 = getFilesDir() + File.separator + i + ".zip";
        this.mReceivedDataSize += (long) i2;
        byte[] decode = Base64.decode(str, 0);
        if (this.mFileOutputStream == null) {
            try {
                this.mFileOutputStream = new FileOutputStream(new File(str2));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        try {
            this.mFileOutputStream.write(decode, 0, i2);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (this.mReceivedDataSize == j) {
            Log.d(TAG, "onReceivedAssetData: Received Completed size " + this.mReceivedDataSize);
            try {
                Log.d(TAG, "onReceivedAssetData: try close stream ");
                this.mFileOutputStream.close();
            } catch (Throwable e3) {
                Log.d(TAG, "onReceivedAssetData: fileOutputStream close error", e3);
            }
            installAsset(str2, this.mCurrentThumbnail, this.mCurrentAssetInfo, iNexAssetInstallCallback);
            this.mFileOutputStream = null;
            this.mCurrentAssetInfo = null;
            this.mCurrentThumbnail = null;
            this.mReceivedDataSize = 0;
        }
    }

    private void onLoadInstalledAssetList(INexAssetDataCallback iNexAssetDataCallback) {
        if (iNexAssetDataCallback != null) {
            Log.d(TAG, "internalLoadInstallAssetList() called");
            List<b> assetInstalledDownloadItemItems = AssetLocalInstallDB.getInstance(this).getAssetInstalledDownloadItemItems();
            String str = "";
            if (assetInstalledDownloadItemItems == null || assetInstalledDownloadItemItems.size() <= 0) {
                try {
                    iNexAssetDataCallback.onLoadAssetDatas(null);
                    return;
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return;
                }
            }
            Object arrayList = new ArrayList();
            for (b bVar : assetInstalledDownloadItemItems) {
                if (c.a((Context) this).a(bVar)) {
                    Log.d(TAG, "expire Asset Idx=" + bVar.getAssetIdx());
                } else {
                    String subCategoryAlias;
                    int assetIdx = bVar.getAssetIdx();
                    String assetId = bVar.getAssetId();
                    String str2 = "";
                    if (bVar.getAssetName() != null) {
                        str2 = n.a((Context) this, bVar.getAssetName());
                    }
                    String str3 = "";
                    if (bVar.getAssetCategory() != null) {
                        str3 = bVar.getAssetCategory().getCategoryAlias();
                    }
                    if (bVar.getAssetSubCategory() != null) {
                        subCategoryAlias = bVar.getAssetSubCategory().getSubCategoryAlias();
                        if (bVar.getAssetSubCategory().getSubCategoryName() != null) {
                            subCategoryAlias = n.a((Context) this, bVar.getAssetSubCategory().getSubCategoryName());
                        }
                    } else {
                        subCategoryAlias = str3;
                    }
                    arrayList.add(new NexInstalledAssetItem(assetIdx, assetId, str2, subCategoryAlias, bVar.getThumbUrl(), bVar.getInstalledTime(), bVar.getExpireTime(), bVar.getMinVersion(), bVar.getPackageVersion()));
                }
            }
            try {
                iNexAssetDataCallback.onLoadAssetDatas(new Gson().toJson(arrayList));
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    private void onReceivedAssetInfoData(int i, int i2, String str) {
        this.lastReceivedFeaturedListTime = System.currentTimeMillis();
        if (str != null) {
            switch (i) {
                case 0:
                    if (!this.isRunningAsyncTask) {
                        this.isRunningAsyncTask = true;
                        this.isUpdatedFeaturedList = false;
                        this.checkReceivedFeaturedListAsyncTask = new AsyncTask<Context, Void, Void>() {
                            private Context b;

                            /* renamed from: a */
                            protected Void doInBackground(Context... contextArr) {
                                this.b = contextArr[0];
                                while (System.currentTimeMillis() - nexAssetService.this.lastReceivedFeaturedListTime < 1000) {
                                    Log.d(nexAssetService.TAG, "onReceivedAssetInfoData() wait=" + nexAssetService.this.lastReceivedFeaturedListTime);
                                    try {
                                        Thread.sleep(500);
                                    } catch (InterruptedException e) {
                                        e.printStackTrace();
                                    }
                                }
                                return null;
                            }

                            protected void onPreExecute() {
                                super.onPreExecute();
                                Log.d(nexAssetService.TAG, "onReceivedAssetInfoData() Start..");
                            }

                            /* renamed from: a */
                            protected void onPostExecute(Void voidR) {
                                super.onPostExecute(voidR);
                                Intent intent = new Intent(nexAssetService.ACTION_ASSET_FEATUREDLIST_COMPLETED);
                                intent.putExtra("update", nexAssetService.this.isUpdatedFeaturedList);
                                this.b.sendBroadcast(intent);
                                nexAssetService.this.isUpdatedFeaturedList = false;
                                nexAssetService.this.isRunningAsyncTask = false;
                                Log.d(nexAssetService.TAG, "onReceivedAssetInfoData() End..");
                            }
                        };
                        this.checkReceivedFeaturedListAsyncTask.executeOnExecutor(sInstallThreadExcutor, new Context[]{this, null, null});
                    }
                    if (!this.isUpdatedFeaturedList) {
                        this.isUpdatedFeaturedList = AssetLocalInstallDB.isUpdatedFeaturedList(i2, str);
                    }
                    AssetLocalInstallDB.saveFeaturedList(i2, str);
                    Log.d(TAG, "onReceivedAssetInfoData: featuredAsset =" + i2);
                    return;
                case 1:
                    byte[] decode = Base64.decode(str.getBytes(), 0);
                    AssetLocalInstallDB.saveFeaturedThumbnail(i2, BitmapFactory.decodeByteArray(decode, 0, decode.length));
                    Log.d(TAG, "onReceivedAssetInfoData: bitmap index : " + i2);
                    return;
                default:
                    return;
            }
        }
    }

    private void onUninstallAsset(int i, INexAssetUninstallCallback iNexAssetUninstallCallback) {
        nexAssetPackageManager.getAssetPackageManager(getApplicationContext()).putUninstallItem(i);
        try {
            AssetLocalInstallDB.getInstance(getApplicationContext()).uninstallPackage(i);
            iNexAssetUninstallCallback.onUninstallCompleted(i);
        } catch (Throwable e) {
            Log.w(TAG, "onUninstallAsset: error ", e);
            try {
                iNexAssetUninstallCallback.onUninstallFailed(i, e.getMessage());
            } catch (Throwable e2) {
                Log.w(TAG, "onUninstallAsset: ", e2);
            }
        }
        Intent intent = new Intent(ACTION_ASSET_UNINSTALL_COMPLETED);
        intent.putExtra("index", i);
        sendBroadcast(intent);
    }

    private void installAsset(String str, Bitmap bitmap, AssetInfo assetInfo, INexAssetInstallCallback iNexAssetInstallCallback) {
        if (str == null || bitmap == null || bitmap.isRecycled() || assetInfo == null || iNexAssetInstallCallback == null) {
            Log.d(TAG, "installAsset fail!=" + str);
            if (iNexAssetInstallCallback != null) {
                try {
                    iNexAssetInstallCallback.onInstallFailed(assetInfo.idx, "component not found!");
                    return;
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return;
                }
            }
            return;
        }
        new a(this, str, bitmap, assetInfo, iNexAssetInstallCallback).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }
}
