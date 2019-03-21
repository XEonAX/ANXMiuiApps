package com.miui.gallery.editor.photo.core.imports.miuibeauty;

import com.miui.filtersdk.beauty.BeautyParameterType;
import com.miui.filtersdk.beauty.BeautyProcessorManager;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;

public class MiuiBeautyManager {
    public static MiuiBeautyEffect[] getBeautyEffects() {
        BeautyParameterType[] types = BeautyProcessorManager.INSTANCE.getBeautyProcessor().getSupportedBeautyParamTypes();
        int length = types.length;
        for (BeautyParameterType type : types) {
            if (BeautyParameterType.RUDDY_STRENGTH == type || BeautyParameterType.IRIS_SHINE_RATIO == type) {
                length--;
            }
        }
        MiuiBeautyEffect[] miuiBeautyEffects = null;
        if (types != null && length > 0) {
            miuiBeautyEffects = new MiuiBeautyEffect[length];
            for (int i = 0; i < types.length; i++) {
                switch (types[i]) {
                    case SHRINK_FACE_RATIO:
                        miuiBeautyEffects[0] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_face_thin), 1, types[i]);
                        break;
                    case WHITEN_STRENGTH:
                        miuiBeautyEffects[1] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_skin_white), 2, types[i]);
                        break;
                    case SMOOTH_STRENGTH:
                        miuiBeautyEffects[2] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_smooth), 3, types[i]);
                        break;
                    case ENLARGE_EYE_RATIO:
                        miuiBeautyEffects[3] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_eye_large), 4, types[i]);
                        break;
                    case BRIGHT_EYE_RATIO:
                        miuiBeautyEffects[4] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_eye_bright), 5, types[i]);
                        break;
                    case DEPOUCH_RATIO:
                        miuiBeautyEffects[5] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_eraser_pouch), 6, types[i]);
                        break;
                    case DEBLEMISH:
                        miuiBeautyEffects[6] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_eraser_blemish), 7, types[i]);
                        break;
                    case RELIGHTING_RATIO:
                        miuiBeautyEffects[7] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_relighting), 8, types[i]);
                        break;
                    case SHRINK_NOSE_RATIO:
                        miuiBeautyEffects[8] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_nose_thin), 9, types[i]);
                        break;
                    case LIP_BEAUTY_RATIO:
                        miuiBeautyEffects[9] = new MiuiBeautyEffect(GalleryApp.sGetAndroidContext().getString(R.string.photo_editor_miui_beauty_menu_lip_beauty), 10, types[i]);
                        break;
                    default:
                        break;
                }
            }
        }
        return miuiBeautyEffects;
    }
}
