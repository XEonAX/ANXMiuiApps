package com.miui.gallery.util.deviceprovider;

import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.cloud.CloudUtils;

public class BigApplicationHelper extends ApplicationHelper {
    protected UtilsProviderInterface getUtilsProviderInternal() {
        return new BigUtilsProvider();
    }

    protected final IntentProviderInterface getIntentProviderInternal() {
        return new BigIntentProvider();
    }

    protected MiCloudProviderInterface getMiCloudProviderInternal() {
        return new BigMiCloudProvider();
    }

    protected BitmapProviderInterface getBitmapProviderInternal() {
        return new BigBitmapProvider();
    }

    protected boolean isSecretAlbumFeatureOpenInternal() {
        return true;
    }

    protected boolean supportShareInternal() {
        return CloudUtils.supportShare();
    }

    protected boolean supportStoryAlbumInternal() {
        return ImageFeatureManger.isStoryFunctionEnable();
    }
}
