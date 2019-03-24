package miui.upnp.manager;

import android.content.Context;
import android.util.Log;
import miui.upnp.manager.ctrlpoint.UnknownDevice;
import miui.upnp.typedef.deviceclass.DeviceClass;
import miui.upnp.typedef.error.UpnpError;
import miui.upnp.typedef.exception.UpnpException;

public class UpnpManager {
    private static final String TAG = UpnpManager.class.getSimpleName();
    private static final Object classLock = UpnpManager.class;
    private static UpnpManager instance = null;
    private UpnpClassProvider classProvider;
    private UpnpControlPoint cp;
    private UpnpHost host;

    public static UpnpManager getInstance() {
        UpnpManager upnpManager;
        synchronized (classLock) {
            if (instance == null) {
                instance = new UpnpManager();
            }
            upnpManager = instance;
        }
        return upnpManager;
    }

    private UpnpManager() {
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    public void open(Context context) throws UpnpException {
        this.cp = new UpnpControlPoint(context);
        this.host = new UpnpHost(context);
        this.classProvider = new UpnpClassProvider();
        this.classProvider.addDeviceClass(new DeviceClass(UnknownDevice.DEVICE_TYPE, UnknownDevice.class));
        if (!this.cp.bind()) {
            Log.w(TAG, "UpnpControlPoint bind failed");
            throw new UpnpException(UpnpError.SERVICE_BIND_FAILED);
        } else if (!this.host.bind()) {
            Log.w(TAG, "UpnpHost bind failed");
            throw new UpnpException(UpnpError.SERVICE_BIND_FAILED);
        }
    }

    public void close() throws UpnpException {
        if (this.classProvider != null) {
            this.classProvider.clear();
            this.classProvider = null;
        }
        if (this.cp != null) {
            if (this.cp.unbind()) {
                this.cp = null;
            } else {
                Log.d(TAG, "UpnpControlPoint unbind failed");
                throw new UpnpException(UpnpError.SERVICE_UNBIND_FAILED);
            }
        }
        if (this.host != null && !this.host.unbind()) {
            Log.d(TAG, "UpnpHost unbind failed");
            throw new UpnpException(UpnpError.SERVICE_UNBIND_FAILED);
        }
    }

    public UpnpControlPoint getControlPoint() {
        return this.cp;
    }

    public UpnpHost getHost() {
        return this.host;
    }

    public UpnpClassProvider getClassProvider() {
        return this.classProvider;
    }
}
