package com.miui.gallery.movie.ui.factory;

import com.miui.gallery.R;
import com.miui.gallery.movie.MovieConfig;
import com.miui.gallery.movie.entity.TemplateResource;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class TemplateFactory {
    public static String getTemplateDir(String name) {
        return MovieConfig.sTemplateDir + File.separator + name;
    }

    public static List<TemplateResource> getLocalTemplateEntities() {
        List<TemplateResource> list = new ArrayList();
        TemplateResource templateNormal = new TemplateResource();
        templateNormal.imageId = R.drawable.movie_template_default;
        templateNormal.stringId = R.string.movie_template_normal;
        templateNormal.isPackageAssets = true;
        templateNormal.nameKey = "movieAssetsNormal";
        templateNormal.downloadState = 17;
        list.add(templateNormal);
        return list;
    }
}
