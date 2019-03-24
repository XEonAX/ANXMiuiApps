package com.miui.gallery.video.editor.net;

import com.google.gson.JsonParseException;
import com.miui.gallery.net.BaseGalleryRequest;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.internal.vip.VipConstants;
import java.util.ArrayList;
import java.util.List;
import miui.yellowpage.Tag.TagYellowPage;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class VideoEditorBaseResourceRequest extends BaseGalleryRequest {
    protected int type;

    protected abstract long getParentId();

    protected abstract LocalResource newLocalResource();

    protected abstract void setResult(LocalResource localResource);

    public VideoEditorBaseResourceRequest(int type) {
        super(0, "https://i.mi.com/gallery/public/resource/info");
        this.type = type;
        addParam("id", Long.toString(getParentId()));
        setUseCache(true);
        setCacheExpires(2592000000L);
        setCacheSoftTtl(System.currentTimeMillis() + VipConstants.DAY);
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        try {
            List<LocalResource> list = new ArrayList();
            JSONArray array = data.getJSONArray("galleryResourceInfoList");
            long expireAt = data.optLong("expireAt");
            if (expireAt != 0) {
                setCacheSoftTtl(expireAt);
            }
            if (array != null) {
                for (int i = 0; i < array.length(); i++) {
                    JSONObject object = array.getJSONObject(i);
                    LocalResource resource = newLocalResource();
                    resource.id = object.optLong("id");
                    resource.parent = object.optLong("id");
                    resource.icon = object.optString("icon");
                    resource.label = object.optString("text");
                    resource.extra = object.optString(TagYellowPage.EXTRA_INFO);
                    resource.type = object.optString("type");
                    resource.nameKey = new JSONObject(resource.extra).optString("nameKey");
                    setResult(resource);
                    list.add(resource);
                }
            }
            deliverResponse(list);
        } catch (JsonParseException e) {
            e.printStackTrace();
            deliverError(ErrorCode.PARSE_ERROR, e.getMessage(), data);
        } catch (Exception e2) {
            e2.printStackTrace();
            deliverError(ErrorCode.HANDLE_ERROR, e2.getMessage(), data);
        }
    }
}
