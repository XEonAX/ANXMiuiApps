package com.ali.auth.third.core.task;

import android.os.AsyncTask;
import android.webkit.CookieSyncManager;
import com.ali.auth.third.core.callback.InitResultCallback;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.device.DeviceInfo;
import com.ali.auth.third.core.exception.AlibabaSDKException;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.ali.auth.third.core.service.CredentialService;
import com.ali.auth.third.core.service.MemberExecutorService;
import com.ali.auth.third.core.service.RpcService;
import com.ali.auth.third.core.service.StorageService;
import com.ali.auth.third.core.service.UserTrackerService;
import com.ali.auth.third.core.service.impl.CredentialManager;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.core.util.ReflectionUtils;
import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;
import java.io.File;
import java.util.Collections;
import java.util.concurrent.ExecutorService;

public class a implements Runnable {
    private InitResultCallback a;
    private Integer b;

    public a(InitResultCallback initResultCallback, Integer num) {
        this.a = initResultCallback;
        this.b = num;
    }

    private Object a(String str, String[] strArr, Object[] objArr) {
        try {
            return ReflectionUtils.newInstance(str, strArr, objArr);
        } catch (NoSuchMethodError e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean a(com.ali.auth.third.core.registry.a aVar) {
        Object obj;
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "registerStorage");
        try {
            Class.forName("com.ali.auth.third.securityguard.SecurityGuardWrapper");
            try {
                KernelContext.isMini = false;
                KernelContext.sdkVersion = KernelContext.SDK_VERSION_STD;
                obj = 1;
            } catch (Throwable th) {
                int obj2 = 1;
            }
        } catch (Throwable th2) {
            obj2 = null;
        }
        if (obj2 != null) {
            try {
                obj2 = a("com.ali.auth.third.securityguard.SecurityGuardWrapper", null, null);
            } catch (NoSuchMethodError e) {
                e.printStackTrace();
                return false;
            }
        }
        obj2 = a("com.ali.auth.third.core.storage.CommonStorageServiceImpl", null, null);
        aVar.a(new Class[]{StorageService.class}, obj2, null);
        KernelContext.storageService = (StorageService) aVar.a(StorageService.class, null);
        return true;
    }

    private boolean b(com.ali.auth.third.core.registry.a aVar) {
        boolean z;
        Object a;
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "registerRpc");
        try {
            Class.forName("com.ali.auth.third.mtop.rpc.impl.MtopRpcServiceImpl");
            z = true;
        } catch (Throwable th) {
            z = false;
        }
        if (z) {
            try {
                a = a("com.ali.auth.third.mtop.rpc.impl.MtopRpcServiceImpl", null, null);
            } catch (NoSuchMethodError e) {
                e.printStackTrace();
                return false;
            }
        }
        a = a("com.ali.auth.third.core.rpc.CommRpcServiceImpl", null, null);
        aVar.a(new Class[]{RpcService.class}, a, null);
        return true;
    }

    private void c() {
        DeviceInfo.init(KernelContext.context);
    }

    private boolean c(com.ali.auth.third.core.registry.a aVar) {
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "registerUserTrack");
        try {
            boolean z;
            String str = "com.ali.auth.third.ut.UserTrackerImpl";
            try {
                Class.forName(str);
                z = true;
            } catch (Throwable th) {
                z = false;
            }
            aVar.a(new Class[]{UserTrackerService.class}, z ? a(str, null, null) : a("com.ali.auth.third.core.ut.UserTracer", null, null), null);
            return true;
        } catch (NoSuchMethodError e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean d() {
        try {
            Class.forName(AsyncTask.class.getName());
        } catch (Exception e) {
        }
        KernelContext.wrapServiceRegistry();
        ConfigManager.getInstance().init(this.b.intValue());
        com.ali.auth.third.core.registry.a aVar = KernelContext.serviceRegistry;
        if (!b(aVar) || !a(aVar) || !c(aVar)) {
            return false;
        }
        aVar.a(new Class[]{MemberExecutorService.class, ExecutorService.class}, KernelContext.executorService, Collections.singletonMap(Constants.PLUGIN_VENDOR_KEY, "kernel"));
        aVar.a(new Class[]{CredentialService.class}, CredentialManager.INSTANCE, Collections.singletonMap("scop", "system"));
        KernelContext.credentialService = (CredentialService) aVar.a(CredentialService.class, null);
        boolean z = e() || f();
        if (!KernelContext.isMini) {
            g();
        }
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "INIT SUCCESS");
        return z;
    }

