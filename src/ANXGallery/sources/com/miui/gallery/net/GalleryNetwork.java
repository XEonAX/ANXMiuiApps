package com.miui.gallery.net;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.HurlStack;
import com.miui.gallery.cloud.GalleryMiCloudServerException;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.RequestError;
import com.miui.gallery.net.json.JsonObjectRequest;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.gallery.util.deviceprovider.MiCloudProviderInterface;

class GalleryNetwork extends BasicNetwork {
    public GalleryNetwork() {
        super(new HurlStack());
    }

    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        if (NetworkUtils.isNetworkConnected()) {
            int method = request.getMethod();
            if (method < 1001) {
                return super.performRequest(request);
            }
            try {
                if (request instanceof JsonObjectRequest) {
                    String response;
                    JsonObjectRequest jsonRequest = (JsonObjectRequest) request;
                    MiCloudProviderInterface provider = ApplicationHelper.getMiCloudProvider();
                    if (method == 1001) {
                        response = provider.secureGet(request.getUrl(), jsonRequest.getParams());
                    } else if (method == 1002) {
                        response = provider.securePost(request.getUrl(), jsonRequest.getParams());
                    } else {
                        throw new VolleyError("No such method " + method);
                    }
                    return new NetworkResponse(response.getBytes());
                }
                throw new VolleyError("Not support this request type");
            } catch (GalleryMiCloudServerException e) {
                throw new VolleyError(e.getCloudServerException());
            } catch (Throwable e2) {
                throw new VolleyError(e2);
            }
        }
        throw new RequestError(ErrorCode.NETWORK_NOT_CONNECTED, "Network not connected.", null);
    }
}
