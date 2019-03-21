package com.miui.gallery.util.deviceprovider;

public abstract class ApplicationHelper {
    private static ApplicationHelper sApplicationHelper;

    protected abstract BitmapProviderInterface getBitmapProviderInternal();

    protected abstract IntentProviderInterface getIntentProviderInternal();

    protected abstract MiCloudProviderInterface getMiCloudProviderInternal();

    protected abstract UtilsProviderInterface getUtilsProviderInternal();

    protected abstract boolean isSecretAlbumFeatureOpenInternal();

    protected abstract boolean supportShareInternal();

    protected abstract boolean supportStoryAlbumInternal();

    private static ApplicationHelper getInstance() {
        if (sApplicationHelper == null) {
            sApplicationHelper = newInstance();
        }
        return sApplicationHelper;
    }

    private static ApplicationHelper newInstance() {
        return new BigApplicationHelper();
    }

    public static boolean isSecretAlbumFeatureOpen() {
        return getInstance().isSecretAlbumFeatureOpenInternal();
    }

    public static boolean isAutoUploadFeatureOpen() {
        return true;
    }

    public static boolean isBabyAlbumFeatureOpen() {
        return true;
    }

    public static boolean isFaceAlbumFeatureOpen() {
        return true;
    }

    public static boolean isCloudTrashBinFeatureOpen() {
        return true;
    }

    public static boolean isStoryAlbumFeatureOpen() {
        return getInstance().supportStoryAlbumInternal();
    }

    public static UtilsProviderInterface getUtilsProvider() {
        return getInstance().getUtilsProviderInternal();
    }

    public static IntentProviderInterface getIntentProvider() {
        return getInstance().getIntentProviderInternal();
    }

    public static MiCloudProviderInterface getMiCloudProvider() {
        return getInstance().getMiCloudProviderInternal();
    }

    public static BitmapProviderInterface getBitmapProvider() {
        return getInstance().getBitmapProviderInternal();
    }

    public static boolean supportShare() {
        return getInstance().supportShareInternal();
    }
}
