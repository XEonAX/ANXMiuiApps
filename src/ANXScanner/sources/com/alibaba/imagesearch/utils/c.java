package com.alibaba.imagesearch.utils;

import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.Constants;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.imagesearch.Auction;
import com.alibaba.imagesearch.AuctionItem;
import com.alibaba.imagesearch.PailitaoSettings;
import com.alibaba.imagesearch.SearchResult;
import com.alibaba.imagesearch.a.a;
import com.alibaba.imagesearch.a.b;
import com.alibaba.wireless.security.open.SecurityGuardManager;
import com.alibaba.wireless.security.open.nocaptcha.INoCaptchaComponent;
import com.taobao.ma.analyze.api.MaAnalyzeAPI;
import com.taobao.ma.bar.parser.MaBarParSer;
import com.taobao.ma.qr.parser.Ma4GParSer;
import com.taobao.ma.qr.parser.MaDMParSer;
import com.taobao.ma.qr.parser.MaGen3ParSer;
import com.taobao.ma.qr.parser.MaQrParSer;
import com.taobao.ma.qr.parser.MaTBAntiFakeParSer;
import com.uploader.export.ITaskListener;
import com.uploader.export.ITaskResult;
import com.uploader.export.IUploaderEnvironment;
import com.uploader.export.IUploaderManager;
import com.uploader.export.IUploaderTask;
import com.uploader.export.TaskError;
import com.uploader.export.UploaderCreator;
import com.uploader.export.UploaderGlobal;
import com.uploader.portal.UploaderDependencyImpl;
import com.uploader.portal.UploaderEnvironmentImpl2;
import com.xiaomi.scanner.util.Util;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import mtopsdk.common.util.HttpHeaderConstant;
import org.json.JSONArray;
import org.json.JSONObject;

public class c {
    private static byte[] a;
    private static PailitaoSettings b;
    private static Object c;
    private static String d;
    private static IUploaderManager e;
    private static IUploaderTask f;

    public static String a(final com.alibaba.imagesearch.utils.b.c cVar, Rect rect) {
        int i = 0;
        if (cVar == null) {
            return "";
        }
        rect.left = cVar.c;
        rect.top = cVar.d;
        rect.right = cVar.e;
        rect.bottom = cVar.f;
        if (TextUtils.isEmpty(cVar.a)) {
            return "";
        }
        int i2 = 0;
        do {
            if (KernelContext.isInitOk == null || !KernelContext.isInitOk.booleanValue()) {
                PLog.searchLogE("baichuan sdk is not init waiting... tryouts = " + i2);
                try {
                    Thread.sleep(500);
                    i2++;
                } catch (InterruptedException e) {
                    PLog.searchLogE("InterruptedException happened e = " + e);
                    Thread.currentThread().interrupt();
                    return "";
                }
            }
            if (c == null) {
                c = new Object();
            }
            if (e == null) {
                e = UploaderCreator.get();
            }
            e.cancelAsync(f);
            d = null;
            IUploaderTask anonymousClass1 = new IUploaderTask() {
                @NonNull
                public String getBizType() {
                    return "imgsearch_baichuan";
                }

                @NonNull
                public String getFilePath() {
                    return cVar.a;
                }

                @NonNull
                public String getFileType() {
                    return "jpg";
                }

                @Nullable
                public Map<String, String> getMetaInfo() {
                    return null;
                }
            };
            f = anonymousClass1;
            PLog.similarLogD("upload uploadAsync");
            e.uploadAsync(anonymousClass1, new ITaskListener() {
                long a;

                public void onCancel(IUploaderTask iUploaderTask) {
                    b.a(cVar.a);
                }

                public void onFailure(IUploaderTask iUploaderTask, TaskError taskError) {
                    Map hashMap = new HashMap();
                    hashMap.put(INoCaptchaComponent.errorCode, taskError.code);
                    hashMap.put("errorMsg", taskError.info);
                    e.a("PailitaoHome", "uploadFailed", hashMap);
                    synchronized (c.c) {
                        PLog.similarLogE("upload onError: errCode = " + taskError.code + " errMsg = " + taskError.info);
                        c.d = "";
                        b.a(cVar.a);
                        c.c.notifyAll();
                    }
                }

                public void onPause(IUploaderTask iUploaderTask) {
                    PLog.similarLogD("upload onPause");
                }

                public void onProgress(IUploaderTask iUploaderTask, int i) {
                }

                public void onResume(IUploaderTask iUploaderTask) {
                    PLog.similarLogD("upload onResume");
                }

                public void onStart(IUploaderTask iUploaderTask) {
                    this.a = System.currentTimeMillis();
                    PLog.similarLogD("upload onStart");
                }

                public void onSuccess(IUploaderTask iUploaderTask, ITaskResult iTaskResult) {
                    c.d = iTaskResult.getFileUrl();
                    PLog.similarLogD("upload onFinish fileLocation = " + c.d);
                    try {
                        PLog.PerformanceLog("upload finish, use " + (System.currentTimeMillis() - this.a) + " ms fileSize = " + new File(cVar.a).length());
                    } catch (Throwable th) {
                    }
                    b.a(cVar.a);
                }

                public void onWait(IUploaderTask iUploaderTask) {
                    PLog.similarLogD("upload onWait");
                }
            }, null);
            synchronized (c) {
                do {
                    if (d != null) {
                        break;
                    }
                    try {
                        c.wait(500);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    i++;
                } while (i < 20);
                PLog.similarLogE("upload already wait 10 seconds, quit");
            }
            if (d == null) {
                e.cancelAsync(f);
                d = "";
            }
            return d;
        } while (i2 < 6);
        PLog.searchLogE("baichuan sdk init timeout");
        return "";
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!str.contains("alicdn")) {
            return str;
        }
        String str2 = "_\\d+x\\d+.jpg$";
        return str.replaceAll("_\\d+x\\d+.jpg$", "") + "_320x320.jpg";
    }

