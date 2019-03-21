package com.miui.gallery.video.editor.factory;

import android.content.Context;
import com.miui.gallery.video.editor.model.LocalResource;
import java.util.List;

public abstract class VideoEditorModuleFactory {
    public abstract List<LocalResource> getLocalTemplateEntities(Context context);

    public abstract String getTemplateDir(long j);

    public String getUnzipPath() {
        return "";
    }
}
