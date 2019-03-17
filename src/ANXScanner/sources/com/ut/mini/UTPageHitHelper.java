package com.ut.mini;

import android.app.Activity;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.mtl.log.c;
import com.alibaba.mtl.log.d.i;
import com.ut.mini.UTHitBuilders.UTPageHitBuilder;
import com.ut.mini.base.UTMIVariables;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;

public class UTPageHitHelper {
    private static UTPageHitHelper a = new UTPageHitHelper();
    private Map<String, String> A = new HashMap();
    private Map<String, UTPageEventObject> B = new HashMap();
    private Map<String, String> C = new HashMap();
    private Map<Object, String> D = new HashMap();
    private boolean O = false;
    /* renamed from: a */
    private Queue<UTPageEventObject> f94a = new LinkedList();
    private String ag = null;
    private String ah = null;

    public static class UTPageEventObject {
        private long A = 0;
        /* renamed from: A */
        private Map<String, String> f95A = new HashMap();
        private boolean P = false;
        private boolean Q = false;
        private boolean R = false;
        private Uri a = null;
        /* renamed from: a */
        private UTPageStatus f96a = null;
        private String ai = null;
        private String aj = null;
        private String ak = null;

        public void setCacheKey(String aCacheKey) {
            this.ak = aCacheKey;
        }

        public String getCacheKey() {
            return this.ak;
        }

        public void resetPropertiesWithoutSkipFlagAndH5Flag() {
            this.A = new HashMap();
            this.A = 0;
            this.a = null;
            this.ai = null;
            this.aj = null;
            if (this.a == null || this.a != UTPageStatus.UT_H5_IN_WebView) {
                this.a = null;
            }
            this.P = false;
            this.R = false;
        }

        public boolean isH5Called() {
            return this.R;
        }

        public void setH5Called() {
            this.R = true;
        }

        public void setToSkipPage() {
            this.Q = true;
        }

        public boolean isSkipPage() {
            return this.Q;
        }

        public void setPageAppearCalled() {
            this.P = true;
        }

        public boolean isPageAppearCalled() {
            return this.P;
        }

        public void setPageStatus(UTPageStatus aPageStatus) {
            this.a = aPageStatus;
        }

        public UTPageStatus getPageStatus() {
            return this.a;
        }

        public Map<String, String> getPageProperties() {
            return this.A;
        }

        public void setPageProperties(Map<String, String> aPageProperties) {
            this.A = aPageProperties;
        }

        public long getPageStayTimstamp() {
            return this.A;
        }

        public void setPageStayTimstamp(long aPageStayTimstamp) {
            this.A = aPageStayTimstamp;
        }

        public Uri getPageUrl() {
            return this.a;
        }

        public void setPageUrl(Uri aPageUrl) {
            this.a = aPageUrl;
        }

        public void setPageName(String aPageName) {
            this.ai = aPageName;
        }

        public String getPageName() {
            return this.ai;
        }

        public void setRefPage(String aRefPage) {
            this.aj = aRefPage;
        }

        public String getRefPage() {
            return this.aj;
        }
    }

    public static UTPageHitHelper getInstance() {
        return a;
    }

    synchronized Map<String, String> c() {
        Map<String, String> map;
        if (this.C == null || this.C.size() <= 0) {
            map = null;
        } else {
            map = new HashMap();
            map.putAll(this.C);
            this.C.clear();
        }
        return map;
    }

