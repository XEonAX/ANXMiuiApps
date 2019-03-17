package com.alibaba.baichuan.trade.biz.auth;

import android.content.Intent;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.StringUtils;
import com.taobao.tao.remotebusiness.auth.RemoteAuth;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class AlibcAuth {
    public static final int ERR_CODE = 104;
    public static final String ERR_MSG = "授权服务初始化失败";
    static Map<Integer, a> a = new ConcurrentHashMap();
    private static AlibcAuthRemote b;

    public static class a {
        public String a;
        public String b;
        public Set<String> c;
        public boolean d;
        public AlibcAuthListener e;

        public a(String str, boolean z, AlibcAuthListener alibcAuthListener) {
            this.b = str;
            this.d = z;
            this.e = alibcAuthListener;
        }
    }

    static class b implements NetworkRequestListener {
        private AlibcAuthListener a;
        private String b;
        private boolean c;

        public b(AlibcAuthListener alibcAuthListener, String str, boolean z) {
            this.a = alibcAuthListener;
            this.b = str;
            this.c = z;
        }

        public void onError(int i, NetworkResponse networkResponse) {
            if (this.a != null) {
                this.a.onError(networkResponse.errorCode, networkResponse.errorMsg);
            }
            AlibcAuth.d(networkResponse.errorCode);
        }

        public void onSuccess(int i, NetworkResponse networkResponse) {
            Map map = networkResponse.data;
            if (map == null || !networkResponse.isSuccess) {
                if (this.a != null) {
                    this.a.onError(networkResponse.errorCode, networkResponse.errorMsg);
                }
                AlibcAuth.d(networkResponse.errorCode);
                return;
            }
            AlibcUserTracker.getInstance().sendUseabilitySuccess(AliAuthError.MODEL_NAME_COMPONENT, AliAuthError.MONITOR_POINT_MTOP_AUTH, AlibcUserTradeHelper.getArgs());
            if (!this.c || TextUtils.equals(this.b, AlibcAuthInfo.getInstance().getAuthOldToken())) {
                AlibcAuthInfo.getInstance().setToken(map.get("token").toString(), StringUtils.obj2Long(map.get("expires")).longValue());
                if (this.a != null) {
                    this.a.onSuccess();
                }
            } else if (this.a != null) {
                this.a.onSuccess();
            }
        }
    }

    static List<String> a(String str) {
        return b != null ? b.getHintList(str) : null;
    }

    private static void a(int i) {
        Intent intent = new Intent(AlibcTradeCommon.context, AlibcAuthActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("authId", i);
        AlibcTradeCommon.context.startActivity(intent);
    }

    static void a(String str, AlibcAuthListener alibcAuthListener, boolean z, boolean z2) {
        new a(str, alibcAuthListener, z2, z).execute(new String[0]);
    }

    static void a(Set<String> set, AlibcAuthListener alibcAuthListener, boolean z) {
        String authOldToken = AlibcAuthInfo.getInstance().getAuthOldToken();
        if (set != null || !TextUtils.isEmpty(authOldToken)) {
            new com.alibaba.baichuan.trade.biz.auth.a.a().a(set, authOldToken, new b(alibcAuthListener, authOldToken, z));
        } else if (alibcAuthListener != null) {
            alibcAuthListener.onError(AliAuthError.HINTLIST_NULL.code, AliAuthError.HINTLIST_NULL.msg);
        }
    }

    public static void auth(String str, String str2, boolean z, AlibcAuthListener alibcAuthListener) {
        List c = c(str2);
        if (c == null || c.size() <= 0) {
            a aVar = new a(str2, z, alibcAuthListener);
            aVar.a = str;
            int hashCode = aVar.hashCode();
            a.put(Integer.valueOf(hashCode), aVar);
            if (z) {
                a(hashCode);
                return;
            } else {
                a(str, alibcAuthListener, false, true);
                return;
            }
        }
        auth(c, null, z, alibcAuthListener);
    }

    public static void auth(List<String> list, String str, boolean z, AlibcAuthListener alibcAuthListener) {
        Collection c = c(str);
        Set hashSet = c == null ? null : new HashSet(c);
        if (hashSet != null) {
            hashSet.addAll(list);
        } else {
            hashSet = list == null ? new HashSet() : new HashSet(list);
        }
        if (hashSet == null || hashSet.size() <= 0) {
            alibcAuthListener.onError(AliAuthError.HINTLIST_NULL.code, AliAuthError.HINTLIST_NULL.msg);
            return;
        }
        a aVar = new a(str, z, alibcAuthListener);
        aVar.c = hashSet;
        int hashCode = aVar.hashCode();
        a.put(Integer.valueOf(hashCode), aVar);
        if (z) {
            a(hashCode);
        } else {
            a(hashSet, alibcAuthListener, false);
        }
    }

    public static void authRefresh() {
        a(null, null, true);
    }

    private static List<String> c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<String> arrayList = new ArrayList();
        arrayList.add(str);
        return arrayList;
    }

    public static void cleanAuth() {
        AlibcAuthInfo.getInstance().cleanToken();
    }

    private static void d(String str) {
        String str2 = (String) AliAuthError.mMtopErrorCode.get(str);
        AlibcUserTracker.getInstance().sendUseabilityFailure(AliAuthError.MODEL_NAME_COMPONENT, AliAuthError.MONITOR_POINT_MTOP_AUTH, AlibcUserTradeHelper.getArgs(), AliAuthError.ERRNO_COMPONENT_AUTH_FAIL + (str2 == null ? "00" : str2), "授权失败");
    }

    public static boolean init() {
        AlibcLogger.d("Alibc", "AlibcAuth init");
        RemoteAuth.setAuthImpl(c.a());
        return true;
    }

    public static void postHintList(String str, String str2) {
        List c = c(str2);
        if (b != null && c != null) {
            b.postHintList(str, c);
        }
    }

    public static void registAuthEvent(AlibcAuthRemote alibcAuthRemote) {
        b = alibcAuthRemote;
    }

    public static void unregistAuthEvent() {
        b = null;
    }
}
