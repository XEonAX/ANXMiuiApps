package com.miui.gallery.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.discovery.PrintSilentInstallTask;
import com.miui.gallery.picker.uri.OriginUrlRequestor.OriginInfo;
import com.miui.gallery.preference.GalleryPreferences.PhotoPrint;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.xiaomi.market.IAppDownloadManager;
import com.xiaomi.market.IAppDownloadManager.Stub;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

public class PrintInstallHelper {
    private static PrintInstallHelper sInstance;
    private int mCurSilentInstallTimes = 0;
    private IAppDownloadManager mDownloadManager;
    private ServiceConnection mInstallConnection;
    private BroadcastReceiver mInstallReceiver;
    private int mInstallState = 0;
    private CopyOnWriteArraySet<InstallStateListener> mInstallStateListeners = new CopyOnWriteArraySet();
    private long mLastStartTime = 0;
    private String mPackageName;
    private int mStartCount = 0;

    public interface InstallStateListener {
        void onFinish(boolean z, int i, int i2);

        void onInstallLimited();

        void onInstalling();
    }

    private class InstallReceiver extends BroadcastReceiver {
        private InstallReceiver() {
        }

        /* synthetic */ InstallReceiver(PrintInstallHelper x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if (TextUtils.equals(intent.getStringExtra("packageName"), PrintInstallHelper.this.mPackageName)) {
                int errorCode = intent.getIntExtra("errorCode", 0);
                int downloadStatus = intent.getIntExtra("status", 0);
                Log.d("PrintInstallHelper", "install error code: %d, download status: %d", Integer.valueOf(errorCode), Integer.valueOf(downloadStatus));
                if (PrintInstallHelper.this.isInstallExists(errorCode)) {
                    PrintInstallHelper.this.resumeInstall();
                } else if (PrintInstallHelper.this.isInstallFinish(errorCode)) {
                    boolean isSuccess;
                    int reason = intent.getIntExtra("reason", 0);
                    Map param;
                    if (PrintInstallHelper.this.isInstallSuccess(errorCode)) {
                        isSuccess = true;
                        Log.d("PrintInstallHelper", "print install success, silent install times : %d", Integer.valueOf(PrintInstallHelper.this.mCurSilentInstallTimes));
                        param = new HashMap();
                        param.put("silentInstallTimes", Integer.valueOf(PrintInstallHelper.this.mCurSilentInstallTimes));
                        BaseSamplingStatHelper.recordCountEvent("photo_print", "photo_print_package_install_success", param);
                    } else {
                        isSuccess = false;
                        Log.w("PrintInstallHelper", "print install fail, error code : %d, reason : %d, silent install times : %d", Integer.valueOf(errorCode), Integer.valueOf(reason), Integer.valueOf(PrintInstallHelper.this.mCurSilentInstallTimes));
                        param = new HashMap();
                        param.put(String.format(Locale.US, "%d_errorCode", new Object[]{Integer.valueOf(PrintInstallHelper.this.mCurSilentInstallTimes)}), Integer.valueOf(errorCode));
                        param.put(String.format(Locale.US, "%d_failReason", new Object[]{Integer.valueOf(PrintInstallHelper.this.mCurSilentInstallTimes)}), Integer.valueOf(reason));
                        BaseSamplingStatHelper.recordCountEvent("photo_print", "photo_print_package_install_fail", param);
                    }
                    PrintInstallHelper.this.mInstallState = 0;
                    PrintInstallHelper.this.notifyInstallFinish(isSuccess, errorCode, reason);
                    PrintInstallHelper.this.unregisterInstallReceiver();
                } else if (downloadStatus == -3) {
                    PrintInstallHelper.this.mInstallState = 2;
                } else {
                    PrintInstallHelper.this.mInstallState = 1;
                }
            }
        }
    }

    public static synchronized PrintInstallHelper getInstance() {
        PrintInstallHelper printInstallHelper;
        synchronized (PrintInstallHelper.class) {
            if (sInstance == null) {
                sInstance = new PrintInstallHelper();
            }
            printInstallHelper = sInstance;
        }
        return printInstallHelper;
    }

    private PrintInstallHelper() {
    }

