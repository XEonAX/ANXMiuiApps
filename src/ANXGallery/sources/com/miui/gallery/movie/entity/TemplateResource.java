package com.miui.gallery.movie.entity;

import com.miui.gallery.movie.ui.factory.TemplateFactory;

public class TemplateResource extends MovieResource {
    public String getDownloadSrcPath() {
        return TemplateFactory.getTemplateDir(this.pathKey);
    }

    public String getStatTypeString() {
        return "template";
    }

    public String getStatNameString() {
        return "template-" + this.label;
    }
}
