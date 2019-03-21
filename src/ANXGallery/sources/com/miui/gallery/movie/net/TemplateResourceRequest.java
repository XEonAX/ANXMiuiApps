package com.miui.gallery.movie.net;

import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.movie.entity.TemplateResource;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.settings.Settings;

public class TemplateResourceRequest extends LocalResourceRequest {
    protected long getParentId() {
        if (BaseBuildUtil.isInternational()) {
            return Settings.getRegion().endsWith("IN") ? 10702647724474528L : 10624721397481568L;
        } else {
            return 10146691454730304L;
        }
    }

    protected MovieResource newLocalResource() {
        return new TemplateResource();
    }
}
