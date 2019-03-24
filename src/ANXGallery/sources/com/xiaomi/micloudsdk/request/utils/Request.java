package com.xiaomi.micloudsdk.request.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.micloudsdk.data.ExtendedAuthToken;
import com.xiaomi.micloudsdk.exception.CipherException;
import com.xiaomi.micloudsdk.exception.CloudServerException;
import com.xiaomi.micloudsdk.provider.GdprUtils;
import com.xiaomi.micloudsdk.request.utils.HttpUtils.HttpMethod;
import com.xiaomi.micloudsdk.request.utils.RequestConstants.URL;
import com.xiaomi.micloudsdk.utils.CloudCoder;
import com.xiaomi.micloudsdk.utils.CryptCoder;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import miui.yellowpage.Tag.TagWebService.CommonResult;
import org.apache.http.Header;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public class Request {
    private static Context sContext;
    private static String sRegion;
    private static RequestEnv sRequestEnv = new DefaultRequestEnv();

    public interface RequestEnv {
        String getAccountName();

        String getUserAgent();

        void invalidateAuthToken();

        ExtendedAuthToken queryAuthToken();

        String queryEncryptedAccountName();
    }

    public static void init(Context context) {
        sContext = context;
    }

    public static Context getContext() {
        if (sContext != null) {
            return sContext;
        }
        throw new IllegalStateException("sContext=null! Please call Request.init(Context) at Application onCreate");
    }

    public static void setRegion(String region) {
        sRegion = region;
    }

    public static String getRegion() {
        return sRegion;
    }

    public static RequestEnv getRequestEnv() {
        return sRequestEnv;
    }

    public static String secureGet(String url, Map<String, String> params) throws IllegalBlockSizeException, BadPaddingException, IOException, CloudServerException {
        return secureGet(url, params, null);
    }

    public static String secureGet(String url, Map<String, String> params, Map<String, String> additionalCookies) throws IllegalBlockSizeException, BadPaddingException, IOException, CloudServerException {
        return execute(url, HttpMethod.GET, params, additionalCookies);
    }

    public static String securePost(String url, Map<String, String> params) throws IllegalBlockSizeException, BadPaddingException, IOException, CloudServerException {
        return securePost(url, params, null);
    }

    public static String securePost(String url, Map<String, String> params, Map<String, String> additionalCookies) throws IllegalBlockSizeException, BadPaddingException, IOException, CloudServerException {
        return execute(url, HttpMethod.POST, params, additionalCookies);
    }

    private static String execute(String url, HttpMethod method, Map<String, String> params, Map<String, String> additionalCookies) throws IOException, CloudServerException, IllegalBlockSizeException, BadPaddingException {
        try {
            url = checkHostLocation(url);
            String response = "";
            boolean isV4 = CloudRequestHelper.isV4Url(url);
            int retry = 0;
            while (retry < 2) {
                String urlTemp = url;
                ExtendedAuthToken extAuthToken = queryAuthToken();
                CryptCoder coder = CloudRequestHelper.getCryptCoder(urlTemp, extAuthToken.security);
                ArrayList<NameValuePair> encodedParams = encodeParameters(coder, isV4 ? CloudCoder.generateNonce() : null, params);
                addSignatureParam(method, urlTemp, encodedParams, extAuthToken.security);
                Header cookies = getCookies(sRequestEnv.getAccountName(), sRequestEnv.queryEncryptedAccountName(), extAuthToken.authToken, additionalCookies);
                try {
                    if (HttpMethod.GET.equals(method)) {
                        response = CloudRequestHelper.httpGetRequestWithDecodeData(HttpUtils.appendUrl(urlTemp, encodedParams), cookies, coder);
                        break;
                    } else if (HttpMethod.POST.equals(method)) {
                        response = CloudRequestHelper.httpPostRequestWithDecodeData(urlTemp, new UrlEncodedFormEntity(encodedParams, Keyczar.DEFAULT_ENCODING), cookies, coder);
                        break;
                    } else if (HttpMethod.POST_JSON.equals(method)) {
                        JSONObject postJSON = new JSONObject();
                        for (int i = 0; i < encodedParams.size(); i++) {
                            postJSON.put(((NameValuePair) encodedParams.get(i)).getName(), ((NameValuePair) encodedParams.get(i)).getValue());
                        }
                        response = CloudRequestHelper.httpPostJSONRequestWithDecodeData(urlTemp, new StringEntity(postJSON.toString(), "utf-8"), cookies, coder);
                        break;
                    } else {
                        throw new IllegalArgumentException("http method not supported.");
                    }
                } catch (JSONException e) {
                    throw new CloudServerException(0, e.toString());
                } catch (CloudServerException e2) {
                    Log.e("Request", "CloudServer Exception: ", e2);
                    if (e2.getStatusCode() == 401) {
                        if (retry == 0) {
                            Log.e("Request", "CloudServer 401 Exception: retry=" + retry, e2);
                            sRequestEnv.invalidateAuthToken();
                            CloudCoder.setServerDateOffset(e2.serverDate - System.currentTimeMillis());
                        } else if (retry == 1) {
                            Log.e("Request", "CloudServer 401 Exception: retry=" + retry, e2);
                            throw e2;
                        }
                        retry++;
                    } else {
                        handleCloudServerException(getContext(), e2);
                        throw e2;
                    }
                }
            }
            checkResponse(getContext(), response);
            CloudNetworkAvailabilityManager.setRequestResult(getContext(), true);
            return response;
        } catch (CipherException e3) {
            Log.e("Request", "CipherException", e3);
            throw new CloudServerException(0, e3.toString());
        } catch (IOException ex) {
            CloudNetworkAvailabilityManager.setRequestResult(getContext(), false);
            throw ex;
        }
    }

    private static void handleCloudServerException(Context context, CloudServerException e) {
        if (e.code == 503 && e.retryTime > 0) {
            Intent intent = new Intent("com.xiaomi.action.DATA_IN_TRANSFER");
            intent.putExtra("retryTime", e.retryTime);
            intent.setPackage("com.miui.cloudservice");
            context.sendBroadcast(intent);
        } else if (e.code == 52003 && GdprUtils.isGdprAvailable(context)) {
            notifyMiCloudPrivacyDenied(context);
        }
    }

    private static void checkResponse(Context context, String response) {
        Log.d("Request", "checkResponse");
        if (response != null && isPrivacyError(response) && GdprUtils.isGdprAvailable(context)) {
            Log.d("Request", "notify privacy denied!");
            notifyMiCloudPrivacyDenied(context);
        }
    }

    private static void notifyMiCloudPrivacyDenied(Context context) {
        Intent intent = new Intent("com.xiaomi.action.PRIVACY_DENIED");
        intent.setPackage("com.miui.cloudservice");
        if (context.getPackageManager().resolveService(intent, 0) != null) {
            try {
                context.startService(intent);
                return;
            } catch (Exception e) {
                Log.e("Request", "startservice error possibly due to backgroundservice limitation");
                return;
            }
        }
        context.sendBroadcast(intent);
    }

    private static boolean isPrivacyError(String response) {
        try {
            if (new JSONObject(response).optInt(CommonResult.RESULT_CODE, 0) == 52003) {
                return true;
            }
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static String checkHostLocation(String url) throws CloudServerException {
        if (url.startsWith(URL.URL_RELOCATION_BASE)) {
            return url;
        }
        return CloudUtils.updateRequestHost(url, false);
    }

    public static ExtendedAuthToken queryAuthToken() throws CloudServerException {
        ExtendedAuthToken extAuthToken = sRequestEnv.queryAuthToken();
        if (extAuthToken != null) {
            return extAuthToken;
        }
        throw new CloudServerException(0, "execute() : queryAuthToken == null");
    }

    private static ArrayList<NameValuePair> encodeParameters(CryptCoder coder, String nonce, Map<String, String> params) throws CipherException {
        ArrayList<NameValuePair> encodedParams;
        if (params == null) {
            params = new HashMap();
        }
        if (nonce == null || params.containsKey("_nonce")) {
            encodedParams = new ArrayList(params.size());
        } else {
            encodedParams = new ArrayList(params.size() + 1);
            encodedParams.add(new BasicNameValuePair("_nonce", nonce));
        }
        for (Entry<String, String> entry : params.entrySet()) {
            String key = (String) entry.getKey();
            String value = (String) entry.getValue();
            if (key.startsWith("_")) {
                encodedParams.add(new BasicNameValuePair(key, value));
            } else {
                if (value == null) {
                    value = "";
                }
                encodedParams.add(new BasicNameValuePair(key, coder.encrypt(value)));
            }
        }
        return encodedParams;
    }

    private static Header getCookies(String userId, String encryptedUserId, String authToken, Map<String, String> cookies) {
        StringBuilder builder = new StringBuilder();
        builder.append("serviceToken=");
        builder.append(authToken);
        if (encryptedUserId != null) {
            builder.append("; cUserId=");
            builder.append(encryptedUserId);
        }
        if (cookies != null && cookies.size() > 0) {
            for (String key : cookies.keySet()) {
                if (!("cUserId".equals(key) || "userId".equals(key) || "serviceToken".equals(key) || TextUtils.isEmpty(key))) {
                    builder.append("; " + key + "=");
                    builder.append((String) cookies.get(key));
                }
            }
        }
        return new BasicHeader("Cookie", builder.toString());
    }

    private static void addSignatureParam(HttpMethod httpMethod, String url, ArrayList<NameValuePair> paramList, String security) throws UnsupportedEncodingException {
        paramList.add(new BasicNameValuePair("signature", HttpUtils.getSignature(httpMethod, url, paramList, security)));
    }

    public static void addFilterTagsToParams(String url, Map<String, String> params, String security, Set<String> filterTags, long waterMark) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        ArrayList<NameValuePair> paramList = new ArrayList();
        for (Entry<String, String> param : params.entrySet()) {
            paramList.add(new BasicNameValuePair((String) param.getKey(), (String) param.getValue()));
        }
        StringBuilder finalTags = new StringBuilder();
        StringBuilder tmpTags = new StringBuilder();
        int size = 0;
        for (String tag : filterTags) {
            if (Long.parseLong(tag) > waterMark) {
                String stringBuilder;
                if (size < 100) {
                    if (tmpTags.length() > 0) {
                        tmpTags.append(",");
                    }
                    tmpTags.append(tag);
                    size++;
                    if (!(size % 10 == 0 || size == filterTags.size())) {
                    }
                }
                String str = "filterTag";
                if (finalTags.length() == 0) {
                    stringBuilder = tmpTags.toString();
                } else {
                    stringBuilder = finalTags + "," + tmpTags;
                }
                NameValuePair filterParam = new BasicNameValuePair(str, CloudRequestHelper.encodeData(url, security, stringBuilder));
                paramList.add(filterParam);
                NameValuePair signatureParam = new BasicNameValuePair("signature", HttpUtils.getSignature(HttpMethod.GET, url, paramList, security));
                paramList.add(signatureParam);
                int length = HttpUtils.appendUrl(url, paramList).length();
                paramList.remove(filterParam);
                paramList.remove(signatureParam);
                if (length >= 1024) {
                    break;
                }
                if (finalTags.length() > 0) {
                    finalTags.append(",");
                }
                finalTags.append(tmpTags);
                tmpTags.setLength(0);
                if (size >= 100) {
                    break;
                }
            }
        }
        String tagsText = finalTags.toString();
        if (Log.isLoggable("Request", 3)) {
            Log.d("Request", "The filterTag is :" + tagsText);
        }
        params.put("filterTag", tagsText);
    }
}
