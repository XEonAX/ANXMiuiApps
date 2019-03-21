package com.meicam.sdk;

import java.util.List;

public class NvsAssetPackageManager {
    public static final int ASSET_PACKAGE_ASPECT_RATIO_16v9 = 1;
    public static final int ASSET_PACKAGE_ASPECT_RATIO_18v9 = 32;
    public static final int ASSET_PACKAGE_ASPECT_RATIO_1v1 = 2;
    public static final int ASSET_PACKAGE_ASPECT_RATIO_3v4 = 16;
    public static final int ASSET_PACKAGE_ASPECT_RATIO_4v3 = 8;
    public static final int ASSET_PACKAGE_ASPECT_RATIO_9v16 = 4;
    public static final int ASSET_PACKAGE_ASPECT_RATIO_9v18 = 64;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_ALREADY_INSTALLED = 2;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_ASSET_TYPE = 8;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_DECOMPRESSION = 6;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_IMPROPER_STATUS = 5;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_INVALID_PACKAGE = 7;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_IO = 13;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_META_CONTENT = 10;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_NAME = 1;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_NOT_INSTALLED = 4;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_NO_ERROR = 0;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_PERMISSION = 9;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_RESOURCE = 14;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_SDK_VERSION = 11;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_UPGRADE_VERSION = 12;
    public static final int ASSET_PACKAGE_MANAGER_ERROR_WORKING_INPROGRESS = 3;
    public static final int ASSET_PACKAGE_STATUS_INSTALLING = 1;
    public static final int ASSET_PACKAGE_STATUS_NOTINSTALLED = 0;
    public static final int ASSET_PACKAGE_STATUS_READY = 2;
    public static final int ASSET_PACKAGE_STATUS_UPGRADING = 3;
    public static final int ASSET_PACKAGE_TYPE_ANIMATEDSTICKER = 3;
    public static final int ASSET_PACKAGE_TYPE_CAPTIONSTYLE = 2;
    public static final int ASSET_PACKAGE_TYPE_CAPTURESCENE = 5;
    public static final int ASSET_PACKAGE_TYPE_THEME = 4;
    public static final int ASSET_PACKAGE_TYPE_VIDEOFX = 0;
    public static final int ASSET_PACKAGE_TYPE_VIDEOTRANSITION = 1;
    AssetPackageManagerCallback m_callback = null;
    long m_internalCallbackObject = 0;
    long m_internalObject = 0;

    public interface AssetPackageManagerCallback {
        void onFinishAssetPackageInstallation(String str, String str2, int i, int i2);

        void onFinishAssetPackageUpgrading(String str, String str2, int i, int i2);
    }

    private native String nativeGetAssetPackageIdFromAssetPackageFilePath(long j, String str);

    private native List<String> nativeGetAssetPackageListOfType(long j, int i);

    private native int nativeGetAssetPackageStatus(long j, String str, int i);

    private native int nativeGetAssetPackageSupportedAspectRatio(long j, String str, int i);

    private native int nativeGetAssetPackageVersion(long j, String str, int i);

    private native int nativeGetAssetPackageVersionFromAssetPackageFilePath(long j, String str);

    private native String nativeGetVideoFxAssetPackageDescription(long j, String str);

    private native int nativeInstallAssetPackage(long j, String str, String str2, int i, boolean z, StringBuilder stringBuilder);

    private native boolean nativeIsCustomAnimatedSticker(long j, String str);

    private native boolean nativeIsParticleFX(long j, String str);

    private native void nativeSetCallbackInterface(AssetPackageManagerCallback assetPackageManagerCallback);

    private native void nativeSetInternalCallbackObject();

    private native int nativeUninstallAssetPackage(long j, String str, int i);

    private native int nativeUpgradeAssetPackage(long j, String str, String str2, int i, boolean z, StringBuilder stringBuilder);

    NvsAssetPackageManager() {
        nativeSetInternalCallbackObject();
    }

    void setInternalObject(long j) {
        if (this.m_internalObject != 0) {
            setCallbackInterface(null);
        }
        this.m_internalObject = j;
    }

    public void setCallbackInterface(AssetPackageManagerCallback assetPackageManagerCallback) {
        NvsUtils.checkFunctionInMainThread();
        this.m_callback = assetPackageManagerCallback;
        nativeSetCallbackInterface(this.m_callback);
    }

    public String getAssetPackageIdFromAssetPackageFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAssetPackageIdFromAssetPackageFilePath(this.m_internalObject, str);
    }

    public int getAssetPackageVersionFromAssetPackageFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAssetPackageVersionFromAssetPackageFilePath(this.m_internalObject, str);
    }

    public int installAssetPackage(String str, String str2, int i, boolean z, StringBuilder stringBuilder) {
        NvsUtils.checkFunctionInMainThread();
        return nativeInstallAssetPackage(this.m_internalObject, str, str2, i, z, stringBuilder);
    }

    public int upgradeAssetPackage(String str, String str2, int i, boolean z, StringBuilder stringBuilder) {
        NvsUtils.checkFunctionInMainThread();
        return nativeUpgradeAssetPackage(this.m_internalObject, str, str2, i, z, stringBuilder);
    }

    public int uninstallAssetPackage(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeUninstallAssetPackage(this.m_internalObject, str, i);
    }

    public int getAssetPackageStatus(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAssetPackageStatus(this.m_internalObject, str, i);
    }

    public int getAssetPackageVersion(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAssetPackageVersion(this.m_internalObject, str, i);
    }

    public int getAssetPackageSupportedAspectRatio(String str, int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAssetPackageSupportedAspectRatio(this.m_internalObject, str, i);
    }

    public List<String> getAssetPackageListOfType(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAssetPackageListOfType(this.m_internalObject, i);
    }

    public boolean isCustomAnimatedSticker(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsCustomAnimatedSticker(this.m_internalObject, str);
    }

    public boolean isParticleFX(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsParticleFX(this.m_internalObject, str);
    }

    public String getVideoFxAssetPackageDescription(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoFxAssetPackageDescription(this.m_internalObject, str);
    }
}