    public static String a(String str, Rect rect) {
        return a(b.a(AlibcContext.context, str), rect);
    }

    public static String a(String str, Map<String, String> map) {
        String b = b(str);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("https://market.m.taobao.com/app/s-nx-page/bc-imagesearch/p/index?");
        stringBuilder.append("tfskey=");
        stringBuilder.append(b);
        stringBuilder.append("&");
        stringBuilder.append("bizcode=");
        stringBuilder.append("imgsearch_baichuan");
        stringBuilder.append("&_bc_from_=" + c().getVendorId());
        stringBuilder.append("&psfrom=baichuan");
        if (!TextUtils.isEmpty(c().getTaokePid())) {
            stringBuilder.append("&taokePid=" + c().getTaokePid());
        }
        if (c().cpsOnly) {
            stringBuilder.append("&taoke_flag=1");
        }
        if (c().notInCN) {
            stringBuilder.append("&editionCode=notCN");
        }
        if (map != null) {
            stringBuilder.append("&pageConfig=" + Uri.encode(new JSONObject(map).toString()));
            if (map.containsKey("region")) {
                stringBuilder.append("&region=" + ((String) map.get("region")));
            }
        }
        PLog.d("getPailitaoH5QueryUrl = " + stringBuilder.toString());
        return stringBuilder.toString();
    }

    public static String a(byte[] bArr, Rect rect) {
        return a(b.a(AlibcContext.context, bArr), rect);
    }

    public static void a(Context context) {
        SecurityGuardManager.getInitializer().initializeAsync(context);
    }

