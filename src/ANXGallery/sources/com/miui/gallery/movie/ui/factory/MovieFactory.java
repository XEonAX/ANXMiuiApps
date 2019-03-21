package com.miui.gallery.movie.ui.factory;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.movie.MovieConfig;
import com.miui.gallery.movie.core.MovieManager;
import com.miui.gallery.movie.nvsdk.NvMovieManager;

public class MovieFactory {
    public static MovieManager createMovieManager(Context context) {
        NvMovieManager movieManager = new NvMovieManager();
        movieManager.init(context);
        MovieConfig.init(context);
        return movieManager;
    }

    public static String getTemplateNameById(int templateId) {
        switch (templateId) {
            case 0:
                return "movieAssetsNormal";
            case 1:
                return "movieTemplateTravel";
            case 2:
                return "movieTemplateBaby";
            case 3:
                return "movieTemplateParty";
            case 4:
                return "movieTemplateFood";
            case 5:
                return "movieTemplateXmas";
            case 6:
                return "movieTemplateNewYear";
            case 7:
                return "movieTemplateSelfie";
            case 8:
                return "movieTemplatePet";
            case 9:
                return "movieTemplatePetDog";
            default:
                return "movieAssetsNormal";
        }
    }

    public static String getParentTemplateName(String templateName) {
        if (TextUtils.equals("movieTemplatePetDog", templateName)) {
            return "movieTemplatePet";
        }
        return templateName;
    }
}
