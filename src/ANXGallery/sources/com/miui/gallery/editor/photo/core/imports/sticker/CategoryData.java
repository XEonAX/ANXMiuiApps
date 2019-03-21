package com.miui.gallery.editor.photo.core.imports.sticker;

import com.miui.gallery.editor.photo.core.common.model.StickerCategory;
import com.miui.gallery.editor.photo.core.common.model.StickerData;
import java.util.List;

class CategoryData extends StickerCategory {
    List<StickerData> stickerList;

    public CategoryData(int id, short priority, String name, List<StickerData> itemList) {
        super((long) id, priority, name);
        this.stickerList = itemList;
    }
}