    private boolean e() {
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "register login service");
        try {
            ReflectionUtils.invoke("com.ali.auth.third.login.LoginLifecycleAdapter", InitMonitorPoint.MONITOR_POINT, null, Class.forName("com.ali.auth.third.login.LoginLifecycleAdapter"), null);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private boolean f() {
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "register offline login service");
        try {
            ReflectionUtils.invoke("com.ali.auth.third.offline.login.LoginLifecycleAdapter", InitMonitorPoint.MONITOR_POINT, null, Class.forName("com.ali.auth.third.offline.login.LoginLifecycleAdapter"), null);
            KernelContext.supportOfflineLogin = true;
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private boolean g() {
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "register account link service");
        try {
            ReflectionUtils.invoke("com.ali.auth.third.accountlink.AccountLinkLifecycleAdapter", InitMonitorPoint.MONITOR_POINT, null, Class.forName("com.ali.auth.third.accountlink.AccountLinkLifecycleAdapter"), null);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private void h() {
        try {
            long i = i();
            SDKLogger.e(InitMonitorPoint.MONITOR_POINT, "timeStamp=" + i);
            KernelContext.timestamp = i;
        } catch (Throwable e) {
            SDKLogger.e(InitMonitorPoint.MONITOR_POINT, e.getMessage(), e);
        }
        if (a()) {
            KernelContext.executorService.postUITask(new Runnable() {
                public void run() {
                    if (a.this.a != null) {
                        a.this.a.onSuccess();
                    }
                }
            });
            KernelContext.isInitOk = Boolean.valueOf(true);
            SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "INIT SUCCESS");
            return;
        }
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, " INIT FAILURE");
        KernelContext.executorService.postUITask(new Runnable() {
            public void run() {
                if (a.this.a != null) {
                    a.this.a.onFailure(-1, "service register fail");
                }
            }
        });
    }

    private long i() {
        File file = new File(KernelContext.context.getFilesDir().getAbsolutePath() + File.separator + "timestamp");
        if (file.exists()) {
            return file.lastModified();
        }
        try {
            file.createNewFile();
            return file.lastModified();
        } catch (Throwable e) {
            SDKLogger.e(InitMonitorPoint.MONITOR_POINT, e.getMessage(), e);
            return 0;
        }
    }

    protected void a(Throwable th) {
        int i;
        String commonUtils;
        KernelContext.isInitOk = Boolean.valueOf(false);
        if (!(th instanceof AlibabaSDKException) || ((AlibabaSDKException) th).getSDKMessage() == null) {
            i = KernelMessageConstants.GENERIC_SYSTEM_ERROR;
            commonUtils = CommonUtils.toString(th);
        } else {
            Message sDKMessage = ((AlibabaSDKException) th).getSDKMessage();
            i = sDKMessage.code;
            commonUtils = sDKMessage.message;
        }
        CommonUtils.onFailure(this.a, i, commonUtils);
    }

    public boolean a() {
        SDKLogger.d(InitMonitorPoint.MONITOR_POINT, "sdk version = " + ConfigManager.SDK_VERSION.toString());
        c();
        if (KernelContext.syncInitialized) {
            return true;
        }
        try {
            CookieSyncManager.createInstance(KernelContext.getApplicationContext());
            if (d()) {
                KernelContext.syncInitialized = true;
                return true;
            }
        } catch (Throwable th) {
            SDKLogger.e(InitMonitorPoint.MONITOR_POINT, "fail to sync start", th);
            a(th);
        }
        return false;
    }

    protected void b() {
        KernelContext.initLock.unlock();
    }

    public void run() {
        try {
            KernelContext.initLock.lock();
            h();
        } catch (Throwable th) {
            SDKLogger.e(InitMonitorPoint.MONITOR_POINT, th.getMessage(), th);
            a(th);
        } finally {
            b();
        }
    }
}
