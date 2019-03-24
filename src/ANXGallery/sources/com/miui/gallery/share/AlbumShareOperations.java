package com.miui.gallery.share;

import android.accounts.Account;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.graphics.RectF;
import android.net.Uri;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CheckResult;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.CreateGroupItem;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.GalleryErrorCode;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.GalleryMiCloudServerException;
import com.miui.gallery.cloud.HostManager.AlbumShareOperation;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.SyncOwnerUserForAlbum;
import com.miui.gallery.cloud.SyncSharerUserForAlbum;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.lib.MiuiGalleryUtils;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.ConcatConverter;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.internal.analytics.NormalPolicy;
import com.miui.internal.vip.VipConstants;
import com.miui.internal.vip.utils.AuthHttpRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import miui.content.ExtraIntent;
import miui.yellowpage.Tag.TagYellowPage;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public class AlbumShareOperations {
    private static UserInfo sSelf = null;

    public static final class IncomingInvitation {
        private String mAlbumName;
        private boolean mHasSharerInfo;
        private String mOwnerName;

        IncomingInvitation(List<NameValuePair> values) {
            for (NameValuePair pair : values) {
                if ("albumName".equals(pair.getName())) {
                    this.mAlbumName = AlbumShareOperations.decode(pair.getValue());
                } else if ("userName".equals(pair.getName())) {
                    this.mOwnerName = AlbumShareOperations.decode(pair.getValue());
                } else if ("sharerInfo".equals(pair.getName())) {
                    this.mHasSharerInfo = TextUtils.equals("true", pair.getValue());
                }
                if (this.mAlbumName != null && this.mOwnerName != null && this.mHasSharerInfo) {
                    return;
                }
            }
        }

        public String getOwnerName() {
            return this.mOwnerName;
        }

        public String getAlbumName() {
            return this.mAlbumName;
        }

        public boolean hasSharerInfo() {
            return this.mHasSharerInfo;
        }
    }

    public static final class OutgoingInvitation {
        private final String mDescription;
        private final String mUrl;

        public OutgoingInvitation(String description, String url) {
            this.mDescription = description;
            this.mUrl = url;
        }

        public String toMessage() {
            return this.mDescription + this.mUrl;
        }

        public String getDescription() {
            return this.mDescription;
        }

        public String getUrl() {
            return this.mUrl;
        }

        public String toCache() {
            JSONObject json = new JSONObject();
            try {
                json.put("text", this.mDescription);
                json.put("url", this.mUrl);
                return json.toString();
            } catch (JSONException e) {
                return null;
            }
        }

        public static OutgoingInvitation fromCache(String src) {
            try {
                JSONObject data = new JSONObject(src);
                return new OutgoingInvitation(data.getString("text"), data.getString("url"));
            } catch (JSONException e) {
                return null;
            }
        }
    }

    public static final class SharerInfo {
        public final String mAlbumNickName;
        public final RectF mFaceRelativePos;
        public final String mOwnerRelationText;
        public final String mSharerRelationText;
        public final String mThumbnailUrl;

        SharerInfo(String jsonData) throws JSONException {
            JSONObject jsonObject = new JSONObject(jsonData);
            this.mAlbumNickName = jsonObject.getString("albumNickName");
            this.mOwnerRelationText = jsonObject.getString("ownerRelationText");
            this.mSharerRelationText = jsonObject.getString("sharerRelationText");
            this.mThumbnailUrl = jsonObject.optString(TagYellowPage.THUMBNAIL);
            JSONObject faceInfo = jsonObject.optJSONObject("thumbnailFaceInfo");
            if (faceInfo != null) {
                float x = (float) faceInfo.getDouble("faceXScale");
                float y = (float) faceInfo.getDouble("faceYScale");
                this.mFaceRelativePos = new RectF(x, y, x + ((float) faceInfo.getDouble("faceWScale")), y + ((float) faceInfo.getDouble("faceHScale")));
                return;
            }
            this.mFaceRelativePos = null;
        }
    }

    private static String decode(String src) {
        if (TextUtils.isEmpty(src)) {
            return src;
        }
        try {
            return new String(Base64.decode(src, 8), Keyczar.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static AsyncResult<String> requestUrlForBarcode(final String serverId) {
        return execute(new Callable<AsyncResult<String>>() {
            public AsyncResult<String> call() throws Exception {
                String cache = AlbumShareOperations.readCache(serverId, "barcodeData", "barcodeDataDeadline", 43200000);
                if (!TextUtils.isEmpty(cache)) {
                    return AsyncResult.create(0, cache);
                }
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String userName = AlbumShareOperations.myName();
                if (TextUtils.isEmpty(userName)) {
                    return AsyncResult.create(-5);
                }
                String url = AlbumShareOperation.getBarcodeShareUrl(serverId);
                ArrayList<NameValuePair> params = Lists.newArrayList();
                AlbumShareOperations.addNameValuePair(params, "userName", userName, token);
                JSONObject json = CloudUtils.postToXiaomi(url, params, null, account, token, 0, false);
                int err = CheckResult.parseErrorCode(json);
                if (err != 0) {
                    return AsyncResult.create(err);
                }
                String str = json.getJSONObject("data").getString("url");
                if (!TextUtils.isEmpty(str)) {
                    AlbumShareOperations.persisitCache(serverId, "barcodeData", "barcodeDataDeadline", str, 43200000);
                }
                SyncLog.d("AlbumShareOperations", "request barcode url success.");
                return AsyncResult.create(0, str);
            }
        });
    }

    public static AsyncResult<String> changePublicStatus(final String serverId, final boolean isPublic) {
        return execute(new Callable<AsyncResult<String>>() {
            public AsyncResult<String> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String url = AlbumShareOperation.getChangePublicUrl(serverId);
                ArrayList<NameValuePair> params = Lists.newArrayList();
                AlbumShareOperations.addNameValuePair(params, "isPublic", String.valueOf(isPublic), token);
                JSONObject json = CloudUtils.postToXiaomi(url, params, null, account, token, 0, false);
                int err = CheckResult.parseErrorCode(json);
                if (err != 0) {
                    return AsyncResult.create(err);
                }
                String publicUrl = json.getJSONObject("data").optString("url");
                AlbumShareOperations.savePublicInfo(serverId, isPublic, publicUrl, false);
                return AsyncResult.create(0, publicUrl);
            }
        });
    }

    public static AsyncResult<String> requestPublicUrl(final String albumId, final boolean isShareAlbum) {
        return execute(new Callable<AsyncResult<String>>() {
            public AsyncResult<String> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String url;
                if (isShareAlbum) {
                    url = AlbumShareOperation.getSharerRequestPublicUrl();
                } else {
                    url = AlbumShareOperation.getOwnerRequestPublicUrl(albumId);
                }
                ArrayList<NameValuePair> params = new ArrayList();
                if (isShareAlbum) {
                    params.add(new BasicNameValuePair("sharedAlbumId", albumId));
                }
                JSONObject json = CloudUtils.getFromXiaomi(url, params, account, token, 0, false);
                int err = CheckResult.parseErrorCode(json);
                if (err != 0) {
                    return AsyncResult.create(err);
                }
                boolean z;
                String publicUrl = json.getJSONObject("data").optString("url");
                String str = albumId;
                if (TextUtils.isEmpty(publicUrl)) {
                    z = false;
                } else {
                    z = true;
                }
                AlbumShareOperations.savePublicInfo(str, z, publicUrl, isShareAlbum);
                return AsyncResult.create(0, publicUrl);
            }
        });
    }

    private static void savePublicInfo(String albumId, boolean isPublic, String publicUrl, boolean isShareAlbum) {
        ContentValues values = new ContentValues();
        values.put("isPublic", Boolean.valueOf(isPublic));
        values.put("publicUrl", publicUrl);
        GalleryUtils.safeUpdate(isShareAlbum ? GalleryCloudUtils.SHARE_ALBUM_URI : GalleryCloudUtils.CLOUD_URI, values, (isShareAlbum ? "albumId" : "serverId") + " = ? ", new String[]{albumId});
    }

    public static AsyncResult<OutgoingInvitation> requestInvitationForSms(String serverId, String relation, String relationText, String ownerRelation, String ownerRelationText) {
        final String str = serverId;
        final String str2 = relation;
        final String str3 = ownerRelation;
        final String str4 = ownerRelationText;
        final String str5 = relationText;
        return execute(new Callable<AsyncResult<OutgoingInvitation>>() {
            public AsyncResult<OutgoingInvitation> call() throws Exception {
                OutgoingInvitation invitation;
                String cache = AlbumShareOperations.readCache(str, "smsShareData", "smsShareDataDeadline", 43200000);
                if (!TextUtils.isEmpty(cache)) {
                    invitation = OutgoingInvitation.fromCache(cache);
                    if (invitation != null) {
                        return AsyncResult.create(0, invitation);
                    }
                }
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String userName = AlbumShareOperations.myName();
                if (TextUtils.isEmpty(userName)) {
                    return AsyncResult.create(-5);
                }
                String url = AlbumShareOperation.getSmsShareUrl(str);
                ArrayList<NameValuePair> params = Lists.newArrayList();
                AlbumShareOperations.addNameValuePair(params, "userName", userName, token);
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        JSONObject relationShipJson = new JSONObject();
                        JSONObject jSONObject = relationShipJson;
                        jSONObject.put("ownerRelation", str3);
                        jSONObject = relationShipJson;
                        jSONObject.put("ownerRelationText", str4);
                        jSONObject = relationShipJson;
                        jSONObject.put("sharerRelation", str2);
                        jSONObject = relationShipJson;
                        jSONObject.put("sharerRelationText", str5);
                        AlbumShareOperations.addNameValuePair(params, "relationShip", relationShipJson.toString(), token);
                    } catch (JSONException e) {
                        e.printStackTrace();
                        return AsyncResult.create(-7);
                    }
                }
                JSONObject json = CloudUtils.postToXiaomi(url, params, null, account, token, 0, false);
                int err = CheckResult.parseErrorCode(json);
                if (err != 0) {
                    return AsyncResult.create(err);
                }
                JSONObject data = json.getJSONObject("data");
                invitation = new OutgoingInvitation(data.getString("text"), data.getString("url"));
                if (TextUtils.isEmpty(str2)) {
                    AlbumShareOperations.persisitCache(str, "smsShareData", "smsShareDataDeadline", invitation.toCache(), 43200000);
                }
                SyncLog.d("AlbumShareOperations", "request sms url success.");
                return AsyncResult.create(0, invitation);
            }
        });
    }

    public static AsyncResult<Void> exitAlbumShare(final String shareAlbumId, final String localId) {
        return execute(new Callable<AsyncResult<Void>>() {
            public AsyncResult<Void> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String url = AlbumShareOperation.getExitShareUrl();
                ArrayList<NameValuePair> params = new ArrayList();
                params.add(new BasicNameValuePair("sharedAlbumId", shareAlbumId));
                int err = CheckResult.parseErrorCode(CloudUtils.postToXiaomi(url, params, null, account, token, 0, false));
                if (err == 0) {
                    CloudUtils.deleteShareAlbumInLocal(shareAlbumId, localId);
                }
                SyncLog.d("AlbumShareOperations", "exit share album success.");
                return AsyncResult.create(err);
            }
        });
    }

    private static Pair<List<String>, List<String>> doDeleteSharers(ContentResolver r, String serverId, List<String> sharerIds, Account account, GalleryExtendedAuthToken token) throws IllegalBlockSizeException, BadPaddingException, JSONException, IOException, GalleryMiCloudServerException {
        String url = AlbumShareOperation.getDeleteSharerUrl(serverId);
        ArrayList<NameValuePair> params = Lists.newArrayList();
        addNameValuePair(params, "sharerIdList", GalleryUtils.concatAll(sharerIds, ","), token);
        JSONObject json = CloudUtils.postToXiaomi(url, params, null, account, token, 0, false);
        if (CheckResult.parseErrorCode(json) != 0) {
            return null;
        }
        int i;
        JSONObject data = json.getJSONObject("data");
        JSONArray succ = data.getJSONArray("succ");
        JSONArray fail = data.getJSONArray("fail");
        List<String> succIds = Lists.newArrayList();
        List<String> failIds = Lists.newArrayList();
        for (i = 0; i < succ.length(); i++) {
            succIds.add(succ.getString(i));
        }
        for (i = 0; i < fail.length(); i++) {
            failIds.add(fail.getString(i));
        }
        if (!succIds.isEmpty()) {
            r5 = new String[2];
            r5[0] = GalleryUtils.concatAll(succIds, ",");
            r5[1] = serverId;
            SyncLog.d("AlbumShareOperations", "Local delete count=" + r.delete(GalleryCloudUtils.CLOUD_USER_URI, "userId in (?) AND albumId = ?", r5) + ", Server delete count=" + succIds.size());
        }
        return Pair.create(succIds, failIds);
    }

    public static AsyncResult<Pair<List<String>, List<String>>> deleteSharers(final ContentResolver r, final String serverId, final List<String> sharerIds) {
        return execute(new Callable<AsyncResult<Pair<List<String>, List<String>>>>() {
            public AsyncResult<Pair<List<String>, List<String>>> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                List<String> succIds = Lists.newArrayList();
                List<String> failIds = Lists.newArrayList();
                for (int i = 0; i < sharerIds.size(); i += 50) {
                    Pair<List<String>, List<String>> ret = AlbumShareOperations.doDeleteSharers(r, serverId, sharerIds.subList(i, Math.min(sharerIds.size(), i + 50)), account, token);
                    if (ret != null) {
                        succIds.addAll((Collection) ret.first);
                        failIds.addAll((Collection) ret.second);
                    }
                }
                return AsyncResult.create(0, Pair.create(succIds, failIds));
            }
        });
    }

    public static AsyncResult<String> updateInvitation(final ContentResolver resolver, final String url, final String longUrlIn, final CloudSharerMediaSet mediaSet) {
        return execute(new Callable<AsyncResult<String>>() {
            public AsyncResult<String> call() throws Exception {
                if (!MiuiGalleryUtils.isAlbumShareUrl(url) || !ApplicationHelper.supportShare()) {
                    return AsyncResult.create(-1000);
                }
                String longUrl;
                if (TextUtils.isEmpty(longUrlIn)) {
                    longUrl = AlbumShareOperations.parseRedirectLocation(AlbumShareOperations.requestHeaders(url));
                } else {
                    longUrl = longUrlIn;
                }
                if (TextUtils.isEmpty(longUrl)) {
                    return AsyncResult.create(-7);
                }
                AsyncResult<String> result;
                ContentValues values = new ContentValues();
                values.put("shareUrlLong", longUrl);
                IncomingInvitation invitation = AlbumShareOperations.parseInvitation(longUrl);
                if (invitation == null || !invitation.hasSharerInfo()) {
                    result = AsyncResult.create(0, longUrl);
                } else {
                    result = AlbumShareOperations.requestSharerInfo(resolver, url, longUrl);
                    if (result.mError != 0) {
                        return result;
                    }
                    values.put("sharerInfo", (String) result.mData);
                    result = AsyncResult.create(result.mError, longUrl);
                }
                if (!(invitation == null || TextUtils.isEmpty(invitation.getAlbumName()))) {
                    values.put("fileName", invitation.getAlbumName());
                }
                AlbumShareOperations.updateShareAlbumInfos(resolver, url, values, mediaSet);
                return result;
            }
        });
    }

    private static void updateShareAlbumInfos(ContentResolver resolver, String url, ContentValues values, CloudSharerMediaSet mediaSet) {
        mediaSet.setLongUrl(values.getAsString("shareUrlLong"));
        mediaSet.setSharerInfo(values.getAsString("sharerInfo"));
        resolver.update(GalleryCloudUtils.SHARE_ALBUM_URI, values, String.format("%s=? AND %s=?", new Object[]{"shareUrl", "albumStatus"}), new String[]{url, "invited"});
    }

    public static AsyncResult<String> requestSharerInfo(ContentResolver resolver, String url, String longUrl) throws Exception {
        if (TextUtils.isEmpty(longUrl)) {
            return AsyncResult.create(-7);
        }
        String result = NetworkUtils.httpGetRequestForString(String.format("%s&%s=%s", new Object[]{longUrl, "ability", "baby"}), null);
        if (TextUtils.isEmpty(result)) {
            return AsyncResult.create(-7);
        }
        JSONObject jsonResult = new JSONObject(result);
        int err = CheckResult.parseErrorCode(jsonResult);
        if (err == 0) {
            String data = jsonResult.getString("data");
            if (TextUtils.isEmpty(data)) {
                return AsyncResult.create(-7);
            }
            return AsyncResult.create(0, data);
        }
        deleteInvitationIfInvalid(resolver, err, url);
        return AsyncResult.create(err);
    }

    private static ArrayList<NameValuePair> requestInvitationDetail(ContentResolver resolver, String url, CloudSharerMediaSet mediaSet) {
        ArrayList<NameValuePair> arrayList = null;
        if (!TextUtils.isEmpty(url)) {
            ContentResolver contentResolver = resolver;
            Cursor cursor = contentResolver.query(CloudUtils.getLimitUri(GalleryCloudUtils.SHARE_ALBUM_URI, 1), new String[]{"shareUrlLong", "sharerInfo", "shareUrl"}, "shareUrl=?", new String[]{url}, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String longUrl = cursor.getString(0);
                        String shareUrl = cursor.getString(1);
                        if (TextUtils.isEmpty(longUrl) || TextUtils.isEmpty(shareUrl)) {
                            AsyncResult<String> result = updateInvitation(resolver, url, shareUrl, mediaSet);
                            if (result != null && result.mError == 0) {
                                longUrl = result.mData;
                            }
                        }
                        arrayList = parseParamsFromUrl(longUrl);
                        cursor.close();
                    }
                } finally {
                    cursor.close();
                }
            }
        }
        return arrayList;
    }

    private static Map<String, List<String>> requestHeaders(String url) throws MalformedURLException, IOException {
        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setInstanceFollowRedirects(false);
            conn.setConnectTimeout(30000);
            conn.setReadTimeout(30000);
            conn.setUseCaches(false);
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            conn.setRequestProperty("User-Agent", ApplicationHelper.getMiCloudProvider().getCloudManager().getUserAgent());
            conn.setDoInput(true);
            conn.setRequestMethod(AuthHttpRequest.METHOD_GET);
            conn.connect();
            int code = conn.getResponseCode();
            if (code == 301 || code == 302) {
                Map<String, List<String>> headerFields = conn.getHeaderFields();
                return headerFields;
            }
            if (conn != null) {
                conn.disconnect();
            }
            return null;
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    private static String parseRedirectLocation(Map<String, List<String>> fields) {
        if (fields == null) {
            return null;
        }
        List<String> locations = (List) fields.get("Location");
        if (locations == null || locations.isEmpty()) {
            return null;
        }
        return (String) locations.get(0);
    }

    private static ArrayList<NameValuePair> parseParamsFromUrl(String url) {
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        ArrayList<NameValuePair> ret = Lists.newArrayList();
        int start = url.indexOf("?");
        if (start < 0) {
            return ret;
        }
        for (String pair : url.substring(start + 1).split("&")) {
            int valueStart = pair.indexOf("=");
            if (valueStart > 0) {
                ret.add(new BasicNameValuePair(pair.substring(0, valueStart), pair.substring(valueStart + 1)));
            }
        }
        return ret;
    }

    public static IncomingInvitation parseInvitation(String url) {
        ArrayList<NameValuePair> params = parseParamsFromUrl(url);
        return params != null ? new IncomingInvitation(params) : null;
    }

    public static SharerInfo parseSharerInfo(String jsonData) {
        try {
            return new SharerInfo(jsonData);
        } catch (JSONException e) {
            SyncLog.e("AlbumShareOperations", "parseSharerInfo error.", e);
            return null;
        }
    }

    public static AsyncResult<Long> acceptInvitation(final ContentResolver resolver, final String url, final CloudSharerMediaSet mediaSet) {
        return execute(new Callable<AsyncResult<Long>>() {
            public AsyncResult<Long> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                ArrayList<NameValuePair> params = AlbumShareOperations.requestInvitationDetail(resolver, url, mediaSet);
                if (params == null) {
                    return AsyncResult.create(-1001);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String acceptUrl = AlbumShareOperation.getAcceptInvitationUrl();
                ArrayList<NameValuePair> encodeParams = Lists.newArrayList();
                Iterator it = params.iterator();
                while (it.hasNext()) {
                    NameValuePair pair = (NameValuePair) it.next();
                    AlbumShareOperations.addNameValuePair(encodeParams, pair.getName(), pair.getValue(), token);
                }
                JSONObject json = CloudUtils.postToXiaomi(acceptUrl, encodeParams, null, account, token, 0, false);
                int err = CheckResult.parseErrorCode(json);
                if (err != 0) {
                    AlbumShareOperations.deleteInvitationIfInvalid(resolver, err, url);
                    return AsyncResult.create(err);
                }
                JSONObject data = json.getJSONObject("data");
                String shareId = data.getString("shareId");
                String creatorId = data.getString("creatorId");
                int errorCode = -2;
                long itemId = 0;
                if (!TextUtils.isEmpty(shareId)) {
                    Uri uri = GalleryCloudUtils.SHARE_ALBUM_URI;
                    synchronized (uri) {
                        itemId = CloudUtils.getItemId(uri, "albumId", shareId);
                        ContentValues values;
                        if (itemId == 0) {
                            values = new ContentValues();
                            values.put("albumStatus", NormalPolicy.TAG);
                            values.put("albumId", shareId);
                            values.put("creatorId", creatorId);
                            resolver.update(uri, values, String.format("%s=? AND %s=?", new Object[]{"shareUrl", "albumStatus"}), new String[]{url, "invited"});
                            errorCode = 0;
                            itemId = CloudUtils.getItemId(uri, "albumId", shareId);
                        } else {
                            values = new ContentValues();
                            values.put("sharerInfo", mediaSet.getSharerInfo());
                            resolver.update(uri, values, String.format("%s=?", new Object[]{"albumId"}), new String[]{shareId});
                            resolver.delete(uri, String.format("%s=? AND %s=?", new Object[]{"shareUrl", "albumStatus"}), new String[]{url, "invited"});
                            errorCode = -10;
                        }
                    }
                }
                AlbumShareUIManager.syncUserListForAlbumAsync(shareId, true, new OnCompletionListener<Void, Void>() {
                    public void onCompletion(Void key, Void data, int error, boolean cancel) {
                        AlbumShareUIManager.syncAllUserInfoFromNetworkAsync(null);
                    }
                });
                return AsyncResult.create(errorCode, Long.valueOf(itemId));
            }
        });
    }

    public static void deleteInvitationIfInvalid(ContentResolver resolver, int err, String url) {
        if (err == 50019 || err == 50025 || err == 50030 || err == 50012) {
            resolver.delete(GalleryCloudUtils.SHARE_ALBUM_URI, String.format("%s=? AND %s=?", new Object[]{"shareUrl", "albumStatus"}), new String[]{url, "invited"});
        }
    }

    public static AsyncResult<Void> denyInvitation(final ContentResolver resolver, final String url, final CloudSharerMediaSet mediaSet) {
        return execute(new Callable<AsyncResult<Void>>() {
            public AsyncResult<Void> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                ArrayList<NameValuePair> params = AlbumShareOperations.requestInvitationDetail(resolver, url, mediaSet);
                if (params == null) {
                    return AsyncResult.create(-1001);
                }
                String refuseUrl = AlbumShareOperation.getRefuseInvitationUrl();
                ArrayList<NameValuePair> encodeParams = Lists.newArrayList();
                Iterator it = params.iterator();
                while (it.hasNext()) {
                    NameValuePair pair = (NameValuePair) it.next();
                    AlbumShareOperations.addNameValuePair(encodeParams, pair.getName(), pair.getValue(), null);
                }
                int err = CheckResult.parseErrorCode(CloudUtils.postToXiaomi(refuseUrl, encodeParams, null, null, null, 0, false));
                if (GalleryErrorCode.isClientError(err)) {
                    return AsyncResult.create(err);
                }
                resolver.delete(GalleryCloudUtils.SHARE_ALBUM_URI, String.format("%s=? AND %s=?", new Object[]{"shareUrl", "albumStatus"}), new String[]{url, "invited"});
                return AsyncResult.create(err);
            }
        });
    }

    private static List<UserInfo> doRequestUserInfo(List<String> userIds) throws BadPaddingException, IllegalBlockSizeException, IOException, GalleryMiCloudServerException, JSONException {
        List<UserInfo> users = Lists.newArrayList();
        if (CTA.canConnectNetwork()) {
            Context context = GalleryApp.sGetAndroidContext();
            Account account = AccountHelper.getXiaomiAccount(context);
            if (account != null) {
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token != null) {
                    String url = AlbumShareOperation.getRequestUserInfoUrl();
                    ArrayList<NameValuePair> params = new ArrayList();
                    params.add(new BasicNameValuePair("users", GalleryUtils.concatAll(userIds, ",")));
                    JSONObject json = CloudUtils.postToXiaomi(url, params, null, account, token, 0, false);
                    if (CheckResult.parseErrorCode(json) == 0) {
                        JSONArray array = json.getJSONObject("data").getJSONArray("list");
                        for (int i = 0; i < array.length(); i++) {
                            JSONObject user = array.getJSONObject(i);
                            String id = user.getString("userId");
                            if (!TextUtils.isEmpty(id)) {
                                UserInfo info = new UserInfo(id);
                                info.setAliasNick(user.optString("aliasNick"));
                                info.setMiliaoNick(user.optString("nickname"));
                                info.setMiliaoIconUrl(user.optString("icon"));
                                users.add(info);
                            }
                        }
                    }
                }
            }
        }
        return users;
    }

    public static AsyncResult<List<UserInfo>> requestUserInfo(final List<String> userIds) {
        return execute(new Callable<AsyncResult<List<UserInfo>>>() {
            public AsyncResult<List<UserInfo>> call() throws Exception {
                List<UserInfo> out = Lists.newArrayList();
                for (int i = 0; i < userIds.size(); i += 20) {
                    List<UserInfo> result = AlbumShareOperations.doRequestUserInfo(userIds.subList(i, Math.min(userIds.size(), i + 20)));
                    if (result != null) {
                        out.addAll(result);
                    }
                }
                return AsyncResult.create(0, out);
            }
        });
    }

    public static AsyncResult<Void> syncAllUserInfoFromNetwork() {
        return execute(new Callable<AsyncResult<Void>>() {
            public AsyncResult<Void> call() throws Exception {
                ContentResolver resolver = GalleryApp.sGetAndroidContext().getContentResolver();
                Set<String> userIdSet = Sets.newHashSet();
                AlbumShareOperations.collectAllUserId(resolver, GalleryCloudUtils.CLOUD_USER_URI, "userId", userIdSet);
                AlbumShareOperations.collectAllUserId(resolver, GalleryCloudUtils.SHARE_USER_URI, "userId", userIdSet);
                String selfId = GalleryCloudUtils.getAccountName();
                if (!TextUtils.isEmpty(selfId)) {
                    userIdSet.add(selfId);
                }
                synchronized (GalleryCloudUtils.USER_INFO_URI) {
                    GalleryUtils.safeDelete(GalleryCloudUtils.USER_INFO_URI, String.format("%s NOT IN (%s)", new Object[]{ExtraIntent.EXTRA_XIAOMI_ACCOUNT_USER_ID, GalleryUtils.concatAll(userIdSet, ",")}), null);
                }
                long current = System.currentTimeMillis();
                Cursor userCursor = resolver.query(GalleryCloudUtils.USER_INFO_URI, new String[]{ExtraIntent.EXTRA_XIAOMI_ACCOUNT_USER_ID}, String.format("(%s<?)AND(%s>?)", new Object[]{"date_modified", "date_modified"}), new String[]{String.valueOf(current), String.valueOf(current - VipConstants.DAY)}, null);
                if (userCursor != null) {
                    while (userCursor.moveToNext()) {
                        try {
                            userIdSet.remove(String.valueOf(userCursor.getString(0)));
                        } finally {
                            userCursor.close();
                        }
                    }
                }
                if (!userIdSet.isEmpty()) {
                    List<String> userIds = Lists.newArrayList();
                    userIds.addAll(userIdSet);
                    AsyncResult<List<UserInfo>> result = AlbumShareOperations.requestUserInfo(userIds);
                    if (result != null && result.mError == 0) {
                        List<UserInfo> userInfoList = result.mData;
                        if (!(userInfoList == null || userInfoList.isEmpty())) {
                            List<UserInfo> list = userInfoList;
                            String successIds = GalleryUtils.concatAll(list, ",", new ConcatConverter<UserInfo>() {
                                public String convertToString(UserInfo src) {
                                    return src.getUserId();
                                }
                            });
                            synchronized (GalleryCloudUtils.USER_INFO_URI) {
                                int deleteCount = GalleryUtils.safeDelete(GalleryCloudUtils.USER_INFO_URI, String.format("%s IN (%s)", new Object[]{ExtraIntent.EXTRA_XIAOMI_ACCOUNT_USER_ID, successIds}), null);
                                AlbumShareOperations.insertUserInfoToDB(resolver, GalleryCloudUtils.USER_INFO_URI, userInfoList);
                                SyncLog.d("AlbumShareOperations", String.format("syncAllUserNameFromNetwork: delete=%d, insert=%d", new Object[]{Integer.valueOf(deleteCount), Integer.valueOf(userInfoList.size())}));
                            }
                        }
                    }
                }
                return AsyncResult.create(0);
            }
        });
    }

    private static void insertUserInfoToDB(ContentResolver resolver, Uri uri, List<UserInfo> userInfoList) {
        ArrayList<ContentProviderOperation> operations = Lists.newArrayList();
        Iterator it = userInfoList.iterator();
        while (it.hasNext()) {
            UserInfo info = (UserInfo) it.next();
            operations.add(ContentProviderOperation.newInsert(GalleryCloudUtils.USER_INFO_URI).withValue(ExtraIntent.EXTRA_XIAOMI_ACCOUNT_USER_ID, info.getUserId()).withValue("alias_nick", info.getAliasNick()).withValue("miliao_nick", info.getMiliaoNick()).withValue("miliao_icon_url", info.getMiliaoIconUrl()).build());
            if (operations.size() > 100) {
                try {
                    resolver.applyBatch("com.miui.gallery.cloud.provider", operations);
                } catch (RemoteException e) {
                    e.printStackTrace();
                } catch (OperationApplicationException e2) {
                    e2.printStackTrace();
                } finally {
                    operations.clear();
                }
            }
        }
        if (!operations.isEmpty()) {
            try {
                resolver.applyBatch("com.miui.gallery.cloud.provider", operations);
            } catch (RemoteException e3) {
                e3.printStackTrace();
            } catch (OperationApplicationException e22) {
                e22.printStackTrace();
            }
        }
    }

    private static void collectAllUserId(ContentResolver resolver, Uri uri, String column, Collection<String> userId) {
        Cursor cursor = resolver.query(CloudUtils.getCloudDistinctUri(uri), new String[]{column}, null, null, null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    userId.add(String.valueOf(cursor.getLong(0)));
                } finally {
                    cursor.close();
                }
            }
        }
    }

    public static AsyncResult<Void> syncUserListForAlbum(final String albumId, final boolean isSharer) {
        return execute(new Callable<AsyncResult<Void>>() {
            public AsyncResult<Void> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                if (!NetworkUtils.isNetworkConnected()) {
                    return AsyncResult.create(-6);
                }
                if (isSharer) {
                    new SyncSharerUserForAlbum(context, account, token, albumId).sync();
                } else {
                    new SyncOwnerUserForAlbum(context, account, token, albumId).sync();
                }
                AlbumShareOperations.syncAllUserInfoFromNetwork();
                return AsyncResult.create(0);
            }
        });
    }

    public static long addInvitation(String url) {
        Context context = GalleryApp.sGetAndroidContext();
        synchronized (GalleryCloudUtils.SHARE_ALBUM_URI) {
            long existId = CloudUtils.getItemId(GalleryCloudUtils.SHARE_ALBUM_URI, "shareUrl", url);
            if (existId != 0) {
                return existId;
            }
            ContentValues cv = new ContentValues(2);
            cv.put("shareUrl", url);
            cv.put("albumStatus", "invited");
            cv.put("fileName", "");
            Uri uri = context.getContentResolver().insert(GalleryCloudUtils.SHARE_ALBUM_URI, cv);
            if (uri == null) {
                SyncLog.e("AlbumShareOperations", "Insert invitation error.");
                return 0;
            }
            existId = Long.valueOf(uri.getLastPathSegment()).longValue();
            return existId;
        }
    }

    public static AsyncResult<String> tryToCreateCloudAlbum(final String cloudId) {
        return execute(new Callable<AsyncResult<String>>() {
            public AsyncResult<String> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                DBImage dbImage = CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, context, "_id", cloudId);
                if (dbImage == null) {
                    return AsyncResult.create(-2);
                }
                String serverId = dbImage.getServerId();
                if (CloudUtils.isValidAlbumId(serverId)) {
                    return AsyncResult.create(0, serverId);
                }
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                GallerySyncResult result = new CreateGroupItem(context).execute(account, token, null, new RequestCloudItem(0, dbImage));
                if (result == null || result != GallerySyncResult.Ok) {
                    return AsyncResult.create(-2);
                }
                return AsyncResult.create(0, CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, context, "_id", cloudId).getServerId());
            }
        });
    }

    private static void addNameValuePair(List<NameValuePair> params, String key, String value, GalleryExtendedAuthToken token) throws IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        params.add(new BasicNameValuePair(key, value));
    }

    private static synchronized UserInfo self() {
        UserInfo userInfo;
        synchronized (AlbumShareOperations.class) {
            if (sSelf == null) {
                Account account = AccountHelper.getXiaomiAccount(GalleryApp.sGetAndroidContext());
                if (account != null) {
                    List<String> userIds = Lists.newArrayList();
                    userIds.add(account.name);
                    AsyncResult<List<UserInfo>> result = requestUserInfo(userIds);
                    if (result != null && result.mError == 0) {
                        List<UserInfo> infoList = result.mData;
                        if (!(infoList == null || infoList.isEmpty())) {
                            UserInfo self = (UserInfo) infoList.get(0);
                            sSelf = self;
                            if (self != null) {
                                ContentValues values = new ContentValues();
                                values.put(ExtraIntent.EXTRA_XIAOMI_ACCOUNT_USER_ID, self.getUserId());
                                values.put("alias_nick", self.getAliasNick());
                                values.put("miliao_nick", self.getMiliaoNick());
                                values.put("miliao_icon_url", self.getMiliaoIconUrl());
                                synchronized (GalleryCloudUtils.USER_INFO_URI) {
                                    if (GalleryUtils.safeUpdate(GalleryCloudUtils.USER_INFO_URI, values, "user_id=?", new String[]{sSelf.getUserId()}) == 0) {
                                        GalleryUtils.safeInsert(GalleryCloudUtils.USER_INFO_URI, values);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            userInfo = sSelf;
        }
        return userInfo;
    }

    public static String myName() {
        UserInfo info = self();
        if (info != null) {
            return info.getDisplayName();
        }
        return GalleryCloudUtils.getAccountName();
    }

    private static String readCache(String serverId, String dataColumn, String deadlineColumn, int timeOut) {
        Context context = GalleryApp.sGetAndroidContext();
        long current = System.currentTimeMillis();
        Cursor c = context.getContentResolver().query(CloudUtils.getLimitUri(GalleryCloudUtils.CLOUD_CACHE_URI, 1), new String[]{dataColumn}, String.format(Locale.US, "(%s=?) AND (%s<%d) AND (%s>%d) AND (%s)", new Object[]{"serverId", deadlineColumn, Long.valueOf(((long) timeOut) + current), deadlineColumn, Long.valueOf(current), CloudUtils.sqlNotEmptyStr(dataColumn)}), new String[]{serverId}, null);
        if (c == null) {
            return null;
        }
        try {
            if (c.moveToFirst()) {
                String string = c.getString(0);
                return string;
            }
            c.close();
            return null;
        } finally {
            c.close();
        }
    }

    private static void persisitCache(String serverId, String dataColumn, String deadlineColumn, String data, int timeOut) {
        if (!TextUtils.isEmpty(data)) {
            ContentResolver resolver = GalleryApp.sGetAndroidContext().getContentResolver();
            ContentValues values = new ContentValues();
            values.put(dataColumn, data);
            values.put(deadlineColumn, Long.valueOf(System.currentTimeMillis() + ((long) timeOut)));
            if (resolver.update(GalleryCloudUtils.CLOUD_CACHE_URI, values, "serverId=?", new String[]{serverId}) == 0) {
                values.put("serverId", serverId);
                resolver.insert(GalleryCloudUtils.CLOUD_CACHE_URI, values);
            }
        }
    }

    private static <V> AsyncResult<V> execute(Callable<AsyncResult<V>> callable) {
        long start = SystemClock.uptimeMillis();
        String methodName = new Throwable().getStackTrace()[1].getMethodName();
        if (!ApplicationHelper.supportShare()) {
            return AsyncResult.create(-1);
        }
        AsyncResult<V> result;
        try {
            result = (AsyncResult) callable.call();
        } catch (Throwable t) {
            int err = GalleryErrorCode.fromThrowable(t);
            if (err == -105 && ((GalleryMiCloudServerException) t).getStatusCode() == 401) {
                requestSyncToHandleUnauthorized();
            }
            SyncLog.e("AlbumShareOperations", "Error code=" + err, t);
            result = AsyncResult.create(err);
        }
        SyncLog.d("AlbumShareOperations", String.format("result error=%d", new Object[]{Integer.valueOf(result.mError)}));
        return result;
    }

    private static void requestSyncToHandleUnauthorized() {
        SyncUtil.requestSync(GalleryApp.sGetAndroidContext());
    }
}
