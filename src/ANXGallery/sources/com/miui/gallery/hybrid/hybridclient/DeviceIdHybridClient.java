package com.miui.gallery.hybrid.hybridclient;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.miui.gallery.hybrid.hybridclient.HybridClient.JsInterfacePair;
import com.miui.gallery.request.HostManager;
import com.miui.gallery.util.MiscUtil;
import java.util.ArrayList;
import java.util.List;

public class DeviceIdHybridClient extends GalleryHybridClient {

    public class MiuiGalleryJSBridge {
        @JavascriptInterface
        public String getDeviceId() {
            if (HostManager.isInternalUrl(DeviceIdHybridClient.this.mCurrentUrl)) {
                return MiscUtil.getHashedDeviceId();
            }
            return null;
        }
    }

    public DeviceIdHybridClient(Context context, String url) {
        super(context, url);
    }

    public String[] getRuntimePermissions() {
        return new String[]{"android.permission.READ_PHONE_STATE"};
    }

    public List<JsInterfacePair> getJavascriptInterfaces() {
        List<JsInterfacePair> jsInterfacePairs = super.getJavascriptInterfaces();
        if (jsInterfacePairs == null) {
            jsInterfacePairs = new ArrayList(1);
        }
        jsInterfacePairs.add(new JsInterfacePair("MiuiGalleryJSBridge", new MiuiGalleryJSBridge()));
        return jsInterfacePairs;
    }
}
