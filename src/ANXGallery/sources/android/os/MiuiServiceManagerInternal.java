package android.os;

import android.os.IMiuiServiceManager.Stub;
import android.util.Log;
import java.util.HashMap;

public class MiuiServiceManagerInternal extends Stub {
    public static final String SERVICE_NAME = "miui.os.servicemanager";
    private static final String TAG = "MiuiServiceManagerInternal";
    private HashMap<String, IBinder> map = new HashMap();

    public IBinder getService(String name) {
        if (name != null) {
            return (IBinder) this.map.get(name);
        }
        Log.e(TAG, "get service name is null");
        return null;
    }

    public void addService(String name, IBinder service) {
        if (name == null || service == null) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("add service parameter error, service name: ");
            stringBuilder.append(name);
            Log.e(str, stringBuilder.toString());
            return;
        }
        this.map.put(name, service);
    }

    public String[] listServices() {
        return (String[]) this.map.keySet().toArray();
    }
}