    public boolean ensurePrintFucntionAvailable() {
        String packageName = CloudControlStrategyHelper.getPrintPackageName();
        if (TextUtils.isEmpty(packageName)) {
            Log.e("PrintInstallHelper", "get package from cloud control failed");
            return false;
        } else if (MiscUtil.getAppVersionCode(packageName) < CloudControlStrategyHelper.getCreationStrategy().getMinPrintVersionCode()) {
            installPrintPackage(false, packageName);
            PrintSilentInstallTask.setSilentInstallTimesDisable();
            Log.e("PrintInstallHelper", "Current print app version is lower then needed, upgrading!");
            return false;
        } else {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(CloudControlStrategyHelper.getCreationStrategy().getPrintIntentUri()));
            intent.putExtra("prodType", String.valueOf(2));
            intent.setFlags(1);
            if (MiscUtil.isIntentSupported(intent)) {
                return true;
            }
            installPrintPackage(false, packageName);
            PrintSilentInstallTask.setSilentInstallTimesDisable();
            return false;
        }
    }

    public void printPhotos(Activity activity, Uri[] uris, List<OriginInfo> originInfos) {
        if (ensurePrintFucntionAvailable()) {
            String packageName = CloudControlStrategyHelper.getPrintPackageName();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(CloudControlStrategyHelper.getCreationStrategy().getPrintIntentUri()));
            intent.putExtra("prodType", String.valueOf(2));
            if (BaseMiscUtil.isValid(originInfos)) {
                ArrayList<String> results = new ArrayList();
                for (int i = 0; i < originInfos.size(); i++) {
                    results.add(((OriginInfo) originInfos.get(i)).toJson());
                }
                intent.putExtra("pick-result-origin-download-info", results);
                intent.putExtra("pick-result-data", new ArrayList(Arrays.asList(uris)));
                intent.setFlags(1);
                if (MiscUtil.isIntentSupported(intent)) {
                    try {
                        activity.startActivity(intent);
                        return;
                    } catch (ActivityNotFoundException e) {
                        Log.e("PrintInstallHelper", "Select images to print failed");
                        return;
                    }
                }
                installPrintPackage(false, packageName);
                PrintSilentInstallTask.setSilentInstallTimesDisable();
                return;
            }
            Log.e("PrintInstallHelper", "No OriginInfo for print");
        }
    }

    public void start(Context context) {
        if (context != null) {
            String packageName = CloudControlStrategyHelper.getPrintPackageName();
            if (TextUtils.isEmpty(packageName)) {
                Log.e("PrintInstallHelper", "get package from cloud control failed");
                return;
            }
            boolean isInstalled;
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setPackage(packageName);
            if (MiscUtil.isIntentSupported(intent)) {
                isInstalled = true;
                try {
                    context.startActivity(intent);
                    BaseSamplingStatHelper.recordCountEvent("photo_print", "photo_print_app_start_success");
                } catch (ActivityNotFoundException e) {
                    Log.e("PrintInstallHelper", "find print activity failed");
                }
            } else {
                isInstalled = false;
                installPrintPackage(false, packageName);
                PrintSilentInstallTask.setSilentInstallTimesDisable();
            }
            if (PhotoPrint.isPrintFirstClicked()) {
                PhotoPrint.setIsPrintFirstClicked(false);
                Map param = new HashMap();
                param.put(String.format(Locale.US, "isInstalled_%s", new Object[]{Boolean.valueOf(isInstalled)}), Integer.valueOf(PhotoPrint.getSilentInstallTimes()));
                BaseSamplingStatHelper.recordCountEvent("photo_print", "photo_print_first_clicked", param);
            }
        }
    }

    public boolean installPrintPackage(boolean isSilent, String packageName) {
        return installPrintPackage(isSilent, packageName, null);
    }

    public boolean installPrintPackage(final boolean isSilent, final String packageName, InstallStateListener listener) {
        this.mPackageName = packageName;
        Context context = GalleryApp.sGetAndroidContext();
        boolean isLimit = false;
        boolean isNewlyStart = false;
        switch (this.mInstallState) {
            case 0:
                isNewlyStart = true;
                this.mCurSilentInstallTimes = isSilent ? PhotoPrint.getSilentInstallTimes() : 0;
                long curTime = System.currentTimeMillis();
                if (curTime - this.mLastStartTime < 60000) {
                    this.mStartCount++;
                } else {
                    this.mLastStartTime = curTime;
                    this.mStartCount = 1;
                }
                if (this.mStartCount <= 10) {
                    this.mInstallState = 1;
                    Intent intent = new Intent("com.xiaomi.market.service.AppDownloadService");
                    intent.setPackage("com.xiaomi.market");
                    this.mInstallConnection = new ServiceConnection() {
                        public void onServiceConnected(ComponentName name, IBinder service) {
                            try {
                                PrintInstallHelper.this.mDownloadManager = Stub.asInterface(service);
                                Bundle args = new Bundle();
                                args.putString("packageName", packageName);
                                args.putString("ref", "MiuiGallery");
                                args.putString("senderPackageName", "com.miui.gallery");
                                if (!isSilent) {
                                    args.putBoolean("show_cta", true);
                                }
                                PrintInstallHelper.this.registerInstallReceiver();
                                PrintInstallHelper.this.mDownloadManager.download(args);
                                Map param = new HashMap();
                                param.put("silentInstallTimes", Integer.valueOf(PrintInstallHelper.this.mCurSilentInstallTimes));
                                BaseSamplingStatHelper.recordCountEvent("photo_print", "photo_print_package_download", param);
                            } catch (Throwable e) {
                                Log.e("PrintInstallHelper", e);
                                PrintInstallHelper.this.unregisterInstallReceiver();
                            } finally {
                                PrintInstallHelper.this.unbindInstallService();
                            }
                        }

                        public void onServiceDisconnected(ComponentName name) {
                        }
                    };
                    try {
                        context.bindService(intent, this.mInstallConnection, 1);
                        break;
                    } catch (Object e) {
                        Log.e("PrintInstallHelper", "bind install service failed", e);
                        break;
                    }
                }
                Log.d("PrintInstallHelper", "limit install, start times:" + this.mStartCount);
                isLimit = true;
                break;
            case 1:
                if (isSilent) {
                    return false;
                }
                break;
            case 2:
                if (!isSilent) {
                    resumeInstall();
                    break;
                }
                return false;
            default:
                Log.e("PrintInstallHelper", "wrong install state");
                return false;
        }
        if (listener != null) {
            this.mInstallStateListeners.add(listener);
        }
        if (isLimit) {
            notifyInstallLimited();
        } else {
            notifyInstalling();
        }
        return isNewlyStart;
    }

    private void resumeInstall() {
        if (this.mDownloadManager != null) {
            try {
                Log.d("PrintInstallHelper", "resume install:" + this.mDownloadManager.resume(this.mPackageName, "com.miui.gallery"));
            } catch (Object e) {
                Log.e("PrintInstallHelper", "RemoteException when resume", e);
            }
        }
    }

    private void registerInstallReceiver() {
        if (this.mInstallReceiver == null) {
            Log.d("PrintInstallHelper", "register install receiver");
            this.mInstallReceiver = new InstallReceiver(this, null);
            GalleryApp.sGetAndroidContext().registerReceiver(this.mInstallReceiver, new IntentFilter("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT"));
        }
    }

    private void unregisterInstallReceiver() {
        if (this.mInstallReceiver != null) {
            Log.d("PrintInstallHelper", "unregister install receiver");
            GalleryApp.sGetAndroidContext().unregisterReceiver(this.mInstallReceiver);
            this.mInstallReceiver = null;
        }
    }

    private void unbindInstallService() {
        if (this.mInstallConnection != null) {
            GalleryApp.sGetAndroidContext().unbindService(this.mInstallConnection);
            this.mInstallConnection = null;
        }
    }

    public void addInstallStateListener(InstallStateListener listener) {
        if (listener != null) {
            this.mInstallStateListeners.add(listener);
        }
    }

    public void removeInstallStateListener(InstallStateListener listener) {
        if (listener != null) {
            this.mInstallStateListeners.remove(listener);
        }
    }

    public boolean isPhotoPrintEnable() {
        return (!CloudControlManager.getInstance().queryFeatureStatus("photo-print").equals(Status.ENABLE) || BaseBuildUtil.isInternational() || BuildUtil.isPad()) ? false : true;
    }

    private boolean isInstallFinish(int errorCode) {
        return errorCode == 4 || errorCode == -2 || errorCode == -3 || errorCode == -4 || errorCode == -5 || errorCode == -6;
    }

    private boolean isInstallSuccess(int errorCode) {
        return errorCode == 4;
    }

    private boolean isInstallExists(int errorCode) {
        return errorCode == -1;
    }

    public static int getFailReasonMsg(int errorCode, int reason) {
        if (errorCode == -6) {
            return 0;
        }
        switch (reason) {
            case 10:
                return R.string.error_install_sdcard_not_available;
            case 11:
            case 16:
                return R.string.error_install_storage_not_enough;
            case 28:
                return R.string.error_install_connect_fail;
            default:
                return R.string.install_fail;
        }
    }

    public boolean isPrintInstalling() {
        return this.mInstallState == 1;
    }

    public void notifyInstallLimited() {
        if (!this.mInstallStateListeners.isEmpty()) {
            Iterator it = this.mInstallStateListeners.iterator();
            while (it.hasNext()) {
                ((InstallStateListener) it.next()).onInstallLimited();
            }
        }
    }

    public void notifyInstalling() {
        if (!this.mInstallStateListeners.isEmpty()) {
            Iterator it = this.mInstallStateListeners.iterator();
            while (it.hasNext()) {
                ((InstallStateListener) it.next()).onInstalling();
            }
        }
    }

    public void notifyInstallFinish(boolean isSuccess, int errorCode, int failReason) {
        if (!this.mInstallStateListeners.isEmpty()) {
            Iterator it = this.mInstallStateListeners.iterator();
            while (it.hasNext()) {
                ((InstallStateListener) it.next()).onFinish(isSuccess, errorCode, failReason);
            }
        }
    }
}
