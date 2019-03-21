package com.miui.gallery.movie.net;

import com.google.gson.JsonParseException;
import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.net.base.ErrorCode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class LocalResourceRequest extends BaseGalleryRequest {
    protected abstract long getParentId();

    protected abstract MovieResource newLocalResource();

    public LocalResourceRequest() {
        super(0, "https://i.mi.com/gallery/public/resource/info");
        addParam("id", Long.toString(getParentId()));
        setUseCache(true);
        setCacheExpires(2592000000L);
        setCacheSoftTtl(System.currentTimeMillis() + 86400000);
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        try {
            List<MovieResource> list = new ArrayList();
            JSONArray array = data.getJSONArray("galleryResourceInfoList");
            long expireAt = data.optLong("expireAt");
            if (expireAt != 0) {
                setCacheSoftTtl(expireAt);
            }
            if (array != null) {
                for (int i = 0; i < array.length(); i++) {
                    JSONObject object = array.getJSONObject(i);
                    MovieResource resource = newLocalResource();
                    resource.id = object.optLong("id");
                    resource.icon = object.optString("icon");
                    resource.label = object.optString("text");
                    resource.extra = object.optString("extraInfo");
                    try {
                        JSONObject extraObject = new JSONObject(resource.extra);
                        resource.enName = extraObject.optString("enName");
                        resource.nameKey = extraObject.optString("nameKey");
                        resource.index = extraObject.optInt("index");
                        resource.pathKey = resource.nameKey;
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    list.add(resource);
                }
            }
            Collections.sort(list);
            deliverResponse(list);
        } catch (JsonParseException e2) {
            e2.printStackTrace();
            deliverError(ErrorCode.PARSE_ERROR, e2.getMessage(), data);
        } catch (Exception e3) {
            e3.printStackTrace();
            deliverError(ErrorCode.HANDLE_ERROR, e3.getMessage(), data);
        }
    }
}
