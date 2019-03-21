package com.miui.gallery.editor.photo.core.imports.crop;

import android.content.Context;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractCropFragment;
import com.miui.gallery.editor.photo.core.common.model.CropData;
import com.miui.gallery.editor.photo.core.common.model.CropData.AspectRatio;
import java.util.Arrays;
import java.util.List;

public class CropProvider extends SdkProvider<CropData, AbstractCropFragment> {
    private List<CropData> mDataList;

    protected CropProvider() {
        super(Effect.CROP);
        CropData[] cropDataArr = new CropData[8];
        cropDataArr[0] = new AspectRatio((short) 1, "free", R.drawable.crop_menu_item_free, R.string.photo_editor_talkback_crop_free, 0, 0);
        cropDataArr[1] = new AspectRatio((short) 1, "original", R.drawable.crop_menu_item_origin, R.string.photo_editor_talkback_crop_original, -1, -1);
        cropDataArr[2] = new AspectRatio((short) 1, "screen", R.drawable.crop_menu_item_screen, R.string.photo_editor_talkback_crop_screen, -2, -2);
        cropDataArr[3] = new AspectRatio((short) 2, "1:1", R.drawable.crop_menu_item_1_1, R.string.photo_editor_talkback_crop_1_1, 1, 1);
        cropDataArr[4] = new AspectRatio((short) 2, "3:4", R.drawable.crop_menu_item_3_4, R.string.photo_editor_talkback_crop_3_4, 3, 4);
        cropDataArr[5] = new AspectRatio((short) 2, "4:3", R.drawable.crop_menu_item_4_3, R.string.photo_editor_talkback_crop_4_3, 4, 3);
        cropDataArr[6] = new AspectRatio((short) 2, "16:9", R.drawable.crop_menu_item_16_9, R.string.photo_editor_talkback_crop_16_9, 16, 9);
        cropDataArr[7] = new AspectRatio((short) 2, "9:16", R.drawable.crop_menu_item_9_16, R.string.photo_editor_talkback_crop_9_16, 9, 16);
        this.mDataList = Arrays.asList(cropDataArr);
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        notifyInitializeFinish();
    }

    public List<CropData> list() {
        return this.mDataList;
    }

    public AbstractCropFragment onCreateFragment() {
        return new CropFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new CropEngine();
    }

    static {
        SdkManager.INSTANCE.register(new CropProvider());
    }
}
