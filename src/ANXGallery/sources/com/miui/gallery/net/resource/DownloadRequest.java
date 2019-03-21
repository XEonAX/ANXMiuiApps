package com.miui.gallery.net.resource;

import com.miui.gallery.net.BaseGalleryRequest;
import org.json.JSONObject;

public class DownloadRequest extends BaseGalleryRequest {
    public DownloadRequest(long id) {
        super(0, "https://i.mi.com/gallery/public/resource/download");
        addParam("id", String.valueOf(id));
        setUseCache(false);
    }

    protected void onRequestSuccess(JSONObject data) throws Exception {
        DownloadInfo info = new DownloadInfo();
        info.url = data.getString("url");
        info.sha1 = data.getString("sha1Base16");
        deliverResponse(info);
    }
}
