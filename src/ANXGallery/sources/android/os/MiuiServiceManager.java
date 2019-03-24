package android.os;

import android.os.IMiuiServiceManager.Stub;
import android.util.Log;
import java.util.HashMap;

public class MiuiServiceManager {
    private static final String TAG = "MiuiServiceManager";
    private static HashMap<String, IBinder> sCache = new HashMap();
    private static IMiuiServiceManager sMiuiServiceManager;

    private static IMiuiServiceManager getIMiuiServiceManager() {
        if (sMiuiServiceManager != null) {
            return sMiuiServiceManager;
        }
        sMiuiServiceManager = Stub.asInterface(ServiceManager.getService(MiuiServiceManagerInternal.SERVICE_NAME));
        return sMiuiServiceManager;
    }

    public static IBinder getService(String name) {
        try {
            IBinder service = (IBinder) sCache.get(name);
            if (service != null) {
                return service;
            }
            return getIMiuiServiceManager().getService(name);
        } catch (RemoteException e) {
            Log.e(TAG, "error in miui getService", e);
            return null;
        }
    }

    public static void addService(String name, IBinder service) {
        try {
            getIMiuiServiceManager().addService(name, service);
        } catch (RemoteException e) {
            Log.e(TAG, "error in miui addService", e);
        }
    }

    public static String[] listServices() {
        try {
            return getIMiuiServiceManager().listServices();
        } catch (RemoteException e) {
            Log.e(TAG, "error in miui listServices", e);
            return null;
        }
    }
}
