package com.miui.gallery.editor.photo.core.imports.longcrop;

import android.content.Context;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractLongCropFragment;
import java.util.List;

class LongCropProvider extends SdkProvider<Object, AbstractLongCropFragment> {
    protected LongCropProvider() {
        super(Effect.LONG_CROP);
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        notifyInitializeFinish();
    }

    public List<Object> list() {
        return null;
    }

    protected LongScreenshotCropFragment onCreateFragment() {
        return new LongScreenshotCropFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new CropRenderEngine();
    }

    static {
        SdkManager.INSTANCE.register(new LongCropProvider());
    }
}
