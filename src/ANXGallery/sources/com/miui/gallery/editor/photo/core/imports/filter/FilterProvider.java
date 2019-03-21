package com.miui.gallery.editor.photo.core.imports.filter;

import android.content.Context;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.Metadata;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.AdjustData;
import com.miui.gallery.editor.photo.core.common.model.BeautifyData;
import com.miui.gallery.editor.photo.core.common.model.FilterCategory;
import java.util.List;

public abstract class FilterProvider<T extends Metadata> extends SdkProvider<T, AbstractEffectFragment> {
    static FilterProvider ADJUST = new FilterProvider<AdjustData>(Effect.ADJUST) {
        public List<? extends AdjustData> list() {
            return FilterManager.getAdjustData();
        }
    };
    static FilterProvider BEAUTIFY = new FilterProvider<BeautifyData>(Effect.BEAUTIFY) {
        public List<? extends BeautifyData> list() {
            return FilterManager.getBeautifyData();
        }
    };
    static FilterProvider FILTER = new FilterProvider<FilterCategory>(Effect.FILTER) {
        public List<? extends FilterCategory> list() {
            return FilterManager.getFilterCategory();
        }
    };

    protected FilterProvider(Effect<? extends SdkProvider<T, AbstractEffectFragment>> supported) {
        super(supported);
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        notifyInitializeFinish();
    }

    public AbstractEffectFragment onCreateFragment() {
        return new FilterFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new FilterEngine(context);
    }

    static {
        SdkManager.INSTANCE.register(FILTER);
        SdkManager.INSTANCE.register(ADJUST);
        SdkManager.INSTANCE.register(BEAUTIFY);
    }
}
