package com.miui.gallery.editor.photo.core.imports.net;

import android.text.TextUtils;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.util.GsonUtils;
import com.miui.internal.vip.VipConstants;
import java.util.List;
import org.json.JSONObject;

public abstract class BaseResourceRequest extends BaseGalleryRequest {
    protected abstract long getParentId();

    public BaseResourceRequest() {
        super(0, "https://i.mi.com/gallery/public/resource/info");
        addParam("id", Long.toString(getParentId()));
        setUseCache(true);
        setCacheExpires(2592000000L);
        setCacheSoftTtl(System.currentTimeMillis() + VipConstants.DAY);
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        String dataString = filterJsonString(data.getString("galleryResourceInfoList"));
        long expireAt = data.optLong("expireAt");
        if (expireAt != 0) {
            setCacheSoftTtl(expireAt);
        }
        deliverResponse((List) GsonUtils.fromJson(dataString, new TypeToken<List<TextStyle>>() {
        }.getType()));
    }

    private String filterJsonString(String jsonString) {
        if (TextUtils.isEmpty(jsonString)) {
            return "";
        }
        return jsonString.replace("\"{", "{").replace("}\"", "}").replace("\\", "");
    }
}