    public static void a(Context context, WebView webView, boolean z) {
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setAppCachePath(context.getApplicationContext().getDir("cache", 0).getAbsolutePath());
        settings.setAllowFileAccess(false);
        if (VERSION.SDK_INT >= 17) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowContentAccess(false);
        }
        settings.setDefaultFixedFontSize(16);
        settings.setTextSize(TextSize.NORMAL);
        if (VERSION.SDK_INT >= 14) {
            settings.setTextZoom(100);
        }
        if (b.a(context)) {
            settings.setCacheMode(-1);
        } else {
            settings.setCacheMode(1);
        }
        settings.setBuiltInZoomControls(false);
        if (VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        }
        if (!z) {
            StringBuilder stringBuilder = new StringBuilder();
            Object userAgentString = settings.getUserAgentString();
            if (!TextUtils.isEmpty(userAgentString)) {
                stringBuilder.append(userAgentString);
            }
            stringBuilder.append(" tae_sdk_3.2.0");
            stringBuilder.append(" AliApp(BC/3.2.0)");
            stringBuilder.append(String.format(" AliBaichuan(%s/%s)", new Object[]{g(), "1.0.0"}));
            settings.setUserAgentString(stringBuilder.toString());
        }
    }

    public static void a(PailitaoSettings pailitaoSettings) {
        b = pailitaoSettings;
    }

    public static void a(SearchResult searchResult) {
        Map hashMap = new HashMap();
        String str = "";
        if (!(searchResult.auctions == null || searchResult.auctions.isEmpty())) {
            String str2;
            Iterator it = searchResult.auctions.iterator();
            while (true) {
                str2 = str;
                if (!it.hasNext()) {
                    break;
                }
                str = str2 + ((Auction) it.next()).auctionItem.itemId + ";";
            }
            if (!TextUtils.isEmpty(str2)) {
                hashMap.put("itemList", str2);
            }
        }
        e.a("PailitaoHome", "searchSimilar", hashMap);
    }

    public static void a(JSONObject jSONObject, SearchResult searchResult) {
        int i = 0;
        JSONObject optJSONObject = jSONObject.optJSONObject("pict_pp");
        Rect rect = null;
        if (optJSONObject != null) {
            Rect a = f.a(optJSONObject.optString("region"));
            JSONArray optJSONArray = optJSONObject.optJSONArray("category");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                String str = "";
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i2);
                    if (optJSONObject2 != null) {
                        str = str + optJSONObject2.optString("name") + ";";
                    }
                }
                searchResult.category = str;
            }
            rect = a;
        }
        searchResult.region = rect;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("itemsArray");
        if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
            PLog.similarLogE("itemArray is empty json = " + jSONObject);
        } else {
            while (i < optJSONArray2.length()) {
                JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i);
                if (optJSONObject3 != null) {
                    Auction auction = new Auction();
                    auction.auctionItem = new AuctionItem();
                    auction.auctionItem.title = optJSONObject3.optString(Constants.TITLE);
                    auction.auctionItem.url = optJSONObject3.optString("auctionURL");
                    if (!TextUtils.isEmpty(auction.auctionItem.url)) {
                        StringBuilder stringBuilder = new StringBuilder();
                        AuctionItem auctionItem = auction.auctionItem;
                        auctionItem.url = stringBuilder.append(auctionItem.url).append("&spm=a2141.8068109/").append(c().getVendorId()).append(".0.0").toString();
                    }
                    auction.auctionItem.itemId = optJSONObject3.optString("item_id");
                    auction.auctionItem.location = optJSONObject3.optString(HttpHeaderConstant.REDIRECT_LOCATION);
                    auction.auctionItem.thumbnail = a(optJSONObject3.optString("pic_path"));
                    auction.auctionItem.price = optJSONObject3.optString("price");
                    auction.auctionItem.sold = optJSONObject3.optString("sold");
                    auction.queryImage = searchResult.imageUrl;
                    arrayList.add(auction);
                }
                i++;
            }
        }
        searchResult.auctions = arrayList;
    }

    public static void a(byte[] bArr) {
        a = bArr;
    }

    public static boolean a(String str, WebView webView, a aVar) {
        PLog.d("handleJsBridge message = " + str);
        b d = d(str);
        return !TextUtils.equals(d.a, "PSFuncBridge") ? false : aVar.execute(d.b, d.c, new AlibcJsCallbackContext(webView));
    }

    public static byte[] a() {
        return a;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] split = TextUtils.split(str, "/");
        return split[split.length - 1];
    }

    public static void b() {
        a = null;
    }

    public static void b(Context context) {
        String appKey = AlibcTradeCommon.getAppKey();
        PLog.initLogD("initAUS appKey = " + appKey);
        UploaderGlobal.setContext(context);
        UploaderGlobal.putElement(0, appKey);
        UploaderGlobal.putElement(1, appKey);
        UploaderGlobal.putElement(2, appKey);
        IUploaderEnvironment uploaderEnvironmentImpl2 = new UploaderEnvironmentImpl2(context);
        uploaderEnvironmentImpl2.setEnvironment(0);
        UploaderGlobal.putDependency(new UploaderDependencyImpl(context, uploaderEnvironmentImpl2));
    }

    public static final PailitaoSettings c() {
        return b == null ? PailitaoSettings.defaultSettings() : b;
    }

    public static boolean c(String str) {
        return (!TextUtils.isEmpty(str) && str.startsWith("http")) ? (str.toLowerCase().endsWith(Util.JPEG_POSTFIX) || str.toLowerCase().endsWith("jpeg")) && str.contains("alicdn") : false;
    }

    public static b d(String str) {
        Uri parse = Uri.parse(str);
        String host = parse.getHost();
        int port = parse.getPort();
        String lastPathSegment = parse.getLastPathSegment();
        parse.getQuery();
        int indexOf = str.indexOf("?");
        String substring = indexOf == -1 ? null : str.substring(indexOf + 1);
        b bVar = new b();
        bVar.b = lastPathSegment;
        bVar.a = host;
        bVar.c = substring;
        bVar.d = port;
        return bVar;
    }

    public static void d() {
        MaAnalyzeAPI.removeAllResultParser();
        MaAnalyzeAPI.registerResultParser(new MaBarParSer());
        MaAnalyzeAPI.registerResultParser(new MaQrParSer());
        MaAnalyzeAPI.registerResultParser(new MaTBAntiFakeParSer());
        MaAnalyzeAPI.registerResultParser(new Ma4GParSer());
        MaAnalyzeAPI.registerResultParser(new MaDMParSer());
        MaAnalyzeAPI.registerResultParser(new MaGen3ParSer());
    }

    private static String g() {
        return String.format("2014_%s_%s@baichuan_android_%s", new Object[]{"albbTradeConfig", AlibcTradeCommon.getAppKey(), "3.2.0"});
    }
}
