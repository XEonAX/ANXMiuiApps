package com.miui.gallery.editor.photo.core.imports.sticker;

import com.miui.gallery.editor.photo.core.common.model.StickerData;
import com.miui.gallery.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

class StickerItem extends StickerData {
    String cateName;
    String content;
    long id;

    public StickerItem(short priority, String name, long id, String icon, String main, String cateName) {
        super(priority, name, icon);
        this.content = main;
        this.id = id;
        this.cateName = cateName;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof StickerItem)) {
            return false;
        }
        if (((StickerItem) o).id != this.id) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (int) (this.id ^ (this.id >>> 32));
    }

    static JSONObject toJson(StickerItem item) {
        try {
            JSONObject json = new JSONObject();
            json.put("priority", item.priority);
            json.put("name", item.name);
            json.put("id", item.id);
            json.put("icon", item.icon);
            json.put("content", item.content);
            json.put("cateName", item.cateName);
            return json;
        } catch (Throwable e) {
            Log.w("StickerItem", e);
            return null;
        }
    }

    static StickerItem fromJson(JSONObject json) throws JSONException {
        return new StickerItem((short) json.getInt("priority"), json.optString("name"), json.getLong("id"), json.getString("icon"), json.getString("content"), json.optString("cateName"));
    }
}
