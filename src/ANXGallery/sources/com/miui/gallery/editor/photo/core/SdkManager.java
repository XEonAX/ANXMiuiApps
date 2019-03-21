package com.miui.gallery.editor.photo.core;

import android.app.Application;
import com.miui.gallery.util.Log;
import java.util.Arrays;

public class SdkManager {
    public static final SdkManager INSTANCE = new SdkManager();
    private boolean mHasCreateCalled = false;
    private SdkProvider[] mProviders = new SdkProvider[Effect.values().length];

    static {
        load("com.miui.gallery.editor.photo.core.imports.filter.FilterProvider", "com.miui.gallery.editor.photo.core.imports.crop.CropProvider", "com.miui.gallery.editor.photo.core.imports.sticker.StickerProvider", "com.miui.gallery.editor.photo.core.imports.longcrop.LongCropProvider", "com.miui.gallery.editor.photo.core.imports.text.TextProvider", "com.miui.gallery.editor.photo.core.imports.doodle.DoodleProvider", "com.miui.gallery.editor.photo.core.imports.mosaic.MosaicProvider", "com.miui.gallery.editor.photo.core.imports.remover.RemoverProvider", "com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyProvider", "com.miui.gallery.editor.photo.core.imports.frame.FrameProvider");
    }

    private SdkManager() {
    }

    public void onAttach(Application application) {
        Log.d("SdkManager", "attach to application");
        for (SdkProvider provider : this.mProviders) {
            if (provider != null) {
                provider.attach(application);
            }
        }
    }

    public void onActivityCreate() {
        if (!this.mHasCreateCalled) {
            Log.d("SdkManager", "creating application");
            for (SdkProvider provider : this.mProviders) {
                if (provider != null) {
                    Log.d("SdkManager", "notify %s's provider application is creating", provider.mSupported);
                    provider.onActivityCreate();
                }
            }
            this.mHasCreateCalled = true;
        }
    }

    public <T extends SdkProvider> T getProvider(Effect<T> effect) {
        return this.mProviders[effect.ordinal()];
    }

    public <T extends SdkProvider> void register(T provider) {
        Log.d("SdkManager", "registering %s", (Object) provider);
        Effect effect = provider.mSupported;
        SdkProvider registered = this.mProviders[effect.ordinal()];
        if (registered == null) {
            this.mProviders[effect.ordinal()] = provider;
            return;
        }
        throw new IllegalStateException("already registered provider found: " + registered);
    }

    private static void load(String... classes) {
        Log.d("SdkManager", "loading %s", Arrays.toString(classes));
        for (String _class : classes) {
            try {
                Class.forName(_class);
            } catch (Throwable e) {
                Log.w("SdkManager", e);
            }
        }
    }
}