    synchronized void a(UTPageEventObject uTPageEventObject) {
        uTPageEventObject.resetPropertiesWithoutSkipFlagAndH5Flag();
        if (!this.a.contains(uTPageEventObject)) {
            this.a.add(uTPageEventObject);
        }
        if (this.a.size() > 200) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= 100) {
                    break;
                }
                UTPageEventObject uTPageEventObject2 = (UTPageEventObject) this.a.poll();
                if (uTPageEventObject2 != null && this.B.containsKey(uTPageEventObject2.getCacheKey())) {
                    this.B.remove(uTPageEventObject2.getCacheKey());
                }
                i = i2 + 1;
            }
        }
    }

    @Deprecated
    public synchronized void turnOffAutoPageTrack() {
        this.O = true;
    }

    public String getCurrentPageName() {
        return this.ah;
    }

    void pageAppearByAuto(Activity aActivity) {
        if (!this.O) {
            pageAppear(aActivity);
        }
    }

    /* renamed from: a */
    private String m29a(Object obj) {
        String str;
        if (obj instanceof String) {
            str = (String) obj;
        } else {
            str = obj.getClass().getSimpleName();
        }
        return str + obj.hashCode();
    }

    /* renamed from: a */
    synchronized boolean m32a(Object obj) {
        boolean z;
        if (obj != null) {
            UTPageEventObject a = a(obj);
            if (a.getPageStatus() != null && a.getPageStatus() == UTPageStatus.UT_H5_IN_WebView) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    synchronized void m31a(Object obj) {
        if (obj != null) {
            UTPageEventObject a = a(obj);
            if (a.getPageStatus() != null) {
                a.setH5Called();
            }
        }
    }

    private synchronized UTPageEventObject a(Object obj) {
        UTPageEventObject uTPageEventObject;
        String a = a(obj);
        if (this.B.containsKey(a)) {
            uTPageEventObject = (UTPageEventObject) this.B.get(a);
        } else {
            uTPageEventObject = new UTPageEventObject();
            this.B.put(a, uTPageEventObject);
            uTPageEventObject.setCacheKey(a);
        }
        return uTPageEventObject;
    }

    private synchronized void a(String str, UTPageEventObject uTPageEventObject) {
        this.B.put(str, uTPageEventObject);
    }

    private synchronized void b(UTPageEventObject uTPageEventObject) {
        if (this.B.containsKey(uTPageEventObject.getCacheKey())) {
            this.B.remove(uTPageEventObject.getCacheKey());
        }
    }

    /* renamed from: b */
    private synchronized void m30b(Object obj) {
        String a = a(obj);
        if (this.B.containsKey(a)) {
            this.B.remove(a);
        }
    }

    @Deprecated
    public synchronized void pageAppear(Object aPageObject) {
        a(aPageObject, null, false);
    }

    synchronized void a(Object obj, String str, boolean z) {
        if (obj != null) {
            String a = a(obj);
            if (a == null || !a.equals(this.ag)) {
                if (this.ag != null) {
                    i.a("lost 2001", "Last page requires leave(" + this.ag + ").");
                }
                UTPageEventObject a2 = a(obj);
                if (z || !a2.isSkipPage()) {
                    a = UTMIVariables.getInstance().getH5Url();
                    if (a != null) {
                        try {
                            this.A.put("spm", Uri.parse(a).getQueryParameter("spm"));
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        UTMIVariables.getInstance().setH5Url(null);
                    }
                    a = b(obj);
                    if (!TextUtils.isEmpty(str)) {
                        a = str;
                    }
                    if (!TextUtils.isEmpty(a2.getPageName())) {
                        a = a2.getPageName();
                    }
                    this.ah = a;
                    a2.setPageName(a);
                    a2.setPageStayTimstamp(SystemClock.elapsedRealtime());
                    a2.setRefPage(UTMIVariables.getInstance().getRefPage());
                    a2.setPageAppearCalled();
                    if (this.C != null) {
                        Map pageProperties = a2.getPageProperties();
                        if (pageProperties == null) {
                            a2.setPageProperties(this.C);
                        } else {
                            Map hashMap = new HashMap();
                            hashMap.putAll(pageProperties);
                            hashMap.putAll(this.C);
                            a2.setPageProperties(hashMap);
                        }
                    }
                    this.C = null;
                    this.ag = a(obj);
                    b(a2);
                    a(a(obj), a2);
                } else {
                    i.a("skip page[pageAppear]", "page name:" + obj.getClass().getSimpleName());
                }
            }
        } else {
            i.a("pageAppear", (Object) "The page object should not be null");
        }
    }

    synchronized void pageAppear(Object aPageObject, String aCustomPageName) {
        a(aPageObject, aCustomPageName, false);
    }

    @Deprecated
    public synchronized void updatePageProperties(Map<String, String> aProperties) {
        if (aProperties != null) {
            this.A.putAll(aProperties);
        }
    }

    synchronized void updatePageProperties(Object aPageObject, Map<String, String> aProperties) {
        if (!(aPageObject == null || aProperties == null)) {
            if (aProperties.size() != 0) {
                Map hashMap = new HashMap();
                hashMap.putAll(aProperties);
                UTPageEventObject a = a(aPageObject);
                Map pageProperties = a.getPageProperties();
                if (pageProperties == null) {
                    a.setPageProperties(hashMap);
                } else {
                    Map hashMap2 = new HashMap();
                    hashMap2.putAll(pageProperties);
                    hashMap2.putAll(hashMap);
                    a.setPageProperties(hashMap2);
                }
            }
        }
        i.a("updatePageProperties", (Object) "failed to update project, parameters should not be null and the map should not be empty");
    }

    synchronized void updatePageName(Object aPageObject, String aPageName) {
        if (aPageObject != null) {
            if (!TextUtils.isEmpty(aPageName)) {
                a(aPageObject).setPageName(aPageName);
                this.ah = aPageName;
            }
        }
    }

    synchronized void updatePageUrl(Object aPageObject, Uri aUrl) {
        if (!(aPageObject == null || aUrl == null)) {
            Log.i("url", "url" + aUrl.toString());
            a(aPageObject).setPageUrl(aUrl);
        }
    }

    synchronized void updatePageStatus(Object aPageObject, UTPageStatus aPageStatus) {
        if (!(aPageObject == null || aPageStatus == null)) {
            a(aPageObject).setPageStatus(aPageStatus);
        }
    }

    synchronized void updateNextPageProperties(Map<String, String> aProperties) {
        if (aProperties != null) {
            Map hashMap = new HashMap();
            hashMap.putAll(aProperties);
            this.C = hashMap;
        }
    }

    void pageDisAppearByAuto(Activity aActivity) {
        if (!this.O) {
            pageDisAppear(aActivity);
        }
    }

    synchronized void skipPage(Object aPageObject) {
        if (aPageObject != null) {
            a(aPageObject).setToSkipPage();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:63:0x00e9 A:{Catch:{ UnsupportedEncodingException -> 0x0176, Throwable -> 0x017f }} */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0117 A:{Catch:{ UnsupportedEncodingException -> 0x0176, Throwable -> 0x017f }} */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0126 A:{Catch:{ UnsupportedEncodingException -> 0x0176, Throwable -> 0x017f }} */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0133 A:{Catch:{ UnsupportedEncodingException -> 0x0176, Throwable -> 0x017f }} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00bc A:{SYNTHETIC, Splitter: B:54:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x0184  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0157  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @Deprecated
    public synchronized void pageDisAppear(Object aPageObject) {
        if (aPageObject == null) {
            i.a("pageDisAppear", (Object) "The page object should not be null");
        } else if (this.ag != null) {
            UTPageEventObject a = a(aPageObject);
            if (!a.isPageAppearCalled()) {
                i.a("UT", "Please call pageAppear first(" + b(aPageObject) + ").");
            } else if (a.getPageStatus() != null && UTPageStatus.UT_H5_IN_WebView == a.getPageStatus() && a.isH5Called()) {
                a(a);
            } else {
                Map map;
                String str;
                String str2;
                Uri pageUrl;
                UTPageHitBuilder uTPageHitBuilder;
                UTTracker defaultTracker;
                long elapsedRealtime = SystemClock.elapsedRealtime() - a.getPageStayTimstamp();
                if (a.getPageUrl() == null && (aPageObject instanceof Activity) && ((Activity) aPageObject).getIntent() != null) {
                    a.setPageUrl(((Activity) aPageObject).getIntent().getData());
                }
                String pageName = a.getPageName();
                String refPage = a.getRefPage();
                if (refPage == null || refPage.length() == 0) {
                    refPage = "-";
                }
                Map map2 = this.A;
                if (map2 == null) {
                    map2 = new HashMap();
                }
                if (a.getPageProperties() != null) {
                    map2.putAll(a.getPageProperties());
                }
                if (aPageObject instanceof IUTPageTrack) {
                    IUTPageTrack iUTPageTrack = (IUTPageTrack) aPageObject;
                    CharSequence referPage = iUTPageTrack.getReferPage();
                    if (!TextUtils.isEmpty(referPage)) {
                        refPage = referPage;
                    }
                    Map pageProperties = iUTPageTrack.getPageProperties();
                    if (pageProperties != null && pageProperties.size() > 0) {
                        this.A.putAll(pageProperties);
                        map2 = this.A;
                    }
                    CharSequence pageName2 = iUTPageTrack.getPageName();
                    if (!TextUtils.isEmpty(pageName2)) {
                        map = map2;
                        str = refPage;
                        str2 = pageName2;
                        pageUrl = a.getPageUrl();
                        if (pageUrl != null) {
                            Map hashMap;
                            CharSequence queryParameter;
                            Uri uri;
                            Object queryParameter2;
                            Object obj;
                            try {
                                hashMap = new HashMap();
                                queryParameter = pageUrl.getQueryParameter("spm");
                                if (TextUtils.isEmpty(queryParameter)) {
                                    pageUrl = Uri.parse(URLDecoder.decode(pageUrl.toString(), "UTF-8"));
                                    uri = pageUrl;
                                    queryParameter2 = pageUrl.getQueryParameter("spm");
                                    if (!TextUtils.isEmpty(queryParameter2)) {
                                        obj = null;
                                        if (this.D.containsKey(aPageObject) && queryParameter2.equals(this.D.get(aPageObject))) {
                                            obj = 1;
                                        }
                                        if (obj == null) {
                                            hashMap.put("spm", queryParameter2);
                                            this.D.put(aPageObject, queryParameter2);
                                        }
                                    }
                                    pageName2 = uri.getQueryParameter(AlibcConstants.SCM);
                                    if (!TextUtils.isEmpty(pageName2)) {
                                        hashMap.put(AlibcConstants.SCM, pageName2);
                                    }
                                    obj = a(uri);
                                    if (!TextUtils.isEmpty(obj)) {
                                        c.a().e(obj);
                                    }
                                    if (hashMap.size() > 0) {
                                        map.putAll(hashMap);
                                    }
                                }
                            } catch (UnsupportedEncodingException e) {
                                e.printStackTrace();
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                            CharSequence charSequence = queryParameter;
                            uri = pageUrl;
                            CharSequence queryParameter22 = charSequence;
                            if (TextUtils.isEmpty(queryParameter22)) {
                            }
                            pageName2 = uri.getQueryParameter(AlibcConstants.SCM);
                            if (TextUtils.isEmpty(pageName2)) {
                            }
                            obj = a(uri);
                            if (TextUtils.isEmpty(obj)) {
                            }
                            if (hashMap.size() > 0) {
                            }
                        }
                        uTPageHitBuilder = new UTPageHitBuilder(str2);
                        uTPageHitBuilder.setReferPage(str).setDurationOnPage(elapsedRealtime).setProperties(map);
                        UTMIVariables.getInstance().setRefPage(str2);
                        defaultTracker = UTAnalytics.getInstance().getDefaultTracker();
                        if (defaultTracker == null) {
                            defaultTracker.send(uTPageHitBuilder.build());
                        } else {
                            i.a("Record page event error", (Object) "Fatal Error,must call setRequestAuthentication method first.");
                        }
                    }
                }
                str = refPage;
                str2 = pageName;
                map = map2;
                pageUrl = a.getPageUrl();
                if (pageUrl != null) {
                }
                uTPageHitBuilder = new UTPageHitBuilder(str2);
                uTPageHitBuilder.setReferPage(str).setDurationOnPage(elapsedRealtime).setProperties(map);
                UTMIVariables.getInstance().setRefPage(str2);
                defaultTracker = UTAnalytics.getInstance().getDefaultTracker();
                if (defaultTracker == null) {
                }
            }
            this.A = new HashMap();
            if (a.isSkipPage()) {
                a(a);
            } else if (a.getPageStatus() == null || UTPageStatus.UT_H5_IN_WebView != a.getPageStatus()) {
                b(aPageObject);
            } else {
                a(a);
            }
            this.ag = null;
            this.ah = null;
        }
    }

    private static String a(Uri uri) {
        if (uri != null) {
            List<String> queryParameters = uri.getQueryParameters(AlibcConstants.TTID);
            if (queryParameters != null) {
                for (String str : queryParameters) {
                    if (!str.contains("@") && !str.contains("%40")) {
                        return str;
                    }
                }
            }
        }
        return null;
    }

    private static String b(Object obj) {
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName == null || !simpleName.toLowerCase().endsWith("activity")) {
            return simpleName;
        }
        return simpleName.substring(0, simpleName.length() - 8);
    }
}
