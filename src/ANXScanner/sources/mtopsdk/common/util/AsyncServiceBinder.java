package mtopsdk.common.util;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Method;
import mtopsdk.common.util.TBSdkLog.LogEnable;

public abstract class AsyncServiceBinder<T extends IInterface> {
    public static final String TAG = "mtopsdk.AsyncServiceBinder";
    private ServiceConnection conn = new ServiceConnection() {
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (AsyncServiceBinder.this.lock) {
                AsyncServiceBinder.this.service = null;
            }
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (AsyncServiceBinder.this.lock) {
                if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                    TBSdkLog.d(AsyncServiceBinder.TAG, "[onServiceConnected] Service connected called. interfaceName =" + AsyncServiceBinder.this.getInterfaceName());
                }
                try {
                    for (Class cls : AsyncServiceBinder.this.interfaceCls.getDeclaredClasses()) {
                        if (cls.getSimpleName().equals("Stub")) {
                            AsyncServiceBinder.this.service = (IInterface) cls.getDeclaredMethod("asInterface", new Class[]{IBinder.class}).invoke(cls, new Object[]{iBinder});
                        }
                    }
                } catch (Exception e) {
                    if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                        TBSdkLog.w(AsyncServiceBinder.TAG, "[onServiceConnected] Service bind failed. interfaceName=" + AsyncServiceBinder.this.getInterfaceName());
                    }
                }
                if (AsyncServiceBinder.this.service != null) {
                    AsyncServiceBinder.this.afterAsyncBind();
                }
            }
        }
    };
    private Class<? extends IInterface> interfaceCls;
    private Object lock = new Object();
    protected volatile T service = null;
    private Class<? extends Service> serviceCls;

    protected abstract void afterAsyncBind();

    public AsyncServiceBinder(Class<? extends IInterface> cls, Class<? extends Service> cls2) {
        this.interfaceCls = cls;
        this.serviceCls = cls2;
    }

    public void asyncBind(Context context) {
        Intent intent;
        boolean bindService;
        if (this.service == null) {
            if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                TBSdkLog.d(TAG, "[asyncBind]try to bind service for " + getInterfaceName());
            }
            try {
                invokeStaticMethodThrowException("com.taobao.android.service.Services", "bind", new Class[]{Context.class, Class.class, ServiceConnection.class}, context.getApplicationContext(), this.interfaceCls, this.conn);
                if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                    TBSdkLog.d(TAG, "[asyncBind]bind service by service framework");
                }
            } catch (ClassNotFoundException e) {
                if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                    TBSdkLog.w(TAG, "[asyncBind]service framework not exist. use intent to bind service.");
                }
                intent = new Intent(context.getApplicationContext(), this.serviceCls);
                intent.setAction(this.interfaceCls.getName());
                intent.setPackage(context.getPackageName());
                intent.addCategory("android.intent.category.DEFAULT");
                bindService = context.bindService(intent, this.conn, 1);
                if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                    TBSdkLog.d(TAG, "[asyncBind]bindService ret=" + bindService);
                }
            } catch (NoSuchMethodException e2) {
                if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                    TBSdkLog.d(TAG, "[asyncBind]service framework not exist. use intent to bind service.");
                }
                intent = new Intent(context.getApplicationContext(), this.serviceCls);
                intent.setAction(this.interfaceCls.getName());
                intent.setPackage(context.getPackageName());
                intent.addCategory("android.intent.category.DEFAULT");
                bindService = context.bindService(intent, this.conn, 1);
                if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                    TBSdkLog.d(TAG, "[asyncBind]bindService ret=" + bindService);
                }
            } catch (Throwable th) {
                if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                    TBSdkLog.w(TAG, "[asyncBind]Service bind failed. interfaceName =" + getInterfaceName());
                }
            }
        }
    }

    public T getService() {
        return this.service;
    }

    private String getInterfaceName() {
        String str = null;
        try {
            return this.interfaceCls.getSimpleName();
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[getInterfaceName]getInterfaceName error.interfaceName =" + this.interfaceCls, th);
            return str;
        }
    }

    private static Object invokeStaticMethodThrowException(String str, String str2, Class<?>[] clsArr, Object... objArr) throws Exception {
        if (str == null || str2 == null) {
            return null;
        }
        Method declaredMethod;
        Class cls = Class.forName(str);
        if (clsArr != null) {
            declaredMethod = cls.getDeclaredMethod(str2, clsArr);
        } else {
            declaredMethod = cls.getDeclaredMethod(str2, new Class[0]);
        }
        if (declaredMethod == null) {
            return null;
        }
        declaredMethod.setAccessible(true);
        if (objArr != null) {
            return declaredMethod.invoke(cls, objArr);
        }
        return declaredMethod.invoke(cls, new Object[0]);
    }
}
