package com.miui.gallery.editor.photo.core.common.provider;

import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.TextData;
import java.util.List;

public abstract class AbstractTextProvider extends SdkProvider<TextData, AbstractEffectFragment> {
    public abstract List<TextData> listWatermark();

    protected AbstractTextProvider(Effect<? extends SdkProvider<TextData, AbstractEffectFragment>> supported) {
        super(supported);
    }
}
