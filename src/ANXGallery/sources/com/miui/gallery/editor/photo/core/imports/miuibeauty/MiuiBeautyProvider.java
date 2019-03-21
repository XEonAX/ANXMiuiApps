package com.miui.gallery.editor.photo.core.imports.miuibeauty;

import android.content.Context;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.RenderScript.Translator;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import java.util.ArrayList;
import java.util.List;

public class MiuiBeautyProvider<T extends Metadata> extends SdkProvider<T, AbstractEffectFragment> {
    static MiuiBeautyProvider<MiuiBeautifyData> sMiuiBeautify = new MiuiBeautyProvider<MiuiBeautifyData>(Effect.MIUIBEAUTIFY) {
        public List<? extends MiuiBeautifyData> list() {
            List<MiuiBeautifyData> list = new ArrayList();
            MiuiBeautyEffect[] values = MiuiBeautyManager.getBeautyEffects();
            for (MiuiBeautyEffect effect : values) {
                list.add(new MiuiBeautifyData((short) effect.mOrdinal, effect.mName, effect.mBeautyType));
            }
            return list;
        }

        protected Translator onCreateTranslator() {
            return super.onCreateTranslator();
        }

        public String toString() {
            return "sMiuiBeautify";
        }
    };

    protected void onActivityCreate() {
        super.onActivityCreate();
        notifyInitializeFinish();
    }

    protected MiuiBeautyProvider(Effect<? extends SdkProvider<T, AbstractEffectFragment>> supported) {
        super(supported);
    }

    public List<? extends T> list() {
        return null;
    }

    protected AbstractEffectFragment onCreateFragment() {
        return new MiuiBeautyRenderFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new MiuiBeautyEngine();
    }

    static {
        SdkManager.INSTANCE.register(sMiuiBeautify);
    }
}
