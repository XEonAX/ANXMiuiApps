package com.miui.gallery.discovery;

import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.pendingtask.base.PendingTask;
import com.miui.gallery.preference.GalleryPreferences.PhotoPrint;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.PrintInstallHelper;
import com.miui.gallery.util.PrintInstallHelper.InstallStateListener;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class PrintSilentInstallTask extends PendingTask {
    private CountDownLatch mSyncExecuteLock = new CountDownLatch(1);

    public PrintSilentInstallTask(int type) {
        super(type);
    }

    public Object parseData(byte[] data) throws Exception {
        return new Object();
    }

    public byte[] wrapData(Object data) throws Exception {
        return new byte[0];
    }

    public int getNetworkType() {
        return 1;
    }

    public boolean requireCharging() {
        return true;
    }

    public boolean requireDeviceIdle() {
        return true;
    }

    public boolean process(Object data) throws Exception {
        String packageName = CloudControlStrategyHelper.getPrintPackageName();
        if (isPrintSilentInstallEnable(packageName)) {
            PhotoPrint.increaseSilentInstallTimes();
            if (PrintInstallHelper.getInstance().installPrintPackage(true, packageName, new InstallStateListener() {
                public void onInstalling() {
                }

                public void onInstallLimited() {
                    PrintSilentInstallTask.this.mSyncExecuteLock.countDown();
                    PrintInstallHelper.getInstance().removeInstallStateListener(this);
                }

                public void onFinish(boolean isSuccess, int errorCode, int reason) {
                    if (isSuccess || reason == 3) {
                        PrintSilentInstallTask.setSilentInstallTimesDisable();
                    }
                    PrintSilentInstallTask.this.mSyncExecuteLock.countDown();
                    Log.d("sdfa", "onFinish" + errorCode + reason);
                    PrintInstallHelper.getInstance().removeInstallStateListener(this);
                }
            })) {
                Log.d("PrintSilentInstallTask", "start silent install print package");
                try {
                    this.mSyncExecuteLock.await(5, TimeUnit.MINUTES);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }

    public static boolean isPrintSilentInstallEnable() {
        return isPrintSilentInstallEnable(CloudControlStrategyHelper.getPrintPackageName());
    }

    private static boolean isPrintSilentInstallEnable(String packageName) {
        return PrintInstallHelper.getInstance().isPhotoPrintEnable() && isSilentInstallTimesEnable() && !MiscUtil.isPackageInstalled(packageName);
    }

    private static boolean isSilentInstallTimesEnable() {
        return PhotoPrint.getSilentInstallTimes() < 3;
    }

    public static void setSilentInstallTimesDisable() {
        if (isSilentInstallTimesEnable()) {
            PhotoPrint.setSilentInstallTimes(3);
        }
    }
}
