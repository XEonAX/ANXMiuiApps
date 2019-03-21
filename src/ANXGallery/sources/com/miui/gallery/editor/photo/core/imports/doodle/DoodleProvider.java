package com.miui.gallery.editor.photo.core.imports.doodle;

import android.content.Context;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractDoodleFragment;
import com.miui.gallery.editor.photo.core.common.model.DoodleData;
import com.miui.gallery.editor.photo.core.imports.doodle.painter.DoodleItem;
import java.util.ArrayList;
import java.util.List;

class DoodleProvider extends SdkProvider<DoodleData, AbstractDoodleFragment> {
    private List<DoodleData> mDoodleDataList;

    private DoodleProvider() {
        super(Effect.DOODLE);
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        initialize();
    }

    private void initialize() {
        this.mDoodleDataList = new ArrayList();
        for (DoodleItem doodleItem : DoodleItem.values()) {
            this.mDoodleDataList.add(new DoodleConfig((short) 0, doodleItem.name(), doodleItem));
        }
        notifyInitializeFinish();
    }

    public List<DoodleData> list() {
        return this.mDoodleDataList;
    }

    protected AbstractDoodleFragment onCreateFragment() {
        return new DoodleFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new DoodleEngine();
    }

    static {
        SdkManager.INSTANCE.register(new DoodleProvider());
    }
}
