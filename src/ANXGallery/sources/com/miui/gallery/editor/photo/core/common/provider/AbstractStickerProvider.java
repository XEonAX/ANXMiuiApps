package com.miui.gallery.editor.photo.core.common.provider;

import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.StickerCategory;
import com.miui.gallery.editor.photo.core.common.model.StickerData;
import java.util.List;

public abstract class AbstractStickerProvider extends SdkProvider<StickerCategory, AbstractEffectFragment> {
    public abstract List<StickerData> list(long j);

    public abstract List<StickerData> recent();

    public AbstractStickerProvider(Effect<AbstractStickerProvider> supported) {
        super(supported);
    }
}
